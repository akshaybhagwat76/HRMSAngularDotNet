using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("sys_RelationShip")]
    public class Sys_RelationShip : BaseEntity, IAuditableEntity
    {
        public string RelationShip_Name { get; set; }
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
