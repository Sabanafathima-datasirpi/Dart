package pack;
import java.io.FileOutputStream;
import java.io.IOException;
public class FileOutput {
    public static void main(String[] args) {
        try {
            FileOutputStream data = new FileOutputStream("info.txt");
            String str = "Glad to meet";
            byte b[] = str.getBytes();
            data.write(b);
            data.close();
            System.out.println("Successfully written ");

        } catch(IOException e){
            e.printStackTrace();
        }
    }
}
