using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DatabaseAccessLayer;
using BusinessAccessLayer;
using JobPortal.Models;

namespace JobPortal.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        DALEmployeeCredentials dal = new DALEmployeeCredentials();

        public ActionResult Index()
        {
            List<BALEmployeeCredentials> employeeCredentials = dal.GetEmployeeCredentials();
            List<EmployeeCredentialsModel> elist = new List<EmployeeCredentialsModel>();
            foreach (var item in employeeCredentials)
            {
                EmployeeCredentialsModel e = new EmployeeCredentialsModel();
                e.CompanyName = item.CompanyName;
                e.Name = item.Name;
                e.Email = item.Email;
                e.Password = item.Password;
                e.Phone = item.Phone;
                e.EmployeeId = Convert.ToInt32(item.EmployeeId);

                elist.Add(e);
            }


            return View(elist);
        }

        // GET: Employee/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Employee/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Employee/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
