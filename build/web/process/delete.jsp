<%-- 
    Document   : delete
    Created on : Dec 26, 2018, 11:13:11 AM
    Author     : Lannapoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "java.sql.*" %>
<%@page import = "java.lang.Exception" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                String sql = "DELETE FROM tb_product WHERE pro_id = '"+pro_id+"'";
                s.execute(sql);
                response.sendRedirect("../product.jsp");
            }
            catch(Exception e){
                out.print(e.getMessage());
                e.printStackTrace();
            }
        %>
    </body>
</html>
