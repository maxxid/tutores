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
	public partial class PageAlumnos : ContentPage
	{
		public PageAlumnos ()
		{
			InitializeComponent ();
            BindingContext = new PageAlumnosVM(Navigation);
        }
	}
}