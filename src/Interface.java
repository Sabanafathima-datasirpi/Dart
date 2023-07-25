interface Food{
    void name();

}
class Dish implements Food {
    public void name() {
        System.out.println("Biryani");
    }

}
 class Beverage implements Food {
    public void name() {
        System.out.println("Coke");
    }

}
    public class Interface {
        public static void main(String[] args) {
            Food dish = new Dish();
            dish.name();

            Food drink = new Beverage();
            drink.name();


        }
    }
