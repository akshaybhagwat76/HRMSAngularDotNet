using System;
namespace Core.Entities
{
    public class Sys_DEPARTMENT : BaseEntity, IAuditableEntity
    {
        public int Branch_Id { get; set; }
        public string Department_Name { get; set; }
        public string Departmen_Code { get; set; }
        public int Status_Id { get; set; }
        public string Remarks { get; set; }
        public string Action_Remarks { get; set; }
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
