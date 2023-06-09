public  class AccountTriggerHandler3 {
    @future
    public static void futureCreateContacts(set<id> accIds) {
        List<Contact> conList = new List<Contact>();
        for (id accId : accIds) {
            contact con = new contact();
            con.LastName = 'Contact';
            con.AccountId = accId;
            conList.add(con);
        }
        insert conList;
    }
}