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
    public class DesignationController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public DesignationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("designations")]
        public async Task<ActionResult<List<Sys_DESIGNATIONDto>>> GetDesignationAsync()
        {
            try
            {
                var designations = await _unitOfWork.Repository<Sys_DESIGNATION>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_DESIGNATION>, IReadOnlyList<Sys_DESIGNATIONDto>>(designations);

                return Ok(new List<Sys_DESIGNATIONDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
