using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Modelo
{
    public class Model_Asistencia
    {
        public string Estado { get; set; }
        //Sea de clase Presente Ausente Tardanza. Dato desde el servidor
        public string Icono { get; set; }
        //El Viewmodel lo asignara automaticamente
        public string Dia_completo { get; set; }
        //El viewmodel concatenara fecha y el dia 
        public string Dia { get; set; }
        //El viewmodel genera el dia 
        public string Fecha { get; set; }
        //Dato desde el servidor
        public bool Notificado { get; set; }
        //Dato que guarda en caso de tener un Ausente, si el tutor a marcado que fue notificado.
    }
}
