using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
namespace API.Dtos
{
    public class Sys_OtherInformationDto : BaseDto
    {
        public string Identity_Type { get; set; }
        public string Bank_Name { get; set; }
        public string Branch_Name { get; set; }
        public string Account_No { get; set; }
        public string IFSC_Code { get; set; }
        public bool Status { get; set; }
        public string Other_Details { get; set; }
        public string Card_No { get; set; }
        public string CarProxy_Nod_No { get; set; }
        public string User_Type { get; set; }
        public string Signature { get; set; }
        public string Picture { get; set; }
        public IFormFile SignatureFile { get; set; }
        public IFormFile PictureFile { get; set; }
        public int Employee_Id { get; set; }
        public List<Sys_Identity_ProofDto> sys_Identity_ProofDtos { get; set; }
    }
}
