//Fully abstract class
interface Flowers{
    void color();
    void type();

}
abstract class Character implements Flowers{
    public abstract void color();
    public abstract void type();
    }

class Rose extends Character {
    @Override
    public void color() {
        System.out.println("It is pink");
    }

    @Override
    public void type() {
        System.out.println("It is French rose type");
    }

}
class Jasmine extends Character{
    @Override
    public void color() {
        System.out.println("It is white");
    }

    @Override
    public void type() {
        System.out.println("It is White jasmine type");
    }

    public static void main(String[] args){
        Rose info =new Rose();
        Jasmine detail=new Jasmine();
        info.color();
        info.type();
        detail.color();
        detail.type();
    }
}