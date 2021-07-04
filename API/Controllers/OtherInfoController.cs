using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class OtherInfoController : BaseApiController
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        public OtherInfoController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        [HttpGet("GetOtherInfo")]
        public async Task<ActionResult<List<TBL_HR_EMPLOYEE_DETAILSDto>>> GetOtherInfoAsync()
        {
            try
            {
                
                var hR_Employees = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_DETAILS>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<TBL_HR_EMPLOYEE_DETAILS>, IReadOnlyList<TBL_HR_EMPLOYEE_DETAILSDto>>(hR_Employees);

                return Ok(new List<TBL_HR_EMPLOYEE_DETAILSDto>(data));
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetOtherInfoById")]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_DETAILSDto>> GetOtherInfoByIdAsync(int Id)
        {
            try
            {
                var employee = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_DETAILS>().GetByIdAsync(Id);
                if (employee == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<TBL_HR_EMPLOYEE_DETAILS, TBL_HR_EMPLOYEE_DETAILSDto>(employee);
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
        [HttpPost("AddOtherInfo")]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_DETAILSDto>> AddOtherInfoAsync(TBL_HR_EMPLOYEE_DETAILSDto OtherInfoDto)
        {
            try
            {
                var employee = _mapper.Map<TBL_HR_EMPLOYEE_DETAILSDto, TBL_HR_EMPLOYEE_DETAILS>(OtherInfoDto);
                _unitOfWork.Repository<TBL_HR_EMPLOYEE_DETAILS>().Add(employee);
                var result = await _unitOfWork.Complete();


                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating AddOtherInfoAsync"));
                return _mapper.Map<TBL_HR_EMPLOYEE_DETAILS, TBL_HR_EMPLOYEE_DETAILSDto>(employee);
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
    }
}
