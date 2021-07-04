using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_BranchDto
    {
        public int Id { get; set; }
        [Required]
        public string Branch_Name { get; set; }
    }
}
