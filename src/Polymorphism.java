public class Polymorphism {
    //Overloading
    public void add(int a, int b) {
        int result = a + b;
        System.out.println("The result is " + result);
    }

    public void add(double a, int b) {
        double result = a + b;
        System.out.println("The result is " + result);
    }

    public void add() {
        System.out.println("Sabana Fathima");
    }
}
    class PolyExtend extends Polymorphism {
    //Overriding
    @Override
    public void add() {
        System.out.println("DataSirpi");
    }


        public static void main(String[] args) {

            Polymorphism value2 = new Polymorphism();
            value2.add(3.14, 7);
            PolyExtend value3 = new PolyExtend();
            value3.add();

        }
    }

