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

                List<ReplyFormat> lstCompany = null;

                if (data != null && data.Count > 0)
                {
                    lstCompany = data.Select(x => new ReplyFormat { Value = x.Id, Text = x.Compnay_Name, GroupText = x.Compnay_Code }).ToList();
                }
                return Ok(lstCompany);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
