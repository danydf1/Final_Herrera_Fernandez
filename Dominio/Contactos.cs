﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Contactos : Persona
    {
          public string RazonSocial{ get; set; }
          public string Direccion { get; set; }
          public string Telefono { get; set; }
          public Categorias Cat { get; set; }
        public string  paginaweb { get; set; }

        



    }
}
