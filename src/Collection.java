import java.util.*;

public class Collection {
    public static void main(String[] args){
        Set<Integer> id=new HashSet<Integer>();
        //duplicates are not allowed
        id.add(102);
        id.add(105);
        id.add(102);
        System.out.println("Product id: "+id);

        List<String> names=new ArrayList<String>();
        names.add("Apple");
        names.add("Mango");
        System.out.println("Product names: "+names);

        Map<Integer,String>details=new HashMap<Integer, String>();
        details.put(102,"Apple");
        details.put(105,"Mango");
        System.out.println("Product details: "+details);


    }
}
