//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace dbqn.T115OA.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ActionInfo
    {
        public ActionInfo()
        {
            this.Department = new HashSet<Department>();
            this.Role = new HashSet<Role>();
            this.MenuInfo = new HashSet<MenuInfo>();
            this.User = new HashSet<User>();
        }
    
        public int Id { get; set; }
        public string ActionName { get; set; }
        public string Url { get; set; }
        public string HttpMeThod { get; set; }
        public string Remark { get; set; }
        public System.DateTime SubTime { get; set; }
        public int SubBy { get; set; }
        public int State { get; set; }
    
        public virtual ICollection<Department> Department { get; set; }
        public virtual ICollection<Role> Role { get; set; }
        public virtual ICollection<MenuInfo> MenuInfo { get; set; }
        public virtual ICollection<User> User { get; set; }
    }
}
