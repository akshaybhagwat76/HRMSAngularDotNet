using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Persistent.Repository
{
    public class Repository<T> : IRepository<T> where T : BaseEntity
    {
        private readonly FreelencerDBContext _dBContext;
        public Repository(FreelencerDBContext dBContext)
        {
            _dBContext = dBContext;
        }
        public async Task<T> Delete(int Id)
        {
            throw new NotImplementedException();
        }

        public async Task<IQueryable<T>> FindByCondition(Expression<Func<T, bool>> filter)
        {
            return await Task.FromResult(_dBContext.Set<T>().Where(filter).AsNoTracking());
        }

        public async Task<T> FindById(int Id)
        {
            return await _dBContext.Set<T>().AsNoTracking().FirstOrDefaultAsync(x => x.Id.Equals(Id));
        }

        public async Task<IEnumerable<T>> GetAll()
        {

            return await _dBContext.Set<T>().AsNoTracking().ToListAsync();
        }

        public async Task<T> Insert(T entity)
        {
            if (entity is IAuditableEntity auditable)
            {
                auditable.CreatedBy_Login_Session_Id = 0;
                auditable.CreatedBy_Login_User_Id = 0;
                auditable.CreatedFrom_API_Name = "";
                auditable.CreatedFrom_Page = "";
                auditable.CreatedFrom_Sub_Menu_Id = 0;
                auditable.CreatedOn_Date = DateTime.Now;
            }
            _dBContext.Set<T>().Add(entity);
            await _dBContext.SaveChangesAsync();
            return entity;
        }

        public Task<T> Insert(int EmpId, T Entity)
        {
            throw new NotImplementedException();
        }

        public async Task<T> Update(T entity)
        {
            if (entity is IAuditableEntity auditable)
            {
                auditable.UpdatedBy_Login_Session_Id = 0;
                auditable.UpdatedBy_Login_User_Id = 0;
                auditable.UpdatedFrom_API_Name = "";
                auditable.UpdatedFrom_Page = "";
                auditable.UpdatedFrom_Sub_Menu_Id = 0;
                auditable.UpdatedOn_Date = DateTime.Now;
            }
            _dBContext.Set<T>().Update(entity);
            await _dBContext.SaveChangesAsync();
            return entity;
        }

        public Task<T> Update(int EmpId, T Entity)
        {
            throw new NotImplementedException();
        }
    }
}
