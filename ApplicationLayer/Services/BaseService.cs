using ApplicationLayer.Interfaces;
using Core.Entities;
using Persistent.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace ApplicationLayer.Services
{
    public abstract class BaseService<T> : IBaseService<T> where T : BaseEntity
    {
        private readonly IRepository<T> _repo;
        public BaseService(IRepository<T> repo)
        {
            _repo = repo;
        }
        public Task<T> Delete(int Id)
        {
            throw new NotImplementedException();
        }

        public async Task<IQueryable<T>> FindByCondition(Expression<Func<T, bool>> filter)
        {
            return await _repo.FindByCondition(filter).ConfigureAwait(false);
        }

        public async Task<T> FindById(int Id)
        {
            return await _repo.FindById(Id).ConfigureAwait(false);
        }

        public async Task<IEnumerable<T>> GetAll()
        {
            return await _repo.GetAll().ConfigureAwait(false);
        }

        public async Task<T> Insert(T entity)
        {
            return await _repo.Insert(entity).ConfigureAwait(false);
        }

        public Task<T> Insert(int EmpId, T Entity)
        {
            throw new NotImplementedException();
        }

        public async Task<T> Update(T entity)
        {
            return await _repo.Update(entity).ConfigureAwait(false);
        }

        public Task<T> Update(int EmpId, T Entity)
        {
            throw new NotImplementedException();
        }
    }
}
