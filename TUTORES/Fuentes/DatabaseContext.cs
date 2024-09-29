using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using TUTORES.Datos;
using Xamarin.Forms;

namespace TUTORES.Fuentes
{
    public class DatabaseContext
    {
        private readonly SQLiteAsyncConnection _database;

        public DatabaseContext()
        {
            _database = DependencyService.Get<ISQLiteDb>().GetConnection();
            _database.CreateTableAsync<Tutor>().Wait();
            _database.CreateTableAsync<Alumno>().Wait();
            _database.CreateTableAsync<Escuela>().Wait();
            _database.CreateTableAsync<Materia>().Wait();
            _database.CreateTableAsync<Curso>().Wait();
            _database.CreateTableAsync<Nota>().Wait();
            _database.CreateTableAsync<Asistencia>().Wait();
        }

        // Métodos CRUD para Tutor
        public Task<int> SaveTutorAsync(Tutor tutor)
        {
            return _database.InsertAsync(tutor);
        }

        public Task<List<Tutor>> GetTutorsAsync()
        {
            return _database.Table<Tutor>().ToListAsync();
        }

        public Task<int> DeleteTutorAsync(Tutor tutor)
        {
            return _database.DeleteAsync(tutor);
        }

        public Task<int> UpdateTutorAsync(Tutor tutor)
        {
            return _database.UpdateAsync(tutor);
        }

        // Métodos CRUD para Alumno
        public Task<int> SaveAlumnoAsync(Alumno alumno)
        {
            return _database.InsertAsync(alumno);
        }

        public Task<List<Alumno>> GetAlumnosAsync()
        {
            return _database.Table<Alumno>().ToListAsync();
        }

        public Task<int> DeleteAlumnoAsync(Alumno alumno)
        {
            return _database.DeleteAsync(alumno);
        }

        public Task<int> UpdateAlumnoAsync(Alumno alumno)
        {
            return _database.UpdateAsync(alumno);
        }

        // Métodos CRUD para Escuela
        public Task<int> SaveEscuelaAsync(Escuela escuela)
        {
            return _database.InsertAsync(escuela);
        }

        public Task<List<Escuela>> GetEscuelasAsync()
        {
            return _database.Table<Escuela>().ToListAsync();
        }

        public Task<int> DeleteEscuelaAsync(Escuela escuela)
        {
            return _database.DeleteAsync(escuela);
        }

        public Task<int> UpdateEscuelaAsync(Escuela escuela)
        {
            return _database.UpdateAsync(escuela);
        }

        // Métodos CRUD para Materia
        public Task<int> SaveMateriaAsync(Materia materia)
        {
            return _database.InsertAsync(materia);
        }

        public Task<List<Materia>> GetMateriasAsync()
        {
            return _database.Table<Materia>().ToListAsync();
        }

        public Task<int> DeleteMateriaAsync(Materia materia)
        {
            return _database.DeleteAsync(materia);
        }

        public Task<int> UpdateMateriaAsync(Materia materia)
        {
            return _database.UpdateAsync(materia);
        }

        // Métodos CRUD para Curso
        public Task<int> SaveCursoAsync(Curso curso)
        {
            return _database.InsertAsync(curso);
        }

        public Task<List<Curso>> GetCursosAsync()
        {
            return _database.Table<Curso>().ToListAsync();
        }

        public Task<int> DeleteCursoAsync(Curso curso)
        {
            return _database.DeleteAsync(curso);
        }

        public Task<int> UpdateCursoAsync(Curso curso)
        {
            return _database.UpdateAsync(curso);
        }

        // Métodos CRUD para Nota
        public Task<int> SaveNotaAsync(Nota nota)
        {
            return _database.InsertAsync(nota);
        }

        public Task<List<Nota>> GetNotasAsync()
        {
            return _database.Table<Nota>().ToListAsync();
        }

        public Task<int> DeleteNotaAsync(Nota nota)
        {
            return _database.DeleteAsync(nota);
        }

        public Task<int> UpdateNotaAsync(Nota nota)
        {
            return _database.UpdateAsync(nota);
        }

        // Métodos CRUD para Asistencia
        public Task<int> SaveAsistenciaAsync(Asistencia asistencia)
        {
            return _database.InsertAsync(asistencia);
        }

        public Task<List<Asistencia>> GetAsistenciasAsync()
        {
            return _database.Table<Asistencia>().ToListAsync();
        }

        public Task<int> DeleteAsistenciaAsync(Asistencia asistencia)
        {
            return _database.DeleteAsync(asistencia);
        }

        public Task<int> UpdateAsistenciaAsync(Asistencia asistencia)
        {
            return _database.UpdateAsync(asistencia);
        }
    }
}
