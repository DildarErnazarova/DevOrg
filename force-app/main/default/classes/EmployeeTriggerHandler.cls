public  class EmployeeTriggerHandler {

    public static void updateJoinDate( List<Employee__c> empTriggerNew) {
        if(Trigger.isInsert || Trigger.isUpdate){
            for(Employee__c newEmp: empTriggerNew){
                if(newEmp.JoinDate__c == null){
                    newEmp.JoinDate__c = Date.today();
                }
            }
        }

    }
}