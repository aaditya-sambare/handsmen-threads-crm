@isTest
private class BulkOrderBatchTest {
    @isTest static void testBatchProcessing() {
        HandsMen_Order__c order = new HandsMen_Order__c(
            Status__c = 'Pending',
            Amount__c = 100
        );
        insert order;

        Test.startTest();
        BulkOrderBatch batch = new BulkOrderBatch();
        Database.executeBatch(batch);
        Test.stopTest();

        order = [SELECT Status__c FROM HandsMen_Order__c WHERE Id = :order.Id];
        System.assertEquals('Processed', order.Status__c);
    }
}