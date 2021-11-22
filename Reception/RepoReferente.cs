namespace Reception
{
    public class RepoReferente : RepoAnagrafica
    {
        public new Referente this[int index]
        {
            get
            {
                return (Referente)base[index];
            }
            set { this[index] = value; }
        }
        public Referente GetByMail(string email)
        {
            return (Referente)base.GetByEmail(email);
        }
    }
}