namespace Core.Entities
{
    public class TBL_HR_EMPLOYEE_EDUCATION_DETAILS : BaseEntity
    {
        public int Employee_Id { get; set; }
        public int Enum_Id { get; set; }
        public int Emp_Year_OF_Passing { get; set; }
        public string Emp_Organization { get; set; }
        public string Emp_Board_Council_University { get; set; }
        public string Emp_Qualification_Percent { get; set; }
        public string Emp_Qualification_Percentile { get; set; }
        public string Remarks { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
