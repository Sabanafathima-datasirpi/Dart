public class Child extends  Parent{
    //parameterised constructor


    Child(){
        System.out.println("Parameterised constructor:");
    }
    Child(String city,long reg){
        //values given to the parameters passed in parent class constructor using super keyword
        super("Sabana",21);
        System.out.println("I am from "+city+ " ,my register number is "+reg);

    }
    public static void main(String[] args){
        Child title=new Child();
        Child info=new Child("Tirunelveli",21237);
    }
}
