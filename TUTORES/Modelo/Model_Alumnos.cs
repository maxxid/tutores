using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Modelo
{
    public class Model_Alumnos
    {
        public string Nombre{ get; set; }
        public string Apellido{ get; set; }
        public string Icono { get; set; }
        public string Estado_Asistencia { get; set; }

        public int TotalInasistencias { get; set; }
        public int TotalTardanzas { get; set; }
        public int TotalAsistencias { get; set; }
        public string Fecha { get; set; }
    }
}
