using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;
using System.Data;

namespace Negocio
{
    public class NegocioUsuario
    {
        
        public DataTable GetTabla()
        {
            DatoUsuario dato = new DatoUsuario();
            return dato.getTablaUsuario();
        }

        public DataTable GetTablaLegajo(string leg)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();
            user.setLegajoUsuario(leg);
            return dato.getUsuario(user);
        }

        public DataTable GetTablaApellido(string ape)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();
            user.setApellidoUsuario(ape);
            return dato.getUsuarioApellido(user);
        }

        public DataTable getUsuario(Usuario user)
        {
            DatoUsuario dato = new DatoUsuario();
            return dato.getUsuario(user);
        }

        public bool AgregarUsuario(string legajo, string contraseña, bool IdNivel, string DNI, string Nombre, string Apellido, string FechaIngreso, string Telefono, string Direccion,string Email)
        {
            int cantfilas = 0;

            Usuario user = new Usuario();
            user.setLegajoUsuario(legajo);
            user.setContraseñaUsuario(contraseña);
            user.setNivelUsuario(IdNivel);
            user.setDNIUsuario(DNI);
            user.setNombreUsuario(Nombre);
            user.setApellidoUsuario(Apellido);
            user.setFechaIngresoUsuario(FechaIngreso);
            user.setTelefonoUsuario(Telefono);
            user.setDireccionUsuario(Direccion);
            user.setEmailUsuario(Email);

            DatoUsuario dato = new DatoUsuario();
            if (dato.existeUsuarioLegajoAgregar(user) == false)
                cantfilas = dato.agregarUsuario(user);
           
            if (cantfilas == 1)
                return true;
            else
                return false;

        }

        public bool EliminarUsuario(string legajo)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();
            int op = 0;
            user.setLegajoUsuario(legajo);
            op += dato.eliminarUsuarioCOMENSAL(user);
            op += dato.eliminarUsuarINFO(user);
            op += dato.eliminarUsuario(user);
            
            if (op == 3)
                return true;
            else
                return false;
            
        }




        public bool EditUsuario(string legajo, string contra, string email, string direccion, string telefono)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setLegajoUsuario(legajo);
            user.setContraseñaUsuario(contra);
            user.setEmailUsuario(email);
            user.setDireccionUsuario(direccion);
            user.setTelefonoUsuario(telefono);
            int op = dato.EditarUsuario(user);
            if (op == 1)
                return true;
            else
                return false;

        }

        public bool ModificarContraseñaUsuario(string legajo,string contraseña)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setLegajoUsuario(legajo);
            user.setContraseñaUsuario(contraseña);
            int op = dato.ModificarContraseñaUsuario(user);
            if (op == 1)
                return true;
            else
                return false;

        }


        public bool ExisteUsuario(string Legajo, string Contraseña)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setLegajoUsuario(Legajo);
            user.setContraseñaUsuario(Contraseña);

            if (dato.existeUsuarioLegajoContraseña(user))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool ExisteLegajo(string Legajo)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setLegajoUsuario(Legajo);

            if (dato.existeUsuarioLegajoAgregar(user))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool ExisteApellido(string ape)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setApellidoUsuario(ape);

            if (dato.existeUsuarioApellido(user))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool UsuarioAdministrador(string Legajo)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();

            user.setLegajoUsuario(Legajo);
           

            bool estado = dato.existeAdministrador(user);
            if (estado)
            {
                return true;
               
            } 
            else
            {
                return false;
            }
               
        }

        public string GetNombreUsuario(string legajo)
        {
            DatoUsuario dato = new DatoUsuario();
            Usuario user = new Usuario();
            string nombre;
            user.setLegajoUsuario(legajo);
            nombre=dato.NombreUsuario(user);
            return nombre;

        }

    }
}
