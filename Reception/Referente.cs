using System;
using System.Collections.Generic;

namespace Reception
{

    public class Referente : Anagrafica
    {
        public Referente(int id, string nome, string cognome) : base(id, nome, cognome)
        {
        }

        public static RepoReferente FactoryReferenti()
        {
            RepoReferente elencoReferenti = new RepoReferente();
            Referente r = new Referente(1, "Daniele", "Ziccardi");
            r.Email = "danceoften@gmail.com";
            r.Telefono = "+39 3287230900";
            // popolo la lista di ritorno
            elencoReferenti.Add(r);
            return elencoReferenti;
        }
    }
}