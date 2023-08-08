package pack;
import java.io.FileInputStream;
import java.io.IOException;


public class FileInput {
    public static void main(String[] args){
        try{
            FileInputStream data=new FileInputStream("info.txt");
            int file;
            while ((file= data.read())!=-1){
                System.out.print((char) file);
            }
            data.close();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
