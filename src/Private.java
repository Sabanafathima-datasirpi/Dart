public class Private {
    //private(accessible within the same class)
    private int data=23;

    private void calc(){
        int result=data*data;
        System.out.println(result);
    }
    public static void main(String[] args){
        Private value=new Private();
        value.calc();
    }
}
