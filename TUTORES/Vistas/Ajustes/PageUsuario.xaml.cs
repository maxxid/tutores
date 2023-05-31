using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo.Principal;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Ajustes
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageUsuario : ContentPage
    {
        public PageUsuario()
        {
            InitializeComponent();
            BindingContext = new PageUsuarioVM(Navigation);

        }
    }
}