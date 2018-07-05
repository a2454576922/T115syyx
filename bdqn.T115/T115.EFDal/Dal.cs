 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.EFDal
{
    using dbqn.T115OA.Model;
    using IDal;
	public partial class ActionInfoDal : BaseDal<ActionInfo>,IActionInfoDal
    {
       
    }	
	public partial class DepartmentDal : BaseDal<Department>,IDepartmentDal
    {
       
    }	
	public partial class MenuInfoDal : BaseDal<MenuInfo>,IMenuInfoDal
    {
       
    }	
	public partial class RoleDal : BaseDal<Role>,IRoleDal
    {
       
    }	
	public partial class UserDal : BaseDal<User>,IUserDal
    {
       
    }	
	
}