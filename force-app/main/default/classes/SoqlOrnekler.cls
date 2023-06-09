public class SoqlOrnekler {
    //industry education olan accountlari getirelim. a-) tek tek yazdiralim. b-) name leri tek tek yazdiralim. sonra bir parametre ile industry filtresini dinamik hale getirelim..
    public static void selectIndustry(string indstry) {
        //List<Account> accList = [select id, name, industry from account where industry = 'Education'];
        System.debug('=====selectidustry metodu calisti========');
        List<Account> accList = [select id, name, industry from account where industry = :indstry];
        System.debug('Liste => ' + accList);
        System.debug('Record sayimiz = ' + accList.size());
        //a-) tek tek yazdiralim..
        System.debug('======== a-) tek tek yazdirma========');
        for (account acc : accList) {
            System.debug('account => ' + acc);
        }
        System.debug('======== b-) name ve industry yazdirma=======');
        for (account acc : accList) {
            System.debug('name => ' + acc.name);
            System.debug('industry => ' + acc.Industry);
        }
    }

    public static void childToParent() {
        //Contactlari bagli olduklari accountlarin name ve annualRevenue leri ile beraber getirelim.. annualRevenue bos olanlar gelmesin
        List<Contact> conList = [select id, name, account.name, account.annualRevenue from contact where account.annualRevenue != null];
        System.debug('listemizdeki record sayisi = ' + conList.size());
        for (contact con : conList) {
            System.debug(con.name + ' contactinin bagli oldugu accountun adi = ' + con.account.name + ' ve bu accountun Annual Revenue = ' + con.account.annualRevenue);
            System.debug('========================================================');
        }
    }
}