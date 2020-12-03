
package gestores;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.*;


public class GestorBD {
     private String CONN = "jdbc:sqlserver://DESKTOP-400F8PE\\SQLEXPRESS:1433;databaseName=Club";
    private String USER = "sa";
    private String PASS = "1234567";

    public GestorBD() {
        try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE,null, ex);
        }
    }
    
   
    public void agregarSocio(Socio s) {
    
        try {
            
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Socios(Nombre, Apellido, Dni, Telefono, Estado) values(?,?,?,?,'true')");
          
            st.setString(1,s.getNombre());
            st.setString(2,s.getApellido());
            st.setString(3,s.getDni());
            st.setString(4, s.getTelefono());
           
            
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList<Socio> getObtenerTodosLosSocios() {
    
        ArrayList<Socio> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Socios");
            
            while(rs.next()) {
                int idSocio = rs.getInt("IdSocio");
                String nombre = rs.getString("Nombre");
                String apellido = rs.getString("Apellido");
                String dni = rs.getString("Dni");
                String telefono = rs.getString("telefono");
        
               
                Socio s = new Socio(idSocio, nombre, apellido, dni, telefono);

                lista.add(s);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
    public void eliminarSocio(int idSocio) {
        try {
            eliminarCuotasSocio(idSocio);
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Socios where idSocio=?");
            st.setInt(1, idSocio);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    public ArrayList<Socio> getObtenerSociosInscriptos() {
    
        ArrayList<Socio> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * \n" +
                                        "from Socios\n" +
                                        "where idSocio in (select idSocio from Cuotas)");
            
            while(rs.next()) {
                int idSocio = rs.getInt("IdSocio");
                String nombre = rs.getString("Nombre");
                String apellido = rs.getString("Apellido");
                String dni = rs.getString("Dni");
                String telefono = rs.getString("telefono");
        
               
                Socio s = new Socio(idSocio, nombre, apellido, dni, telefono);

                lista.add(s);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

   
    public void modificarSocio(Socio s) {
            try {
		
                String sql = "Update Socios set nombre=?, apellido=?, dni=?, telefono=? where idSocio=?";
                Connection con = DriverManager.getConnection(CONN, USER, PASS);
                    PreparedStatement st = con.prepareStatement(sql);
			
                    st.setString(1, s.getNombre());
                    st.setString(2, s.getApellido());
                    st.setString(3, s.getDni());
                    st.setString(4, s.getTelefono());
                    st.setInt(5, s.getIdSocio());
                    
                    st.executeUpdate();
                   
                    st.close();
                    con.close();
                
		} catch (SQLException ex) {
			ex.printStackTrace();
		} 

		
    }
    
    public Socio obtenerSocioPorID(int idSocio) {
    Socio resultado = null;
		
    try {
	Connection conn = DriverManager.getConnection(CONN, USER, PASS);
	PreparedStatement ps = conn.prepareStatement("select * from Socios where idSocio=?");
	ps.setInt(1, idSocio); 

	ResultSet rs = ps.executeQuery();

	if(rs.next()) {
				
            String nombre = rs.getString(2);
            String apellido = rs.getString(3);
            String dni = rs.getString(4);
            String telefono = rs.getString(5);
            
            resultado = new Socio(idSocio, nombre, apellido, dni, telefono);
	}

	ps.close();
	conn.close();

	} catch (SQLException ex) {
            ex.printStackTrace();
	}

    return resultado;
    }
    
    //actividad
    public void agregarActividad(Actividad a) {
    
        try {
            
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Actividades (actividad, precio) values(?,?)");
            
            st.setString(1,a.getActividad());
            st.setFloat(2,a.getPrecio());
           
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList<Actividad> getObtenerActividades() {
    
        ArrayList<Actividad> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Actividades");
            
            while(rs.next()) {
                int idActividad = rs.getInt("IdActividad");
                String actividad = rs.getString("Actividad");
                float precio = rs.getFloat("Precio");
                   
                Actividad a = new Actividad(idActividad, actividad, precio);

                lista.add(a);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
    public void eliminarActividad(int idActividad) {
        try {
            eliminarCuotasActividad(idActividad);
            eliminarNoticiaActividad(idActividad);
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Actividades where idActividad=?");
            st.setInt(1, idActividad);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
    
    public void modificarActividad(Actividad a) {
	
            try {
		
                String sql = "Update Actividades set actividad=?, precio=? where idActividad=?";
                Connection con = DriverManager.getConnection(CONN, USER, PASS);
                    PreparedStatement st = con.prepareStatement(sql);
			
                    st.setString(1, a.getActividad());
                    st.setFloat(2, a.getPrecio());
                    st.setInt(3, a.getIdActividad());
                    
                    st.executeUpdate();
                   
                    
                    st.close();
                    con.close();
                
		} catch (SQLException ex) {
			ex.printStackTrace();
		} 

		
    }
    
    public Actividad obtenerActividadPorID(int idActividad) {
    Actividad resultado = null;
		
    try {
	Connection conn = DriverManager.getConnection(CONN, USER, PASS);
	PreparedStatement ps = conn.prepareStatement("select * from Actividades where idActividad=?");
	ps.setInt(1, idActividad); 

	ResultSet rs = ps.executeQuery();

	if(rs.next()) {
				
            String actividad = rs.getString(2);
            float precio = rs.getFloat(3);
            resultado = new Actividad(idActividad, actividad, precio);
	}

	ps.close();
	conn.close();

	} catch (SQLException ex) {
            ex.printStackTrace();
	}

    return resultado;
    }
    
    //noticia
    public void agregarNoticia(Noticia n) {
    
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Noticias(titulo, noticia, fecha, idActividad, visible) values(?,?,?,?,1)");
          
            st.setString(1,n.getTitulo());
            st.setString(2,n.getNoticia());
            st.setString(3,n.getFecha());
            st.setInt(4,n.getActividad().getIdActividad());
            
           
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList<Noticia> getObtenerListadoNoticias(){
        
        ArrayList<Noticia> lista = new ArrayList<>();
        try {
                Connection conn = DriverManager.getConnection(CONN,USER,PASS);
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from Noticias where visible=1");
            while (rs.next()) {
                int idNoticia = rs.getInt(1);
                String titulo = rs.getString(2);
                String noticia = rs.getString(3);
                String fecha = rs.getString(4);
                int idActividad = rs.getInt(5);
               
     
		Actividad a = obtenerActividadPorID(idActividad);
                

                Noticia n = new Noticia(idNoticia, titulo, noticia ,fecha, a);
                lista.add(n);
            }
            rs.close();
            conn.close();
                
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return lista;
    }
    
      public ArrayList<Noticia> getObtenerListadoNoticiasOcultas(){
        
        ArrayList<Noticia> lista = new ArrayList<>();
        try {
                Connection conn = DriverManager.getConnection(CONN,USER,PASS);
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from Noticias where visible=0");
            while (rs.next()) {
                int idNoticia = rs.getInt(1);
                String titulo = rs.getString(2);
                String noticia = rs.getString(3);
                String fecha = rs.getString(4);
                int idActividad = rs.getInt(5);
               
     
		Actividad a = obtenerActividadPorID(idActividad);
                

                Noticia n = new Noticia(idNoticia, titulo, noticia ,fecha, a);
                lista.add(n);
            }
            rs.close();
            conn.close();
                
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return lista;
    }
    
     public boolean ocultarNoticia(int idNoticia) {
	boolean b = false;
            try {
		
                String sql = "update Noticias set visible=0 where idNoticia=?";
                Connection con = DriverManager.getConnection(CONN, USER, PASS);
                    PreparedStatement st = con.prepareStatement(sql);
			
                    st.setInt(1, idNoticia);
     
			
                    st.executeUpdate();
                    b = true;
                    
                    st.close();
                con.close();
                
		} catch (SQLException ex) {
			ex.printStackTrace();
		} 

		return b;
	}
  
	public boolean mostrarNoticia(int idNoticia) {
	boolean b = false;
            try {
		
                String sql = "update Noticias set visible=1 where idNoticia=?";
                Connection con = DriverManager.getConnection(CONN, USER, PASS);
                    PreparedStatement st = con.prepareStatement(sql);
			
                    st.setInt(1, idNoticia);
     
			
                    st.executeUpdate();
                    b = true;
                    
                    st.close();
                con.close();
                
		} catch (SQLException ex) {
			ex.printStackTrace();
		} 

		return b;
	}
        

    public ArrayList<Noticia> filtrarPorActividad(int idAct){
    ArrayList<Noticia> lista = new ArrayList<>();
    
    String sql ="select n.*\n" +
                "from noticias n \n" +
                "where visible=1 and n.idActividad=?";
    try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idAct);

       
        ResultSet rs = st.executeQuery();
        
        while (rs.next()) {
              
            
            int idNoticia = rs.getInt("idNoticia");
            String titulo = rs.getString("titulo");
            String noticia = rs.getString("noticia");
            String fecha = rs.getString("fecha");
            int idActividad = rs.getInt("idActividad");
            
            Actividad a = obtenerActividadPorID(idActividad);
           
            Noticia n = new Noticia(idNoticia, titulo, noticia ,fecha, a);
            lista.add(n);
           
        }
        rs.close();
        st.close();
        conn.close();
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    
     return lista;
        
    }     
    public void eliminarNoticiaActividad(int idActividad) {
        try {
             Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Noticias where idActividad=?");
            st.setInt(1, idActividad);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
    
    
     //pago  
    public void agregarPago(Pago p) {
    
        try {
            
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Pagos(idSocio, fecha, monto) values(?,?,?)");
          
            st.setInt(1,p.getSocio().getIdSocio());
            st.setString(2, p.getFecha());
            st.setFloat(3,p.getMonto());
           
            
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
     public void eliminarPagos(int idSocio) {
        try {
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Pagos where idSocio=?");
            st.setInt(1, idSocio);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
         
    public ArrayList<Pago> getObtenerTodosLosPagos() {
    
        ArrayList<Pago> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Pagos");
            
            while(rs.next()) {
                int idPago = rs.getInt("IdPago");
                int idSocio = rs.getInt("IdSocio");
                String fecha = rs.getString("Fecha");
                Float monto = rs.getFloat("Monto");
            
                Socio s = obtenerSocioPorID(idSocio);
                Pago p = new Pago(idPago, s, fecha, monto);

                lista.add(p);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
        
     public float obtenerMontoTotalSocio(int idSocio){
    float total = 0;
    
    String sql ="select sum(precio) as \"Total\" \n" +
                "from Actividades a join Cuotas c on a.idActividad=c.idActividad\n" +
                "where idSocio=?";
    try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idSocio);

       
        ResultSet rs = st.executeQuery();
        if(rs.next()){
        total = rs.getFloat(1);
        }
        
        rs.close();
        st.close();
        conn.close();
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    
     return total;
        
    }     
     
    

    //cuota
     
    public void agregarCuota(Cuota c) {
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Cuotas(idSocio, idActividad) values(?,?)");
          
            st.setInt(1,c.getSocio().getIdSocio());
            st.setInt(2,c.getActividad().getIdActividad());
          
           
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }
        
     public void eliminarCuotasSocio(int idSocio) {
        try {
            eliminarPagos(idSocio);
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Cuotas where idSocio=?");
            st.setInt(1, idSocio);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
          public void eliminarCuotasActividad(int idActividad) {
        try {
            
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Cuotas where idActividad=?");
            st.setInt(1, idActividad);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
         
     public ArrayList<Cuota> getObtenerCuotas() {
    
        ArrayList<Cuota> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Cuotas");
            
            while(rs.next()) {
                int idCuota = rs.getInt("idCuota");
                int idSocio = rs.getInt("idSocio");
                int idActividad = rs.getInt("IdActividad");
               
                Socio s = obtenerSocioPorID(idSocio);
                Actividad a = obtenerActividadPorID(idActividad);

                Cuota c = new Cuota(idCuota, s, a);

                lista.add(c);
            }
            
            st.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
     public void eliminarCuota(int idCuota) {
        try {
            Connection con = DriverManager.getConnection(CONN, USER, PASS);
            PreparedStatement st = con.prepareStatement("Delete from Cuotas where idCuota=?");
            st.setInt(1, idCuota);

            st.executeUpdate();
            st.close();
            con.close();

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }
         
     public ArrayList<Cuota> obtenerCuotaPorID(int id) {
     ArrayList<Cuota> lista = new ArrayList<>();
       
		
    try {
	Connection conn = DriverManager.getConnection(CONN, USER, PASS);
	PreparedStatement ps = conn.prepareStatement("select * from Cuotas where idSocio=?");
	ps.setInt(1, id); 

	ResultSet rs = ps.executeQuery();

	while(rs.next()) {
            
            int idCuota = rs.getInt(1);
            int idSocio = rs.getInt(2);
            int idActividad = rs.getInt(3);
           
            Socio s = obtenerSocioPorID(idSocio);
            Actividad a = obtenerActividadPorID(idActividad);
            
            lista.add(new Cuota(idCuota, s, a));
	}

	ps.close();
	conn.close();

	} catch (SQLException ex) {
            ex.printStackTrace();
	}

    return lista;
    } 
     
     
     //Monto total de Ganancias
    public float getGananciaTotal(){
    float total = 0;
    String sql = "select sum(a.precio) as \"Total\"\n" +
                "from Actividades a join Cuotas c on a.idActividad=c.idActividad\n" +
                "join Socios s on s.idSocio=c.idCuota";
    
    try{
       
        Connection con = DriverManager.getConnection(CONN, USER, PASS);
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        rs.next();
        
        total = rs.getFloat(1);
        
        rs.close();
        con.close();
    }
    catch(Exception exc){
        exc.printStackTrace();
    }
    return total;
}
   
   
// Nombre y total de ganancias de las 3 actividades con mayor ganancia total
   
    public ArrayList<DtoActividadTop3> totalTop3Actividades(){
    ArrayList<DtoActividadTop3> resultado = new ArrayList<>();
    
    String sql ="select TOP 3 actividad as nombre, precio * count(actividad) as total\n" +
                "from Actividades a join Cuotas c on c.idActividad=a.idActividad join Socios s \n" +
                "on s.idSocio=c.idSocio join Pagos p on p.idSocio=s.idSocio\n" +
                "group by actividad, precio\n" +
                "order by precio desc";
    try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        
        while (rs.next()) {
             
            String nombre = rs.getString("nombre");
            float total = rs.getFloat("total");
             
            DtoActividadTop3 dto = new DtoActividadTop3( nombre, total);
            resultado.add(dto);
        }
        rs.close();
        st.close();
        conn.close();
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    
     return resultado;
        
    }   
   

      //Listado de socios inscriptos a una actividad en particular
    public ArrayList<DtoSocioActividad> ListadoSociosActividad(int idActividad){
    ArrayList<DtoSocioActividad> resultado = new ArrayList<>();
    
    String sql ="Select s.nombre + ' ' + s.apellido as nombreCompleto, s.dni, s.telefono\n" +
                "from Socios s join Cuotas c\n" +
                "on s.idSocio=c.idSocio join Actividades a  on c.idActividad=a.idActividad\n" +
                "where c.idActividad=?";
    try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idActividad);

       
        ResultSet rs = st.executeQuery();
        
        while (rs.next()) {
             
            String nombreCompleto = rs.getString("nombreCompleto");
            String dni = rs.getString("dni");
            String telefono = rs.getString("telefono");
             
            DtoSocioActividad dto= new DtoSocioActividad( nombreCompleto, dni, telefono);
            resultado.add(dto);
        }
        rs.close();
        st.close();
        conn.close();
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    
     return resultado;
        
    }     
    //Seleccionar un socio y ver un listado de sus cuotas pagas
     public ArrayList<DtoSocioPagos> ListadoSociosPagos(int idSocio){
    ArrayList<DtoSocioPagos> resultado = new ArrayList<>();
    
    String sql ="select * from Pagos where idSocio=?";
    try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idSocio);

       
        ResultSet rs = st.executeQuery();
        
        while (rs.next()) {
             
            String fecha = rs.getString("fecha");
            float monto = rs.getFloat("monto");
             
            DtoSocioPagos dto = new DtoSocioPagos(fecha, monto);
            resultado.add(dto);
        }
        rs.close();
        st.close();
        conn.close();
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    
     return resultado;
        
    }     
     
     public boolean existeUsuario(String usuario, String contrasena ){
     String us = "";
     String con = "";
     try{
        Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        PreparedStatement st = conn.prepareStatement("select * from Admin where usuario=? and contrasena=?");
            st.setString(1, usuario);
            st.setString(2, contrasena);

        ResultSet rs = st.executeQuery();
        
        if (rs.next()) {
           
         us = rs.getString("usuario");
         con = rs.getString("contrasena");
         
        }
        rs.close();
        
        
     }catch(SQLException ex){
        ex.printStackTrace();
     }
    if(usuario.equals(us) && contrasena.equals(con)){
        return true;
    }
    
     return false;
    
    }
     
     
}
