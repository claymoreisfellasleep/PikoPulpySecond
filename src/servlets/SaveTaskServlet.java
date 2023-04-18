package servlets;

import db.DBManager;
import db.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class SaveTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String deadline = request.getParameter("task_deadline");
        String process = request.getParameter("task_process");
        String details = request.getParameter("task_details");

        Task task = DBManager.getTask(id);
        if(task!=null){
            task.setName(name);
            task.setDeadline(deadline);
            task.setProcess(process);
            task.setDetails(details);

            DBManager.updateTask(task);

            response.sendRedirect("details?task_id=" + id);
        }else{
            response.sendRedirect("/");
        }
    }
}
