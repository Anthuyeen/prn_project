using System;
using System.Collections.Generic;

namespace prn_project_2.Models;

public partial class Teacher
{
    public Teacher()
    {
        ActivityDetails = new HashSet<ActivityDetail>();
    }

    public string TeacherId { get; set; }
    public string TeacherName { get; set; }
    public string Email { get; set; }

    public virtual ICollection<ActivityDetail> ActivityDetails { get; set; }
}
