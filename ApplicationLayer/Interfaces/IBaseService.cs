using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace ApplicationLayer.Interfaces
{
    public interface IBaseService<T> where T : BaseEntity
    {
        Task<IEnumerable<T>> GetAll();
        Task<IQueryable<T>> FindByCondition(Expression<Func<T, bool>> filter);
        Task<T> FindById(int Id);
        Task<T> Insert(T entity);
        Task<T> Insert(int EmpId, T Entity);
        Task<T> Update(T entity);
        Task<T> Update(int EmpId, T Entity);
        Task<T> Delete(int Id);
    }
}
