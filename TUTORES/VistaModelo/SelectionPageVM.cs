using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using TUTORES.Vistas.Principal;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class SelectionPageVM : BaseViewModel
    {
        public ObservableCollection<Rol> Roles { get; set; }
        public String Selection { get; set; }
        private String _username;
        private String _bienvenido;
        private String _cargoSeleccionado;
        private String _selectionRadioButton;
        #region CONTRUCTOR
        public SelectionPageVM(INavigation navigation, String UserRecived)
        {
            Navigation = navigation;
            User = UserRecived;
            Bienvenido = "Bienvenido " + User + "!";
            InitProducts();
        }
        #endregion

        public SelectionPageVM()
        {
            InitProducts();

        }
        public string SelectionRadioButton
        {
            get { return _selectionRadioButton; }
            set { _selectionRadioButton = value; }
        }
        
        public string User
        {
            get { return _username; }
            set { _username = value; }
        }
        public string Bienvenido
        {
            get { return _bienvenido; }
            set { _bienvenido = value; }
        }
        public string CargoSelecionado
        {
            get { return _cargoSeleccionado; }
            set { _cargoSeleccionado = value; }
        }

        private void InitProducts()
        {

            Roles = new ObservableCollection<Rol>
            {
                new Rol
                {
                    Institucion = "Esc. de Minas",
                    Cargo = "Preceptor",
                    Concat = "Maria Quiroga - 1er Año - Esc. de Minas"

                },
                new Rol
                {
                    Institucion = "Esc. de Minas",
                    Cargo = "Preceptor",
                    Concat = "Juan Quiroga - 7mo Grado - Esc. Belgrano"
                },
                new Rol
                {
                    Institucion = "Esc. Tecnica Provincial ",
                    Cargo = "Preceptor",
                    Concat = "Luciana Quiroga - 1er Grado - Esc. Belgrano"
                }

            };
        }



        private void RadioButton_OnCheckedChangedNew(object sender, CheckedChangedEventArgs e)
        {
            RadioButton radioButton = sender as RadioButton;
            if (radioButton.IsChecked)
            {
                CargoSelecionado = radioButton.ContentAsString();
            }
        }





        #region PROCEDIMIENTOS

        public async Task PushSelectionPage()
        {
            await Navigation.PushAsync(new A_PaginaContenedora(SelectionRadioButton));
        }


        #endregion


        #region COMANDOS
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());

        public string Institucion { get; private set; }
        public string Cargo { get; private set; }

        //public ICommand RadioButton_OnCheckedChangedCommand => new Command(RadioButton_OnCheckedChangedNew();


        #endregion


    }
}
