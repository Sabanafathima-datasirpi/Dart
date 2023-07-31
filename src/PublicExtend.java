package pack1;
//importing the other package
import pack.*;
import java.util.Scanner;

public class PublicExtend extends Public {
    @Override
    public void display(){
        System.out.println("I am a loyal pet animal and I have"+legs+" legs");
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the animal name");
        String str= sc.nextLine();
        if(str.equals("dog")){
            System.out.println("You are correct!!!");
        }else {
            System.out.println("You are wrong");
        }
    }
    public static void main(String[] args){
        PublicExtend message=new PublicExtend();
        message.display();
    }
}


