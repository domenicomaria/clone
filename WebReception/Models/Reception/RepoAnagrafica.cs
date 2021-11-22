using System.Collections.Generic;
using Microsoft.Extensions.Configuration;


namespace Reception
{

    // todo autoformazione : repository pattern
    public class RepoAnagrafica : List<Anagrafica>
    {
        protected Anagrafica GetByEmail(string email)
        {
            // 1 - todo applicare un algoritmo decente di ricerca nelle liste
            // 2 - utilizzo gli algoritmi già scritti in database
            // 3 - uso le liste che già consentono ordinamento e ricerca es SortedList, HashSet e HashTable, Dictionary

            foreach (Anagrafica a in this)
            {
                if (a.Email == email) return a;
            }
            // assert non trovata
            return null;
        }
    }
}