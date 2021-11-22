using System;
using System.Collections.Generic;

namespace Reception
{
    public class Cliente : Anagrafica
    {
        public Cliente(int id, string nome, string cognome) : base(id, nome, cognome)
        {
        }

        public static RepoCliente FactoryClienti()
        {
            RepoCliente elencoClienti = new RepoCliente();

            Cliente c1 = new Cliente(1, "Alessandro", "Graziosi");
            c1.Email = "alessandro8graziosi@gmail.com";
            c1.Telefono = "3272154820";
            Cliente c2 = new Cliente(2, "Antonio", "Tambuzzo");
            c2.Email = "antonio.tambuzzo@gmail.com";
            c2.Telefono = "3895531527";
            Cliente c3 = new Cliente(3, "Domenico", "Cimò");
            c3.Email = "mimmocimo@gmail.com";
            c3.Telefono = "3206054359";

            elencoClienti.Add(c1);
            elencoClienti.Add(c2);
            elencoClienti.Add(c3);

            return elencoClienti;
        }
    }
}