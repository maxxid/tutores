﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Emergentes
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageEmergente_Fail : ContentPage
	{
		public PageEmergente_Fail ()
		{
			InitializeComponent ();
            BindingContext = new VMPageEmergente(Navigation);

        }
    }
}