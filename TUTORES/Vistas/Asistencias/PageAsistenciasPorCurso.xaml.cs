using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Asistencias
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageAsistenciasPorCurso : ContentPage
	{
		public PageAsistenciasPorCurso ()
		{
			InitializeComponent ();
            BindingContext = new PageAsistenciasPorCursoVM(Navigation);

        }
    }
}