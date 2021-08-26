using System;

namespace API.Dtos
{
    public class Sys_FamilyDetailsDto : BaseDto
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
    }
}
