public class Encapsulation {
    private String name;
    private int age;

    public Encapsulation(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }


    public void setAge(int age) {
        if (age >= 0 && age < 150) {
            this.age = age;
        } else {
            System.out.println("Invalid age");
        }
    }

        public static void main(String[] args) {
            Encapsulation display = new Encapsulation("Arjun", 25);
            System.out.println("Name: " + display.getName());
            System.out.println("Age: " + display.getAge());
            display.setName("Ravi");
            display.setAge(27);
            System.out.println("Updated Name: " + display.getName() + " ,Updated Age: " + display.getAge());
            display.setAge(-12);
            System.out.println("Updated age after invalid: " + display.getAge());

        }
    }

