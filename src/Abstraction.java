public abstract class Abstraction {
    //partially abstract

    public abstract void abstractMethod(double marks);


}
class AbstractExtend extends Abstraction{
    @Override
    public void abstractMethod(double marks) {
        double result=(marks/50)*100;
        System.out.println("Out of 100: " +result);
    }
    public static void main(String[] args){
        AbstractExtend value=new AbstractExtend();
        value.abstractMethod(40);
    }
}