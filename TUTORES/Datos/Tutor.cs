using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    [Table("Tutores")]

    public class Tutor
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Tutor { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Contrasenia { get; set; }
        public string Telefono { get; set; }

        [MaxLength(100), Unique]
        public string Email { get; set; }
        public DateTime FechaSync { get; set; }
    }

}
