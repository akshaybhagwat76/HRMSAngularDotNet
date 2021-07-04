using Core.Entities;
using Core.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Data
{
    public class EducationRepository : IEducationRepository
    {
        private readonly StoreContext _context;

        public EducationRepository(StoreContext context)
        {
            _context = context;
        }

        public async Task<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> GetEducationByIdAsync(int id)
        {
            return await _context.HR_EMPLOYEE_EDUCATION_DETAILs.FirstOrDefaultAsync(p=>p.Id == id);
        }

        public async Task<IReadOnlyList<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>> GetEducationsAsyn()
        {
            return await _context.HR_EMPLOYEE_EDUCATION_DETAILs.ToListAsync();
        }
    }
}
