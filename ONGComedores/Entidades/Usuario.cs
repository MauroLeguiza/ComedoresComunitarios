using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        //PROPIEDADES

        private string Legajo_Usuario;
        private string Contraseña_Usuario;
        private bool IDNivel_Usuario;
        private string DNI_Usuario;
        private string Nombre_Usuario;
        private string Apellido_Usuario;
        private string FechaIngreso_Usuario;
        private string Telefono_Usuario;
        private string Direccion_Usuario;
        private string Email_Usuario;
        //CONSTRUCTORES

        public Usuario()
        {

        }

        public Usuario(string legajo, string contraseña, bool IdNivel, string Nombre, string Apellido, string Fecha, string DNI, string Telefono, string Direccion)
        {
            this.Legajo_Usuario = legajo;
            this.Contraseña_Usuario = contraseña;
            this.IDNivel_Usuario = IdNivel;
            this.Nombre_Usuario = Nombre;
            this.Apellido_Usuario = Apellido;
            this.FechaIngreso_Usuario = Fecha;
            this.DNI_Usuario = DNI;
            this.Telefono_Usuario = Telefono;
            this.Direccion_Usuario = Direccion;
        }

        // GETS Y SETS

        public string getLegajoUsuario()
        {
            return Legajo_Usuario;
        }

        public void setLegajoUsuario(string legajo)
        {
            Legajo_Usuario = legajo;
        }

        public string getContraseñaUsuario()
        {
            return Contraseña_Usuario;
        }

        public void setContraseñaUsuario(string contraseña)
        {
            Contraseña_Usuario = contraseña;
        }

        public bool getNivelUsuario()
        {
            return IDNivel_Usuario;
        }

        public void setNivelUsuario(bool nivel)
        {
            IDNivel_Usuario = nivel;
        }

        public string getNombreUsuario()
        {
            return Nombre_Usuario;
        }

        public void setNombreUsuario(string Nombre)
        {
            Nombre_Usuario = Nombre;
        }

        public string getApellidoUsuario()
        {
            return Apellido_Usuario;
        }

        public void setApellidoUsuario(string Apellido)
        {
            Apellido_Usuario = Apellido;
        }

        public string getFechaIngresoUsuario()
        {
            return FechaIngreso_Usuario;
        }

        public void setFechaIngresoUsuario(string fecha)
        {
            FechaIngreso_Usuario = fecha;
        }

        public string getDNIUsuario()
        {
            return DNI_Usuario;
        }

        public void setDNIUsuario(string DNI)
        {
            DNI_Usuario = DNI;
        }

        public string getTelefonoUsuario()
        {
            return Telefono_Usuario;
        }

        public void setTelefonoUsuario(string telefono)
        {
            Telefono_Usuario = telefono;
        }


        public string getDireccionlUsuario()
        {
            return Direccion_Usuario;
        }

        public void setDireccionUsuario(string direccion)
        {
            Direccion_Usuario = direccion;
        }

        public string getEmailUsuario()
        {
            return Email_Usuario;
        }

        public void setEmailUsuario(string Email)
        {
            Email_Usuario = Email;
        }

    }
}
