namespace API.Dtos
{
    public class TBL_Educational_Qualification_AttachementsDto : BaseDto
    {
        public int Educational_Qualification_Id { get; set; }
        public int EmployeeId { get; set; }
        public string CourseName { get; set; }
        public string DocumentType { get; set; }
        public string DocumentUrl { get; set; }
      
    }
}
