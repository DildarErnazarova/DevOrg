public class NewCar {
    Integer currentSpeed =0;
    String carType='';
    String carName='';
    public void startCar(String type, String name){
        carType=type;
        carName=name;
        System.debug(carType);
        System.debug(carName);

    }
    public void Accelerate(Integer x){
        currentSpeed +=x;
        System.debug(currentSpeed);

    }
    public void Brake(Integer y){
        currentSpeed -= y;
        System.debug(currentSpeed);

    }
    public void stopCar(){
        currentSpeed =0;
        System.debug(currentSpeed);
    }
    public void checkSpeed(){
        if (currentSpeed > 60) {
            System.debug('Sports mode');      
        } else if (currentSpeed>30) {
            System.debug('city Mode');
        }else {
            System.debug('Ecanomy Mode');
        }
            
        }
    }
    
