using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_employees")]
    public class Mst_employees
    {
        [Key]
        public int Emp_id { get; set; }

        [StringLength(100)]
        public string? Username { get; set; }

        [StringLength(100)]
        public string? Password { get; set; }

        [StringLength(100)]
        public string? Emp_surname { get; set; }

        [StringLength(100)]
        public string? Emp_firstname { get; set; }

        [StringLength(100)]
        public string? Emp_middlename { get; set; }

        [StringLength(100)]
        public string? Gender { get; set; }

        [StringLength(50)]
        public string? Emp_houseno { get; set; }

        [StringLength(100)]
        public string? Emp_address_line_1 { get; set; }

        public string? Emp_address_line_2 { get; set; }

        [StringLength(100)]
        public string? City { get; set; }

        [StringLength(50)]
        public string? Postcode { get; set; }

        [StringLength(50)]
        public string? Country { get; set; }

        public bool Is_superadmin { get; set; }

        [StringLength(100)]
        public string? Mobile_number { get; set; }

        [StringLength(100)]
        public string? Home_contact_number { get; set; }

        [StringLength(500)]
        public string? Email_address { get; set; }

        public DateTime? Join_date { get; set; }

        [StringLength(50)]
        public string? Start_time { get; set; }

        [StringLength(50)]
        public string? End_time { get; set; }

        public int? Visa_type { get; set; }

        public DateTime? Visa_expiry { get; set; }

        public DateTime? Visa_review_date { get; set; }

        public decimal? Current_wages { get; set; }

        public int? Department_type { get; set; }

        [StringLength(100)]
        public string? Ref_name_1 { get; set; }

        [StringLength(100)]
        public string? Ref_contact_1 { get; set; }

        [StringLength(100)]
        public string? Ref_name_2 { get; set; }

        [StringLength(100)]
        public string? Ref_contact_2 { get; set; }

        [StringLength(1000)]
        public string? Notes { get; set; }

        [StringLength(50)]
        public string? Emp_code { get; set; }

        [StringLength(50)]
        public string? Houseno_india { get; set; }

        [StringLength(50)]
        public string? City_india { get; set; }

        [StringLength(50)]
        public string? Postcode_india { get; set; }

        [StringLength(50)]
        public string? Country_india { get; set; }

        [StringLength(100)]
        public string? Address1_india { get; set; }

        [StringLength(100)]
        public string? Address2_india { get; set; }

        public DateTime? Dob_date { get; set; }

        public DateTime? Marriage_date { get; set; }

        [StringLength(100)]
        public string? Child_detail { get; set; }

        [StringLength(500)]
        public string? Health_issue { get; set; }

        public int? Shift_detail { get; set; }

        [StringLength(20)]
        public string? Marriage_status { get; set; }

        [StringLength(50)]
        public string? Ni_no { get; set; }

        [StringLength(50)]
        public string? Child_detail_girl { get; set; }

        [StringLength(100)]
        public string? Bank_name { get; set; }

        [StringLength(200)]
        public string? Bank_address { get; set; }

        [StringLength(50)]
        public string? Bank_accountno { get; set; }

        [StringLength(50)]
        public string? Bank_sort_no { get; set; }

        [StringLength(50)]
        public string? Phone_india { get; set; }

        [StringLength(100)]
        public string? Ecd_1_name { get; set; }

        [StringLength(50)]
        public string? Ecd_1_mobile { get; set; }

        [StringLength(50)]
        public string? Ecd_1_relation { get; set; }

        [StringLength(100)]
        public string? Ecd_2_name { get; set; }

        [StringLength(50)]
        public string? Ecd_2_mobile { get; set; }

        [StringLength(50)]
        public string? Ecd_2_relation { get; set; }

        public DateTime? Date_of_leaving { get; set; }

        [StringLength(500)]
        public string? Reason_of_leaving { get; set; }

        public bool? Resign_mail_sent { get; set; }

        public decimal? Contract_per_month { get; set; }

        public bool Not_in_rota { get; set; }

        public decimal? DayOff { get; set; }

        public decimal? Bonus { get; set; }

        [StringLength(300)]
        public string? Comment { get; set; }

        public decimal? Additional_Hrs { get; set; }

        [StringLength(50)]
        public string? location { get; set; }

        public bool? IsActive { get; set; }

        public bool? WeekOff { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }

        public bool? LeaveMailSent { get; set; }

        public string? SpousePhoneNumber { get; set; }

        [StringLength(100)]
        public string? Siblings { get; set; }

        public string? FatherPhoneNumber { get; set; }

        public string? FatherOccupation { get; set; }

        public string? MotherPhoneNumber { get; set; }

        public string? MotherOccupation { get; set; }

        public string? LinkedInId { get; set; }

        public string? FacebookId { get; set; }

        public string? InstagramId { get; set; }

        public string? SpouseName { get; set; }

        public string? FatherName { get; set; }

        public string? MotherName { get; set; }

        public string? Nationality { get; set; }

        public string? Company_name { get; set; }

        public string? Job_role { get; set; }

        public string? Job_Description { get; set; }

        public DateTime? FromStartDate { get; set; }

        public DateTime? ToEndDate { get; set; }

        [StringLength(50)]
        public string? State { get; set; }

        [StringLength(50)]
        public string? NativeState { get; set; }

        [StringLength(100)]
        public string? SmartwayEmail { get; set; }

        [StringLength(50)]
        public string? PANCard { get; set; }

        [StringLength(50)]
        public string? AadharCard { get; set; }

        [StringLength(100)]
        public string? PassportFullName { get; set; }

        [StringLength(50)]
        public string? PassportNo { get; set; }

        public DateTime? PassportExpiryDate { get; set; }

        [StringLength(50)]
        public string? PassportIssuedCountry { get; set; }

        public DateTime? ShiftTimeUpdatedOn { get; set; }

        [StringLength(250)]
        public string? JobTitle { get; set; }

        public int? UKHODId { get; set; }

        public int? INDHODId { get; set; }

        [StringLength(200)]
        public string? UKHOD { get; set; }

        [StringLength(200)]
        public string? INDHOD { get; set; }

        [StringLength(200)]
        public string? TakingOverName { get; set; }

        [StringLength(50)]
        public string? TakingOverIsNew { get; set; }

        [StringLength(200)]
        public string? TrainerOfTakingOverEmp { get; set; }

        [StringLength(200)]
        public string? LineManager { get; set; }

        public string? BriefResponsibilty { get; set; }

        public string? GroupEmail { get; set; }

        public bool? Approved_Mail_Sent { get; set; }

        public bool? IsUKEmployee { get; set; }

        public string? RegistrationMailSentEmailAddresses { get; set; }

        public string? ResignationMailSentEmailAddresses { get; set; }

        public bool? IsHrManager { get; set; }

        public bool? IsHeadManager { get; set; }

        public DateTime? ProbationCompletionDate { get; set; }

        public string? ProbationAchievement1 { get; set; }

        public string? ProbationAchievement2 { get; set; }

        public string? ProbationAchievement3 { get; set; }

        public bool? ProbationMailSent { get; set; }

        public string? ProbationMailSentEmailAddresses { get; set; }
        public string? ITNoteForNewJoiner { get; set; }
        public string? TimeInCompany { get; set; }
        public bool? Authenticated { get; set; }
        public string? AuthKey { get; set; }
        public bool? HasNovanexEntry { get; set; }
        public int? NovanexPortalId { get; set; }

        [NotMapped]
        public double? Latitude { get; set; }
        [NotMapped]
        public double? Longitude { get; set; }

        public int? RoleId { get; set; }
    }
}
