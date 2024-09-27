using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo.Principal;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Principal
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Cuerpo : ContentView
	{
		public Cuerpo ()
		{
			InitializeComponent ();
            BindingContext = new CuerpoVM(Navigation);

        }
        private async void MostrarFrame_Clicked(object sender, EventArgs e)
        {
            if (miFrame.IsVisible)
            {
                // Si el Frame está visible, hacer la animación para desaparecer
                await DesvanecerFrame();
                miFrame.IsVisible = false;
            }
            else
            {
                // Si el Frame no está visible, hacer la animación para aparecer
                await AparecerFrame();
                miFrame.IsVisible = true;
            }
        }
        private async Task AparecerFrame()
        {
            miFrame.Opacity = 0; // Configura la opacidad inicial en 0
            miFrame.IsVisible = true;

            // Crear una animación de aparición gradual
            Animation fadeInAnimation = new Animation(v => miFrame.Opacity = v, 0, 1);
            fadeInAnimation.Commit(this, "FadeInAnimation", length: 1000, easing: Easing.Linear);

            // Esperar la animación antes de continuar (opcional)
            await Task.Delay(1000); // Ajusta el tiempo según la duración de la animación
        }

        private async Task DesvanecerFrame()
        {
            // Crear una animación de desaparición gradual
            Animation fadeOutAnimation = new Animation(v => miFrame.Opacity = v, 1, 0);
            fadeOutAnimation.Commit(this, "FadeOutAnimation", length: 1000, easing: Easing.Linear);

            // Esperar la animación antes de cambiar la visibilidad
            await Task.Delay(1000); // Ajusta el tiempo según la duración de la animación

            // Cambiar la visibilidad del Frame después de la animación
            miFrame.IsVisible = false;
        }
    }
}