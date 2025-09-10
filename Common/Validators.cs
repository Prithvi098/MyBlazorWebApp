using FluentValidation;
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
            public EmployeeValidator()
            {
                RuleFor(x => x.Email_address)
                    .NotEmpty().WithMessage("Email is required")
                    .Matches(@"^[^@\s]+@[^@\s]+\.[^@\s]+$").WithMessage("Invalid Email")
                    .EmailAddress().WithMessage("Enter Correct email address");

                RuleFor(x => x.Emp_firstname)
                    .NotEmpty().WithMessage("Full Name is required")
                    .MinimumLength(3).WithMessage("Full Name must be at least 3 characters");
            }
        }
    }
}
