using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_DEPARTMENTDto :BaseDto
    {
        [Required]
        public int Branch_Id { get; set; }
        [Required]
        public string Department_Name { get; set; }
        [Required]
        public string Department_Code { get; set; }
    }
}
