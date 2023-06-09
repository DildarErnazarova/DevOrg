public class conditionclass_assignment {
    public String ifClassMethod(Integer input){
        String outputMonth='Not a valid Month';
        
        if (input==1) outputMonth='January';
        else if (input==2) outputMonth='Febuary';
        return outputMonth;

}
public String caseMathod(String month) {
 String outputQuarter='Enter a proper Month name';
 if (month.toLowerCase()=='january'|| month.toLowerCase()=='febuary'|| month.toLowerCase()=='march') 
 outputQuarter='Quarter 1';
 else outputQuarter='Not a valid Quarter';
 return outputQuarter;
    
}

}