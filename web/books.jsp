<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Books</title>
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
        <nav style="background-color: #00008b" class="navbar navbar-expand-lg navbar-dark text-white-50">
            <div class="container-fluid">
                <a class="navbar-brand" href="/">TASK MANAGER</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/" >Все задания</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form action="/add-book" method="post">
                        <div class="row">
                            <div class="col-12">
                                <label>Наименование</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <input type="text" class="form-control" name="book_name">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-3">
                                <label>Крайний срок</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <input type="text" class="form-control" name="book_author">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-3">
                                <label>Выполнено</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <select class="form-select" name="book_genre">
                                    <option>Fantasy</option>
                                    <option>Roman</option>
                                    <option>Biography</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-3">
                                <label>Детали:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <select class="form-select" name="book_price">
                                    <%
                                        for(int i = 0; i <= 10000; i+=500){

                                    %>
                                        <option><%=i%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-3">
                                <button class="btn btn-success">ADD BOOK</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                <th>AUTHOR</th>
                                <th>GENRE</th>
                                <th>PRICE</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            ArrayList<Book> kitaptar = (ArrayList<Book>) request.getAttribute("knigi");
                            if(kitaptar!=null){
                            for(Book book : kitaptar){
                        %>
                            <tr>
                                <td><%=book.getId()%></td>
                                <td><%=book.getName()%></td>
                                <td><%=book.getAuthor()%></td>
                                <td><%=book.getGenre()%></td>
                                <td><%=book.getPrice()%> KZT</td>
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
