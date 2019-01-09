<%-- 
    Document   : input
    Created on : Dec 26, 2018, 1:29:35 PM
    Author     : Lannapoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>เพิ่มข้อมูล</title>
        
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    </head>
    <body>
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
                            <form action="process/insert.jsp" method="post">
                                <div class="formo-group">
                                    <label for="pro_name">ชื่อ</label>
                                    <input type="text" class="form-control" id="pro_name" name="pro_name" required>
                                </div>
                                <div class="formo-group">
                                    <label for="pro_type">ประเภท</label>
                                    <input type="text" class="form-control" id="pro_type" name="pro_type" required>
                                </div>
                                <div class="formo-group">
                                    <label for="pro_pric">ราคา</label>
                                    <input type="number" min="0" max="1000000" value="0" step="1" id="pro_pric" name="pro_pric" required>
                                </div>
                                <div class="formo-group">
                                    <div class="float-right my-3">
                                        <button class="btn btn-primary" type="submit">บันทึก</button>
                                    </div>
                                </div>
                            </form>
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
