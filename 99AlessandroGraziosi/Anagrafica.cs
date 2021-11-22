using System;

namespace Reception
{

    public abstract class Anagrafica : IAppuntamento
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public string Mail { get; set; }
        public string Telefono { get; set; }
    }
}