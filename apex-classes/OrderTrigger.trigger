trigger OrderTrigger on HandsMen_Order__c (
    before insert, before update, after insert, after update
) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            OrderTriggerHandler.beforeInsert(Trigger.new);
        }
        if (Trigger.isUpdate) {
            OrderTriggerHandler.beforeUpdate(Trigger.new);
        }
    }
    if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            OrderTriggerHandler.afterInsert(Trigger.new);
        }
        if (Trigger.isUpdate) {
            OrderTriggerHandler.afterUpdate(Trigger.new);
        }
    }
}