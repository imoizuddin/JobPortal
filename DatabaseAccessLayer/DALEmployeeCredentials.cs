using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessAccessLayer;

namespace DatabaseAccessLayer
{
    public class DALEmployeeCredentials
    {
        string connectionString = "Data Source=WIN-JIKA3OO75OT\\SQLEXPRESS;Initial Catalog=JobSolutions;Integrated Security=True";

        public List<BALEmployeeCredentials> GetEmployeeCredentials()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[EmployerCredentials]", connection);
            connection.Open();
            SqlDataReader data = cmd.ExecuteReader();
            //SQLDATAREADER--- read- only fwd only data

            List<BALEmployeeCredentials> employees = new List<BALEmployeeCredentials>();
            while (data.Read())
            {
                BALEmployeeCredentials e = new BALEmployeeCredentials();


                e.EmployeeId = Convert.ToInt32(data["employee_id"]); //name should be same as in database column
                e.Name = data[1].ToString();
                e.Email = data[2].ToString();
                e.Password = data[3].ToString();
                e.Phone = data[4].ToString();
                e.CompanyName = data[5].ToString();
                
                employees.Add(e);
            }


            connection.Close();
            connection.Dispose();
            return employees;
        }


    }
}
