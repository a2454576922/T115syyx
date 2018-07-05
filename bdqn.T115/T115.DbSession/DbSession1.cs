﻿ 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.DbSession
{
    using IDbSession;
    using IDal;
    using System.Data.Entity;
    using DbContextFactory;
	
    public partial class DbSession:IDbSession
    {
		public  IActionInfoDal ActionInfoDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateActionInfoDal();
            }
        }

		public  IDepartmentDal DepartmentDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateDepartmentDal();
            }
        }

		public  IMenuInfoDal MenuInfoDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateMenuInfoDal();
            }
        }

		public  IRoleDal RoleDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateRoleDal();
            }
        }

		public  IUserDal UserDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateUserDal();
            }
        }

	}
}