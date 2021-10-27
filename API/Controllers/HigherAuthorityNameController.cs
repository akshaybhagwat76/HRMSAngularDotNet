using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using static API.Helpers.Common;

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

                List<ReplyFormat> lstHigherAuthorityName = null;

                if (data != null && data.Count > 0)
                {
                    lstHigherAuthorityName = data.Select(x => new ReplyFormat { Value = x.Id, Text = x.HigherAuthority_Name, Group = x.HigherAuthorityId }).ToList();
                }
                return Ok(lstHigherAuthorityName);

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
