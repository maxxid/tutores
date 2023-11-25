using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using TUTORES.VistaModelo.Principal;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Asistencias
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PaseTardanzasPorCurso : ContentPage
	{

        private Button miBoton;
        public PaseTardanzasPorCurso ()
		{
			InitializeComponent ();
            BindingContext = new PageTardanzaPorCursoVM(Navigation);

        }

        

        private async void i(object sender, EventArgs e)
        {
            bool resultado = await DisplayAlert("Confirmación", "¿Deseas desactivar el botón?", "Sí", "No");

            if (resultado)
            {
                // Cambia el estado del botón a desactivado
                miBoton.IsEnabled = false;
            }
        }
    }
}