using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication1.Controllers
{
    public class ProductsController : ApiController
    {
        [HttpGet]
        [Route("api/myapi/products")]
        public IHttpActionResult GetAllProducts(string id)
        {

        }
    }
}
