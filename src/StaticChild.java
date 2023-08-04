public class StaticChild extends Staticc {
    //static method
  public static void vote(){
       if(age>=18){
           System.out.println("Age is "+age+", You can vote");
       }else{
           System.out.println("Age is "+age+ ",  Under 18,not eligible");
       }
    }
    public static void main(String[] args){
        vote();
        Staticc.age=20;
        vote();
    }
}
