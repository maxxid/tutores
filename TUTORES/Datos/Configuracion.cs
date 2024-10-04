using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Configuracion
    {
        public int ID_Configuracion { get; set; }
        public int ID_Tutor { get; set; }
        public string Notificaciones { get; set; }
        public Boolean OfflineMode { get; set; }
        public DateTime FechaSync { get; set; }
    }
}
