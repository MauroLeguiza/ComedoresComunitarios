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
    public class DatoInforme
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable getInformes()
        {
            DataTable tabla = ds.ObtenerTabla("Informes", "select a.ID_Informe, a.Fecha_Informe, b.Rango, a.CantidadPersonas_Informe, c.Nombre_Prestacion, a.Legajo_Informe, a.ID_Comedor_Informe from Informes as a INNER JOIN Rango_Edad as b  ON a.ID_RangoEdad_Informe = b.ID_Rango_Edad INNER JOIN Prestaciones as c ON c.ID_Prestacion = a.ID_Prestacion_Informe");
            return tabla;
        }

        public DataTable getInformesFecha(Informe info)
        {
            DataTable tabla = ds.ObtenerTabla("Informes", "select a.ID_Informe, a.Fecha_Informe, b.Rango, a.CantidadPersonas_Informe, c.Nombre_Prestacion, a.Legajo_Informe, a.ID_Comedor_Informe from Informes as a INNER JOIN Rango_Edad as b  ON a.ID_RangoEdad_Informe = b.ID_Rango_Edad INNER JOIN Prestaciones as c ON c.ID_Prestacion = a.ID_Prestacion_Informe WHERE a.Fecha_Informe LIKE '"+ info.getFecha()+"'");
            return tabla;
        }

        public DataTable getInformesComedor(Informe info)
        {
            DataTable tabla = ds.ObtenerTabla("Informes", "select a.ID_Informe, a.Fecha_Informe, b.Rango, a.CantidadPersonas_Informe, c.Nombre_Prestacion, a.Legajo_Informe, a.ID_Comedor_Informe from Informes as a INNER JOIN Rango_Edad as b  ON a.ID_RangoEdad_Informe = b.ID_Rango_Edad INNER JOIN Prestaciones as c ON c.ID_Prestacion = a.ID_Prestacion_Informe WHERE a.ID_Comedor_Informe =" + info.getIDComeInforme());
            return tabla;
        }


        public DataTable getInformesID(Informe info)
        {
            DataTable tabla = ds.ObtenerTabla("Informes", "select a.ID_Informe, a.Fecha_Informe, b.Rango, a.CantidadPersonas_Informe, c.Nombre_Prestacion, a.Legajo_Informe, a.ID_Comedor_Informe from Informes as a INNER JOIN Rango_Edad as b  ON a.ID_RangoEdad_Informe = b.ID_Rango_Edad INNER JOIN Prestaciones as c ON c.ID_Prestacion = a.ID_Prestacion_Informe WHERE a.ID_Informe=" + info.getIdInforme());
            return tabla;
        }

        public DataTable getInformesLegajo(Informe info)
        {
            DataTable tabla = ds.ObtenerTabla("Informes", "select a.ID_Informe, a.Fecha_Informe, b.Rango, a.CantidadPersonas_Informe, c.Nombre_Prestacion, a.Legajo_Informe, a.ID_Comedor_Informe from Informes as a INNER JOIN Rango_Edad as b  ON a.ID_RangoEdad_Informe = b.ID_Rango_Edad INNER JOIN Prestaciones as c ON c.ID_Prestacion = a.ID_Prestacion_Informe WHERE a.Legajo_Informe LIKE '%" + info.getLegajo() + "%'");
            return tabla;
        }

        public DataTable getComensales(PersonaComensal per)
        {
            DataTable tabla = ds.ObtenerTabla("Comensales", "select * from Comensales WHERE ID_Informes_Comensales=" + per.getIdInformeComensal());
            return tabla;
        }


        public int MaximoInforme()
        {
            AccesoDatos dato = new AccesoDatos();
            string consulta = "Select MAX(ID_Informe) from Informes";
            return dato.ObtenerMaximo(consulta) + 1;
        }

        private void ArmarParametrosInformeAgregar(ref SqlCommand Comando, Informe info)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@FECHA", SqlDbType.VarChar);
            SqlParametros.Value = info.getFecha();
            SqlParametros = Comando.Parameters.Add("@IDRANGOEDAD", SqlDbType.VarChar);
            SqlParametros.Value = info.getIDRangoEdad();
            SqlParametros = Comando.Parameters.Add("@CANTIDADPERSONAS", SqlDbType.Int);
            SqlParametros.Value = info.getCantidadpersonas();
            SqlParametros = Comando.Parameters.Add("@IDPRESTACION", SqlDbType.VarChar);
            SqlParametros.Value = info.getIDPrestacion();
            SqlParametros = Comando.Parameters.Add("@LEGAJO", SqlDbType.VarChar);
            SqlParametros.Value = info.getLegajo();
            SqlParametros = Comando.Parameters.Add("@IDCOME", SqlDbType.Int);
            SqlParametros.Value = info.getIDComeInforme();

        }

        private void ArmarParametrosPersonaComensalAgregar(ref SqlCommand Comando, PersonaComensal per)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI", SqlDbType.VarChar);
            SqlParametros.Value = per.getDNIComensal();
            SqlParametros = Comando.Parameters.Add("@IDINFORME", SqlDbType.Int);
            SqlParametros.Value = per.getIdInformeComensal();
            SqlParametros = Comando.Parameters.Add("@EDAD", SqlDbType.Int);
            SqlParametros.Value = per.getEdadComensal();
            SqlParametros = Comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar);
            SqlParametros.Value = per.getNombreComensal();
            SqlParametros = Comando.Parameters.Add("@APELLIDO", SqlDbType.VarChar);
            SqlParametros.Value = per.getApellidoComensal();
            SqlParametros = Comando.Parameters.Add("@TELEFONO", SqlDbType.VarChar);
            SqlParametros.Value = per.getTelefonoComensal();
        }

        private void ArmarParametrosInformePromedio(ref SqlCommand Comando, Informe info)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCOME", SqlDbType.Int);
            SqlParametros.Value = info.getIDComeInforme();
        }

        public int agregarInforme(Informe info)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosInformeAgregar(ref comando, info);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SPAgregarInforme");
        }

        public int MostrarPromedio(Informe info)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosInformePromedio(ref comando, info);
            return ds.EjecutarProcedimientoAlmacenado(comando, "sp_Promedio");
        }

        public int agregarComensal(PersonaComensal per)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPersonaComensalAgregar(ref comando, per);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SPAgregarComensales");
        }

        public DataTable GetTablaRangoEdad()
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();


            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Rango_Edad ", ac.ObtenerConexion());
            adap.Fill(ds, "Rango_Edad");
            return ds.Tables["Rango_Edad"];

        }

        public DataTable GetTablaPrestacion()
        {
            AccesoDatos ac = new AccesoDatos();
            DataSet ds = new DataSet();


            SqlDataAdapter adap = new SqlDataAdapter();
            adap = ac.ObtenerAdaptador("select * from Prestaciones ", ac.ObtenerConexion());
            adap.Fill(ds, "Prestaciones");
            return ds.Tables["Prestaciones"];

        }
    }
}
