using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class PageVistaNotasTrimestralesVM : BaseViewModel
    {
        public PageVistaNotasTrimestralesVM(INavigation navigation)
        {
            Navigation = navigation;
            InitProducts();

        }
        public ObservableCollection<Model_NotaTrimestral> NotasTrimestralesList{ get; set; }

        private void InitProducts()
        {
            NotasTrimestralesList = new ObservableCollection<Model_NotaTrimestral>
            {
                new Model_NotaTrimestral
                {
                    Materia = "Matematicas",
                    NotaA = 8,
                    NotaB = 3,
                    NotaC = 5,
                },
                new Model_NotaTrimestral
                {
                    Materia = "Lengua",
                    NotaA = 8,
                    NotaB = 5,
                    NotaC = 9,
                },
                new Model_NotaTrimestral
                {
                    Materia = "Historia",
                    NotaA = 3,
                    NotaB = 4,
                    NotaC = 10,
                },
                                   
                new Model_NotaTrimestral
                {
                    Materia = "Geografia",
                    NotaA = 4,
                    NotaB = 7,
                    NotaC = 7 
                },
                new Model_NotaTrimestral
                {
                    Materia = "Dibujo Tecnico",
                    NotaA = 6,
                    NotaB = 5,
                    NotaC = 6
                },
                new Model_NotaTrimestral
                {
                    Materia = "Programacion",
                    NotaA = 8,
                    NotaB = 7,
                    NotaC = 8
                }


            };


            foreach (var materia in NotasTrimestralesList)
            {
               //calcula promedio y le agrega el texto previo
                double prom = (materia.NotaA + materia.NotaB + materia.NotaC ) / 3;
                materia.Promedio = "Promedio: "+prom;

                //asigna un icono de acuerdo a la nota 
                if (materia.NotaA >= 6)
                {
                    materia.IconoA = "correct.png";}
                else
                { 
                    if (materia.NotaA < 5)
                    { materia.IconoA = "failed.png"; }
                    else 
                    { materia.IconoA = "report.png"; } 
                }



                if (materia.NotaB >= 6)
                {materia.IconoB = "correct.png"; } 
                else { if (materia.NotaB == 5) { materia.IconoB = "report.png"; } else { materia.IconoB = "failed.png"; } }
                
                
                
                if (materia.NotaC >= 6){materia.IconoC = "correct.png"; } else { if (materia.NotaC == 5) { materia.IconoC = "report.png"; } else { materia.IconoC = "failed.png"; } }
            }



        }

        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());






        private bool isBotonActivado = false;
        public bool IsBotonActivado
        {
            get { return isBotonActivado; }
            set
            {
                if (isBotonActivado != value)
                {
                    isBotonActivado = value;
                    OnPropertyChanged(nameof(IsBotonActivado));
                    OnPropertyChanged(nameof(IsFrameVisible)); // Notificar un cambio en la visibilidad del Frame
                }
            }
        }

        // Calcula la visibilidad del Frame en función del estado del botón
        public bool IsFrameVisible => IsBotonActivado;

        public ICommand DesactivarBotonCommand2 => new Command(DesactivarBoton);

        private void DesactivarBoton()
        {
            IsBotonActivado = !IsBotonActivado; // Cambia el estado del botón
        }





    }
}
