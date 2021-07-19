using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class PersonaComensal
    {
        private int Id_Informe_Comensal;
        private string DNI;
        private string Nombre;
        private string Apellido;
        private int edad;
        private string Telefono;

    
    public PersonaComensal()
        {

        }


     public PersonaComensal(int id, string dni, string nombre, string apellido, int edad, string telefono)
        {
            this.Id_Informe_Comensal = id;
            this.DNI = dni;
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.edad = edad;
            this.Telefono = telefono;
        }
       

    public int getIdInformeComensal()
        {
            return Id_Informe_Comensal;
        }

    public void setIdInformeComensal(int id)
        {
            Id_Informe_Comensal = id;
        }

     public string getDNIComensal()
        {
            return DNI;
        }

    public void setDNIComensal(string dni)
        {
            DNI = dni;
        }

    public string getNombreComensal()
        {
            return Nombre;
        }

    public void setNombreComensal(string nom)
        {
            Nombre = nom;
        }

    public string getApellidoComensal()
        {
            return Apellido;
        }

    public void setApellidoComensal(string ape)
        {
            Apellido = ape;
        }

    public int getEdadComensal()
        {
            return edad;
        }

    public void setEdadComensal(int ed)
        {
            edad = ed;
        }

    public string getTelefonoComensal()
        {
            return Telefono;
        }

    public void setTelefonoComensal(string tele)
        {
            Telefono = tele;
        }
    }
}
