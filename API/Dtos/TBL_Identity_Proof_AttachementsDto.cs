using System;
namespace API.Dtos
{
    public class TBL_Identity_Proof_AttachementsDto : BaseDto
    {

        public int Identity_Proof_Id { get; set; }
        public int EmployeeId { get; set; }
        public string IdentityType { get; set; }
        public string EmployeeName { get; set; }
        public string DocumentType { get; set; }
        public string DocumentUrl { get; set; }
       
    }
}
