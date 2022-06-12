using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public  class Archivos
    {
        public int ID { get; set; }
        public byte[] Imagen { get; set; }
        public string visorImagen { get; set; }

        public Archivos()
        {
        }
    }
}
