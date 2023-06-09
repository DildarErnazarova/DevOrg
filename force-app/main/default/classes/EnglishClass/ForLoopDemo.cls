public class ForLoopDemo {
    // print Hello 10 times
   public void printHello(){
    // traditional for loop or for i loop
    for (Integer i=1; i<=10; i++) {
        System.debug('hello');
        
    }
         
    }

    // 0 to n-1
    public void printNumbers(Integer n){
        String printStr='';
        for (Integer i = 0; i < n; i++) {
            // system.debug(i);
            printStr=printStr+i+',';

        }
        System.debug(printStr);

    }
    public void print_N_numbers2(integer n){
        string s = 'this';
       // s += ' is a string';
       s=s+' is a string' ;
        for (Integer i = 0; i < n; i++) {
            s += i;
            system.debug(s);//this is a string012345
        }
        system.debug(s);//will this work?
        
        
    }

    public void printNnumbers3(Integer startInt, Integer endInd){
        for (Integer i = startInt; i < endInd; i++) {
            Integer mod =Math.mod(i, 2);
            if (mod==1) {
                System.debug(i);
                
            }
            
        }
    }
    

   }
