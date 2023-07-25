public class Static {
    String name;
    String city;
    //Static variable
    static String college="Anna University";
    //Static method
    public static void change(){
         college="Xavier";
    }

    public void studentDetails(){
        System.out.println("Name: " +name);
        System.out.println("City: " +city);
        System.out.println("College: " +college);
        System.out.println("\n");
    }
    //static method
    public static int calc(int a){
        return a*a;
    }
    public static void main(String[] args){
        System.out.println("Student details:");
        Static.change();
        Static student1=new Static();
        student1.name="Sabana";
        student1.city="Tirunelveli";
        student1.studentDetails();

        Static student2=new Static();
        student2.name="Prabha";
        student2.city="Madurai";
        student2.studentDetails();

        int result=Static.calc(8);
        System.out.println("The result is " +result);
    }
}
