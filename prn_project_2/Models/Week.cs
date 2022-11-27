namespace prn_project_2.Models
{
    public class Week
    {
        public Week()
        {
        }

        public Week(int weekN, string weekS)
        {
            WeekN = weekN;
            WeekS = weekS;
        }

        public int WeekN { get; set; }
        public string WeekS { get; set; }
    }
}
