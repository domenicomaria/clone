using System;

using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace Reception
{
    public class RepoPostazione : List<Postazione>
    {
        public new Postazione this[int index]
        {
            get
            {
                return (Postazione)base[index];
            }
            set { this[index] = value; }
        }

        protected Postazione GetById(int id)
        {
            foreach (Postazione a in this)
            {
                if (a.Id == id) return a;
            }
            return null;
        }

        protected Postazione GetByCodiceStanza(string codiceStanza)
        {
            foreach (Postazione a in this)
            {
                if (a.CodiceStanza == codiceStanza) return a;
            }
            return null;
        }
        public List<Postazione> GetAll(IConfiguration config)
        {
            List<Postazione> elencoPostazioni = new List<Postazione>();
            string connectionString = config.GetConnectionString("DbReception");

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from TbPostazioni", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Postazione p1 = new Postazione((int)rdr["Id"], rdr["Piano"].ToString(), rdr["CodiceStanza"].ToString());
                elencoPostazioni.Add(p1);
            }

            return elencoPostazioni;
        }
    }
}