using eCommerce.API.Models;
using eCommerce.API.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


/*
 * CRUD
 * - GET -> Obter a lista de usuários.
 * - GET -> Obter o usuário passando o ID.
 * - POST -> Cadastrar um usuário.
 * - PUT -> Atualizar um usuário.
 * - DELETE -> Remover um usuário.
 * 
 * 
 * METHOD HTTP: www.minhaapi.com.br/api/Usuarios
 * www.minhaapi.com.br/api/Usuarios/2
 */


namespace eCommerce.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuariosController : ControllerBase
    {
        private IUsuarioRepository _repository;
        public UsuariosController()
        {
            _repository = new UsuarioRepository();
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_repository.Get());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var usuario = _repository.Get(id);

            if(usuario == null)
            {
                return NotFound(); //ERRO HTTP: 404 - Not Found
            }

            return Ok(usuario);
        }

        [HttpPost]
        public IActionResult Insert([FromBody]Usuario usuario)
        {
            _repository.Insert(usuario);
            return Ok(usuario);
        }
        [HttpPut]
        public IActionResult Update([FromBody]Usuario usuario)
        {
            _repository.Update(usuario);
            return Ok(usuario);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _repository.Delete(id);
            return Ok();
        }

    }
}
