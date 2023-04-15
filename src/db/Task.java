package db;

public class Task {

    private int id;
    private String name;
    private String deadline;
    private String process;
    private String details;

    public Task(){

    }

    public Task(int id, String name, String deadline, String process, String details) {
        this.id = id;
        this.name = name;
        this.deadline = deadline;
        this.process = process;
        this.details = details;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
