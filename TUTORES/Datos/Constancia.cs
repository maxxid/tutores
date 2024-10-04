using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    [Table("Constancias")]

    public class Constancia
    {
        public int ID_Constancia {  get; set; }
        public int ID_Alumno { get; set; }
        public string Tipo {  get; set; }
        public string OrganizacionDestino { get; set; }
        public DateTime Vencimiento { get; set; }
        public string URL_Documento { get; set; }
        public int SymcStatus { get; set; }
        public DateTime FechaSync { get; set; }
            
            
    }
}
