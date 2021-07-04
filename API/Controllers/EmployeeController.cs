using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Persistent.Repository;
using ApplicationLayer.Interfaces;
using AutoMapper;
using API.Dtos;
using Microsoft.AspNetCore.Cors;

namespace API.Controllers
{
    [Route("api")]
    [ApiController]
    //[EnableCors("AllowOrigin")]
    public class EmployeeController : ControllerBase
    {
        private readonly IHREmployeeService _employee;
        private readonly IMapper _mapper;
        public EmployeeController(IHREmployeeService employee, IMapper mapper)
        {
            _employee = employee;
            _mapper = mapper;
        }
        [HttpGet("GetEmployee")]
        public async Task<ActionResult> GetEmployeeAsync()
        {
            try
            {
                return Ok(await _employee.GetAll());
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetEmployeeById")]
        public async Task<ActionResult> GetEmployeeByIdAsync(int Id)
        {
            try
            {
                return Ok(await _employee.FindById(Id));
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpPost("AddEmployee")]
        public async Task<ActionResult> AddEmployeeAsync(Tbl_HR_EmployeeDto employeeDto)
        {
            try
            {

                return Ok(await _employee.Insert(_mapper.Map<Tbl_HR_Employee>(employeeDto)));
            }
            catch (Exception ex)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetEmpCode")]
        public async Task<string> GenerateEmpCode(string EmpName)
        {
            string EmpCode = "";
            try
            {
                string name = EmpName.Substring(0, 3);
                EmpCode = name.ToUpper() + RandomString();
            }
            catch (Exception ex)
            {
                EmpCode = ex.Message;
                return EmpCode;
            }

            return EmpCode;
        }

        private string RandomString()
        {
            var chars = "0123456789";
            var stringChars = new char[3];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            string finalString = new String(stringChars);
            return finalString;
        }
    }
}
