import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class MapType {
    public static void main(String[] args){
        //Hash map-Random order
        Map<Integer,String> numbers=new HashMap<>();
        numbers.put(16,"sixteen");
        numbers.put(11,"eleven");
        numbers.put(5,"five");
        numbers.put(18,"eighteen");
        System.out.println("Hash map :"+numbers);


//Tree map-ascending order based on key values
        Map<Integer,String>values=new TreeMap<>();
        values.put(16,"sixteen");
        values.put(11,"eleven");
        values.put(5,"five");
        values.put(18,"sixteen");
        System.out.println("Tree map :"+values);


//Linked hash map-Insertion order
        Map<Integer,String>digits=new LinkedHashMap<>();
        digits.put(16,"sixteen");
        digits.put(11,"eleven");
        digits.put(5,"five");
        digits.put(18,"eighteen");
        System.out.println("Linked hash map :"+digits);
    }
}
