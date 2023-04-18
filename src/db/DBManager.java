package db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Task> tasks = new ArrayList<>();

    private static int id = 6;

    static {
        tasks.add(
                new Task(1,
                        "Создать веб приложение на JAVA EE",
                        "2023-04-22",
                        "Да",
                        "Something about coding"
                )
        );
        tasks.add(
                new Task(2,
                        "Убраться дома и закупить продукты",
                        "2011-05-12",
                        "Да",
                        "House cleaning and buying some vegetables"
                )
        );
        tasks.add(
                new Task(3,
                        "Выполнить все домашние задания",
                        "2077-01-01",
                        "Нет",
                        "Doing some homework tasks"
                )
        );
        tasks.add(
                new Task(4,
                        "Записаться на качку",
                        "2022-09-10",
                        "Нет",
                        "Seems like you're determined"
                )
        );
        tasks.add(
                new Task(5,
                        "Учить Итальянский",
                        "2019-12-31",
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

    public static void updateTask(Task tapsirma){
        for(int i = 0; i < tasks.size(); i++){
            if(tasks.get(i).getId()==tapsirma.getId()){
                tasks.set(i, tapsirma);
                break;
            }
        }
    }

    public static void deleteTask(int id){
        for(int i = 0; i < tasks.size(); i++){
            if(tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }

}
