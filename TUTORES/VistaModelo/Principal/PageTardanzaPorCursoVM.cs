using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class PageTardanzaPorCursoVM : BaseViewModel
    {

        public PageTardanzaPorCursoVM(INavigation navigation)
        {
            Navigation = navigation;
            DesactivarBotonCommand = new Command(DesactivarBoton);

            InitAlumns();
        }

        public ObservableCollection<Model_Asistencia> FaltasList { get; set; }
        private bool _isBotonActivado = true; // Valor inicial (botón activado por defecto)

        public bool IsBotonActivado
        {
            get { return _isBotonActivado; }
            set
            {
                if (_isBotonActivado != value)
                {
                    _isBotonActivado = value;
                    OnPropertyChanged(IsBotonActivado.ToString()); // Asegúrate de que implementas INotifyPropertyChanged
                }
            }
        }
        private async void DesactivarBoton()
        {
            bool resultado = await Application.Current.MainPage.DisplayAlert("Confirmación", "¿Deseas desactivar el botón?", "Sí", "No");

            if (resultado)
            {
                MostrarAlerta();
                // Cambia el estado del botón a desactivado (si se utiliza una propiedad en el ViewModel)
                // Puedes establecer una propiedad en el ViewModel para controlar el estado del botón
                // Ejemplo: IsBotonActivado = false;
                IsBotonActivado = false;
            }
        }
        private async Task DesactivarBoton2()
        {
            // bool resultado = await Application.Current.MainPage.DisplayAlert("Confirmación", "¿Deseas desactivar el botón?", "Sí", "No");
             MostrarAlerta();
            // if (false)
            //{
            //MostrarAlerta();
            // Cambia el estado del botón a desactivado (si se utiliza una propiedad en el ViewModel)
            // Puedes establecer una propiedad en el ViewModel para controlar el estado del botón
            // Ejemplo: IsBotonActivado = false;
            //   IsBotonActivado = false;
            // }
        }

        async void MostrarAlerta()
        {
            await DisplayAlert("Confirmado", "Notificacion aceptada", "Ok");

            // Esperar 2 segundos antes de cerrar la alerta
           // await Task.Delay(2000);

            // Cerrar la alerta
           // await Device.InvokeOnMainThreadAsync(async () =>
           // {
             //   await Application.Current.MainPage.Navigation.PopModalAsync();
           // });
        }
        private void InitAlumns()
        {
            FaltasList = new ObservableCollection<Model_Asistencia>
            {
                new Model_Asistencia
                {
                    Estado = "Ausente",
                    Fecha = "15-09-2023"
                },
                new Model_Asistencia
                {
                    Estado = "Ausente",
                    Fecha = "22-09-2023"
                }
            };



            foreach (var diaFalta in FaltasList)
            {
                if (!string.IsNullOrEmpty(diaFalta.Fecha))
                {
                    DateTime fecha = DateTime.ParseExact(diaFalta.Fecha, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                    CultureInfo cultura = new CultureInfo("es-ES");

                    // Obtener el nombre del día en minúsculas
                    string nombreDia = fecha.ToString("dddd", cultura);

                    // Convertir la primera letra a mayúscula
                    nombreDia = cultura.TextInfo.ToTitleCase(nombreDia);

                    diaFalta.Dia = nombreDia;
                }

                if (diaFalta.Estado == "Presente")
                {
                    diaFalta.Icono = "correct.png";
                }
                if (diaFalta.Estado == "Ausente")
                {
                    diaFalta.Icono = "failed.png";
                }
                if (diaFalta.Estado == "Tardanza")
                {
                    diaFalta.Icono = "aTardanza.png";
                }


            }


        }


        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());

        public ICommand DesactivarBotonCommand { get; }
        public ICommand DesactivarBotonCommand2 => new Command(async () => await DesactivarBoton2());


    }
}
//EL CODIGO COMENTADO ESTA PENSADO PARA QUE UNA VEZ PRESIONADO EL BOTON, CAMBIE EL ESTADO A FALSO. NO ESTA FUNCIONANDO Y DA ERROR.
//POR LO QUE UNICAMENTE SE DEJO UN DISPLAY ALERT DE FORMA VISUAL SIN NINGUNA FUNCION.
// LINEAS DEL 51 AL 77 APROX

