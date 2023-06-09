public  class BankAccount {
   //data members
        //OR
    //class variables or global variable
    public string accountNumber;
    private decimal balance;
    string accountHolderName;
    string bankName;

    //rules of constructor
    //constructor.
    public BankAccount(){
        //constructor is automatically called when we create new instance. --> new BankAccount() -> this will invoke constructor. 
        system.debug('constructor called.');
        balance = 0; //assign some default value to data member
    }
    //create parameterzied constructor and assign class variables.
    public BankAccount(string accNumber, decimal bal, string accHolderName, string bName){
        // system.debug('accNumber ' + accNumber);
        // system.debug('bal ' + bal);
        // system.debug('accHolderName ' + accHolderName);
        // system.debug('bName ' + bName);
        //assign class variables value
        accountNumber = accNumber;
        balance = bal;
        accountHolderName = accHolderName;
        bankName = bName;
    }   

    public void setBalance(decimal bal){
        balance = bal;
    }
    
    public void printDetails(){
        //we can create variables here, which we CAN use ONLY inside this method
            //local variable
        datetime printTime = datetime.now();
        
        system.debug('-----');
        system.debug('print datetime is ' + printTime);
        system.debug('-----');

        system.debug('acc number: ' + accountNumber);
        system.debug('acc balance: ' + balance);
        system.debug(' accountHolderName: ' + accountHolderName);
        system.debug('acc bankName: ' + bankName);
    }
}