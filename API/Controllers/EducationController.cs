using System;
using System.Threading.Tasks;
using API.Dtos;
using ApplicationLayer.Interfaces;
using AutoMapper;
using Core.Entities;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class EducationController : ControllerBase
    {
        private readonly IEducationService _education;
        private readonly IMapper _mapper;
        public EducationController(IEducationService education, IMapper mapper)
        {
            _education = education;
            _mapper = mapper;
        }
        [HttpGet("GetEducation")]
        public async Task<ActionResult> GetEducationAsync()
        {
            try
            {
                return Ok(await _education.GetAll());
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
        [HttpGet("GetEducationById")]
        public async Task<ActionResult> GetEducationByIdAsync(int Id)
        {
            try
            {
                return Ok(await _education.FindById(Id));
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
        [HttpPost("AddEducation")]
        public async Task<ActionResult> AddEducationAsync(TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto EducationDto)
        {
            try
            {
                return Ok(await _education.Insert(_mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>(EducationDto)));
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
    }
}
