 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.IDbSession
{

    using IDal;
	
    public partial interface IDbSession
    {
		IActionInfoDal ActionInfoDal { get; }

		IDepartmentDal DepartmentDal { get; }

		IMenuInfoDal MenuInfoDal { get; }

		IRoleDal RoleDal { get; }

		IUserDal UserDal { get; }

	}
	
}