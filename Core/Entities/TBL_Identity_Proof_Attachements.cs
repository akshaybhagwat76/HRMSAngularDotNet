﻿using Core.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace API.Dtos
{
    [Table("TBL_Identity_Proof_Attachements")]
    public class TBL_Identity_Proof_Attachements : BaseEntity, IAuditableEntity
    {
        public int Identity_Proof_Id { get; set; }
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string IdentityType { get; set; }
        public string DocumentType { get; set; }
        public string DocumentUrl { get; set; }
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
