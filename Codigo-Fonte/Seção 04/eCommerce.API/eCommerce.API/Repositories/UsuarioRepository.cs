using eCommerce.API.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.API.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {

        private IDbConnection _connection;

        public UsuarioRepository()
        {
            _connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=eCommerce;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        }







        private static List<Usuario> _db = new List<Usuario>()
        {
            new Usuario(){ Id=1, Nome="Filipe Rodrigues", Email="filipe.rodrigues@gmail.com" },
            new Usuario(){ Id=2, Nome="Marcelo Rodrigues", Email="marcelo.rodrigues@gmail.com"},
            new Usuario(){ Id=3, Nome="Jessica Rodrigues", Email="jessica.rodrigues@gmail.com"}
        };
        public List<Usuario> Get()
        {
            return _db;
        }

        public Usuario Get(int id)
        {
            return _db.FirstOrDefault(a => a.Id == id);
        }

        public void Insert(Usuario usuario)
        {
            _db.Add(usuario);
        }

        public void Update(Usuario usuario)
        {
            _db.Remove(_db.FirstOrDefault(a => a.Id == usuario.Id));
            _db.Add(usuario);
        }

        public void Delete(int id)
        {
            _db.Remove(_db.FirstOrDefault(a => a.Id == id));
        }
    }
}
