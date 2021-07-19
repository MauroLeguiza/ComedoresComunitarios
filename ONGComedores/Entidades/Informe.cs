using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Informe
    {
        private int ID_Informe;
        private string fecha;
        private string id_rangoedad;
        private int cantidadpersonas;
        private string prestacion;
        private string Legajo;
        private int idcome;

        public Informe()
        {

        }

        public Informe(int id, string fech, string idrango, int cantidaper, string prest, string legajo, int come)
        {
            this.ID_Informe = id;
            this.fecha = fech;
            this.id_rangoedad = idrango;
            this.cantidadpersonas = cantidaper;
            this.prestacion = prest;
            this.Legajo = legajo;
            this.idcome = come;


        }

        public int getIdInforme()
        {
            return ID_Informe;
        }

        public void setIdInforme(int id)
        {
            ID_Informe = id;
        }

        public string getFecha()
        {
            return fecha;
        }

        public void setFecha(string fec)
        {
            fecha = fec;
        }

        public string getIDRangoEdad()
        {
            return id_rangoedad;
        }

        public void setIDRangoEdad(string id)
        {
            id_rangoedad = id;
        }

        public int getCantidadpersonas()
        {
            return cantidadpersonas;
        }

        public void setCantidadPersonas(int cant)
        {
            cantidadpersonas = cant;
        }

        public string getIDPrestacion()
        {
            return prestacion;
        }

        public void setIDPrestacion(string id)
        {
            prestacion = id;
        }

        public string getLegajo()
        {
            return Legajo;
        }

        public void setLegajo(string leg)
        {
            Legajo = leg;
        }

        public int getIDComeInforme()
        {
            return idcome;
        }

        public void setIDComeInforme(int ID)
        {
            idcome = ID;
        }



    }
}
