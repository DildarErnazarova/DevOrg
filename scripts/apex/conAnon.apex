Trigger revision:

All context variable.
Trigger.isBefore
Trigger.isAfter
Trigger.isInsert
Trigger.isUpdate
Trigger.isDelete

Trigger.new
    - list<sObject>
    - new records (latest created or updated records)
    - is it available in before insert?
        - Yes, it is available. NO ID. No createddate, no createdby.
            - why no ID?    
                - record is NOT YET Saved.
    - is it available in after insert?
        - Yes. With Id. 
    - Before update and after update?
        - Yes. With Id.
        - what would be name in before update?
            - trigger.new name:
        - what would be name in after update?
            - trigger.new name:
Trigger.old
    - list<sObject>
    - old record or immediate previous data
    - Available in Before insert and after insert?
        - No. It is null. Why? 
            - There was no previous records. 
    - Available in Before update and after update?
        - yes. 
    -  Example: old name would be Lux.