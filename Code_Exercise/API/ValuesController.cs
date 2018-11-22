using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Code_Exercise.Models;
using System.IO;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Code_Exercise.API
{
    [Route("api/[controller]")]
    public class ValuesController : Controller
    {
        //Should actually put this in a config.json file or app context file.
        string connectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=CodeExercise;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        //Indexes for the reader. Would be better to store in helper class.
        int idIndex = 0;
        int firstNameIndex = 3;
        int lastNameIndex = 4;
        int emailIndex = 5;
        int positionIndex = 6;
        // GET: api/<controller>
        [HttpGet]
        public List<Employee> Get()
        {
            List<Employee> employees = new List<Employee>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                /*Writing prepared statements. 
                 * I would rather use an entity interface with linq to make the queries.
                 * That would give better security and if a DB change happened linq would throw an error.
                */
                string queryString = "SELECT * FROM Employees WHERE active = 1 ORDER BY create_on desc";
                SqlCommand command = new SqlCommand(queryString, connection);
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    //Read the data
                    while (reader.Read())
                    {
                        //load data into list
                        Employee emp = new Employee();
                        emp.Id = reader.GetInt32(idIndex);
                        emp.FirstName = reader.GetString(firstNameIndex);
                        emp.LastName = reader.GetString(lastNameIndex);
                        emp.Email = reader.GetString(emailIndex);
                        emp.Position = reader.GetString(positionIndex);
                        employees.Add(emp);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }


            }
            return employees;
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public Employee Get(int id)
        {
            Employee emp = new Employee();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                emp = getEmployeeById(id, connection);
            }
                return emp;
        }

        // POST api/<controller>
        [HttpPost]
        public Employee Post([FromBody]string value)
        {
            Stream req = Request.Body;
            req.Seek(0, System.IO.SeekOrigin.Begin);
            string json = new StreamReader(req).ReadToEnd();
            Employee updatedEmployee = this.parseJSONString(json);
            Employee emp = new Employee();
            int id = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                /*Writing prepared statements. 
                 * I would rather use an entity interface with linq to make the queries.
                 * That would give better security and if a DB change happened linq would throw an error.
                */
                string queryString = String.Format("INSERT INTO Employees (id, create_on, last_updated, first_name, last_name, email, position, active, let_go) OUTPUT Inserted.id VALUES((SELECT MAX(id) + 1 FROM Employees), '{4}', '{4}', '{0}', '{1}', '{2}', '{3}', 1, 0)",
                    updatedEmployee.FirstName,
                    updatedEmployee.LastName,
                    updatedEmployee.Email,
                    updatedEmployee.Position,
                    DateTime.Now
                    );
                SqlCommand command = new SqlCommand(queryString, connection);
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    //Read the data
                    if (reader.Read())
                    {
                        //load data into list

                        id = reader.GetInt32(idIndex);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
                if (id >= 0)
                {
                    emp = getEmployeeById(id, connection);
                }
            }
            return emp;
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public Employee Put(int id, [FromBody]string value)
        {
            Stream req = Request.Body;
            req.Seek(0, System.IO.SeekOrigin.Begin);
            string json = new StreamReader(req).ReadToEnd();
            Employee updatedEmployee = this.parseJSONString(json);
            Employee emp = new Employee();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                /*Writing prepared statements. 
                 * I would rather use an entity interface with linq to make the queries.
                 * That would give better security and if a DB change happened linq would throw an error.
                */
                string queryString = String.Format("UPDATE Employees SET first_name = '{0}', last_name = '{1}', email = '{2}', position = '{3}', last_updated = '{4}' WHERE Id = {5:D}", 
                    updatedEmployee.FirstName,
                    updatedEmployee.LastName,
                    updatedEmployee.Email,
                    updatedEmployee.Position,
                    DateTime.Now,
                    id);
                SqlCommand command = new SqlCommand(queryString, connection);
                command.ExecuteNonQuery();
                emp = getEmployeeById(id, connection);
            }
            return emp;
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public Employee Delete(int id)
        {
            Employee emp = new Employee();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                /*Writing prepared statements. 
                 * I would rather use an entity interface with linq to make the queries.
                 * That would give better security and if a DB change happened linq would throw an error.
                */
                string queryString = String.Format("UPDATE Employees SET active = 0, last_updated = '{0}' WHERE Id = {1:D}",
                    DateTime.Now,
                    id);
                SqlCommand command = new SqlCommand(queryString, connection);
                command.ExecuteNonQuery();
                emp = getEmployeeById(id, connection);

            }
            return emp;
        }

        Employee getEmployeeById(int id, SqlConnection connection)
        {
            Employee emp = new Employee();
                /*Writing prepared statements. 
                 * I would rather use an entity interface with linq to make the queries.
                 * That would give better security and if a DB change happened linq would throw an error.
                */
                string queryString = String.Format("SELECT * FROM Employees WHERE Id = {0:D}", id);
                SqlCommand command = new SqlCommand(queryString, connection);
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    //Read the data
                    if (reader.Read())
                    {
                        //load data into list

                        emp.Id = reader.GetInt32(idIndex);
                        emp.FirstName = reader.GetString(firstNameIndex);
                        emp.LastName = reader.GetString(lastNameIndex);
                        emp.Email = reader.GetString(emailIndex);
                        emp.Position = reader.GetString(positionIndex);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
            return emp;
        }

        Employee parseJSONString(string jsonString)
        {
            Employee emp = new Employee();
            string[] jsonStringArray = jsonString.Substring(1, jsonString.Length - 2).Split(',');
            foreach(string property in jsonStringArray)
            {
                string[] mapPair = property.Split(':');
                string key = mapPair[0].Substring(1, mapPair[0].Length - 2);
                string value = mapPair[1].Substring(1, mapPair[1].Length - 2);
                if (key.Equals("firstName"))
                {
                    emp.FirstName = value;
                }else if (key.Equals("lastName"))
                {
                    emp.LastName = value;
                }
                else if (key.Equals("email"))
                {
                    emp.Email = value;
                }
                else if (key.Equals("position"))
                {
                    emp.Position= value;
                }
            }
            return emp;
        }
    }
}
