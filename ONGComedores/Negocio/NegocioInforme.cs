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
    public class NegocioInforme
    {
        public DataTable GetTabla()
        {
            DatoInforme dato = new DatoInforme();
            return dato.getInformes();
        }


        public DataTable GetTablaFecha(string fecha)
        {
            DatoInforme dato = new DatoInforme();
            Informe info = new Informe();
            info.setFecha(fecha);
            return dato.getInformesFecha(info);
        }

        public DataTable GetTablaIDCome(int comedor)
        {
            DatoInforme dato = new DatoInforme();
            Informe info = new Informe();
            info.setIDComeInforme(comedor);
            return dato.getInformesComedor(info);
        }

        public DataTable GetTablaLegajo(string legajo)
        {
            DatoInforme dato = new DatoInforme();
            Informe info = new Informe();
            info.setLegajo(legajo);
            return dato.getInformesLegajo(info);
        }

        public DataTable GetTablaID(int id)
        {
            DatoInforme dato = new DatoInforme();
            Informe info = new Informe();
            info.setIdInforme(id);
            return dato.getInformesID(info);
        }

        public DataTable GetTablaComensales(int id)
        {
            DatoInforme dato = new DatoInforme();
            PersonaComensal per = new PersonaComensal();
            per.setIdInformeComensal(id);
            return dato.getComensales(per);
        }

        public bool AgregarInforme(string fecha, string idrangoedad, int cantidadpersonas, string idprestacion, string legajo, int idcome)
        {
            Informe info = new Informe();
            DatoInforme dato = new DatoInforme();
            info.setFecha(fecha);
            info.setIDRangoEdad(idrangoedad);
            info.setCantidadPersonas(cantidadpersonas);
            info.setIDPrestacion(idprestacion);
            info.setLegajo(legajo);
            info.setIDComeInforme(idcome);

            int cant= dato.agregarInforme(info);

            if (cant == 1)
                return true;
            else
                return false;
           

        }

        public bool AgregarComensal(string dni, int ID_Info, int edad, string nombre, string apellido, string telefono)
        {
            DatoInforme dato = new DatoInforme();
            PersonaComensal per = new PersonaComensal();
            per.setDNIComensal(dni);
            per.setIdInformeComensal(ID_Info);
            per.setEdadComensal(edad);
            per.setNombreComensal(nombre);
            per.setApellidoComensal(apellido);
            per.setTelefonoComensal(telefono);

            int cant = dato.agregarComensal(per);

            if(cant==1)
                return true;
            else
                return false;
        }


        public DataTable MostrarRangoEdad()
        {
            DatoInforme dato = new DatoInforme();
            return dato.GetTablaRangoEdad();
        }

        public int MostrarPROMEDIO(int id)
        {
            DatoInforme dato = new DatoInforme();
            Informe info = new Informe();
            info.setIDComeInforme(id);
            return dato.MostrarPromedio(info);
        }

        public DataTable MostrarPrestaciones()
        {
            DatoInforme dato = new DatoInforme();
            return dato.GetTablaPrestacion();
        }

        public int maximoinfo()
        {
            DatoInforme dato = new DatoInforme();
            return dato.MaximoInforme();
        }

    }
}
