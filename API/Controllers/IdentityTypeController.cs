using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class IdentityTypeController : ControllerBase
    {

        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public IdentityTypeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("IdentityType")]
        public async Task<ActionResult<List<Sys_IdentityTypeDto>>> GetIdentityTypeAsync()
        {
            try
            {
                var bloodGroups = await _unitOfWork.Repository<Sys_IdentityType>().ListAllAsync();
                var data = _mapper.Map<IReadOnlyList<Sys_IdentityType>, IReadOnlyList<Sys_IdentityTypeDto>>(bloodGroups);
                return Ok(new List<Sys_IdentityTypeDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
