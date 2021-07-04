using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using ApplicationLayer.Interfaces;
using AutoMapper;
using Core.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace API.Controllers
{
    [ApiController]
    [Route("api/")]
    public class NomineeController : ControllerBase
    {
        private readonly INomineeService _nominee;
        private readonly IMapper _mapper;
        public NomineeController(INomineeService nominee, IMapper mapper)
        {
            _nominee = nominee;
            _mapper = mapper;
        }
        [HttpGet("GetNominee")]
        public async Task<ActionResult> GetNomineeAsync()
        {
            try
            {
                return Ok(await _nominee.GetAll());
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetNomineeById")]
        public async Task<ActionResult> GetNomineeByIdAsync(int Id)
        {
            try
            {
                return Ok(await _nominee.FindById(Id));
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpPost("AddNominee")]
        public async Task<ActionResult> AddNomineeAsync(TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto NomineeDto)
        {
            try
            {
                return Ok(await _nominee.Insert(_mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>(NomineeDto)));
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
    }
}
