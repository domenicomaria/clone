using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using WebReception.Models;

namespace WebReception.Controllers
{
    public class ReferentiController : Controller
    {
        private readonly ILogger<ReferentiController> _logger;

        private readonly IConfiguration _configuration;

        public ReferentiController(IConfiguration configuration, ILogger<ReferentiController> logger)
        {
            _configuration = configuration;

            _logger = logger;
        }

        public IActionResult Index()
        {

            Reception.RepoReferente repoReferenti = new Reception.RepoReferente();

            return View(repoReferenti.GetAll(_configuration));
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}