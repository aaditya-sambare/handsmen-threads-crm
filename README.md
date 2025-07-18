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

## Screenshots
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 58 44 PM" src="https://github.com/user-attachments/assets/66f78c67-2d14-485c-bcb2-019e35bdaeba" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 58 56 PM" src="https://github.com/user-attachments/assets/3e16ad9d-724e-412d-a432-41c062c2014c" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 59 14 PM" src="https://github.com/user-attachments/assets/b9cdf3ea-fcf5-46a3-aa18-4a21bbd93a71" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 59 25 PM" src="https://github.com/user-attachments/assets/54c2c193-08a4-4da3-ab74-f6c6563009fd" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 59 35 PM" src="https://github.com/user-attachments/assets/28f2c186-8af3-4e83-9ca6-80e45ca8a762" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 59 50 PM" src="https://github.com/user-attachments/assets/f038f60e-11b1-4373-9475-97dbedb8af18" />
<img width="1440" height="932" alt="Screenshot 2025-07-18 at 11 59 57 PM" src="https://github.com/user-attachments/assets/6afd28b6-847b-4698-81d1-21ae69a61190" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 10 AM" src="https://github.com/user-attachments/assets/4a9eec87-9dcd-4051-9f70-06750878167c" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 21 AM" src="https://github.com/user-attachments/assets/7f19d0f6-58ef-4102-8d0c-5e90734e97cd" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 27 AM" src="https://github.com/user-attachments/assets/0342727a-dc62-40f7-99fa-a2bb3968ce61" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 33 AM" src="https://github.com/user-attachments/assets/448646b0-63a9-439f-a106-0d43d4f1d05d" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 45 AM" src="https://github.com/user-attachments/assets/d3e312e7-cd49-4f6c-9f54-67fed5eeb2bb" />
<img width="1440" height="932" alt="Screenshot 2025-07-19 at 12 00 52 AM" src="https://github.com/user-attachments/assets/bc6ae590-876e-4647-84d1-968651f91aa2" />

---
