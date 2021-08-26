using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobPortal.Models
{
    public class UserCredentialsModel
    {
        public int JobseekerId { get; set; }

        public string Name { get; set; }

        public string Email { get; set; }

        public string Password { get; set; }

        public int Phone { get; set; }

        public int TotalExperience { get; set; }

        public string Location { get; set; }

        public int NoticePeriod { get; set; }

        public string CurrentCompany { get; set; }

        public string Designation { get; set; }
    }
}