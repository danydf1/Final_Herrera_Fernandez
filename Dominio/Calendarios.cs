using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Calendarios
    {
        public long Id { get; set; }
        public DateTime Horario { get; set; }
        public string Titulo{ get; set; }
        public bool Estado { get; set; }
       
    }
}
