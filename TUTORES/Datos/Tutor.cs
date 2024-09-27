using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Tutor
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Tutor { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
    }

}
