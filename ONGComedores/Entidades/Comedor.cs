using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Comedor
    {
        //PARAMETROS

        private int ID_Comedor;
        private string CUIT_Comedor;
        private string ID_Provincia_Comedor;
        private string ID_Localidad_Comedor;
        private string ID_Clasificacion_Comedor;
        private string Direccion_Comedor;
        private string Telefono_Comedor;

        //CONSTRUCTORES

        public Comedor()
        {

        }

        public Comedor(int ID_Comedor, string CUIT_Comedor, string ID_Provincia_Comedor, string ID_Localidad_Comedor, string ID_Clasificacion_Comedor, string Direccion_Comedor)
        {
            this.ID_Comedor = ID_Comedor;
            this.CUIT_Comedor = CUIT_Comedor;
            this.ID_Provincia_Comedor = ID_Provincia_Comedor;
            this.ID_Localidad_Comedor = ID_Localidad_Comedor;
            this.ID_Clasificacion_Comedor = ID_Clasificacion_Comedor;
            this.Direccion_Comedor = Direccion_Comedor;

        }

        //GETS Y SETS

        public int getIdComedor()
        {
            return ID_Comedor;
        }

        public void setIdComedor(int IdComedor)
        {
            ID_Comedor = IdComedor;
        }

        public string getCUITComedor()
        {
            return CUIT_Comedor;
        }

        public void setCuitComedor(string CuitComedor)
        {
            CUIT_Comedor = CuitComedor;
        }

        public string getIdProvinciaComedor()
        {
            return ID_Provincia_Comedor;
        }

        public void setIdProvinciaComedor(string IDprovinciaComedor)
        {
            ID_Provincia_Comedor = IDprovinciaComedor;
        }

        public string getIdLocalidadComedor()
        {
            return ID_Localidad_Comedor;
        }

        public void setIdLocalidadComedor(string IDLocaldiadComedor)
        {
            ID_Localidad_Comedor = IDLocaldiadComedor;
        }

        public string getIdClasificacionComedor()
        {
            return ID_Clasificacion_Comedor;
        }

        public void setIdClasificacionComedor(string IDClasificacionComedor)
        {
            ID_Clasificacion_Comedor=IDClasificacionComedor;
        }

        public string getDireccionComedor()
        {
            return Direccion_Comedor;
        }

        public void setDireccionComedor(string DireccionComedor)
        {
            Direccion_Comedor = DireccionComedor;
        }

        public string getTelefonoComedor()
        {
            return Telefono_Comedor;
        }

        public void setTelefonoComedor(string TelefonoComedor)
        {
            Telefono_Comedor = TelefonoComedor;
        }

    }
}
