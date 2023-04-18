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

                    <%--Изменение информаций о задаче--%>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editTask">
                                Изменить задачу
                            </button>

                            <%--Удаление задачи--%>
                            <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                                Удалить задачу
                            </button>
                        </div>
                    </div>

                <%--Удаление задачи--%>
                <div class="modal fade" id="deleteTask" tabindex="-1" aria-labelledby="deleteTask" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="/delete-book" method="post">
                                <input type="hidden" name="id" value="<%=task.getId()%>">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5">Delete task</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h5 class="text-center fs-5">Вы уверены что хотите удалить задачу?</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                                    <button class="btn btn-danger">Да</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <%--Изменение информаций о задаче--%>
                <div class="modal fade" id="editTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="/save-task" method="post">
                                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Name:</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_name" placeholder="Name:" value="<%=task.getName()%>">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 mt-3">
                                            <label>Deadline:</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <input type="date" name="task_deadline" placeholder="Deadline:" value="<%=task.getDeadline()%>">
                                        </div>
                                    </div>
                                        <div class="row">
                                            <div class="col-12 mt-3">
                                                <label>Process</label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <select class="form-select" name="task_process">
                                                    <option <%=(task.getProcess().equals("Да")?"selected":"")%> >Да</option>
                                                    <option <%=(task.getProcess().equals("Нет")?"selected":"")%> >Нет</option>
                                                </select>
                                            </div>
                                        </div>
                                    <div class="row">
                                        <div class="col-12 mt-3">
                                            <label>Details:</label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <textarea name="task_details" class="form-control" rows="5" placeholder="Details:"><%=task.getDetails()%></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 mt-3">
                                            <button class="btn btn-primary">Изменить данные</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
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
