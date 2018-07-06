 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.IDbSession
{

    using T115.IDal;
	
    public partial interface IDbSession
    {
		IActionInfoDal ActionInfoDal { get; }

		IClassManagementDal ClassManagementDal { get; }

		IConsultDal ConsultDal { get; }

		IDepartmentDal DepartmentDal { get; }

		IeducationDal educationDal { get; }

		IFamilyDal FamilyDal { get; }

		IMenuInfoDal MenuInfoDal { get; }

		IpayDal payDal { get; }

		IRoleDal RoleDal { get; }

		ISourceDal SourceDal { get; }

		IStudentFileDal StudentFileDal { get; }

		IUserDal UserDal { get; }

	}
	
}