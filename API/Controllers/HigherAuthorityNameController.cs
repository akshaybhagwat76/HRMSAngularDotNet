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
    public class HigherAuthorityNameController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public HigherAuthorityNameController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("higherauthorityname")]
        public async Task<ActionResult<List<Sys_HigherAuthorityNameDto>>> GetHigherAuthorityAsync()
        {
            try
            {
                var higherAuthorities = await _unitOfWork.Repository<Sys_HigherAuthorityName>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_HigherAuthorityName>, IReadOnlyList<Sys_HigherAuthorityNameDto>>(higherAuthorities);

                return Ok(new List<Sys_HigherAuthorityNameDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
