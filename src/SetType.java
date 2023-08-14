import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeSet;

public class SetType {
    public static void main(String[] args){
        //Hash set-Sort the elements in random order
        Set<String> fruits=new HashSet<>();
        fruits.add("apple");
        fruits.add("mango");
        fruits.add("apple");
        fruits.add("guava");
        System.out.println("Fruits are(Random order) :"+fruits);

//Tree set-Sort the elements automatically in ascending order
        Set<Integer> id=new TreeSet<>();
        id.add(23);
        id.add(16);
        id.add(11);
        System.out.println("The product id's are(Ascending order) :"+id);

//Linked hash set-Sort the elements in insertion order
        Set<String>numbers=new LinkedHashSet<>();
        numbers.add("one");
        numbers.add("ten");
        numbers.add("eleven");
        System.out.println("The numbers are(Insertion order) :"+numbers);


    }
}
