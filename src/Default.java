
import java.util.Scanner;
//without using any access modifiers
//accessible within package
class Default {
    void greet(){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter your name");
        String name=sc.nextLine();
        System.out.println("Welcome "+name);
    }
    public static void main(String[] args){
        Default gt=new Default();
        gt.greet();
    }
}
