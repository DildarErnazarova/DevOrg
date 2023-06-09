public class Calculator {
    // a,b=> two integer parameters
    public Integer add(Integer a, Integer b){
        Integer sum = a+b;
        return sum;

    }
    public void add(decimal a, decimal b){
        system.debug(a+b);
   }
   public integer add(integer z, integer x, integer c){
        integer sum = (z+x+c);
        return sum;
        //return (z+x+c); //THIS WORKS too. 
   }
   public boolean leapYearCheck(date dt){
    integer yr = dt.year();//.year() is method name which returns YEAR component of the date.
    //isLeapYear -> built in method of date class. Which returns true or false in year is leap or not
    boolean lp = date.isLeapYear(yr);
    return lp;
}
    

}