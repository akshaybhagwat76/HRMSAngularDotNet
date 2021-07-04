using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using AutoMapper;
using API.Dtos;
using Microsoft.AspNetCore.Cors;
using Infrastructure.Services;
using Core.Interfaces;
using API.Errors;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    //[EnableCors("AllowOrigin")]
    public class EmployeeController : BaseApiController
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        public EmployeeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        [HttpGet("GetEmployee")]
        public async Task<ActionResult<List<Tbl_HR_EmployeeDto>>> GetEmployeeAsync()
        {
            try
            {
                var hR_Employees = await _unitOfWork.Repository<Tbl_HR_Employee>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Tbl_HR_Employee>, IReadOnlyList<Tbl_HR_EmployeeDto>>(hR_Employees);

                return Ok(new List<Tbl_HR_EmployeeDto>(data));
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetEmployeeById")]
        public async Task<ActionResult<Tbl_HR_EmployeeDto>> GetEmployeeByIdAsync(int Id)
        {
            try
            {
                var employee = await _unitOfWork.Repository<Tbl_HR_Employee>().GetByIdAsync(Id);
                if (employee == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<Tbl_HR_Employee, Tbl_HR_EmployeeDto>(employee);
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpPost("AddEmployee")]
        public async Task<ActionResult<Tbl_HR_EmployeeDto>> AddEmployeeAsync(Tbl_HR_EmployeeDto employeeDto)
        {
            try
            {
                var employee = _mapper.Map<Tbl_HR_EmployeeDto, Tbl_HR_Employee>(employeeDto);
                _unitOfWork.Repository<Tbl_HR_Employee>().Add(employee);
                var result = await _unitOfWork.Complete();


                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                return _mapper.Map<Tbl_HR_Employee, Tbl_HR_EmployeeDto>(employee);
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
