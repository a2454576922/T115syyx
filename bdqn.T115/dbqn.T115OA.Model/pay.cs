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
    
    public partial class pay
    {
        public pay()
        {
            this.Student = new HashSet<StudentFile>();
        }
    
        public int Id { get; set; }
        public string payName { get; set; }
        public System.DateTime Time { get; set; }
    
        public virtual ICollection<StudentFile> Student { get; set; }
    }
}
