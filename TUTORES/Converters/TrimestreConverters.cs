using System;
using System.Globalization;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    public class TrimestreConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int trimestre = (int)value;
            int buttonTrimestre = int.Parse(parameter.ToString());

            return trimestre == buttonTrimestre ? Color.LightBlue : Color.Default;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
