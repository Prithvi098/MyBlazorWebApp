using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using MyBlazorApp.Common;
using MyBlazorApp.Components;
using MyBlazorApp.Data;
using MyBlazorApp.Models;
using System.Net;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddValidatorsFromAssemblyContaining<MyBlazorApp.Common.Validators>();
builder.Services.AddFluentValidationAutoValidation();
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services.AddControllers();

/*builder.Services.AddDbContext<EMSContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("EMSContext")));*/

builder.Services.AddServerSideBlazor()
    .AddCircuitOptions(options => { options.DetailedErrors = true; });

builder.Services.AddSingleton<IConfiguration>(builder.Configuration);

builder.Services.Configure<ApiSettings>(builder.Configuration.GetSection("ApiSettings"));

builder.Services.AddHttpClient("API", (sp, client) =>
{
    var settings = sp.GetRequiredService<IOptions<ApiSettings>>().Value;
    client.BaseAddress = new Uri(settings.BaseUrl);
}).ConfigurePrimaryHttpMessageHandler(() => new HttpClientHandler
{
    UseCookies = true,
    CookieContainer = new CookieContainer()
});

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowFrontend", policy =>
        policy.WithOrigins("https://localhost:7160")   // your Blazor app URL
              .AllowAnyHeader()
              .AllowAnyMethod()
              .AllowCredentials()); // <-- critical
});

builder.Services.AddCascadingAuthenticationState();
builder.Services.AddScoped<AuthenticationStateProvider, CustomAuthenticationStateProvider>();
builder.Services.AddHttpContextAccessor();

// -------------------- Authentication --------------------
// Keep cookie as the default scheme for Blazor Server circuits, and add JwtBearer for APIs.
builder.Services.AddAuthentication(options =>
{
    // The default scheme for app (Blazor Server circuits) remains Cookies.
    options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
})
.AddCookie(options =>
{
    options.Cookie.Name = "auth_token";
    options.LoginPath = "/";      // 👈 login page
    options.LogoutPath = "/api/auth/logout";
    options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
    options.Cookie.SameSite = SameSiteMode.None; // 👈 allow cross-site if required
    options.Cookie.SecurePolicy = CookieSecurePolicy.Always; // 👈 required with SameSite=None
    options.Events.OnRedirectToLogin = ctx =>
    {
        if (ctx.Request.Path.StartsWithSegments("/api"))
        {
            // For API calls → just return 401 JSON
            ctx.Response.StatusCode = 401;
        }
        else
        {
            // For normal Razor/Blazor routes → redirect
            ctx.Response.Redirect(ctx.RedirectUri);
        }
        return Task.CompletedTask;
    };
})
// JWT bearer for API authentication — protected endpoints should use JwtBearer scheme
.AddJwtBearer(JwtBearerDefaults.AuthenticationScheme, options =>
{
    // Read from configuration
    var key = builder.Configuration["JwtSettings:Key"];
    var issuer = builder.Configuration["JwtSettings:Issuer"];
    var audience = builder.Configuration["JwtSettings:Audience"];

    options.RequireHttpsMetadata = true;
    options.SaveToken = true;
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidIssuer = issuer,
        ValidateAudience = true,
        ValidAudience = audience,
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(key)),
        ValidateLifetime = true,
        ClockSkew = TimeSpan.FromMinutes(2)
    };

    // If you ever use SignalR and pass token via querystring, you can extract it here
    options.Events = new JwtBearerEvents
    {
        OnMessageReceived = ctx =>
        {
            // Typical: look in Authorization header first. Optionally read from cookie or query string for SignalR.
            var authHeader = ctx.Request.Headers["Authorization"].FirstOrDefault();
            if (string.IsNullOrEmpty(authHeader) && ctx.Request.Cookies.ContainsKey("jwt_token"))
            {
                // optional: allow reading token from a cookie named "jwt_token" (HttpOnly cookie is not readable from JS,
                // but JwtBearer cannot read HttpOnly cookie by default; you'd need custom middleware to copy cookie -> header.)
                ctx.Token = ctx.Request.Cookies["jwt_token"];
            }
            return Task.CompletedTask;
        }
    };
});

builder.Services.AddAuthorization();

builder.Services.Configure<JwtSettings>(builder.Configuration.GetSection("JwtSettings"));

builder.Services.AddBlazorBootstrap();

/*builder.Services.AddScoped<ModalServices>();*/

builder.Services.AddScoped<AppToastService>();
builder.Services.AddScoped<MenuService>();
builder.Services.AddScoped<DataContext>();
builder.Services.AddScoped<PunchService>();

builder.Services.AddScoped<Helper>();


//Must add Dbcontext factory for db transactions
builder.Services.AddDbContextFactory<EMSContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("EMSContext"));
});


var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();
app.UseCors("AllowFrontend");


app.UseAuthentication();   // 👈 must come before UseAuthorization
app.UseAuthorization();

app.UseAntiforgery();      // 👈 AFTER auth, before endpoints   

app.MapControllers();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();
