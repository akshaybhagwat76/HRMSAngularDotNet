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
    public class UserTypeController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public UserTypeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("usertype")]
        public async Task<ActionResult<List<Sys_UserTypeDto>>> GetUserTypeAsync()
        {
            try
            {
                var userTypes = await _unitOfWork.Repository<Sys_UserType>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_UserType>, IReadOnlyList<Sys_UserTypeDto>>(userTypes);

                return Ok(new List<Sys_UserTypeDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
