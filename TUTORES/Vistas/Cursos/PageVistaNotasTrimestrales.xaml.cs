using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.Modelo;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Cursos
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageVistaNotasTrimestrales : ContentPage
	{
		public PageVistaNotasTrimestrales ()
		{
			InitializeComponent ();
            BindingContext = new PageVistaNotasTrimestralesVM(Navigation);

        }

        private void miBoton_Clicked(object sender, EventArgs e)
        {
            var button = (Button)sender;
            var item = (Model_NotaTrimestral)button.BindingContext;

            // Cambia el estado del Frame asociado
            item.IsFrameVisible = !item.IsFrameVisible;
        }
    }
}