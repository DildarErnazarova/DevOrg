public class Carrr {
    // variables created  directly inside class body are called Clarr variables
    String carNumber;
   public String name;
    Integer mfgYear;
    public String color;
    Decimal price;

    // class variables are accessible in all methods of the class.
    
    public void details (){
        System.debug('car number is '+ carNumber);
        System.debug(' car neme is '+ name);
        System.debug('manufacturing year'+ mfgYear);
        System.debug('collor off carr is '+ color);
        System.debug('price is '+ price);

    }
    // constractornis is same as class name 
    // consructor does not return anything 
    public carrr(){

        //consturctor code is called automatially when new instance is created

        //constructors are used a lot to assign class variables values by default.
        //constructors are also used to do some operation as soon as object is created. 
        
        
        System.debug('new car is created, construrctor called automatically');
        mfgYear=2023;
    }


     public carrr(String nm){
        //
        //
        name=nm;
        mfgYear=2023;

    }

    public Carrr(String nm, String carnum, String clr, Integer yr, Decimal pc){
        name=nm;
        carNumber=carnum;
        color=clr;
        mfgYear=yr;
        price=pc;
    }


}