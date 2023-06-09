@istest
public  class SoqlAndDmlDemoTurkceTest {
    @istest
    private static void getAccWithOppTest() {
        List<Account> accList = new List<Account>();
        account acc1 = new Account();
        acc1.name = 'Demo 1';
        accList.add(acc1);

        account acc2 = new Account();
        acc2.name = 'Demo 2';
        accList.add(acc2);

        insert accList;
        List<Opportunity> oppList = new List<Opportunity>();
        for (account acc : accList) {
            Opportunity opp = new Opportunity();
            opp.name = acc.name + ' Opportunity';
            opp.CloseDate = date.today().addDays(30);
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        }
        insert oppList;
        test.startTest();
        integer accSys = SoqlAndDmlDemoTurkce.getAccWithOpp();
        test.stopTest();
        assert.areEqual(2, accSys);
    }
    @istest
    private static void createAccountTest() {
        test.startTest();
        SoqlAndDmlDemoTurkce.createAccount('Softinnovas');
        test.stopTest();
        account acc = [select id, name from account limit 1];
        assert.areEqual('Softinnovas', acc.name);
        List<contact> conList = [select id from contact];
        assert.isTrue(conList.size()>0);
    }
    

}   