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

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EducationalQualificationController : BaseApiController
    {

        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public EducationalQualificationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("Qualifications")]
        public async Task<ActionResult<List<Sys_EducationalQualificationDto>>> GeteducationalQualificationAsync()
        {
            try
            {
                var educationalQualification = await _unitOfWork.Repository<Sys_EducationalQualification>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_EducationalQualification>, IReadOnlyList<Sys_EducationalQualificationDto>>(educationalQualification);

                return Ok(new List<Sys_EducationalQualificationDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
