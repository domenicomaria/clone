using System;
using System.Collections.Generic;

namespace Reception
{
    class Program
    {
        static void Main(string[] args)
        {

            

            // todo effettuo ricerca per piano/stanza e 
            // verifico se disponibile in un certo momento una sala
            // todo referente disponibile in quell'orario !!! Data + Ora
        }

        static void GeneraComandiSql()
        {
            RepoCliente elencoClienti = Cliente.FactoryClienti();
            RepoReferente elencoReferenti = Referente.FactoryReferenti();
            List<Postazione> elencoPostazioni = Postazione.FactoryPostazioni();
            RepoAppuntamento elencoAppuntamenti = Appuntamento.FactoryAppuntamenti(elencoClienti, elencoReferenti, elencoPostazioni);

            foreach (Appuntamento a in elencoAppuntamenti)
            {
                string comando  = string.Format("insert into dbo.TbAppuntamenti([IdReferente],[IdCliente],[IdPostazione],[Orario],[Durata]) values({0},{1},{2},'{3}','{4}')",a.Referente.Id,a.Cliente.Id,a.Postazione.Id,a.Orario.ToString("yyyy-MM-dd HH:mm:ss"),a.Durata.ToString());
                Console.WriteLine(comando);
            }

        }
    }
}
