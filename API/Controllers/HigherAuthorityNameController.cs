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


                SelectList higherAuthorityNameList = null;
                if (data != null && data.Count > 0)
                {
                    higherAuthorityNameList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.HigherAuthority_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(higherAuthorityNameList);

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
