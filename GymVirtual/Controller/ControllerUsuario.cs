using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymVirtual.Controller
{
    public class ControllerUsuario
    {
        Conexion con = new Conexion();
        public bool login(String correo,String pasword) {
            String sql = @"SELECT
                                COUNT(*) AS VERIFICADO
                            FROM
                                mydb.cliente
                            WHERE
                                correo = '" + correo + @"'
                            AND clave = '" + pasword +"'";

            return Convert.ToInt32(con.getDataMariaDB(sql).Tables[0].Rows[0]["VERIFICADO"].ToString()) > 0 ? true : false;
        }
    }
}