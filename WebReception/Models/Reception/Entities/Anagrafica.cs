namespace Reception
{

    public abstract class Anagrafica
    {
        private int id;
        private string nome;
        private string cognome;
        private string email;
        private string telefono;

        protected Anagrafica(int id, string nome, string cognome)
        {
            Id = id;
            Nome = nome;
            Cognome = cognome;
        }

        public int Id { get => id; private set => id = value; }
        public string Nome { get => nome; private set => nome = value; }
        public string Cognome { get => cognome; private set => cognome = value; }
        public string Email { get => email; set => email = value; }
        public string Telefono { get => telefono; set => telefono = value; }


    }

}