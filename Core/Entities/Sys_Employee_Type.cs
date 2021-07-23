using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("sys_Employee_Type")]
    public class Sys_Employee_Type : BaseEntity, IAuditableEntity
    {
        public string Type_Name { get; set; }
        public DateTime CreatedOn_Date { get ; set ; }
        public int CreatedBy_Login_User_Id { get ; set ; }
        public int CreatedBy_Login_Session_Id { get ; set ; }
        public string CreatedFrom_Page { get ; set ; }
        public int CreatedFrom_Sub_Menu_Id { get ; set ; }
        public string CreatedFrom_API_Name { get ; set ; }
        public DateTime UpdatedOn_Date { get ; set ; }
        public int? UpdatedBy_Login_User_Id { get ; set ; }
        public int? UpdatedBy_Login_Session_Id { get ; set ; }
        public string UpdatedFrom_Page { get ; set ; }
        public int? UpdatedFrom_Sub_Menu_Id { get ; set ; }
        public string UpdatedFrom_API_Name { get ; set ; }
    }
}
