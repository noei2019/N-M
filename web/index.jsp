<%-- 
    Document   : index
    Created on : Dec 26, 2018, 10:01:54 AM
    Author     : Lannapoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.lang.Exception" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>แสดงข้อมูลสินค้า</title>

        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

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
                String sql = "SELECT * FROM tb_product";
                rec = s.executeQuery(sql);
            }
            catch(Exception e){
                out.print(e.getMessage());
                e.printStackTrace();
            }
        %>
        
        <%@include file = "include/navbar.jsp" %>
        <div class="container">
            <div class="text-center">
                <h1>แสดงข้อมูลสินค้า</h1>
            </div>
            
            <div class="row">
                <% int count = 1; while((rec != null) && (rec.next())) { %>
                <div class="col-md-3">
                    <div class="card my-3">
                        <div class="card-header">
                            <%= rec.getString("pro_name") %>
                        </div>
                        <div class="card-body">
                            <p>ชื่อ: <%= rec.getString("pro_type") %></p>
                            <p>ราคา: <%= rec.getString("pro_pric") %></p>
                        </div>
                        <div class="card-footer text-right">
                            <a href="" class="btn btn-primary">+ เพิ่ม</a>
                        </div>
                    </div>
                </div>
                <% count++; } %>
            </div>
            
        </div>

    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
 
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
    </body>
</html>
