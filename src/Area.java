class Area {
    //single inheritance
    //hybrid inheritance
    public void display(){
        System.out.println("Area of the shapes are:");

    }

}
class Rectangle extends Area{
    int l=20;
    int b=50;
    int h=30;
    //Multilevel inheritance
    
    public void rect(){

        int result= l*b;
        System.out.println("Area of rectangle is " +result+" square units");
    }
}

    class Volume extends Rectangle {
        public void vol() {
            int value = l * b * h;
            System.out.println("Volume of rectangle is " + value + " cube units");
        }}
//Multilevel inheritance

    class Circle extends Area{
            double pi=3.14;
            int r=8;
            public void digit(){
                double answer=pi*r*r;
                System.out.println("Area of rectangle is " + answer+ " square units");

            }



    public static void main(String[] args){
        Area head=new Area();
        head.display();
        Volume val= new Volume();
        val.rect();
        val.vol();
        Circle cir=new Circle();
        cir.digit();



    }

}
