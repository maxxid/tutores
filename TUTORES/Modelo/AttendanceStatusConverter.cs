using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using Xamarin.Forms;

namespace TUTORES.Modelo
{
    public class AttendanceStatusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var status = (AttendanceStatus)value;
            switch (status)
            {
                case AttendanceStatus.Presente:
                    return "Presente";
                case AttendanceStatus.Ausente:
                    return "Ausente";
                case AttendanceStatus.Tardanza:
                    return "Tardanza";
                default:
                    return "";
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
