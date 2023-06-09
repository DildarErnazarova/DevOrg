public class SoqlDemo4 {
    public static void groupByQuery(){
        List<aggregateResult> result = [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];

        for (aggregateResult ar : result) {
            System.debug('country name is ' + ar.get('country__c'));
            System.debug('numbers of employees are ' + ar.get('extr 0'));
            System.debug('totol salary is  ' + ar.get('extr1'));
        }
    }
    public static void accDynamicSOQL1(string accFieldNames) {
        
        string query = 'select ';
        query = query + accFieldNames;
        //query += accFieldNames;
        query += ' from account';

        system.debug('final query is::  ' + query);
        list<account> listAcc = database.query(query);
        for (account eachAcc : listAcc) {
            system.debug(eachAcc);
        }
    }
}