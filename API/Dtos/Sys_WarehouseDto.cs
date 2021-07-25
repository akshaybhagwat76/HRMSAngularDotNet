using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_WarehouseDto
    {
        public int Id { get; set; }
        [Required]
        public string Warehouse_Name { get; set; }
        [Required]
        public int Warehouse_Branch_Id { get; set; }
    }
}
