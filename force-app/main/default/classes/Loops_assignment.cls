public class Loops_assignment {
    public Integer whileLoopMethod(Integer n){
        Integer i=1;
        System.debug(' ' +i);
        while (i<=n) {
         System.debug(i);
         i++;
     
        }
        return i;

    }

    public void printEven(){
        for (Integer i = 1; i <=100;  i++) {
            Integer remainder=math.mod(i, 2);
            if (remainder==0) {

            
            System.debug(i);}

            
        }

    }
    public Integer printPower(Integer n){
        Integer returnInt =n;
        for (Integer i = 1; i <=n; i++) {
            System.debug(' '+i+ ' :' +returnInt);
            returnInt *=n;
                  
        }
        System.debug(returnInt);
        return returnInt;
    }
   
}