<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>Name:</label>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name" placeholder="Name:">
        </div>
    </div>
    <div class="row">
        <div class="col-12 mt-3">
            <label>Deadline:</label>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <input type="date" name="task_deadline" placeholder="Deadline:">
        </div>
    </div>
<%--    <div class="row">--%>
<%--        <div class="col-12 mt-3">--%>
<%--            <label>Process</label>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-12">--%>
<%--            <select class="form-select" name="task_process">--%>
<%--                <option>Yes</option>--%>
<%--                <option>No</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="row">
        <div class="col-12 mt-3">
            <label>Details:</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="task_details" class="form-control" rows="5" placeholder="Details:"></textarea>
        </div>
    </div>
    <div class="row">
        <div class="col-12 mt-3">
            <button class="btn btn-success">ADD TASK</button>
        </div>
    </div>
</form>