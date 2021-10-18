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


                SelectList userTypeList = null;
                if (data != null && data.Count > 0)
                {
                    userTypeList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.UserType_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(userTypeList);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
