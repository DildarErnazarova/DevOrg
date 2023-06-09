trigger ServiceConsultantTrigger on Service_Consultant__c (before insert, before update) {
    // Collect a set of Consultant IDs from the records being inserted or updated
    Set<Id> consultantIds = new Set<Id>();
    for (Service_Consultant__c record : Trigger.new) {
        consultantIds.add(record.Consultant__c);
    }
    
    // Query for existing services associated with the Consultant IDs
    List<Service_Consultant__c> existingServices = [
        SELECT Id
        FROM Service_Consultant__c
        WHERE Consultant__c IN :consultantIds
        AND Id NOT IN :Trigger.newMap.keySet()
    ];
    
    // Create a map to track the number of services per Consultant
    Map<Id, Integer> consultantServiceCount = new Map<Id, Integer>();
    for (Service_Consultant__c service : existingServices) {
        if (consultantServiceCount.containsKey(service.Consultant__c)) {
            consultantServiceCount.put(service.Consultant__c, consultantServiceCount.get(service.Consultant__c) + 1);
        } else {
            consultantServiceCount.put(service.Consultant__c, 1);
        }
    }
    
    // Iterate through the records being inserted or updated
    for (Service_Consultant__c record : Trigger.new) {
        // Check if the Consultant already has a service
        if (consultantServiceCount.containsKey(record.Consultant__c) && consultantServiceCount.get(record.Consultant__c) > 0) {
            record.addError('A service already exists for this Consultant. Duplicate bookings are not allowed.');
        }
    }
}