<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>
    <%@include file="navbar.jsp"%>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-6 mx-auto">
            <%@include file="addForm.jsp"%>
        </div>
    </div>
</div>
</body>
</html>
