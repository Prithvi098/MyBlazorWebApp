using FluentValidation;
using Microsoft.EntityFrameworkCore;
using MyBlazorApp.Data;
using MyBlazorApp.Models;

namespace MyBlazorApp.Common
{
    public class Validators
    {
        public class DepartmentValidator : AbstractValidator<Mst_Department>
        {
            public DepartmentValidator()
            {
                RuleFor(x => x.DepartmentName)
                    .NotEmpty().WithMessage("Department Name is required")
                    .MaximumLength(100).WithMessage("Department Name cannot exceed 100 characters");
            }
        }

        public class EmployeeValidator : AbstractValidator<Mst_employees>
        {
            private readonly IDbContextFactory<EMSContext> _dbFactory;

            public EmployeeValidator(IDbContextFactory<EMSContext> dbFactory)
            {
                _dbFactory = dbFactory;

                RuleFor(x => x.Email_address)
                    .Cascade(CascadeMode.Stop)
                    .NotEmpty().WithMessage("Email is required")
                    .Matches(@"^[^@\s]+@[^@\s]+\.[^@\s]+$").WithMessage("Invalid Email");

                RuleFor(x => x.Emp_firstname)
                    .NotEmpty().WithMessage("First Name is required")
                    .MinimumLength(3).WithMessage("First Name must be at least 3 characters");

                RuleFor(x => x.Emp_surname)
                    .NotEmpty().WithMessage("Last Name is Required")
                    .MinimumLength(3).WithMessage("Last Name must be at least 3 characters");

                RuleFor(e => e.Username)
                    //.Cascade(CascadeMode.Stop)
                    .NotEmpty().WithMessage("Username is required.")
                    .MustAsync(BeUniqueUsername).WithMessage("This username already exists.");
                    //.When(e => !string.IsNullOrWhiteSpace(e.Username));
            }

            private async Task<bool> BeUniqueUsername(Mst_employees? employee, string username, CancellationToken cancellationToken)
            {
                using var db = _dbFactory.CreateDbContext();
                //var exists = await db.Mst_Employees.AnyAsync(e => e.Username == username && e.DeletedBy == null && e.Emp_id != employee.Emp_id, cancellationToken);
                var exists = employee.Username == null && employee.Username == null ? false : await db.Mst_Employees.AnyAsync(e => e.Username == username && e.DeletedBy == null && e.Emp_id != employee.Emp_id, cancellationToken);

                return !exists;
            }
        }
    }
}
