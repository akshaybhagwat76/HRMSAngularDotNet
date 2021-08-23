namespace API.Dtos
{
    public class Sys_CorresspondanceContactInformationDto : BaseDto
    {
        public string Address { get; set; }
        public string Address1 { get; set; }
        public int Country { get; set; }
        public int Zone { get; set; }
        public int State { get; set; }
        public string City { get; set; }
        public string Pin { get; set; }
        public string MobileNo2 { get; set; }
        public string Phone { get; set; }
        public string EmailAddress2 { get; set; }
        public int Employee_Id { get; set; }
    }
}
