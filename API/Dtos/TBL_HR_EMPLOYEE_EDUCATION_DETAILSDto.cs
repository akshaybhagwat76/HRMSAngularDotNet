using System.Collections.Generic;

namespace API.Dtos
{
    public class TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto
    {
        public int Id { get; set; }
        public int Employee_Id { get; set; }
        public int Emp_Year_OF_Passing { get; set; }
        public string Qualification { get; set; }
        public string Specialization { get; set; }
        public string School { get; set; }
        public string Board { get; set; }
        public string Marks { get; set; }
        public string Remarks { get; set; }
        public List<TBL_Educational_Qualification_AttachementsDto> Attachments { get; set; }
    }
}
