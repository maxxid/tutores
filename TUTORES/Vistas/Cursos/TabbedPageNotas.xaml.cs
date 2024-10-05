using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.Datos;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Cursos
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabbedPageNotas : Xamarin.Forms.TabbedPage
    {
        public TabbedPageNotas()
        {
            InitializeComponent();
          //  On<Android>().SetToolbarPlacement(ToolbarPlacement.Bottom);

            // Obtener los datos de ejemplo
            List<Trimestre> trimestres = GetTrimestresEjemplo();

            // Crear las pestañas dinámicamente
            foreach (var trimestre in trimestres)
            {
                var contentPage = new ContentPage
                {
                    Title = trimestre.Nombre,
                    Content = CreateContentForTrimestre(trimestre)
                };

                // Agregar la pestaña al TabbedPage
                this.Children.Add(contentPage);
            }
            

        }






        // Método para crear el contenido de cada trimestre
        private View CreateContentForTrimestre(Trimestre trimestre)
        {
            var layout = new StackLayout
            {
                Padding = new Thickness(15),
                Spacing = 20,
                BackgroundColor = Color.FromHex("#13304D")
            };

            foreach (var materia in trimestre.Materias)
            {
                var card = new Frame
                {
                    BorderColor = Color.FromHex("#EE7511"),
                    BackgroundColor = Color.FromHex("#1e2838"),
                    CornerRadius = 15,
                    HasShadow = true,
                    Padding = 20,
                    Margin = new Thickness(0, 0, 0, 5)
                };

                // Icono de la materia
                var iconImage = new Image
                {
                    Source = "icon_B_book.png",
                    HeightRequest = 24,
                    WidthRequest = 24,
                    VerticalOptions = LayoutOptions.Center,
                    Margin = new Thickness(0, 0, 10, 0) // Separación con el texto
                };

                // Nombre de la materia
                var nombreMateria = new Label
                {
                    Text = materia.Nombre,
                    FontSize = 20,
                    TextColor = Color.FromHex("#FAFAFA"),
                    FontAttributes = FontAttributes.Bold,
                    VerticalOptions = LayoutOptions.Center
                };

                // Notas de la materia
                var notasLabel = new Label
                {
                    Text = "Notas: " + string.Join(", ", materia.Notas.Select(n => $"{n.Descripcion}: {n.Calificacion}")),
                    FontSize = 16,
                    TextColor = Color.FromHex("#FAFAFA"),
                    Margin = new Thickness(0, 10, 0, 0) // Separación hacia abajo
                };

                // Layout para el encabezado de la materia (icono + nombre)
                var headerLayout = new StackLayout
                {
                    Orientation = StackOrientation.Horizontal,
                    Spacing = 5,
                    Children = { iconImage, nombreMateria }
                };

                // Layout para el contenido del card (Encabezado + notas)
                var contenidoCard = new StackLayout
                {
                    Spacing = 5,
                    Children = { headerLayout, notasLabel }
                };

                // Asignar el contenido al frame
                card.Content = contenidoCard;
                layout.Children.Add(card);
            }

            return new ScrollView { Content = layout };
        }


        //Datos Dummy para ejemplo

        public List<Trimestre> GetTrimestresEjemplo()
        {
            return new List<Trimestre>
    {
        new Trimestre
        {
            Nombre = "Primer Trimestre",
            Materias = new List<Materia>
            {
                new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 8.5, Descripcion = "Examen Parcial" },
                        new Nota { Calificacion = 9.0, Descripcion = "Trabajo Práctico" }
                    }
                },
                new Materia
                {
                    Nombre = "Lengua",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 7.0, Descripcion = "Examen Oral" },
                        new Nota { Calificacion = 8.0, Descripcion = "Examen Escrito" }
                    }
                }
            }
        },
        new Trimestre
        {
            Nombre = "Segundo Trimestre",
            Materias = new List<Materia>
            {
                new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                 new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                  new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                   new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                    new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                     new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                      new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                new Materia
                {
                    Nombre = "Historia",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 9.5, Descripcion = "Trabajo de Investigación" }
                    }
                }
            }
        },
        new Trimestre
        {
            Nombre = "Tercer Trimestre",
            Materias = new List<Materia>
            {
                new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Examen Parcial" }
                    }
                },
                new Materia
                {
                    Nombre = "Historia",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 9.5, Descripcion = "Trabajo de Investigación" }
                    }
                }
            }
        },
        new Trimestre
        {
            Nombre = "Promedio",
            Materias = new List<Materia>
            {
                new Materia
                {
                    Nombre = "Matemática",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 6.5, Descripcion = "Promedio Final" }
                    }
                },
                new Materia
                {
                    Nombre = "Historia",
                    Notas = new List<Nota>
                    {
                        new Nota { Calificacion = 9.5, Descripcion = "Promedio Final" }
                    }
                }
            }
        }




    };
        }




    }
}