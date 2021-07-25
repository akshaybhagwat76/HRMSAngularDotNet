using System;
using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_WorkingStatusDto
    {
        public int Id { get; set; }
        public string WorkingStatus_Name { get; set; }
    }
}
