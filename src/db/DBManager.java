package db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Book> books = new ArrayList<>();

    private static int id = 6;

    static {
        books.add(
                new Book(1,
                        "Создать веб приложение на JAVA EE",
                        "23.10.2021",
                        "Да",
                        5000
                )
        );
        books.add(
                new Book(2,
                        "Убраться дома и закупить продукты",
                        "25.10.2021",
                        "Да",
                        6000
                )
        );
        books.add(
                new Book(3,
                        "Выполнить все домашние задания",
                        "28.10.2021",
                        "Нет",
                        7000
                )
        );
        books.add(
                new Book(4,
                        "Записаться на качку",
                        "12.12.2021",
                        "Нет",
                        50000
                )
        );
        books.add(
                new Book(5,
                        "Учить Итальянский",
                        "01.02.2021",
                        "Нет",
                        8000
                )
        );
    }

    public static ArrayList<Book> getBooks(){
        return books;
    }

    public static void addBook(Book book){
        book.setId(id);
        books.add(book);
        id++;
    }
}
