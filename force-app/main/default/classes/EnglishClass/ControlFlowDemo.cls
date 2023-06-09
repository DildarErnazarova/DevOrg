public  class ControlFlowDemo {
    public void checkBigger(Integer a, Integer b){
        // check and print which one is bigger 
        if(a>b){
            System.debug(' ais bigger than b');

        } else {
            System.debug('b is digger than a');

        }

    }
     
    public void checkNumber(Integer a){
        if (a>0) {
            System.debug('a is positive number');
            // check if number is even or add 
            // if number is divisible by 2
            Integer remainder=Math.mod(a, 2);
            if (remainder==1) {
                system.debug(a + ' is odd');
            } else {
                System.debug(a + 'is even');

            }
        }else {
            if (a==0) {
                system.debug('a is zero');
            } else {
                System.debug('a is negative');

            }
                
            }
        }
                
            }
            
            
        
    
