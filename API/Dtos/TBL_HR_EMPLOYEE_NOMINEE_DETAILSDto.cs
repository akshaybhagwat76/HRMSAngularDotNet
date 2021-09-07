using System;
namespace API.Dtos
{
    public class TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto
    {
        public int Id { get; set; }
        public int Employee_Id { get; set; }
        public int? Nominee_RelationshipId { get; set; }
        public string Nominee_Name { get; set; }
        public string Nominee_Mobile { get; set; }
        //public string Nominee_EmailId { get; set; }
        public DateTime? Nominee_DOB { get; set; }
        public string Identity_Number { get; set; }
        public string Nominee_Address { get; set; }
        public bool? IsAadharStatus { get; set; }
        public bool IsDeleted { get; set; }
    }
}
