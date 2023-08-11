import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class ListType {
    public static void main(String[] args){
        //Array list
        List<String>names= new ArrayList<String>();
        names.add("Sabana");
        names.add("Prabha");
        names.add("Thiru");
        System.out.println("Array list: "+names);

        String name=names.get(0);
        System.out.println("The name in index 0 is : "+name);

        names.remove(1);
        System.out.println("Array list after removing index 1 is: : "+names);
        System.out.println("\n");

        //Vector list
        List<Integer>numbers=new Vector<Integer>();
        numbers.add(100);
        numbers.add(200);
        numbers.add(100);
        System.out.println("Vector list: "+numbers);

        numbers.set(2,300);
        System.out.println("The updated numbers are: "+numbers);
        System.out.println("\n");

        //Linked list
        List<String>animals=new LinkedList<String>();
        animals.add("Lion");
        animals.add("Tiger");
        animals.add("Giraffe");
        System.out.println("Linked list: "+animals);

        int size= animals.size();
        System.out.println("The total number of animals are: "+size);

    }
}
