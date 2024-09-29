using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Fuentes
{
    public interface ISQLiteDb
    {
        SQLiteAsyncConnection GetConnection();
    }
}
