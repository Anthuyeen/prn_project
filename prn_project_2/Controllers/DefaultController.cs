using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using prn_project_2.Models;
using System.Globalization;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Security.Cryptography;
using System.Diagnostics;

namespace prn_project_2.Controllers
{
    public class DefaultController : Controller
    {
        public IActionResult Timetable(int year, int week)
        {
            var view = View("Views/Index.cshtml");
            PrnProject1Context context = new PrnProject1Context();
            List<Student> students = context.Students.ToList();
            ViewBag.id = new MultiSelectList(students, "StudentId", "StudentName");
            List<ActivityDetail> activities = context.ActivityDetails.ToList<ActivityDetail>()
                .FindAll(x => x.StudentId == "HE160369")
                .OrderBy(x => x.Time).ToList<ActivityDetail>();
            ViewBag.Activities = activities;

            DateTimeFormatInfo dfi = DateTimeFormatInfo.CurrentInfo;
            Calendar cal = dfi.Calendar;
            week = (week == 0) ? cal.GetWeekOfYear(DateTime.Now, dfi.CalendarWeekRule, dfi.FirstDayOfWeek) - 1 : week;
            year = (year == 0) ? Convert.ToInt32(DateTime.Now.ToString("yyyy")) : year;

            DateTime start = FirstDateOfWeekISO8601(year, week);
            DateTime end = FirstDateOfWeekISO8601(year, week).AddDays(6);
            ViewBag.Start = start;
            ViewBag.End = end;
            ViewBag.Selected = week;
            ViewBag.Year = year;
            ViewBag.WeekList = GetWeeks(year);
            return view;
        }
        public IActionResult DetailPage(int aid)
        {
            var view = View("Views/DetailPage.cshtml");
            PrnProject1Context context = new PrnProject1Context();
            ActivityDetail activitiy = context.ActivityDetails.Where(x => x.ActivityId == aid).First();
            ViewBag.Activitiy = activitiy;
            Subject subject = context.Subjects.Where(x => x.SubjectId == activitiy.SubjectId).First();
            ViewBag.Subject = subject;
            return view;
        }

        public IActionResult InstructorPage(string aspx)
        {
            var view = View("Views/Instructor.cshtml");
            PrnProject1Context context = new PrnProject1Context();
            Teacher teacher = context.Teachers.Where(x => x.TeacherId.Equals(aspx)).First();
            ViewBag.Teachers = teacher;
            return view;
        }

        public static DateTime FirstDateOfWeekISO8601(int year, int weekOfYear)
        {
            DateTime jan1 = new DateTime(year, 1, 1);
            int daysOffset = DayOfWeek.Thursday - jan1.DayOfWeek;

            // Use first Thursday in January to get first week of the year as
            // it will never be in Week 52/53
            DateTime firstThursday = jan1.AddDays(daysOffset);
            var cal = CultureInfo.CurrentCulture.Calendar;
            int firstWeek = cal.GetWeekOfYear(firstThursday, CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday);

            var weekNum = weekOfYear;
            // As we're adding days to a date in Week 1,
            // we need to subtract 1 in order to get the right date for week #1
            if (firstWeek == 1)
            {
                weekNum -= 1;
            }

            // Using the first Thursday as starting week ensures that we are starting in the right year
            // then we add number of weeks multiplied with days
            var result = firstThursday.AddDays(weekNum * 7);

            // Subtract 3 days from Thursday to get Monday, which is the first weekday in ISO8601
            return result.AddDays(-3);
        }

        public static List<Week> GetWeeks(int year)
        {
            List<Week> weeks = new List<Week>();
            for (int i = 1; i < 53; i++)
            {
                DateTime start = FirstDateOfWeekISO8601(year, i);
                DateTime end = FirstDateOfWeekISO8601(year, i).AddDays(6);
                string w = start.ToString("dd") + "/" + start.ToString("MM") + " To " + end.ToString("dd") + "/" + end.ToString("MM");
                weeks.Add(new Week(i, w));
            }
            return weeks;
        }
    }
}
