using System;
using System.Collections.Generic;
namespace Reception
{

    public class Appuntamento : IAppuntamento
    {
        public Appuntamento(Cliente cliente)
        {
            Cliente = cliente;
        }

        public int Id { get; set; }
        public Referente Referente { get; set; }
        public Cliente Cliente { get; set; }
        public DateTime Orario { get; set; }
        public TimeSpan Durata { get; set; }
        public Postazione Postazione { get; set; }


        // 
        public static RepoAppuntamento FactoryAppuntamenti(RepoCliente clienti, RepoReferente referenti, List<Postazione> postazioni)
        {
            RepoAppuntamento elencoAppuntamento = new RepoAppuntamento();
            Random gen = new Random();
            RandomDateTime generatoreDate = new RandomDateTime(DateTime.Now, DateTime.Now.AddDays(1));
            for (int i = 0; i < 100; i++)
            {
                // scelgo un cliente a caso
                int idxCliente = gen.Next(clienti.Count);
                Cliente c = clienti[idxCliente];

                // scelgo un referente a caso
                int idxReferente = gen.Next(referenti.Count);
                Referente r = referenti[idxReferente];

                // scelgo una postazione a caso
                int idxPostazione = gen.Next(postazioni.Count);
                Postazione p = postazioni[idxPostazione];

                // scelgo un orario a caso
                DateTime orarioAppuntamento = generatoreDate.NextInNextWeek(9, 17);

                // creo appuntamento
                Appuntamento a = new Appuntamento(c);
                a.Referente = r;
                a.Postazione = p;
                a.Orario = orarioAppuntamento;
                a.Durata = new TimeSpan(1, 0, 0);

                //Aggiungo all'elencoAppuntamento l'elemento interno.
                elencoAppuntamento.Add(a);
            }

            return elencoAppuntamento;
        }
    }

}