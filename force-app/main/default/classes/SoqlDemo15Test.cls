@isTest
public  class SoqlDemo15Test {

    @TestSetup
    static void makeData(){
        // 
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 15; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            ac.Industry ='Energy';
           
            //add account to list
            listAcc.add(ac);
        }
        insert listAcc;
        
        list<Opportunity> listOpp = new List<Opportunity>();
        for(Integer i=0; i<30; i++){
            Opportunity opp = new Opportunity(name = 'test opp',
            
            Amount = 50000,
            StageName = 'New ',
            CloseDate = date.today(),
            AccountId = listAcc[0].Id);
            listOpp.add(opp);
        }
        insert listOpp;
        
    }

    @IsTest
    static void testSoql1(){
        //we can use account records created in SETUP method HERE.
        SoqlDemo15.oppAccQuery();
        
    }

     @IsTest
    static void testSoql2(){
        //we can use account records created in SETUP method HERE.
        
    }

}