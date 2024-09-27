using Plugin.Segmented.Control;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System;
using System.Collections.ObjectModel;
using TUTORES.Modelo;
using Xamarin.Forms;
 


namespace TUTORES.VistaModelo
{
    class PageAsistenciasPorCursoVM : BaseViewModel
    {
        private string _fechaString = "03-10-2023";

        public String fechaString
        {
            get { return _fechaString; }
            set {  _fechaString = value;   }
        }
  
        public ObservableCollection<Model_Asistencia> AsistenciaList { get; set; }

        public ObservableCollection<YourEvent> MyEvents { get; }


        

        public PageAsistenciasPorCursoVM(INavigation navigation)
        {
            Navigation = navigation;
            InitProducts();

            var yourEvent = new YourEvent(1, $"Event 1", DateTime.Today, DateTime.Today, false);

            MyEvents = new ObservableCollection<YourEvent>();
            MyEvents.Add(yourEvent);


        }

        public void SegmentedChangedFunction()
        {
            
        }

        private void InitProducts()
        {
            AsistenciaList = new ObservableCollection<Model_Asistencia>
            {
                
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "04-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "05-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "06-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "07-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Tardanza",
                    Fecha = "08-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "11-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "12-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "13-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Ausente",
                    Fecha = "14-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "15-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "18-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "19-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "20-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "21-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "22-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "25-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "26-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "27-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "28-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Presente",
                    Fecha = "29-09-2023"
                },


            };


            foreach (var diaAsistencia in AsistenciaList)
            {
                if (!string.IsNullOrEmpty(diaAsistencia.Fecha))
                {
                    DateTime fecha = DateTime.ParseExact(diaAsistencia.Fecha, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                    string nombreDia = diaAsistencia.Fecha+" "+fecha.ToString("dddd", new CultureInfo("es-ES"));
                    diaAsistencia.Dia_completo = nombreDia;
                }

                if (diaAsistencia.Estado == "Presente")
                {
                    diaAsistencia.Icono = "correct.png";
                }
                if (diaAsistencia.Estado == "Ausente")
                {
                    diaAsistencia.Icono = "failed.png";
                                    }
                if (diaAsistencia.Estado == "Tardanza")
                {
                    diaAsistencia.Icono = "aTardanza.png";
                }


            }



        }

        private string GetNombreDiaSemana(string fechaString)
        {
            DateTime fecha = DateTime.ParseExact(fechaString, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            string nombreDia = fecha.ToString("dddd", new CultureInfo("es-ES"));
            return nombreDia;
        }





      










        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());
        
        public ICommand SegmentChangedCommand => new Command(SegmentedChangedFunction);
    }
}
