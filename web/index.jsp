<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>IndexJsp</title>
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    </head>

    <body>
        <div class="container mt-3">
            <div class = "row">
                <div class="col-3 mx-auto">
                    <%
                        for(int i = 0; i < 10; i++){
                    %>
                        <div class="card">
                            <img src="https://picsum.photos/id/9/300/300" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Laptop</h5>
                                <p class="card-text">Some quick example text about laptops</p>
                                <a href="#" class="btn btn-primary">Buy here</a>
                            </div>
                        </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
