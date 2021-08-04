using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class BloodGroupController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public BloodGroupController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("bloodgroup")]
        public async Task<ActionResult<List<Sys_BloodGroupDto>>> GetBloodGroupsAsync()
        {
            try
            {
                var bloodGroups = await _unitOfWork.Repository<Sys_BloodGroup>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_BloodGroup>, IReadOnlyList<Sys_BloodGroupDto>>(bloodGroups);

                return Ok(new List<Sys_BloodGroupDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
