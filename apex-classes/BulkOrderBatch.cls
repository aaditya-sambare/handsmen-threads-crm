global class BulkOrderBatch implements Database.Batchable<SObject> {

    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT Id, Status__c, Amount__c FROM HandsMen_Order__c WHERE Status__c = \'Pending\' '
        );
    }

    global void execute(Database.BatchableContext bc, List<HandsMen_Order__c> orders) {
        for (HandsMen_Order__c order : orders) {
            order.Status__c = 'Processed';
            // Additional logic like updating financials or notifying users can be added here.
        }
        update orders;
    }

    global void finish(Database.BatchableContext bc) {
        System.debug('Bulk order processing complete.');
    }
}
