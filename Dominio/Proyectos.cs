using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Proyectos
    {
        public long ID { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public TipoProyecto Tipo { get; set; }
        public decimal Monto { get; set; }
        public DateTime FechaAlta { get; set; }
    }
}
