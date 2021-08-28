using eCommerce.API.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.API.Repositories
{
    public class UsuariosProcedureRepository : IUsuarioRepository
    {
        private IDbConnection _connection;
        public UsuariosProcedureRepository()
        {
            _connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=eCommerce;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        }
        public List<Usuario> Get()
        {
            throw new NotImplementedException();
        }

        public Usuario Get(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Usuario usuario)
        {
            throw new NotImplementedException();
        }

        public void Update(Usuario usuario)
        {
            throw new NotImplementedException();
        }
        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
