﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public  class Usuario :Persona
    {
        public long ID { get; set; }
        public string NombreUsuario { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public DateTime Fecha { get; set; }
        public int Dni { get; set; }
        public string Tipo { get; set; }
        public bool Estado { get; set; }

 
    }
}
