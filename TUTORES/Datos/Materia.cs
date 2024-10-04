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
        public string Nombre { get; set; }
        public string Descripcion { get; set; }

        public List <Nota> Notas { get; set; }
    }

}
