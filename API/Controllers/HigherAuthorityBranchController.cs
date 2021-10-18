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
using Microsoft.AspNetCore.Mvc.Rendering;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class HigherAuthorityBranchController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public HigherAuthorityBranchController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("higherauthoritybranches")]
        public async Task<ActionResult<List<Sys_HigherAuthorityBranchesDto>>> GetHigherAuthorityBranchAsync()
        {
            try
            {
                var higherAuthoritiyBranches = await _unitOfWork.Repository<tbl_HigherAuthorityBranch>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<tbl_HigherAuthorityBranch>, IReadOnlyList<Sys_HigherAuthorityBranchesDto>>(higherAuthoritiyBranches);


                SelectList higherAuthorityBranchList = null;
                if (data != null && data.Count > 0)
                {
                    higherAuthorityBranchList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.HigherAuthority_Branch }),
              "Value",
              "Text"
          );
                }
                return Ok(higherAuthorityBranchList);

            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

    }
}
