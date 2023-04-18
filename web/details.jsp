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
    <div class="container mt-3 pb-5">
        <div class="row">
            <div class="col-6 mx-auto">
                <%
                    Task task = (Task) request.getAttribute("zadacha");
                    if(task!=null){

                %>
                    <div class="row">
                        <div class="col-12">
                            <label>Name</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>Details</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getDetails()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>Date</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <input type="date" class="form-control" readonly value="<%=task.getDeadline()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>Process</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <input type="text" class="form-select" readonly value="<%=task.getProcess()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>Details</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <textarea class="form-control" readonly rows="10"><%=task.getDetails()%></textarea>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTask">
                                + Изменить задачу
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        <%
            }else{
        %>
            <h3 class="text-center">
                Task not found!
            </h3>
        <%
            }
        %>
    </div>
</body>
</html>
