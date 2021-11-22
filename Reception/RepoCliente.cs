namespace Reception
{
    public class RepoCliente : RepoAnagrafica
    {

        public  Cliente this[string email]
        {
            get
            {
               return (Cliente)base.GetByEmail(email);
            }
            
        }
        // Indexer declaration 
        public new  Cliente this[int index]
        {
            get
            {
                return (Cliente)base[index];
            }
            set { this[index] = value; }
        }
        public Cliente GetByMail(string email)
        {
            return (Cliente)base.GetByEmail(email);
        }
    }
}