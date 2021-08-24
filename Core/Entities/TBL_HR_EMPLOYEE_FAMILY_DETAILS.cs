using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("tBL_HR_EMPLOYEE_FAMILY_DETAILs")]
    public class TBL_HR_EMPLOYEE_FAMILY_DETAILS : BaseEntity
    {
        public int Employee_Id { get; set; }
        public int? FamilyDetail_RelationshipId { get; set; }
        public string FamilyDetail_Name { get; set; }
        public string FamilyDetail_Mobile { get; set; }
        public string FamilyDetail_EmailId { get; set; }
        public DateTime? FamilyDetail_DOB { get; set; }
        public string Identity_Number { get; set; }
        public string Nominee_Address { get; set; }
        public bool? IsAadharStatus { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
