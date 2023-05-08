using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Tardanzas
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageSeleccionCurso : ContentPage
	{
		public PageSeleccionCurso ()
		{
			InitializeComponent ();
            BindingContext = new PageSeleccionCursoVM(Navigation);
        }
	}
}