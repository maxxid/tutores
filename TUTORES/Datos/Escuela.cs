using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Escuela
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Escuela { get; set; }
        public string NombreEscuela { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
    }

}
