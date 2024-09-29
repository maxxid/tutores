using Acr.UserDialogs;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using TUTORES.Vistas.Emergentes;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;


namespace TUTORES.Vistas.ConstanciaAlum
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageConstancias : ContentPage
    {
        public PageConstancias()
        {
            InitializeComponent();

            // Establece el BindingContext
            BindingContext = new PageConstanciasVM(Navigation);
        }
    }
}