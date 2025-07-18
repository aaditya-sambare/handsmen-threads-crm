# 👔 HandsMen Threads: Elevating the Art of Sophistication in Men's Fashion

*A Salesforce-powered CRM solution for intelligent order and inventory management*

---

## 🧩 Project Overview

HandsMen Threads is a modern fashion brand committed to delivering timeless sophistication and personalized experiences in men's fashion. To support its growth and customer-first approach, we developed a custom Salesforce CRM solution that automates operations, centralizes customer data, and delivers actionable insights.

This solution empowers the business to:
- Manage bulk orders
- Track inventory in real-time
- Reward loyal customers
- Automate emails and workflows
- Maintain data integrity at scale

---

## 🚀 Features

- 📦 **Order Management** – Create, update, and process bulk orders with real-time calculations.
- 📉 **Inventory Tracking** – Deduct inventory automatically on order confirmation; send low stock alerts.
- 💎 **Customer Loyalty** – Track loyalty status and notify customers of rewards.
- 📧 **Automated Emails** – Order confirmations, stock alerts, loyalty program updates.
- ✅ **Validation Rules** – Ensure correct and consistent data entry.
- 🔁 **Scheduled Flows/Jobs** – Sync inventory and automate notifications.

---

## 🛠️ Tools & Features Used

- **Salesforce Lightning App Builder**
- **Custom Objects & Fields**
- **Lookup Relationships**
- **Record Pages (Lightning Experience)**
- **Apex Triggers & Batch Jobs**
- **Email Templates (Metadata)**

---

## 🏗️ Objects I Created

| Object              | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| **HandsMen Product**  | List of all available products                                              |
| **Inventory**         | Tracks quantity and stock status                                           |
| **HandsMen Orders**   | Contains customer orders with linked products                              |
| **HandsMen Customers**| Stores customer details and total purchases                                |

All objects are properly related:
- Customer ➝ Orders  
- Order ➝ Product  
- Product ➝ Inventory

---

## 🗂️ Folder Structure

```
HandsMen-Threads-Salesforce-CRM/
├── apex-classes/
│   ├── OrderTotalTrigger.trigger
│   ├── StockDeductionTrigger.trigger
│   ├── OrderTriggerHandler.trigger
│   └── ScheduleAnonymous.txt
├── metadata/
│   └── EmailTemplates/
│       ├── OrderConfirmationEmail.template-meta.xml
│       ├── StockAlertEmail.template-meta.xml
│       └── LoyaltyPointsEmail.template-meta.xml
└── README.md
```

---

## 📧 Example Email Template
Subject: Welcome to the HandsMen Loyalty Program!

Hi {!HandsMen_Customer__c.Name},

Congratulations! You are now a {!HandsMen_Customer__c.Loyalty_Status__c} member and eligible for our Loyalty Rewards Program.

Enjoy exclusive discounts, early access to offers, and special member benefits.

Thank you for being a valued customer.

– Team HandsMen Threads


---

## ⚙️ Setup Instructions

1. **Clone the Repository**
2. **Deploy Metadata** – Use Salesforce DX or Workbench to deploy `apex-classes/` and `metadata/`
3. **Configure Scheduled Job** – Schedule the `InventoryBatchJob` as per `ScheduleAnonymous.txt`
4. **Customize Email Templates** – Edit templates under `metadata/EmailTemplates/`
5. **Add Screenshots** *(Optional)* – Refer to `screenshots/` to visualize the setup

---

## 🧠 What I Learned

This was my **first hands-on Salesforce project**, and I gained real-world experience in:

- Creating and linking custom objects with relationships
- Designing record pages and forms using Lightning App Builder
- Implementing CRM-style data flow with stock-order-customer dynamics
- Writing Apex Triggers and Batch Jobs for business automation
- Understanding how automation enhances retail workflows

---

## 💡 How to Use This Project

Want to try it yourself?

- Fork or clone this repo
- Log in to your Salesforce Developer Org
- Recreate the objects and relationships
- Deploy triggers, metadata, and flows
- Refer to `screenshots/` for guidance

---

## 👤 Author

**Aaditya Sambare**  
Salesforce Intern  
📧 Email: sambareaaditya661@agentforce.com  
🌐 [Trailblazer Profile](https://www.salesforce.com/trailblazer/aadityasambare)

---

## ⚠️ Disclaimer

This project was created for **internship learning purposes** and is **not connected to any real customer or business data**.

---