using Core.Entities;
using Core.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Data
{
    public class EmployeeRepository : IEmployeeService
    {
        private readonly StoreContext _context;

        public EmployeeRepository(StoreContext context)
        {
            _context = context;
        }

        public async Task<Tbl_HR_Employee> CreateEmployees(Tbl_HR_Employee tbl_HR_Employee)
        {
            await _context.Tbl_HR_Employee.AddAsync(tbl_HR_Employee);
            await _context.SaveChangesAsync();
            return tbl_HR_Employee;
        }

        public async Task<Tbl_HR_Employee> GetEmployeeByIdAsync(int id)
        {
            return await _context.Tbl_HR_Employee.FirstOrDefaultAsync(x => x.Id == id);
        }

        public async Task<IReadOnlyList<Tbl_HR_Employee>> GetEmployeesAsyn()
        {
            return await _context.Tbl_HR_Employee.ToListAsync();
        }
    }
}
