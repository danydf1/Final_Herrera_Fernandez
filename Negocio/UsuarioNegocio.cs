using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        AccesoDatos datos = new AccesoDatos();
        Ecriptacion ecriptacion = new Ecriptacion();

        public void AgregarUsuario(Usuario user)
        {
            datos.setearSP("sp_ins_usuario");

            datos.setearParametro("@NombreUsuario", user.NombreUsuario);
            datos.setearParametro("@Nombre", user.Nombre);
            datos.setearParametro("@Apellido", user.Apellido);
            datos.setearParametro("@Email", user.Email);

            user.Pass = ecriptacion.Encripta(user.Pass);
            datos.setearParametro("@Pass" , user.Pass);
            datos.setearParametro("@FechaNac", user.FechaNac.ToString());
            datos.setearParametro("@IdTipo",user.Tipo);
            datos.setearParametro("@IdDepto", user.IDDepto);


            datos.ejectutarAccion();
            datos.cerrarConexion();
        }

        public List<Usuario> ListaUsuarios()
        {
            AccesoDatos Datos = new AccesoDatos();
            List<Usuario> lista = new List<Usuario>();
            Datos.setearConsulta("select U.ID,U.NombreUSuario,U.NOMBRE,U.APELLIDO,U.EMAIL,U.PASS,u.FECHANAC,U.IDTIPO,U.Estado,D.ID As IDDepto ,D.Descripcion from Usuarios U inner join Departamento D on D.ID = U.IDDepto where u.estado =1");


            try
            {
                Datos.ejecutarLectura();
                while (Datos.Lector.Read())
                {
                    Usuario aux = new Usuario();

                    aux.ID = Convert.ToInt32((long)Datos.Lector["ID"]);
                    aux.Nombre = (string)Datos.Lector["NOMBRE"];
                    aux.Apellido = (string)Datos.Lector["APELLIDO"];
                    aux.Email = (string)Datos.Lector["EMAIL"];
                    
                    aux.Pass = ecriptacion.Desencripta((string)Datos.Lector["PASS"]);
                    aux.FechaNac = (DateTime)Datos.Lector["FECHANAC"];
                    aux.departamento = new Departamento();
                    aux.departamento.ID = (int)Datos.Lector["IDDepto"];
                    aux.departamento.Descripcion = (string)Datos.Lector["Descripcion"];
                    aux.Tipo = (int)Datos.Lector["IDTIPO"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                Datos.cerrarConexion();
             }
        }


        public List<Departamento> ListaDepartamentos()
        {
            AccesoDatos Datos = new AccesoDatos();
            List<Departamento> lista = new List<Departamento>();
            Datos.setearConsulta("select * from Departamento");


            try
            {
                Datos.ejecutarLectura();
                while (Datos.Lector.Read())
                {
                    Departamento aux = new Departamento();

                    aux.ID = Convert.ToInt32(Datos.Lector["ID"]);
                    aux.Descripcion = (string)Datos.Lector["DESCRIPCION"];
                    

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                Datos.cerrarConexion();
            }
        }

        public Usuario ValidarUsuarios(string email, string pass)
        {
            Usuario cuenta = new Usuario();
            AccesoDatos Datos = new AccesoDatos();
            if (email != "vecino@gmail.com" && email != "admin@gmail.com")
            {
                pass = ecriptacion.Encripta(pass);
            }


            Datos.setearConsulta("select * from usuarios where email= '" + email + "'and pass='" + pass + "'");
            Datos.ejecutarLectura();

            try
            {
                Datos.Lector.Read();

                Usuario aux = new Usuario();
               
                aux.ID = (long)Datos.Lector["Id"];
                aux.NombreUsuario = (string)Datos.Lector["Nombreusuario"];
                aux.Apellido = (string)Datos.Lector["Apellido"];
                aux.Nombre = (string)Datos.Lector["Nombre"];
                aux.Email = (string)Datos.Lector["Email"];

                aux.Pass = ecriptacion.Desencripta((string)Datos.Lector["PASS"]);
                aux.FechaNac = (DateTime)Datos.Lector["FechaNac"];
                aux.FechaAlta = (DateTime)Datos.Lector["Fechaalta"];
                aux.Tipo = (int)Datos.Lector["Idtipo"];
                aux.Estado = (bool)Datos.Lector["Estado"];


                return aux;
            }
            catch (Exception)
            {

                return null;
            }
            finally
            {
                Datos.cerrarConexion();
            }


        }

        public int ValidarEdad(DateTime FechaNac)
        {
            int edad = 0;
            int AñoActual = DateTime.Now.Year;
            int AñoNacimiento = FechaNac.Year;
            edad = AñoActual - AñoNacimiento;
            return edad;

        }

        public bool ValidarEmail(String Email)
        {
            AccesoDatos Datos = new AccesoDatos();



            Datos.setearConsulta("select  ISNULL( COUNT (*),0) cantidad  from Usuarios where EMAIL="+"'" + Email + "'");
            Datos.ejecutarLectura();

            try
            {
                Datos.Lector.Read();
                bool aux =Convert.ToBoolean(datos.Lector["cantidad"]);
                return aux;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                Datos.cerrarConexion();
            }

        }
        public Usuario TraerUsuario(int id)
        {
            Usuario cuenta = new Usuario();
            AccesoDatos Datos = new AccesoDatos();
            


            Datos.setearConsulta("select U.ID, U.NombreUSuario, U.NOMBRE, U.APELLIDO, U.EMAIL, U.PASS, u.FECHANAC,u.FECHAALTA, U.IDTIPO, U.Estado, D.ID As IDDepto, D.Descripcion from Usuarios U inner join Departamento D on D.ID = U.IDDepto where u.estado = 1 and u.id="+id);
            Datos.ejecutarLectura();

            try
            {
                Datos.Lector.Read();

                Usuario aux = new Usuario();

                aux.ID = (long)Datos.Lector["Id"];
                aux.IDDepto = (Int32)Datos.Lector["IdDepto"];
                aux.NombreUsuario = (string)Datos.Lector["Nombreusuario"];
                aux.Apellido = (string)Datos.Lector["Apellido"];
                aux.Nombre = (string)Datos.Lector["Nombre"];
                aux.Email = (string)Datos.Lector["Email"];

                aux.Pass = ecriptacion.Desencripta((string)Datos.Lector["PASS"]);
                aux.FechaNac = (DateTime)Datos.Lector["FechaNac"];
                aux.FechaAlta = (DateTime)Datos.Lector["FechaAlta"];
                aux.Tipo = (Int32)Datos.Lector["Idtipo"];
                aux.Estado = (bool)Datos.Lector["Estado"];


                return aux;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                Datos.cerrarConexion();
            }
        }

        public void eliminar(int id)
        {
            datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE Usuarios SET Estado = 0 where ID =" + id);
                datos.ejectutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
                datos = null;
            }
        }


        public void Modificar(Usuario user)
        {
            datos.setearSP("sp_Modif_usuario");

            datos.setearParametro("@ID", user.ID);
            datos.setearParametro("@NombreUsuario", user.NombreUsuario);
            datos.setearParametro("@Nombre", user.Nombre);
            datos.setearParametro("@Apellido", user.Apellido);
            datos.setearParametro("@Email", user.Email);

            user.Pass = ecriptacion.Encripta(user.Pass);
            datos.setearParametro("@Pass", user.Pass);
            datos.setearParametro("@FechaNac", user.FechaNac.ToString());
            datos.setearParametro("@IdTipo", user.Tipo);
            datos.setearParametro("@IdDepto", user.IDDepto);


            datos.ejectutarAccion();
            datos.cerrarConexion();
        }





    }
}
