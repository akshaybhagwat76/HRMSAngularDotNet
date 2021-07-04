using System;
using System.Collections.Generic;
using System.Text;
using ApplicationLayer.Interfaces;
using Core.Entities;
using Persistent;
using Persistent.Repository;

namespace ApplicationLayer.Services
{
    public class EducationService : BaseService<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>, IEducationService
    {
        private readonly FreelencerDBContext _dBContext;
        public EducationService(IRepository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> repo, FreelencerDBContext dBContext) : base(repo)
        {
            _dBContext = dBContext;
        }
    }
}
