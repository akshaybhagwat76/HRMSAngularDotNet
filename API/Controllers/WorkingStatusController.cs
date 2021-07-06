using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specifications;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class WorkingStatusController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public WorkingStatusController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("status")]
        public async Task<ActionResult<List<Sys_WorkingStatusDto>>> GetWorkingStatusAsync()
        {
            try
            {
                var workingStatuses = await _unitOfWork.Repository<Sys_WorkingStatus>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_WorkingStatus>, IReadOnlyList<Sys_WorkingStatusDto>>(workingStatuses);

                return Ok(new List<Sys_WorkingStatusDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
