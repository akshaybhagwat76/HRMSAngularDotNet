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
    public class CompanyController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public CompanyController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("companies")]
        public async Task<ActionResult<List<Sys_CompnayDto>>> GetCompanyAsync()
        {
            try
            {
                var compnanys = await _unitOfWork.Repository<sys_Compnays>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<sys_Compnays>, IReadOnlyList<Sys_CompnayDto>>(compnanys);

                return Ok(new List<Sys_CompnayDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
