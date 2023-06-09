@istest
public class OppTriggerHandlerTest {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 1; i <=3; i++) {
            account acc = new Account();
            acc.Name = 'Account Test ' + i;
            accList.add(acc);
        }
        insert accList;

        List<Opportunity> oppList = new List<Opportunity>();
        for (Integer i = 1; i <= 300; i++) {
            Opportunity opp = new Opportunity();
            opp.Name = 'Opportunity Test ' + i;
            opp.StageName = 'Prospecting';
            opp.CloseDate = date.today().addDays(60);
            if (i<=100) {
                opp.amount = 1;
                opp.accountId = accList[0].id;
            } else if (i<=200) {
                opp.Amount = 2;
                opp.accountId = accList[1].id;
            } else {
                opp.Amount = 3;
                opp.accountId = accList[2].id;
            }
            oppList.add(opp);
        }
        // opportunity inserti test ediyoruz..
        insert oppList;
    }
    @istest
    private static void insertTest() {
        List<Account> acclist = [select id, name, description from account];
        //acc1 icin description da amount toplami = 100
        assert.isTrue(accList[0].Description.contains('100'));
        //acc2 icin description da amount toplami = 200
        assert.isTrue(accList[1].Description.contains('200'));
        //acc3 icin description da amount toplami = 300
        assert.isTrue(accList[2].Description.contains('300'));
    }
    @istest
    private static void updateTest() {
        List<Opportunity> oppList = new List<Opportunity>();
        Opportunity opp1 = [select id, name, amount from Opportunity where name = 'Opportunity Test 1'];
        opp1.Amount += 1;
        oppList.add(opp1);

        Opportunity opp2 = [select id, name, amount from Opportunity where name = 'Opportunity Test 300'];
        opp2.accountId = null;
        oppList.add(opp2);

        test.startTest();
        update oppList;
        test.stopTest();

        List<Account> accList = [select id, name, description from account];
        //acc1 icin description da amount toplami = 101;
        assert.isTrue(accList[0].Description.contains('101'));
        //acc3 icin description da amount toplami = 297
        assert.isTrue(accList[2].Description.contains('297'));
    }
    @istest
    private static void deleteTest() {
        Opportunity opp2 = [select id, name, amount, AccountId from Opportunity where name = 'Opportunity Test 150'];
        id accId = opp2.accountId;
        test.startTest();
        delete opp2;
        test.stopTest();

        account acc = [select id, description from account where id =: accId];
        //acc2 icin description da amount toplami = 198
        assert.isTrue(acc.Description.contains('198'));
    }
}