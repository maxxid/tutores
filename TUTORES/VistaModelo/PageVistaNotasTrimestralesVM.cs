using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    public class PageVistaNotasTrimestralesVM : BaseViewModel
    {
        public INavigation Navigation { get; set; }

        public ObservableCollection<Model_NotaTrimestral> NotasTrimestralesList { get; set; }
        public ObservableCollection<Model_NotaTrimestral> NotasFiltradas { get; set; }

        private int _trimestre;
        public int Trimestre
        {
            get => _trimestre;
            set
            {
                _trimestre = value;
                OnPropertyChanged();
                FiltrarNotasPorTrimestre();
            }
        }

        public PageVistaNotasTrimestralesVM(INavigation navigation)
        {
            Navigation = navigation;
            NotasFiltradas = new ObservableCollection<Model_NotaTrimestral>();
            InitProducts();
            Trimestre = 1; // Inicializa el trimestre en 1
        }

        private void InitProducts()
        {
            NotasTrimestralesList = new ObservableCollection<Model_NotaTrimestral>
            {
                new Model_NotaTrimestral
                {
                    Materia = "Matemáticas",
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
                    Materia = "Geografía",
                    NotaA = 4,
                    NotaB = 7,
                    NotaC = 7
                },
                new Model_NotaTrimestral
                {
                    Materia = "Dibujo Técnico",
                    NotaA = 6,
                    NotaB = 5,
                    NotaC = 6
                },
                new Model_NotaTrimestral
                {
                    Materia = "Programación",
                    NotaA = 8,
                    NotaB = 7,
                    NotaC = 8
                }
            };

            FiltrarNotasPorTrimestre();
        }

        private void FiltrarNotasPorTrimestre()
        {
            NotasFiltradas.Clear();

            switch (Trimestre)
            {
                case 1:
                    foreach (var materia in NotasTrimestralesList)
                    {
                        NotasFiltradas.Add(new Model_NotaTrimestral
                        {
                            Materia = materia.Materia,
                            NotaA = materia.NotaA,
                            Promedio = materia.Promedio,
                            IconoA = materia.IconoA
                        });
                    }
                    break;
                case 2:
                    foreach (var materia in NotasTrimestralesList)
                    {
                        NotasFiltradas.Add(new Model_NotaTrimestral
                        {
                            Materia = materia.Materia,
                            NotaB = materia.NotaB,
                            Promedio = materia.Promedio,
                            IconoB = materia.IconoB
                        });
                    }
                    break;
                case 3:
                    foreach (var materia in NotasTrimestralesList)
                    {
                        NotasFiltradas.Add(new Model_NotaTrimestral
                        {
                            Materia = materia.Materia,
                            NotaC = materia.NotaC,
                            Promedio = materia.Promedio,
                            IconoC = materia.IconoC
                        });
                    }
                    break;
            }

            OnPropertyChanged(nameof(NotasFiltradas));
        }

        public ICommand CambiarTrimestreCommand => new Command<int>((trimestre) =>
        {
            Trimestre = trimestre;
        });

        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }

        public ICommand VolverCommand => new Command(async () => await Button_Volver());
    }
}
