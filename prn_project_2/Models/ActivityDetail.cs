using System;
using System.Collections.Generic;

namespace prn_project_2.Models;

public partial class ActivityDetail
{
    public int ActivityId { get; set; }
    public string StudentId { get; set; }
    public string SubjectId { get; set; }
    public string TeacherId { get; set; }
    public string StudentGroup { get; set; }
    public string Classroom { get; set; }
    public int Slot { get; set; }
    public DateTime Time { get; set; }
    public int CourseSessionNumber { get; set; }
    public string Campus { get; set; }
    public string Booker { get; set; }

    public DateTime recordTime { get; set; }
    public virtual Student Student { get; set; }
    public virtual Subject Subject { get; set; }
    public virtual Teacher Teacher { get; set; }
}
