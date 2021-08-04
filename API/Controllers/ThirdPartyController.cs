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
    public class ThirdPartyController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public ThirdPartyController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("thirdparty")]
        public async Task<ActionResult<List<Sys_ThirdPartyDto>>> GetThirdPartyAsync()
        {
            try
            {
                var thirdParty = await _unitOfWork.Repository<Sys_ThirdParty>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_ThirdParty>, IReadOnlyList<Sys_ThirdPartyDto>>(thirdParty);

                return Ok(new List<Sys_ThirdPartyDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
