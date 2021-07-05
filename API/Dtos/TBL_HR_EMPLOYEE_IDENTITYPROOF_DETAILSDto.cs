using System;
using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class TBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILSDto
    {
        public int Id { get; set; }
        [Required]
        public int Employee_Id { get; set; }
        public int Enum_Id { get; set; }
        [Required]
        [DataType(DataType.DateTime)]
        public DateTime Emp_DOB { get; set; }
        public string Identity_Number { get; set; }
        public bool Is_Verfied { get; set; }
        public DateTime Date_Valid_From { get; set; }
        public DateTime Date_Valid_Upto { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
