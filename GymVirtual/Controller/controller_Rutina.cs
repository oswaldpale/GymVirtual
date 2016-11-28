using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace GymVirtual.Controller
{
    public class controller_Rutina
    {
        Conexion con = new Conexion();
        public DataTable consultarRutina()
        {
            String sql = @"SELECT * FROM rutina";
            return con.getDataMariaDB(sql).Tables[0];
        }

        public DataTable consultarRutina2(String idcliente)
        {
            String sql = @"SELECT * FROM cliente_rutina cr inner join rutina r on cr.idrutina = r.idrutina inner join cliente c on cr.idcliente = c.idcliente WHERE c.idcliente = '"+idcliente+"'";
            return con.getDataMariaDB(sql).Tables[0];
        }

        public bool insertarRutina2(String idcliente, String idrutina)
        {
            String sql = @"INSERT INTO cliente_rutina (idcliente, idrutina) values('"+idcliente+"','"+idrutina+"')";
            return con.sendSetDataMariaDB(sql);
        }
    }
}