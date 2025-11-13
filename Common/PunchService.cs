using Microsoft.EntityFrameworkCore;
using MyBlazorApp.Data;
using MyBlazorApp.Models;

namespace MyBlazorApp.Common
{
    public class PunchService
    {
        private readonly IDbContextFactory<EMSContext> _factory;

        public PunchService(IDbContextFactory<EMSContext> factory)
        {
            _factory = factory;
        }

        public async Task<List<EmployeePunchDetail>> GetTodayPunches(int userId)
        {
            using var db = await _factory.CreateDbContextAsync();

            return await db.EmployeePunchDetails
                .Where(u => u.UserId == userId &&
                            u.PunchIn.Value.Date == DateTime.Now.Date)
                .ToListAsync();
        }

        public async Task<(bool success, string message)> PunchIn(int userId)
        {
            using var db = await _factory.CreateDbContextAsync();

            var punch = new EmployeePunchDetail
            {
                UserId = userId,
                PunchIn = DateTime.UtcNow.AddHours(5).AddMinutes(30), // IST
                Date = DateTime.UtcNow.AddHours(5).AddMinutes(30)
            };

            db.EmployeePunchDetails.Add(punch);
            await db.SaveChangesAsync();

            return (true, "Success");
        }

        public async Task<(bool success, string message)> PunchOut(int userId)
        {
            using var db = await _factory.CreateDbContextAsync();

            var record = await db.EmployeePunchDetails
                .Where(u => u.UserId == userId &&
                            u.PunchIn.Value.Date == DateTime.Now.Date &&
                            !u.PunchOut.HasValue)
                .FirstOrDefaultAsync();

            if (record == null)
                return (false, "No punch-in found");

            record.PunchOut = DateTime.UtcNow.AddHours(5).AddMinutes(30); // IST
            record.TimeOutText = "PunchOut by user";

            await db.SaveChangesAsync();

            return (true, "Success");
        }
    }
}
