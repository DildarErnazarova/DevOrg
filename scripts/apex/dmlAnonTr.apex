//required alanlarin doldurulmasi gerekir aksi takdirde insert gerceklesmez..
account acc = new account();
acc.Name = 'Account Dml';
acc.AnnualRevenue = 100000;
acc.Industry = 'Energy';
insert acc;

contact con = new contact();
con.LastName = 'Contact Dml';
con.accountId = acc.id;
con.LeadSource = 'Web';
insert con;

// parent child iliskisi kurma..
account acc2 = [select id from account where name = 'Ytest' limit 1];
contact con2 = new contact();
con2.LastName = 'Contact Dml 2';
con2.AccountId = acc2.id;
insert con2;

 

Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Salesforce_Project__c = sp.id;
st.Subject__c = 'salesforce ticket dml';
insert st;

// update
account acc3 = [select id, name from account where name ='Ytest' limit 1];
acc3.name = 'Ztest';
update acc3;

// coklu update..
// en yuksek Annual Revenue degeri olan ilk 5 Accountu getirin..
List<Account> accList = [select id, name, AnnualRevenue,
 description from account where AnnualRevenue != null order by AnnualRevenue desc limit 5];

// Her recordun descriptiona bugunun tarihi itibariyle yillik ciro en yuksek 5 sirketten biri..
for (account acc : accList) {
    acc.Description = date.today() + ' itibariyle bu sirket yillik cirosu en yuksek olan 5 sirketten biri';
}
update accList;

// 5 tane Account create edin ve her accounta bagli 5 tane de opportuniy olsun.
List<Account> accList2 = new List<Account>();
for (Integer i = 1; i <= 5; i++) {
    account acc = new account();
    acc.name = 'Dml Demo Account ' + i;
    accList2.add(acc);
    //insert acc; for dongusu icinde dml yapilmaz..
}
insert accList2;

List<Opportunity> oppList = new List<Opportunity>();
for (account acc : accList2) {
    for (Integer i = 1; i <=5; i++) {
        Opportunity opp = new Opportunity();
        opp.Name = 'Dml Demo Opportunity ' + i;
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.id;
        oppList.add(opp);
    }
}
insert oppList;