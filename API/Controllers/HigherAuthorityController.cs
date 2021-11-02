using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specifications;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using static API.Helpers.Common;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class HigherAuthorityController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public HigherAuthorityController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("higherauthorites")]
        public async Task<ActionResult<List<Sys_HigherAuthorityDto>>> GetHigherAuthorityAsync()
        {
            try
            {
                var higherAuthorities = await _unitOfWork.Repository<Sys_HigherAuthority>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_HigherAuthority>, IReadOnlyList<Sys_HigherAuthorityDto>>(higherAuthorities);

                List<ReplyFormat> lstHigherAuthority = null;

                if (data != null && data.Count > 0)
                {
                    lstHigherAuthority = data.Select(x => new ReplyFormat { Value = x.Id, Text = x.HigherAuthority, Group = x.HigherAuthorityBranchId }).ToList();
                }
                return Ok(lstHigherAuthority);            
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
