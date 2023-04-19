<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Tasks</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <%@include file="head.jsp"%>
        <div class="container mt-3">
            <div class="row">
                <div class="col-12">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTask">
                        + Добавить задачу
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="addTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <%@include file="addForm.jsp"%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID+</th>
                                <th>Наименование</th>
                                <th>Крайний срок</th>
                                <th>Выполнено</th>
                                <th>Детали</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            ArrayList<Task> tasktar = (ArrayList<Task>) request.getAttribute("taski");
                            if(tasktar !=null){
                            for(Task task : tasktar){
                        %>
                            <tr>
                                <td><%=task.getId()%></td>
                                <td><%=task.getName()%></td>
                                <td><%=task.getDeadline()%></td>
                                <td><%=task.getProcess()%></td>
                                <td>
                                    <a class="btn btn-primary btn-sm" href="/details?task_id=<%=task.getId()%>">Детали</a>
                                </td>
                            </tr>
                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
