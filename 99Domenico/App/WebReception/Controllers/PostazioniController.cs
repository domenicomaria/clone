using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Reception;
using WebReception.Models;

namespace WebReception.Controllers
{
    public class PostazioniController : Controller
    {
        private readonly ILogger<PostazioniController> _logger;

        private readonly IConfiguration _configuration;

        public PostazioniController(IConfiguration configuration, ILogger<PostazioniController> logger)
        {
            _configuration = configuration;
            _logger = logger;
        }

        public IActionResult Index()
        {

            RepoPostazione repoPostazioni = new RepoPostazione();

            return View(repoPostazioni.GetAll(_configuration));
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}