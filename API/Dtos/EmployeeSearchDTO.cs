namespace API.Dtos
{
    public class EmployeeSearchDTO
    {
        public int CompanyId { get; set; }
        public int Project_BranchId { get; set; }
        public int ZoneId { get; set; }
        public int DepartmentId { get; set; }
        public int DesignationId { get; set; }
        public int StatusId { get; set; }
        public string EmployeeCode { get; set; }
        public string FirstName { get; set; }
        public string email { get; set; }
    }
}
