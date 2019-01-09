<%-- 
    Document   : insert
    Created on : Dec 26, 2018, 1:15:24 PM
    Author     : Lannapoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.lang.Exception" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>เพิ่มข้อมูล</title>
    </head>
    <body>
         <% 
            Connection connect = null;
            ResultSet rec = null;
            Statement s = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");     
                connect = DriverManager.getConnection("jdbc:mysql://localhost/product?user=root&password=");    
                s = connect.createStatement();
                
                String pro_id = request.getParameter("pro_id");
                String pro_name = request.getParameter("pro_name");
                String pro_type = request.getParameter("pro_type");
                String pro_pric = request.getParameter("pro_pric");
                
                String sql = "UPDATE tb_product "
                        + "SET pro_name = '"+pro_name+"', pro_type = '"+pro_type+"', pro_pric = '"+pro_pric+"'"
                        + "WHERE pro_id = '"+pro_id+"'";
                out.println(sql);
                s.execute(sql);
                
                response.sendRedirect("../index.jsp");
            }
            catch(Exception e){
                out.print(e.getMessage());
                e.printStackTrace();
            }
        %>
        
        
    </body>
</html>
