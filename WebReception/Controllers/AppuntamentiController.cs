using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using WebReception.Models;
using Reception;

namespace WebReception.Controllers
{
    // todo questo è un prototipo di refactoring costruendo una interfaccia repo e un controller base per le nostre entità
    public class AppuntamentiController : ReceptionController<Appuntamento>
    {

        public AppuntamentiController(IConfiguration configuration, IRepo<Appuntamento> repo) : base(configuration, repo)
        {

        }

        public IActionResult BlaBla()
        {

            return View(repo.GetAll());
        }
    }
}