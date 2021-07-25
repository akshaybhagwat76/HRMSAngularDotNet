using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("tBL_HR_EMPLOYEE_EDUCATION_DETAILs")]
    public class TBL_HR_EMPLOYEE_EDUCATION_DETAILS : BaseEntity, IAuditableEntity
    {
        public int Employee_Id { get; set; }
        public int Enum_Id { get; set; }
        public int Emp_Year_OF_Passing { get; set; }
        public string Emp_Organization { get; set; }
        public string Emp_Board_Council_University { get; set; }
        public string Emp_Qualification_Percent { get; set; }
        public string Emp_Qualification_Percentile { get; set; }
        public string Remarks { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
        public DateTime CreatedOn_Date { get; set; }
        public int CreatedBy_Login_User_Id { get; set; }
        public int CreatedBy_Login_Session_Id { get; set; }
        public string CreatedFrom_Page { get; set; }
        public int CreatedFrom_Sub_Menu_Id { get; set; }
        public string CreatedFrom_API_Name { get; set; }
        public DateTime UpdatedOn_Date { get; set; }
        public int? UpdatedBy_Login_User_Id { get; set; }
        public int? UpdatedBy_Login_Session_Id { get; set; }
        public string UpdatedFrom_Page { get; set; }
        public int? UpdatedFrom_Sub_Menu_Id { get; set; }
        public string UpdatedFrom_API_Name { get; set; }
    }
}
