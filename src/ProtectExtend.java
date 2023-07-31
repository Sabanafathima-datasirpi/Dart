package pack1;
//importing the other package
import pack.*;
public class ProtectExtend extends Protected {

    protected void message(){

        System.out.println("Hi, I am "+name+ " and I am " +age+ " years old");
    }
    public  static void main(String[] args){
        ProtectExtend msg=new ProtectExtend();
        msg.age=15;
        msg.message();

    }
}
