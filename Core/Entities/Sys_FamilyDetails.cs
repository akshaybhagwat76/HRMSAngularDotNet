using System;
using System.ComponentModel.DataAnnotations.Schema;
namespace Core.Entities
{
    [Table("tbl_FamilyDetails")]
    public class Sys_FamilyDetails : BaseEntity, IAuditableEntity
    {
        public int Employee_Id { get; set; }
        public string Name { get; set; }
        public string Relationship { get; set; }
        public string Date_Of_Birth { get; set; }
        public string Aadhar_No { get; set; }
        public string Aadhar_Status { get; set; }
        public string Address { get; set; }
        public string Contact_No { get; set; }
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
