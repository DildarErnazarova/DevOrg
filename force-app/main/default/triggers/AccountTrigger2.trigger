trigger AccountTrigger2 on Account (before insert,after insert, before update,  after update, before delete, after delete, after undelete) {

  system.debug('---');

  if(Trigger.isBefore ){
      if (Trigger.isInsert || Trigger.isUpdate) {
          AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
      }
      if(Trigger.isDelete){
          //call method to validate delete operation
          AccountTriggerHandler.validateDelete(Trigger.Old);
      }
      
  }
  
  if(Trigger.isAfter && Trigger.isUpdate){
      //account after VIP field is update --> update all it's contacts VIP field
      AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
  }
  if(Trigger.isAfter && Trigger.isUndelete){
      AccountTriggerHandler.sendRestorationEmail(trigger.new);
  }

  //Execution
      //1. system validation
      //2. before trigger (record is not saved yet. ID is not generated.)
          //change field values HERE (it is allowed because record is NOT saved yet).
      //3. custom validation
      //4. SAVE (ID is generated. Not available for use. Not Committed)
      //5. after trigger (record is saved. ID is generated. Trigger.new is READ ONLY now)


   

}