# HandsMen Threads Salesforce CRM

A Salesforce CRM solution for managing orders, inventory, and customer loyalty for HandsMen Threads.

## Features

- **Order Management:** Create, update, and process bulk orders.
- **Inventory Tracking:** Automatically deduct stock on order confirmation and alert when stock is low.
- **Customer Loyalty:** Track loyalty status and notify customers of rewards.
- **Automated Email Notifications:** Send order confirmations, stock alerts, and loyalty program updates.
- **Validation Rules:** Ensure data integrity for orders and inventory.
- **Scheduled Jobs & Flows:** Automate inventory sync and notifications.

## Folder Structure

```
HandsMen-Threads-Salesforce-CRM/
├── apex-classes/
│   ├── BulkOrderBatch.cls
│   ├── BulkOrderBatchTest.cls
│   ├── OrderTotalTrigger.trigger
│   ├── StockDeductionTrigger.trigger
│   ├── OrderTrigger.trigger
│   ├── OrderTriggerHandler.cls
│   └── ScheduleAnonymous.txt
├── flows/
│   ├── OrderConfirmationFlow.flow-meta.xml
│   ├── StockAlertScheduledFlow.flow-meta.xml
├── metadata/
│   ├── CustomObject_Order__c.object-meta.xml
│   ├── CustomObject_Inventory__c.object-meta.xml
│   ├── ValidationRules.meta.xml
│   └── EmailTemplates/
│       ├── OrderConfirmationEmail.template-meta.xml
│       ├── StockAlertEmail.template-meta.xml
│       ├── LoyaltyPointsEmail.template-meta.xml
└── README.md
```

## Key Components

### Apex Classes & Triggers

- **BulkOrderBatch.cls:** Batch class for processing pending orders.
- **OrderTotalTrigger.trigger:** Calculates total amount for each order.
- **StockDeductionTrigger.trigger:** Deducts inventory when orders are confirmed.
- **OrderTrigger.trigger & OrderTriggerHandler.cls:** Centralized trigger logic for order events.

### Metadata

- **CustomObject_Order__c.object-meta.xml:** Order object definition.
- **CustomObject_Inventory__c.object-meta.xml:** Inventory object definition.
- **ValidationRules.meta.xml:** Ensures order amount and quantity are positive.

### Email Templates

- **OrderConfirmationEmail:** Confirms order to customer.
- **StockAlertEmail:** Alerts inventory manager when stock is low.
- **LoyaltyPointsEmail:** Notifies customer of loyalty status.

### Flows

- **OrderConfirmationFlow:** Automates order confirmation process.
- **StockAlertScheduledFlow:** Scheduled flow for stock alerts.

### Scheduled Jobs

- **ScheduleAnonymous.txt:** Schedules daily inventory sync.

## Setup Instructions

1. **Deploy Metadata:** Use Salesforce DX or your preferred deployment tool to deploy all metadata and Apex classes.
2. **Configure Scheduled Jobs:** Ensure `InventoryBatchJob` is implemented and scheduled as shown in `ScheduleAnonymous.txt`.
3. **Customize Email Templates:** Edit templates in `metadata/EmailTemplates/` as needed.
4. **Test Automation:** Run unit tests in `BulkOrderBatchTest.cls` to verify batch processing.

## Example Email Template

```
Congratulations! You are now a {!HandsMen_Customer__c.Loyalty_Status__c} member and you are eligible for our Loyalty Rewards Program.
Enjoy exclusive discounts, early access to offers, and special member benefits.
Thank you for your continued support.
```
