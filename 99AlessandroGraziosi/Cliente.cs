using System;

namespace Reception
{
    public class Cliente : Anagrafica
    {
        private int idCliente;
        private string nomeCliente;
        private string cognomeCliente;
        private string mailCliente;
        private string telefonoCliente;
    }
        public int IdCliente
        {
            get
            {
                return idCliente;
            }
            private set
            {
                idCliente = value;
            }
        }
}