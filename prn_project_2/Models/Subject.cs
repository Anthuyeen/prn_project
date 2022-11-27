using System;
using System.Collections.Generic;

namespace prn_project_2.Models;

public partial class Subject
{
    public Subject()
    {
        ActivityDetails = new HashSet<ActivityDetail>();
    }

    public string SubjectId { get; set; }
    public string SubjectName { get; set; }

    public virtual ICollection<ActivityDetail> ActivityDetails { get; set; }
}
