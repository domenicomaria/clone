using System.Collections.Generic;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace Reception
{
    public class RepoCliente : RepoAnagrafica
    {

        public Cliente this[string email]
        {
            get
            {
                return (Cliente)base.GetByEmail(email);
            }

        }
        // Indexer declaration 
        public new Cliente this[int index]
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

        // se dall'esterno esiste un factory di connessione a DB posso passare qui la IDbConnection conn
        public List<Cliente> GetAll(IConfiguration config)
        {
            List<Cliente> elencoClienti = new List<Cliente>();

            string connectionString = config.GetConnectionString("DbReception");
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            // todo questa parte è inutile e rappresenta solo un esempio di execute scalar
            cmd.CommandText = "select count(*) from TbClienti";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            int numeroRecords = (int)cmd.ExecuteScalar();
            if (numeroRecords == 0)
                return elencoClienti;

            cmd.CommandText = "select * from TbClienti";

            IDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                int idCliente = (int)rdr["Id"];
                string nomeCliente = rdr["Nome"].ToString();
                string cognomeCliente = rdr["Cognome"].ToString();
                string emailCliente = rdr["Email"].ToString();
                string telefonoCliente = rdr["Telefono"].ToString();

                Cliente c1 = new Cliente(idCliente, nomeCliente, cognomeCliente);
                c1.Email = emailCliente;
                c1.Telefono = telefonoCliente;
                elencoClienti.Add(c1);
            }




            return elencoClienti;
        }
    }
}