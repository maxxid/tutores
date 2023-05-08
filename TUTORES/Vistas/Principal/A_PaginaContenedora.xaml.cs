using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using TUTORES.VistaModelo.Principal;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Principal
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class A_PaginaContenedora : ContentPage
	{
		public A_PaginaContenedora (String rol)
		{
			InitializeComponent ();
            BindingContext = new PaginaContenedoraVM(Navigation, rol);

        }
    }
}