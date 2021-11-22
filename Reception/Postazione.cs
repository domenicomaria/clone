using System.Collections.Generic;

namespace Reception
{
    public class Postazione
    {
        public Postazione(int id, string piano, string stanza)
        {
            Id = id;
            Piano = piano;
            CodiceStanza = stanza;
        }
        public int Id { get; set; }
        public string Piano { get; set; }
        public string CodiceStanza { get; set; }

        public static List<Postazione> FactoryPostazioni()
        {
            List<Postazione> elencoPostazioni = new List<Postazione>();
            elencoPostazioni.Add(new Postazione(1, "Sviluppatori", "Riunioni"));
            elencoPostazioni.Add(new Postazione(2, "Sviluppatori", "RilasciZ42"));
            elencoPostazioni.Add(new Postazione(3, "Progettazione", "Stanza caffè"));
            elencoPostazioni.Add(new Postazione(4, "Progettazione", "Creazione"));
            return elencoPostazioni;
        }
    }
}