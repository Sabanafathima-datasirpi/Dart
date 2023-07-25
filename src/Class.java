//class
public class Class {
    String shape="Circle";
    int quantity=2;
    //Default constructor
    Class (){
        System.out.println("Cake order details:");
    }
    public void cake(){
        System.out.println("Shape: " +shape);
        System.out.println("Weight: " +quantity+ "kg");

    }
    public static void main (String[] args){
        //object
        Class cakeOrder=new Class();
        cakeOrder.cake();

    }

}
