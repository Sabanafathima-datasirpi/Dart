package pack;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class ByteStream {
    public static void main(String[] args){
        try{
            String s="Good morning";
            byte message[]=s.getBytes();
            ByteArrayInputStream input=new ByteArrayInputStream(message);
            input.read(message);
            File data=new File("info.txt");
            FileOutputStream output=new FileOutputStream(data);
            output.write(message);
            System.out.println("Written successfully");
            input.close();
            output.close();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
