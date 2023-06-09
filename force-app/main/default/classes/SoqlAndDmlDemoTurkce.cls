public  class SoqlAndDmlDemoTurkce {
    public static integer getAccWithOpp() {
        //Opportunity 'si olan Accountlari getirip size 'ını return eden bir method yazın.
            list<opportunity> lstOpp = [select id,name ,accountid from opportunity where accountid != null];
    
            set <id> accIds = new set <id>();
            for (opportunity opp : lstOpp) {
                accIds.add(opp.accountid);
            }
            list <account> lstAcc = [select id,name from account where id in : accIds];
            System.debug(lstAcc.size());
            return lstAcc.size();
            
        }
        public static integer getAccWithOpp2() {
            list<account> lstAcc = [select id,name from account where id in (select accountid from opportunity where accountid != null)];
    
            System.debug(lstAcc.size());
            return lstAcc.size();
        }
        public static void createAccount(string isim) {
            //name'i parametre olarak alan ve name ile Account create eden bir metot yazın
            account acc = new account();
            acc.Name = isim;
            insert acc ;
            // //Bu accounta bir contact baglayin first name Demo last name Contact olsun.
            // contact con = new contact();
            // con.FirstName = 'Demo';
            // con.lastName = 'Contact';
            // con.accountid = acc.id;
            // insert con;
    
            //aynı metot icinde o Accounta bağlı 5 tane de contact create etsin first name acoountun ismi olsun last name 'Contact' olsun ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.
            list<contact> lstCon = new list<contact>();
            for (Integer i = 1 ; i < =5; i++) {
                contact con = new contact();
                con.FirstName = isim;
                con.lastName = ' Contact ' + i;
                con.AccountId = acc.id;
                lstCon.add(con);
            }
            insert lstCon;
        }
        //En buyuk AnnualRevenue si olan Accountu bulup Description a bugunun tarihini de ifade ederek bugun itibariyle en buyuk Annual Revenue ye sahip Account name = ….. AnnualRevenue = …….
        public static void highestAnnualRevenue() {
            Account acc = [select id,name ,annualRevenue,description from account where 
            annualRevenue != null order by annualRevenue  desc limit 1];
            string message =date.today() + ' tarihi itibariyle ' + acc.Name + ' acountunun Annual Revenue si ' + acc.annualRevenue + ' tüm accountlar icinde en buyuktur.';
            acc.description = message;
    
            update acc;
        }
}