using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using WebReception.Models;

namespace WebReception.Controllers
{
    public class ClientiController : Controller
    {
        private readonly ILogger<ClientiController> _logger;

        private readonly IConfiguration _configuration;

        public ClientiController(IConfiguration configuration,ILogger<ClientiController> logger)
        {
            _configuration = configuration;
        
            _logger = logger;
        }

        public IActionResult Index()
        {

            Reception.RepoCliente repoClienti = new Reception.RepoCliente();

            return View(repoClienti.GetAll(_configuration));
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}