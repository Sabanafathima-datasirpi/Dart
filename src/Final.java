//final class(cannot extend the final class)
final class Final {
    final double pi=3.14; //final variable
    int r=5;
    //final method
   final void calc(){
       double value=pi*r*r;
        System.out.println("Area of circle : "+value+" square units");
    }

    public static void main(String[] args){
        Final val=new Final();
        val.calc();
    }
}
