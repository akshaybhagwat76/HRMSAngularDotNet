using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_PRODUCTION_UNITDto
    {
        public int Id { get; set; }
        [Required]
        public string Production_Unit_Name { get; set; }
        [Required]
        public int Production_Unit_Branch_Id { get; set; }
    }
}
