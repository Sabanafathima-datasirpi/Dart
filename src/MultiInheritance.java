//multiple inheritance by interface
interface Mobile{
    void mobName();

}
interface Laptop{
    void lapName();

}
class Brand implements Mobile,Laptop{
    public void mobName(){
        System.out.println("It is Samsung brand");
    }
    public void lapName(){
        System.out.println("It is Mac brand");
    }
    public static void main(String[] args){
        Brand info=new Brand();
        info.mobName();
        info.lapName();
    }
}

