using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class DatoUsuario
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable getUsuario(Usuario user)
        {
            DataTable tabla = ds.ObtenerTabla("Usuarios_ONG", "Select Legajo_ONG, NivelUsuario_ONG, Contraseña_ONG, DNI_ONG, Nombre_ONG, Apellido_ONG, Email_ONG, Direccion_ONG, fechaIngreso_ONG, Telefono_ONG from Usuarios_ONG where Legajo_ONG LIKE '%" + user.getLegajoUsuario()+"%'" );

            return tabla;

        }

        public DataTable getUsuarioApellido(Usuario user)
        {
            DataTable tabla = ds.ObtenerTabla("Usuarios_ONG", "Select Legajo_ONG, NivelUsuario_ONG, Contraseña_ONG, DNI_ONG, Nombre_ONG, Apellido_ONG, Email_ONG, Direccion_ONG, fechaIngreso_ONG, Telefono_ONG from Usuarios_ONG where apellido_ONG LIKE '%" + user.getApellidoUsuario()+ "%'");

            return tabla;

        }

        private void ArmarParametrosUsuarioAgregar(ref SqlCommand Comando,Usuario user )
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@LEGAJOUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getLegajoUsuario();
            SqlParametros = Comando.Parameters.Add("@CONTRASEÑAUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getContraseñaUsuario();
            SqlParametros = Comando.Parameters.Add("@IDNIVELUSUARIO", SqlDbType.Int);
            SqlParametros.Value = user.getNivelUsuario();
            SqlParametros = Comando.Parameters.Add("@DNIUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getDNIUsuario();
            SqlParametros = Comando.Parameters.Add("@NOMBREUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getNombreUsuario();
            SqlParametros = Comando.Parameters.Add("@APELLIDOUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getApellidoUsuario();
            SqlParametros = Comando.Parameters.Add("@FECHAINGRESOUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getFechaIngresoUsuario();
            SqlParametros = Comando.Parameters.Add("@TELEFONOUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getTelefonoUsuario();
            SqlParametros = Comando.Parameters.Add("@EMAILUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getEmailUsuario();
            SqlParametros = Comando.Parameters.Add("@DIRECCIONUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getDireccionlUsuario();
          
        }

        private void ArmarParametrosUsuarioEditContra(ref SqlCommand Comando, Usuario Usu)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@LEG", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getLegajoUsuario();
            SqlParametros = Comando.Parameters.Add("@CONTRA", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getContraseñaUsuario();
        }


        private void ArmarParametrosUsuarioEliminar(ref SqlCommand Comando,Usuario user)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@LEGAJOUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = user.getLegajoUsuario();
        }

        private void ArmarParametrosUsuarioEditar(ref SqlCommand Comando, Usuario Usu)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@LEG", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getLegajoUsuario();
            SqlParametros = Comando.Parameters.Add("@CONTRA", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getContraseñaUsuario();
            SqlParametros = Comando.Parameters.Add("@MAIL", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getEmailUsuario();
            SqlParametros = Comando.Parameters.Add("@DIR", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getDireccionlUsuario();
            SqlParametros = Comando.Parameters.Add("@TEL", SqlDbType.VarChar);
            SqlParametros.Value = Usu.getTelefonoUsuario();
}
        


        public int agregarUsuario(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioAgregar(ref comando, user);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarUsuario");
        }

        public int EditarUsuario(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEditar(ref comando, user);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SPEditarUsuario");
        }

        public int ModificarContraseñaUsuario(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEditContra(ref comando, user);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SPEditarUsuarioContraseña");
        }


        public int eliminarUsuario(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEliminar(ref comando, user);
                return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarUsuario");

        }

        public int eliminarUsuarINFO(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEliminar(ref comando, user);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarUsuarioInfo");

        }


        public int eliminarUsuarioCOMENSAL(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEliminar(ref comando, user);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarUsuComensales");

        }

        public DataTable getTablaUsuario()
        {

            DataTable tabla = ds.ObtenerTabla("Usuarios_ONG", "Select * from Usuarios_ONG");
            return tabla;
        }

        public Boolean existeUsuarioLegajoContraseña(Usuario user)
        {
            
            String consulta = "Select * from Usuarios_ONG where Legajo_ONG='" + user.getLegajoUsuario()+"'"+"AND Contraseña_ONG='"+user.getContraseñaUsuario()+"'";
            return ds.existe(consulta);
        }

        public Boolean existeUsuarioApellido(Usuario user)
        {

            String consulta = "Select * from Usuarios_ONG where apellido_ONG LIKE'%" + user.getApellidoUsuario() + "%'";
            return ds.existe(consulta);
        }

        public Boolean existeUsuarioLegajoAgregar(Usuario user)
        {

            String consulta = "Select * from Usuarios_ONG where Legajo_ONG='" + user.getLegajoUsuario() + "'" ;
            return ds.existe(consulta);
        }


        public Boolean existeAdministrador(Usuario user)
        {

            String consulta = "Select * from Usuarios_ONG where Legajo_ONG='" + user.getLegajoUsuario() + "'" +"AND nivelUsuario_ONG = 1";
            return ds.existe(consulta);
        }

        public string NombreUsuario(Usuario user)
        {
            String consulta = "Select * from Usuarios_ONG where Legajo_ONG='" + user.getLegajoUsuario() + "'";
            return ds.ObtenerNombreApellido(consulta);
        }
    }
}
