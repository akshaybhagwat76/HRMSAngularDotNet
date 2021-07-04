using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using ApplicationLayer.Interfaces;
using AutoMapper;
using Core.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class OtherInfoController : ControllerBase
    {
        private readonly IOtherInfoService _otherInfo;
        private readonly IMapper _mapper;
        public OtherInfoController(IOtherInfoService otherInfo, IMapper mapper)
        {
            _otherInfo = otherInfo;
            _mapper = mapper;
        }
        [HttpGet("GetOtherInfo")]
        public async Task<ActionResult> GetOtherInfoAsync()
        {
            try
            {
                return Ok(await _otherInfo.GetAll());
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
        [HttpGet("GetOtherInfoById")]
        public async Task<ActionResult> GetOtherInfoByIdAsync(int Id)
        {
            try
            {
                return Ok(await _otherInfo.FindById(Id));
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
        [HttpPost("AddOtherInfo")]
        public async Task<ActionResult> AddOtherInfoAsync(TBL_HR_EMPLOYEE_DETAILSDto OtherInfoDto)
        {
            try
            {
                return Ok(await _otherInfo.Insert(_mapper.Map<TBL_HR_EMPLOYEE_DETAILS>(OtherInfoDto)));
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }
    }
}
