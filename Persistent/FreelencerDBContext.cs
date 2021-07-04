using Core.Entities;
using Microsoft.EntityFrameworkCore;
namespace Persistent
{
    public class FreelencerDBContext : DbContext
    {
        public FreelencerDBContext(DbContextOptions<FreelencerDBContext> options): base(options)
        {
        }
        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        //    modelBuilder.Entity<Tbl_HR_Employee>().ToTable("tbl_HR_Employees");
        //}
        public DbSet<Sys_Branch> sys_Branches { get; set; }
        public DbSet<Sys_Compnay> sys_Compnays { get; set; }
        public DbSet<Sys_COUNTRY> sys_COUNTRies { get; set; }
        public DbSet<Sys_DEPARTMENT> sys_DEPARTMENTs { get; set; }
        public DbSet<Sys_DESIGNATION> sys_DESIGNATIONs { get; set; }
        public DbSet<Sys_DISTRICT> sys_DISTRICTs { get; set; }
        public DbSet<Sys_PRODUCTION_UNIT> sys_PRODUCTIONs { get; set; }
        public DbSet<Sys_REGION_ZONE> sys_REGIONs { get; set; }
        public DbSet<Sys_STATE> sys_STATEs { get; set; }
        public DbSet<Sys_Warehouse> Sys_Warehouses { get; set; }
        public DbSet<Tbl_HR_Employee> tbl_HR_Employees { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILS> tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_DETAILS> tBL_HR_EMPLOYEE_DETAILs { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> tBL_HR_EMPLOYEE_EDUCATION_s { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_EXPERIENCE_DETAILS> tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_FAMILY_DETAILS> tBL_HR_EMPLOYEE_FAMILY_DETAILs { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILS> tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_NOMINEE_DETAILS> tBL_HR_EMPLOYEE_NOMINEE_DETAILs { get; set; }
        public DbSet<TBL_HR_LOGIN_USER> tBL_HR_LOGIN_USERs { get; set; }
    }
}
