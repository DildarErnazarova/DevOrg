public  class DmlDemo {
   public static void dmlInsertDemo1() {
      //create one account record.

      //create new instance of account
      account acc = new account();
      acc.Name = 'Salesforce';
      acc.website = 'www.salesforce.com';

      //dml
      insert acc;
      system.debug('inserted acc: ' + acc);
 }

 public static void dmlInsertDemoCO1() {
      //create new instance
      Department__c d = new Department__c();
      
      //set field names
      d.Name__c = 'Human Resource';
      d.Short_Code__c = 'HR';
      //d.last_name__c = 'Mark';
      //insert dml
      insert d; //create RECORD in our ORG. So we can see it in ALL Records.
 }

 public static void dmlInsertDemoCO2() {
      //req: create new record in Salesforce Project object

      //1. create new instance.
      Salesforce_Project__c sp = new Salesforce_Project__c();
      sp.Project_Name__c = 'Learn DML';
      sp.Status__c = 'New';

      //create record
      //INSERT statement
      insert sp;
 }
 

}