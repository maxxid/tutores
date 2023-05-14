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
		public PaseTardanzasPorCurso ()
		{
			InitializeComponent ();
            BindingContext = new PageTardanzaPorCursoVM(Navigation);

        }
    }
}