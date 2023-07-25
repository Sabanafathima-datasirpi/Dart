public class Datatypes {
    String name="Sabana";       //Non primitive datatype
    int marks=85;
    char grade='P';
    float percent;
    boolean isPass=true;
    long result;
    short value=32765;
    double pi=3.14159265359;
    byte number=126;
    int array[]={5,10,15,20};
    public void studentInfo(){
        System.out.println("String datatype:" +name);
        System.out.println("Integer datatype:" +marks);
        if(marks>50){
            System.out.println("Character datatype:" +grade );
        }
        percent=marks%100;
        System.out.println("Float datatype:" +percent+ "%" );
        if(grade=='P'){
            System.out.println("Boolean datatype:" +isPass );
        }
        result=3456*5678;
        System.out.println("Long datatype:" +result );
        System.out.println("Short datatype:" +value );
        System.out.println("Double datatype:" +pi);
        System.out.println("Byte datatype:" +number );
        System.out.println("Element in index 2 is:" +array[2]);         //Non primitive datatype
    }
    public static void main(String[] args) {
        Datatypes type=new Datatypes();
        type.studentInfo();

    }
}
