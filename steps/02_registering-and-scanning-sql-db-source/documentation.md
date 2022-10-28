# Registering & Scanning SQL Database

To populate Microsoft Purview with assets for data discovery and understanding, we must register sources so that we can leverage the scanning capabilities. 
Scanning enables Microsoft Purview to extract technical metadata such as the fully qualified name, schema and data types.

In this demo, you'll walk through how to register and scan data sources.

## Objectives:

- By the end of this module you'll have technical metadata, such as schema information, stored in Purview. 
- You can use this to start linking to business terms, allowing your team members to find data more easily which will be demonstrated in the upcoming demos.

## Pre-requisites:

- An *Azure account* with an active *subscription*
- An *Azure SQL Server* and an *Azure SQL Database*
- Users should have *Data Source Admin permission* to register a data source in the Purview Account.

## Registering SQL DB:

1. Go to **Data Map** -> **Sources** -> **Expand** the Root Collection to **Contoso**.

2. Click on the **Register icon** in the Contoso Collection.

   ![register](./assets/3-1_register.jpg "register")

3. Search for **Azure SQL Database** in the Register sources blade.

   ![addSqldb](./assets/3-2_add_sqldb.jpg "add sqldb")

4. Fill in the data **source name**, select the **Azure subscription** and **sql server name** where the database is located.

   ![name](./assets/3-3_name.jpg "name")

5. Select a collection: ```pvlab-{randomid}-purview>Contoso``` and click **Register**.

6. The created data source will be put under the selected collection, **Contoso**. Click **View details** to see the data source.

   ![viewSource](./assets/3-4_view_source.jpg "view source")

## Scanning SQL DB:

1. Before Scanning the data source. Go to the **resource group** in the **azure portal**.

2. Go to the **SQL Server**. Navigate to **Azure Active Directory**. Click **Set Admin**.
   Provide the Purview account **Managed Identity, [pvlab-{randomid}-purview]** and **Save**.

   ![admin](./assets/3-5_admin.jpg "admin")

   ![setAdmin](./assets/3-6_set_admin.jpg "set admin")

3. Go to the **SQL Database** in the **Azure Portal**. Click on **Set Firewall**. Under **Firewall Rules** tab,
   **Add Client IPv4 address**, **toggle on** the **Exceptions**, allowing azure resources and services to access the server and **Save**.
   
   ![firewall](./assets/3-7_firewall.jpg "firewall")

   ![setFirewall](./assets/3-8_set_firewall.jpg "set firewall")

4. Now go to **Purview workspace**, Click **New Scan** in the registered SQL DB source.
   
   ![scan](./assets/3-9_scan.jpg "scan")

5. Provide the **Scan name**, Database name, Credential, select a collection.
   
   ![scanSettings](./assets/3-10_scan_settings.jpg "scan settings")
   
6. **Test Connection**, once the scan is **Successful**, click **Continue**.

> If the Scan is failed, then you forgot to add the client ip address to Firewall in Azure SQL database and set admin in sql server.

7. In the **Scope your scan** blade, Select the AzureSQLDatabase and **Continue**.
   
   ![scope](./assets/3-11_scope.jpg "scope")

8. Select the _System Default_ Scan rule set and **Continue**.

   ![scanRule](./assets/3-12_scan_rule.jpg "scan rule")
   
9. Set the scan trigger as **Once** and **Continue**.
   
   ![trigger](./assets/3-13_trigger.jpg "trigger")
   
> Now you can either select a recurring scan or one time, in our case we will select “ONCE.” 
> In case you have selected recurring, it will be scanning all assets in that scope based on the schedule you provide. 

10. Review, Save and Run the scan.

    ![reviewScan](./assets/3-14_review_scan.jpg "review scan")
    
11. You can view the details of the scan in the Source page.

    ![viewDetails](./assets/3-15_view_details.jpg "view details")
    
    ![scans](./assets/3-16_scans.jpg "scans")

12. Once the scan is successfully completed, view the number of assets in the **Overview** section.

13. The source registered in the *Contoso* collection can also be moved to any other collection by the *Move* option provided in the details page.

    ![move](./assets/3-17_move.jpg "move")
    
    ![moveCollection](./assets/3-18_move_collection.jpg "move collection")

[ ⏮️ Previous Module](../02_creating-collection-and-adding-role-assignments/documentation.md) - [Next Module ⏭️](../04_registering-and-scanning-adls-gen2-account/documentation.md)
