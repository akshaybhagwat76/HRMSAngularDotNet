using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public abstract class BaseDto
    {
        public int Id { get; set; }
        [Required]
        public int Status_Id { get; set; }
        public string Remarks { get; set; }
        public string Action_Remarks { get; set; }
    }
}
