import java.util.Scanner;

public class Exception {
    public static void main(String[] args) {

        try {
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter an integer");
            int input = sc.nextInt();
            double result = root(input);
            System.out.println(result);
        } catch (java.util.InputMismatchException e) {
            System.out.println("Input invalid. Enter an integer");
        } catch (ArithmeticException e) {
            System.out.println("Error: " +e.getMessage());
        }finally {
            System.out.println("This is the result");
        }
    }

    public static double root(int number) {
        if (number < 0) {
            throw new ArithmeticException("Invalid input. Negative number is not allowed");
        }
        return (Math.sqrt(number));
    }
}





