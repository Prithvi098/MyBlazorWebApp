using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.JSInterop;
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

builder.Services.AddScoped<JwtDelegatingHandler>();

builder.Services.AddHttpClient("API", (sp, client) =>
{
    var settings = sp.GetRequiredService<IOptions<ApiSettings>>().Value;
    client.BaseAddress = new Uri(settings.BaseUrl);
})
.AddHttpMessageHandler<JwtDelegatingHandler>();

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowFrontend", policy =>
        policy.WithOrigins("https://localhost:7160")   // your Blazor app URL
              .AllowAnyHeader()
              .AllowAnyMethod()
              .AllowCredentials()); // <-- critical
});

builder.Services.AddCascadingAuthenticationState();
/*builder.Services.AddScoped<AuthenticationStateProvider, CustomAuthenticationStateProvider>();*/
builder.Services.AddHttpContextAccessor();

/*builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
    .AddCookie(options =>
    {
        options.Cookie.Name = "auth_token";
        options.LoginPath = "/";      // 👈 login page
        options.LogoutPath = "/api/login/userlogout";
        options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
        options.Cookie.SameSite = SameSiteMode.None; // 👈 allow cross-site
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
    });*/

builder.Services.AddBlazorBootstrap();

// JWT Configuration
var jwtSettings = builder.Configuration.GetSection("Jwt");
var key = Encoding.UTF8.GetBytes(jwtSettings["Key"]);

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    var jwt = builder.Configuration.GetSection("Jwt");
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = jwt["Issuer"],
        ValidAudience = jwt["Audience"],
        IssuerSigningKey = new SymmetricSecurityKey(
            Encoding.UTF8.GetBytes(jwt["Key"])
        )
    };
});

builder.Services.AddScoped<AuthenticationStateProvider, CustomAuthenticationStateProvider>();
builder.Services.AddCascadingAuthenticationState();

builder.Services.AddAuthorization();

/*builder.Services.AddScoped<ModalServices>();*/

builder.Services.AddScoped<AppToastService>();
builder.Services.AddScoped<MenuService>();
builder.Services.AddScoped<DataContext>();
builder.Services.AddScoped<PunchService>();
builder.Services.AddScoped<UserPermissionService>();
builder.Services.AddScoped<JwtTokenService>();

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
