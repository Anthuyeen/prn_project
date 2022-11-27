using System;
using System.Collections.Generic;

namespace prn_project_2.Models;

public partial class Student
{
    public Student()
    {
        ActivityDetails = new HashSet<ActivityDetail>();
    }

    public string StudentId { get; set; }
    public string StudentName { get; set; }
    public string Email { get; set; }
    public DateTime Dob { get; set; }

    public virtual ICollection<ActivityDetail> ActivityDetails { get; set; }
}
