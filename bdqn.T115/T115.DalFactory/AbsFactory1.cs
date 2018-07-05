 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.DalFactory
{

    using T115.IDal;
    using T115.Common;
	
	public abstract partial class AbsFactory
    {
		public abstract IActionInfoDal CreateActionInfoDal();
		public abstract IDepartmentDal CreateDepartmentDal();
		public abstract IMenuInfoDal CreateMenuInfoDal();
		public abstract IRoleDal CreateRoleDal();
		public abstract IUserDal CreateUserDal();
	}
}