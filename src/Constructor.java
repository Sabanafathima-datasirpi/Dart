public class Constructor {
    String shape;
    String occasion;
    int quantity;
    String flavor;
    //Parameterised constructor
    Constructor(String sh,String occ,int qty,String f){
        shape=sh;
        occasion=occ;
        quantity=qty;
        flavor=f;

    }
    public void cakeDetails(){
        System.out.println("Cake order details:");
        System.out.println("Shape: " +shape);
        System.out.println("Occasion: " +occasion);
        System.out.println("Weight: " +quantity+ "kg");
        System.out.println("Color: " +flavor);
        System.out.println("\n");
    }
    public static void main (String[] args){
        Constructor cake1=new Constructor("Heart","Wedding",3,"Choco truffle");
        cake1.cakeDetails();

        Constructor cake2=new Constructor("Square","Birthday",1/2,"Black forest");
        cake2.cakeDetails();

    }
}
