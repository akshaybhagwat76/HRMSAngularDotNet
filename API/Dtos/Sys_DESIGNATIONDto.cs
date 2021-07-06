using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_DESIGNATIONDto: BaseDto
    {
        [Required]
        public int Department_Id { get; set; }
        [Required]
        public string Designation_Name { get; set; }
        [Required]
        public int Designation_Code { get; set; }
    }
}
