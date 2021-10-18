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
    public class BranchController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public BranchController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("branches")]
        public async Task<ActionResult<List<Sys_BranchDto>>> GetBranchAsync()
        {
            try
            {
                var branches = await _unitOfWork.Repository<Sys_Branch>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_Branch>, IReadOnlyList<Sys_BranchDto>>(branches);
                SelectList branchList = null;
                if (data != null && data.Count > 0)
                {
                    branchList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.Branch_Name }),
              "Value",
              "Text"
              );
                }
                return Ok(branchList);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
