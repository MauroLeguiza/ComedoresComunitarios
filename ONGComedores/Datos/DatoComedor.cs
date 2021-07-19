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
    public class DatoComedor
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable getComedor(Comedor come)
        {
            DataTable tabla = ds.ObtenerTabla("Comedores_ONG", "select a.ID_Come, a.CUIT_Come, b.Nombre_Provincia,c.Nombre_Localidad,d.Nombre_Clasificacion,a.Dirección,a.Telefono_Come from Comedores_ONG as a INNER JOIN Provincias as b ON ID_Provincia = IDProv_Come INNER JOIN Localidades as c ON c.ID_Localidad = a.IDLocalidad_Come INNER JOIN Clasificaciones as d ON d.Id_Clasificacion = a.IDClasificacion_Come where ID_Come=" + come.getIdComedor());

            return tabla;
          
        }



        public DataTable getComedorProvincia(string provincia)
        {
            DataTable tabla = ds.ObtenerTabla("Comedores_ONG", "select a.ID_Come, a.CUIT_Come, b.Nombre_Provincia,c.Nombre_Localidad,d.Nombre_Clasificacion,a.Dirección,a.Telefono_Come from Comedores_ONG as a INNER JOIN Provincias as b ON ID_Provincia = IDProv_Come INNER JOIN Localidades as c ON c.ID_Localidad = a.IDLocalidad_Come INNER JOIN Clasificaciones as d ON d.Id_Clasificacion = a.IDClasificacion_Come where IDProv_Come=" + provincia);

      
            return tabla;

        }
        private void ArmarParametrosComedorAgregar(ref SqlCommand Comando, Comedor come)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CUITCOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getCUITComedor();
            SqlParametros = Comando.Parameters.Add("@CLASIFICACIONCOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getIdClasificacionComedor();
            SqlParametros = Comando.Parameters.Add("@IDPROVINCIACOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getIdProvinciaComedor();
            SqlParametros = Comando.Parameters.Add("@IDLOCALIDADCOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getIdLocalidadComedor();
            SqlParametros = Comando.Parameters.Add("@DIRECCIONCOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getDireccionComedor();
            SqlParametros = Comando.Parameters.Add("@TELEFONOCOMEDOR", SqlDbType.VarChar);
            SqlParametros.Value = come.getTelefonoComedor();
        }



        private void ArmarParametrosComedorEliminar(ref SqlCommand Comando, Comedor come)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCOMEDOR", SqlDbType.Int);
            SqlParametros.Value = come.getIdComedor();
        }


        private void ArmarParametrosInfraestructura(ref SqlCommand Comando, Comedor come,string servicio)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCOMEDOR", SqlDbType.Int);
            SqlParametros.Value = come.getIdComedor();
            SqlParametros = Comando.Parameters.Add("@ID_SERVICIO", SqlDbType.Int);
            SqlParametros.Value = servicio;
        }

        private void ArmarParametroActualizar(ref SqlCommand Comando, Comedor come)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCOME", SqlDbType.Int);
            SqlParametros.Value = come.getIdComedor();
            SqlParametros = Comando.Parameters.Add("@TELEFONO", SqlDbType.VarChar);
            SqlParametros.Value = come.getTelefonoComedor();
        }

        public int agregarComedor(Comedor come)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosComedorAgregar(ref comando, come);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarComedor");
        }

        public int agregarInfraestructura(Comedor come, string servicio)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosInfraestructura(ref comando, come,servicio );
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarInfraestructura");
        }

        public int eliminarComedor(Comedor come)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosComedorEliminar(ref comando, come);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarComedor");

        }

        public int ActualizarComedor(Comedor come)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroActualizar(ref comando, come);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarComedor");

        }

        public DataTable getTablaComedor()
        {

            DataTable tabla = ds.ObtenerTabla("Comedores_ONG", "select a.ID_Come, a.CUIT_Come, b.Nombre_Provincia, c.Nombre_Localidad, d.Nombre_Clasificacion, a.Dirección, a.Telefono_Come from Comedores_ONG as a INNER JOIN Provincias as b ON ID_Provincia = IDProv_Come INNER JOIN Localidades as c ON c.ID_Localidad = a.IDLocalidad_Come INNER JOIN Clasificaciones as d ON d.Id_Clasificacion = a.IDClasificacion_Come ");
            return tabla;
        }

        public DataTable getTablaProvincias()
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();

            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Provincias ", ac.ObtenerConexion());
            adap.Fill(ds, "Provincias");
            return ds.Tables["Provincias"];
        }


        public DataTable getTablaLocalidades(string provincia)
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();

            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Localidades where ID_Provincia_Localidad LIKE '"+provincia+"'", ac.ObtenerConexion());
            adap.Fill(ds, "Localidades");
            return ds.Tables["Localidades"];
        }

        public DataTable GetTablaClasificaciones()
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();


            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Clasificaciones ", ac.ObtenerConexion());
            adap.Fill(ds, "Clasificaciones");
            return ds.Tables["Clasificaciones"];

        }

        public DataTable GetTablaServicios()
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();


            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Servicios ", ac.ObtenerConexion());
            adap.Fill(ds, "Servicios");
            return ds.Tables["Servicios"];
        }

        public Boolean existeComedorCUIT(Comedor come)
        {
            //CHEQUEAR CONSULTA
            String consulta = "Select * from Comedores_ONG where CUIT_Come=" + come.getCUITComedor();
            return ds.existe(consulta);
        }

        public int MaximoComedores()
        {
            AccesoDatos dato = new AccesoDatos();
            string consulta = "Select MAX(Id_Come) from Comedores_ONG";
            return dato.ObtenerMaximo(consulta);
        }

        public DataTable ListaServicios(Comedor come)
        {
            string consulta = "Select Nombre_Servicio from Servicios INNER JOIN Infraestructura ON ID_Servicio = ID_Servicio_Infraestructura INNER JOIN Comedores_ONG ON ID_Come = ID_Comedor_Infraestructura WHERE ID_Come =" + come.getIdComedor();
            return ds.ObtenerTabla("Servicios",consulta);
        }

        /*
        public Boolean existeComedor(Comedor come)
        {
            String consulta = "Select * from Sucursal where NombreSucursal='" + suc.GetNombreSucursal() + "'";
            return ds.existe(consulta);
        }*/
    }
}
