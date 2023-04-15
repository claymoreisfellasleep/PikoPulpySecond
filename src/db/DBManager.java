package db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Task> tasks = new ArrayList<>();

    private static int id = 6;

    static {
        tasks.add(
                new Task(1,
                        "Создать веб приложение на JAVA EE",
                        "23.10.2021",
                        "Да",
                        "Not ready"
                )
        );
        tasks.add(
                new Task(2,
                        "Убраться дома и закупить продукты",
                        "25.10.2021",
                        "Да",
                        "Not ready"
                )
        );
        tasks.add(
                new Task(3,
                        "Выполнить все домашние задания",
                        "28.10.2021",
                        "Нет",
                        "Not ready"
                )
        );
        tasks.add(
                new Task(4,
                        "Записаться на качку",
                        "12.12.2021",
                        "Нет",
                        "Not ready"
                )
        );
        tasks.add(
                new Task(5,
                        "Учить Итальянский",
                        "01.02.2021",
                        "Нет",
                        "Not ready"
                )
        );
    }

    public static ArrayList<Task> getBooks(){
        return tasks;
    }

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }
}
