using CarAPI.Models;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace CarAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarsController : ControllerBase
    {
        private string createTable = "CREATE TABLE Cars (Licensplate VARCHAR(16),Make VARCHAR(128),Model VARCHAR(128),Color VARCHAR(128),PRIMARY KEY (Licensplate))";

        // GET: api/<CarsController>
        [HttpGet]
        public IActionResult Funky_Chicken()
        {
            using (var connection = new SqlConnection(System.Environment.GetEnvironmentVariable("ConnectionString")))
            {
                connection.Open();
                try
                {
                    return Ok(connection.Query<Car>("SELECT * FROM dbo.Cars").ToList());
                }
                catch
                {
                    connection.Execute(createTable);
                }
                return Ok(connection.Query<Car>("SELECT * FROM dbo.Cars").ToList());
            }
        }

        // GET api/<CarsController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<CarsController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<CarsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<CarsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
