using System;
using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
   public class TBL_HR_EMPLOYEE_EXPERIENCE_DETAILSDto
    {
        public int Id { get; set; }
        [Required]
        public int Employee_Id { get; set; }
        [Required]
        public string Employer_Name { get; set; }
        [Required]
        public string Employer_Address { get; set; }
        [Required]
        public int Employer_StateId { get; set; }
        [Required]
        public string Employer_Zip_Code { get; set; }
        [Required]
        public string Employer_City { get; set; }
        [Required]
        public string Employer_Contact_Preson { get; set; }
        [Required]
        public string Employer_Contact_Designation { get; set; }
        [Required]
        public string Employer_Contact_Mobile { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        [EmailAddress]
        public string Employer_Contact_EmailId { get; set; }
        public decimal Last_Drawn_Salary { get; set; }
        public DateTime Employer_DOJ { get; set; }
        public DateTime Employer_DOL { get; set; }
        public string Reason_Of_Leaving { get; set; }
        public string Remarks { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
