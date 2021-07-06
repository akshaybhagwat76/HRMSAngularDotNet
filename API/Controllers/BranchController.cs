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

                return Ok(new List<Sys_BranchDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
