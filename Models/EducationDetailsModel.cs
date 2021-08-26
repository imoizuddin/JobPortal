using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobPortal.Models
{
    public class EducationDetailsModel
    {
        public int JobseekerId { get; set; }
        public string Qualification { get; set; }
        public string Specialization { get; set; }
        public string University { get; set; }
        public string CourseType { get; set; }
        public DateTime PassingYear { get; set; }
    }
}