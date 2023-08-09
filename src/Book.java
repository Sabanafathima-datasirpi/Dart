import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Book implements Comparable<Book> {
    public String title;
    public String author;
    public int year;

    public Book(String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public int getYear() {
        return year;
    }

    @Override
    public int compareTo(Book other){
        return this.title.compareTo(other.title);
    }
    @Override
    public String toString() {
        return "Book [title=" + title + ", author=" + author + ", year=" + year + "]";
    }

}
class YearComparator implements Comparator<Book>{
    @Override
    public int compare(Book b1, Book b2) {
        return Integer.compare(b1.getYear(), b2.getYear());
    }
    public static void main(String[] args){
        List<Book> books=new ArrayList<>();
        books.add(new Book("The Great Gatsby", "F. Scott Fitzgerald", 1925));
        books.add(new Book("To Kill a Mockingbird", "Harper Lee", 1960));
        books.add(new Book("1984", "George Orwell", 1949));

        Collections.sort(books);
        System.out.println("Sorted by title");
        System.out.println(books);

        Collections.sort(books, new YearComparator());
        System.out.println("Sorted by year");
        System.out.println(books);
    }

}