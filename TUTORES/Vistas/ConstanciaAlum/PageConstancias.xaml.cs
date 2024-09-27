using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using TUTORES.VistaModelo;
using Xamarin.Essentials;
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
            BindingContext = new PageConstanciasVM(Navigation);
           

        }

        

     
    }
}