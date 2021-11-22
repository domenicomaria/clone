using System.Collections.Generic;

namespace Reception
{// todo non è usata è solo un prototipo di sviluppo futuro
    public interface IRepo<T> where T : class
    {
        IEnumerable<T> GetAll();
        T GetById(int id);
        IEnumerable<T> Find(string criterio);
        // etc etc
    }
}