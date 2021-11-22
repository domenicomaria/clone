using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Reception;
using WebReception.Models;

namespace WebReception.Controllers
{
    public class ReceptionController<T> : Controller where T : class
    {
        protected readonly IConfiguration configuration;

        protected readonly IRepo<T> repo;

        public ReceptionController(IConfiguration configuration, IRepo<T> repository)
        {
            this.configuration = configuration;

            repo = repository;


        }
        public IActionResult Index()
        {

            return View(repo.GetAll());
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
