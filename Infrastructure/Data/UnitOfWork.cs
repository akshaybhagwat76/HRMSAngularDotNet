using Core.Entities;
using Core.Interfaces;
using System;
using System.Collections;
using System.Threading;
using System.Threading.Tasks;
namespace Infrastructure.Data
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly StoreContext _context;
        private Hashtable __repositories;
        private int beginChangeCount;
        private bool selfManagedTransaction = true;
        public UnitOfWork(StoreContext context)
        {
            _context = context;
        }

        public async Task<int> Complete(bool isEmployeeCommit = false)
        {
            /*if (selfManagedTransaction && isEmployeeCommit)
            {
                return await CommitChanges();
            }
            return 0;
            */
            return await CommitChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }


        public async Task<int> BeginChanges()
        {
            selfManagedTransaction = false;
            Interlocked.Increment(ref beginChangeCount);
            return 1;
        }

        public async Task<int> CommitChanges()
        {
            if (Interlocked.Decrement(ref beginChangeCount) > 0)
            {
                return 0;
            }

            beginChangeCount = 0;
            selfManagedTransaction = true;
            return await _context.SaveChangesAsync();
        }

        public IGenericRepository<TEntity> Repository<TEntity>() where TEntity : BaseEntity
        {
            if (__repositories == null) __repositories = new Hashtable();
            var type = typeof(TEntity).Name;
            if(!__repositories.ContainsKey(type))
            {
                var repositoryType = typeof(GenericRepository<>);
                var repositoryInstance = Activator.CreateInstance(repositoryType.MakeGenericType(typeof(TEntity)), _context);
                __repositories.Add(type, repositoryInstance);
            }
            return (IGenericRepository<TEntity>)__repositories[type];
        }
    }
}
