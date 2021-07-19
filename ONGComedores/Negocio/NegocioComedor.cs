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
    public class NegocioComedor
    {

        public DataTable GetTabla()
        {
            DatoComedor dato = new DatoComedor();
            return dato.getTablaComedor();
        }

        public DataTable getCome(int id)
        {
            DatoComedor dato = new DatoComedor();
            Comedor come = new Comedor();
            come.setIdComedor(id);
            return dato.getComedor(come);
        }

        public DataTable getComeProvincia(string prov)
        {
            DatoComedor dato = new DatoComedor();
            return dato.getComedorProvincia(prov);
        }

        public DataTable MostrarProvincias()
        {
            DatoComedor dato = new DatoComedor();
            return dato.getTablaProvincias();

        }

        public DataTable MostrarClasificaciones()
        {
            DatoComedor dato = new DatoComedor();
            return dato.GetTablaClasificaciones();
        }

        public DataTable MostrarServicios()
        {
            DatoComedor dato = new DatoComedor();
           return dato.GetTablaServicios();
        }

        public DataTable MostrarLocalidades(string provincia)
        {
            DatoComedor dato = new DatoComedor();
            return dato.getTablaLocalidades(provincia);

        }

        public bool AgregarComedor(string CUIT_Comedor, string Id_Provincia, string Id_Localidad, string Id_Clasificacion, string Direccion, string Telefono)
        {
            int cantfilas = 0;

            Comedor come = new Comedor();
            
            come.setCuitComedor(CUIT_Comedor);
            come.setIdProvinciaComedor(Id_Provincia);
            come.setIdLocalidadComedor(Id_Localidad);
            come.setIdClasificacionComedor(Id_Clasificacion);
            come.setDireccionComedor(Direccion);
            come.setTelefonoComedor(Telefono);

            DatoComedor dato = new DatoComedor();
            if (dato.existeComedorCUIT(come) == false)
                cantfilas = dato.agregarComedor(come);

            if (cantfilas == 1)
                return true;
            else
                return false;
        }

        public bool EliminarComedor(int id)
        {
            int op = 0;
            DatoComedor dato = new DatoComedor();
            Comedor come = new Comedor();

            come.setIdComedor(id);
           op = dato.eliminarComedor(come);
            if (op == 1)
                return true;
            else
                return false;

        }


        public bool ActualizarComedor(int id,string telefono)
        {
            int op = 0;
            DatoComedor dato = new DatoComedor();
            Comedor come = new Comedor();

            come.setIdComedor(id);
            come.setTelefonoComedor(telefono);
            op = dato.ActualizarComedor(come);
            if (op == 1)
                return true;
            else
                return false;

        }

        public bool AgregarInfraestructura(string servicio)
        {
            DatoComedor dato = new DatoComedor();
            Comedor come = new Comedor();

            come.setIdComedor(dato.MaximoComedores());
            int op = dato.agregarInfraestructura(come, servicio);
            if (op == 1)
                return true;
            else
                return false;

        }

        public bool ExisteComedor(Comedor come)
        {
            DatoComedor dato =new  DatoComedor();
            if (dato.existeComedorCUIT(come))
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public int maximo()
        {
            DatoComedor dato = new DatoComedor();
            return dato.MaximoComedores();
        }

        public DataTable NombreServicios(int id)
        {
            Comedor come = new Comedor();
            DatoComedor dato = new DatoComedor();
            come.setIdComedor(id);

            return dato.ListaServicios(come);


        }
    }
}