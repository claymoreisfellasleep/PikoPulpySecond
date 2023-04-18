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
                        "Something about coding"
                )
        );
        tasks.add(
                new Task(2,
                        "Убраться дома и закупить продукты",
                        "25.10.2021",
                        "Да",
                        "House cleaning and buying some vegetables"
                )
        );
        tasks.add(
                new Task(3,
                        "Выполнить все домашние задания",
                        "28.10.2021",
                        "Нет",
                        "Doing some homework tasks"
                )
        );
        tasks.add(
                new Task(4,
                        "Записаться на качку",
                        "12.12.2021",
                        "Нет",
                        "Seems like you're determined"
                )
        );
        tasks.add(
                new Task(5,
                        "Учить Итальянский",
                        "01.02.2021",
                        "Нет",
                        "Huh? Really? What 'bout english?"
                )
        );
    }

    public static ArrayList<Task> getTasks(){
        return tasks;
    }

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(int id){
        return tasks
                .stream()
                .filter(task -> task.getId()==id)
                .findFirst()
                .orElse(null);
    }

}
