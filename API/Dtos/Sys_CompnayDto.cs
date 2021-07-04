using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_CompnayDto
    {
        public int Id { get; set; }
        [Required]
        public string Compnay_Name { get; set; }
        [Required]
        public string Compnay_Code { get; set; }
    }
}
