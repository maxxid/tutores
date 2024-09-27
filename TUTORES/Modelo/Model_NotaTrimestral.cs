using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace TUTORES.Modelo
{
    public class Model_NotaTrimestral : INotifyPropertyChanged
    {
        public string Materia { get; set; }
        public int NotaA  { get; set; }
        public int NotaB { get; set;}
        public int NotaC { get; set; }

        public string IconoA { get; set; }

        public string IconoB { get; set; }

        public string IconoC { get; set; }

        public string Promedio { get; set;}

        private bool isFrameVisible;
        public bool IsFrameVisible
        {
            get { return isFrameVisible; }
            set
            {
                if (isFrameVisible != value)
                {
                    isFrameVisible = value;
                    OnPropertyChanged(nameof(IsFrameVisible));
                }
            }
        }

        // Resto de la clase...

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }


    

}
