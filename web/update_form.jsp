<%-- 
    Document   : input
    Created on : Dec 26, 2018, 1:29:35 PM
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
        
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
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
                String sql = "SELECT * FROM tb_product WHERE pro_id = '"+pro_id+"' ";
                rec = s.executeQuery(sql);
                
                if(rec != null){
                    rec.next();
               
        %>
        <%@include file = "include/navbar.jsp" %>
        <div class="container">
            
            <div class="row justify-content-center">
                <div class="col-md-6">
                     <div class="card">
                        <div class="card-header">
                            <div class="text-center">
                                <h1>เพิ่มข้อมูล</h1>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="process/update.jsp" method="post">

                                <input type="hidden" class="form-control" id="pro_id" value="<%= rec.getString("pro_id") %>" name="pro_id" required>

                                <div class="formo-group">
                                    <label for="pro_name">ชื่อ</label>
                                    <input type="text" class="form-control" id="pro_name" value="<%= rec.getString("pro_name") %>" name="pro_name" required>
                                </div>
                                <div class="formo-group">
                                    <label for="pro_type">ประเภท</label>
                                    <input type="text" class="form-control" id="pro_type" value="<%= rec.getString("pro_type") %>" name="pro_type" required>
                                </div>
                                <div class="formo-group">
                                    <label for="pro_pric">ราคา</label>
                                    <input type="number" min="0" max="1000000" step="1"  id="pro_pric" value="<%= rec.getString("pro_pric") %>" name="pro_pric" required>
                                </div>
                                <div class="formo-group">
                                    <div class="float-right my-3">
                                        <button class="btn btn-primary" type="submit">บันทึก</button>
                                    </div>
                                </div>
                            </form>
                             <% }
                                    }
                                    catch(Exception e){
                                        out.print(e.getMessage());
                                        e.printStackTrace();
                                    }

                                    try{
                                        if(s != null){
                                            s.close();
                                            connect.close();
                                        }
                                    }
                                    catch(SQLException e){
                                        out.println(e.getMessage());
                                        e.printStackTrace();
                                    }
                            %>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        
        <script src="node_modules/jquery/dist/jquery.min.js"></script>
        <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="node_modules/bootstrap-input-spinner/src/bootstrap-input-spinner.js"></script>
        <script>
            $("input[type='number']").inputSpinner();
        </script>
    </body>
</html>
