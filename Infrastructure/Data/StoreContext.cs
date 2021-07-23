﻿using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System.Reflection;
namespace Infrastructure.Data
{
    public class StoreContext : DbContext
    {
        public StoreContext(DbContextOptions<StoreContext> options) : base(options)
        {
        }
        public DbSet<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> HR_EMPLOYEE_EDUCATION_DETAILs { get; set; }
        public DbSet<Tbl_HR_Employee> Tbl_HR_Employee { get; set; }
        public DbSet<sys_Compnays> sys_Compnays { get; set; }
        public DbSet<Sys_Branch> sys_Branches { get; set; }
        public DbSet<Sys_Cast> sys_Cast { get; set; }
        public DbSet<Sys_BloodGroup> sys_BloodGroup { get; set; }
        public DbSet<Sys_DESIGNATION> sys_DESIGNATIONs { get; set; }
        public DbSet<Sys_COUNTRY> sys_COUNTRies { get; set; }
        public DbSet<Sys_DEPARTMENT> sys_DEPARTMENTs { get; set; }
        public DbSet<Sys_WorkingStatus> Sys_WorkingStatus { get; set; }
        public DbSet<Sys_Employee_Category> sys_Employee_Category { get; set; }
        public DbSet<Sys_Employee_Type> sys_Employee_Type { get; set; }
        public DbSet<Sys_HigherAuthority> sys_HigherAuthority { get; set; }
        public DbSet<Sys_HigherAuthorityName> sys_HigherAuthorityName { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_NOMINEE_DETAILS> TBL_HR_EMPLOYEE_NOMINEE_DETAILS { get; set; }
        public DbSet<TBL_HR_EMPLOYEE_DETAILS> TBL_HR_EMPLOYEE_DETAILS { get; set; }
        public DbSet<Sys_RelationShip> sys_RelationShip { get; set; }
        public DbSet<Sys_STATE> sys_STATE { get; set; }
        public DbSet<Sys_ThirdPartyType> sys_ThirdPartyType { get; set; }
        public DbSet<Sys_UserType> sys_UserType { get; set; }
        public DbSet<Sys_REGION_ZONE> sys_REGION_ZONE { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        }
    }
}
