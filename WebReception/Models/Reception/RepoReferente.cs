using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

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

        public List<Referente> GetAll(IConfiguration config)
        {
            List<Referente> elencoReferenti = new List<Referente>();
            string connectionString = config.GetConnectionString("DbReception");

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from TbReferenti", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Referente r1 = new Referente((int)rdr["Id"], rdr["Nome"].ToString(), rdr["Cognome"].ToString());
                r1.Email = rdr["Email"].ToString();
                r1.Telefono = rdr["Telefono"].ToString();
                elencoReferenti.Add(r1);
            }

            return elencoReferenti;
        }
    }
}