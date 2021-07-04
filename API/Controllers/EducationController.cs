using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using API.Helpers;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specifications;
using Infrastructure.Services;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class EducationController : BaseApiController
    {
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;

        public EducationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        [HttpGet("GetEducation")]
        public async Task<ActionResult<List<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>>> GetEducationAsync()
        {
            try
            {
                var products = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>, IReadOnlyList<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>>(products);

                return Ok(new List<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(data));
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
        [HttpGet("GetEducationById")]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>> GetEducationByIdAsync(int Id)
        {
            try
            {
                var spec = new EducationSpecification(Id);
                var tBL_HR_EMPLOYEE = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().GetEntityWithSpec(spec);
                if (tBL_HR_EMPLOYEE == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(tBL_HR_EMPLOYEE);
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
        [HttpPost("AddEducation")]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>> AddEducationAsync(TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto EducationDto)
        {
            try
            {
                var tBL_HR_EMPLOYEE = _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>(EducationDto);
                _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Add(tBL_HR_EMPLOYEE);
                var result = await _unitOfWork.Complete();


                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating education"));
                return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(tBL_HR_EMPLOYEE);
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
    }
}
