using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Materia
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Materia { get; set; }
        public string NombreMateria { get; set; }
        public string Descripcion { get; set; }
    }

}
