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
    public class DepartmentController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public DepartmentController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("departments")]
        public async Task<ActionResult<List<Sys_DEPARTMENTDto>>> GetDepartmentAsync()
        {
            try
            {
                var departments = await _unitOfWork.Repository<Sys_DEPARTMENT>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_DEPARTMENT>, IReadOnlyList<Sys_DEPARTMENTDto>>(departments);

                return Ok(new List<Sys_DEPARTMENTDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
