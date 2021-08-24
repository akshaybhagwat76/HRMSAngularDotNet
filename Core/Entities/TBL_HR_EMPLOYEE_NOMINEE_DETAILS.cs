using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("tBL_HR_EMPLOYEE_NOMINEE_DETAILs")]
    public class TBL_HR_EMPLOYEE_NOMINEE_DETAILS : BaseEntity, IAuditableEntity
    {
        public int Employee_Id { get; set; }
        public int? Nominee_RelationshipId { get; set; }
        public string Nominee_Name { get; set; }
        public string Nominee_Mobile { get; set; }
        public string Nominee_EmailId { get; set; }
        public DateTime? Nominee_DOB { get; set; }
        public string Identity_Number { get; set; }
        public string Nominee_Address { get; set; }
        public bool? IsAadharStatus { get; set; }
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
