# Registering and Scanning an on-premises SQL Server Instance

## Introduction
For this scenario, you'll use a self-hosted integration runtime to connect to data on an on-premises SQL server. 
Then you'll use Microsoft Purview to scan and classify that data.

## Pre-Requisites
-	An Azure account with an active subscription
-	An Azure Microsoft Purview account
-	An Azure Key Vault
-	Virtual Machine and SQL Virtual Machine
-	Database already setup on SQL Instance
-	_Data Source Administrator_ and _Data Reader_ access in the Purview Account

## Objectives
1.	Installing and configuring Self-Hosted Integration Runtime
2.	Connecting to the On-prem SQL Server
3.	Adding SQL server as an Asset to Azure Purview
4.	Generating Secrets and Managing Credentials
5.	Scanning on-prem SQL server database
6.	Verifying SQL server appearing in Data catalog

## Procedure

### Step 1: Installing and configuring Self-Hosted Integration Runtime

1.	Go to your Purview Studio, select Data Map > Under Source Management, Select Integration runtimes and then Select **+New**. 

![newIR](./assets/1_newIR.jpg "new integration runtime")

2.	Select **Self-Hosted** to Create self-hosted IR then select Continue.

![self_hosted](./assets/2_self_hosted.jpg "self hosted runtime")

3.	Enter a Name for your Integration Runtime and add Description of your choice and select Create.

![setup](./assets/3_setup.jpg "setup")

4.	Under the Manual setup section, step 1, right click on **Download and install integration runtime** link > 🔗**Copy link**, paste it in a notepad and keep it handy. We’ll use it later.

5.	Likewise, copy either of the authentication keys in step 2 [Key1 / Key2] and paste it in a notepad for future use.

![settings](./assets/4_settings.jpg "settings")

![notepad](./assets/5_notepad.jpg "notepad")

6.	Go to the Virtual Machine Resource `[pvlab-{randomID}-sqlvm]`

![vm](./assets/6_vm.jpg "virtual machine")

7.	Check whether the VM is in running state or else start the VM. Click **Connect** with **RDP**.

![connect](./assets/7_connect.jpg "connect")

8.	**Download RDP File** after the Suggested Method for Connecting is verified successfully.

![rdp](./assets/8_rdp.jpg "rdp")

9.	Open the RDP File.

![open_rdp](./assets/9_open_rdp.jpg "open rdp")

10.	Connect

![connect_to_rdp](./assets/10_connect_to_rdp.jpg "connect to rdp")

11.	More Choices > Use a different account. Enter the username as `\sqladmin` and password as `Password@123` and click OK

![credentials](./assets/11_credentials.jpg "credentials")

12.	Click Yes in the following screen.

![certificate](./assets/12_certificate.jpg "certificate")

13.	After connected to the RDP. Go to Internet Explorer and paste the URL to download and install the integration runtime which we have copied earlier from the notepad. Click Download

![download](./assets/13_download.jpg "download")

14.	Select IntegrationRuntime_5.22.8312.1.msi/the latest version and Download

![latest_version](./assets/14_latest_version.jpg "latest version")

![view_downloads](./assets/15_view_downloads.jpg "view downloads")

15.	Open the Self-Hosted Integration Runtime

![run](./assets/16_run.jpg "run")

16.	On the welcome page, click next

![runtime_setup](./assets/17_runtime_setup.jpg "runtime setup")

17.	Read and accept the terms and click next

![license](./assets/18_license.jpg "license")

18.	Let the Destination Folder path be default and click next

![dest_folder](./assets/19_dest_folder.jpg "dest folder")

19.	Click install to start the installation

![click_install](./assets/20_click_install.jpg "click install")

20.	Click finish after the installation is done

![finishIR](./assets/21_finishIR.jpg "finishIR")

21.	After this you will get the following screen

22.	Paste the authentication key which we have copied earlier from the notepad and click on register.

![paste_key](./assets/23_paste_key.jpg "paste key")!

23.	Click Finish

![click_finish](./assets/22_click_finish.jpg "click finish")

24.	After this the Integration runtime will start initializing, this can take a while.

25.	After initializing, you should see the following screen, click on launch configuration manager

![launch](./assets/24_launch.jpg "launch")

26.	When you see this screen, all has been processed and the IR is up and running.

![self_hosted_node_ready](./assets/25_self_hosted_node_ready.jpg "self hosted node ready")

27.	Switch back to the azure Purview workspace and go to the integration runtimes pane, refresh the page, this will show the Self-hosted integration runtime which has been installed with a green flag.

![refresh](./assets/26_refresh.jpg "refresh")

The different flags in the Integration Runtime indicate the IR’s state of running.

![flags](./assets/27_flags.jpg "flags")

### Step 2: Connecting to the On-Prem SQL Server

1.	Go to the RDP and open SSMS.

![ssms](./assets/28_ssms.jpg "ssms")

2.	Connect to the server.

![connect_to_server](./assets/29_connect_to_server.jpg "connect to server")

3.	Once the server is connected, you can check the availability of databases `[SampleDatabase]` by expanding the Databases option.

![sampledatabase](./assets/30_sampledatabase.jpg "sampledatabase")

### Step 3: Adding SQL server as an Asset to Azure Purview

1.	On the home page of Purview Studio, select Data Map from the left navigation pane. Click on Sources then select Register in Contoso collection.

![collection](./assets/31_collection.jpg "collection")

2.	Select SQL Server in Register Sources Page.

![select_server](./assets/32_select_server.jpg "select server")

3.	Fill in the required information i.e., Name as `SQLServer-onprem`, Server endpoint (Copy the Node name from Integration Runtime in the RDP, the highlighted one in 26th of step 1) , Select a collection (root collection>Contoso) , then click Register

![register_sql](./assets/33_register_sql.jpg "register sql")

### Step 4: Generating Secrets and Managing Credentials

1.	Go to Azure portal and select the Key Vault, Navigate to Access Policies in the left navigation pane and click Create.

![create_policy](./assets/34_create_policy.jpg "create policy")

2.	Select All under Secret Permissions and click Next.

![select_all](./assets/35_select_all.jpg "select all")

3.	Add user account(your email address) in the Principal tab. 

![search_user](./assets/36_search_user.jpg "search user")

4.	Review + Create

![create_policy1](./assets/37_create_policy1.jpg "create policy1")

5.	Create another Access Policy with only Get and List under Secret Permissions. 

![select_get_list](./assets/38_select_get_list.jpg "select get list")

6.	Give Principal as purview account name(pvlab-{randomID}-purview). 

![select_purview](./assets/39_select_purview.jpg "select purview")

7.	Review + Create.

![create_policy2](./assets/40_create_policy2.jpg "create policy2")

![access_policies](./assets/41_access_policies.jpg "access policies")

8.	Under Settings in the left pane, select Secret then click on +Generate/Import

![generate_secret](./assets/42_generate_secret.jpg "generate secret")

9.	Fill in required information i.e., Name and Value then click on Create

Note: Value Should have Same Password which you want to connect to On-Prem SQL server. So, enter password as Password@123

![create_secret](./assets/43_create_secret.jpg "create secret")

![secret](./assets/44_secret.jpg "secret")

10.	Go back to Azure Purview workspace and select Management, click Credentials under Security and Access 

![new_cred](./assets/45_new_cred.jpg "new cred")

11.	Fill in the required information like Name (name of Credential), Authentication (SQL authentication to connect to on-prem SQL server), Username (SQL username as sqladmin), in Key Vault connections, click New.

![new_connection](./assets/46_new_connection.jpg "new connection")

12.	Fill in the required information, Name. Select the Azure Subscription and Key Vault Name. And create and confirm granting access.

![create_keyvault](./assets/47_create_keyvault.jpg "create keyvault")

![confirm_access](./assets/48_confirm_access.jpg "confirm access")

13.	Secret (this is name of the secret which we created in step 9), then click CREATE

![create_credentials](./assets/49_create_credentials.jpg "create credentials")

14.	Once the credential is created, it will appear under the Credential window as shown.

![on_prem](./assets/50_on_prem.jpg "on prem")

### Step 5: Scanning on-prem SQL server database

1.	Navigate to the registered SQL Server-onprem source in the Data Map page. Click New Scan.

![new_scan](./assets/51_new_scan.jpg "new scan")

2.	In the details page, enter the **Scan name**, select the registered Integration Runtime, enter the Database Name, and select the newly created Credential. Test connection. And continue once the connection is succeeded.

![test_connection](./assets/52_test_connection.jpg "test connection")

3.	Select the database and continue.

![scope](./assets/53_scope.jpg "scope")

4.	Let the Scan Rule Set be the default choice and continue.

![sql_server](./assets/54_sql_server.jpg "sql server")

5.	Choose the **once** trigger option.

![trigger](./assets/55_trigger.jpg "trigger")

6.	Review your scan, save and run.

![save_run](./assets/56_save_run.jpg "save run")

![view_details](./assets/57_view_details.jpg "view details")

![scan_complete](./assets/58_scan_complete.jpg "scan complete")

### Step 6: Verifying SQL server appearing in Data catalog

Once Scanning is completed, go to Data catalog and in top search box type in * and press Enter, then filter the result only for SQL server by selecting Source type as SQL server, it will show all the discovered assets from on-prem SQL server.

![validate](./assets/59_validate.jpg "validate")

[ ⏮️ Previous Module](../02_registering-and-scanning-sql-db-source-and-adls-gen2-account/documentation.md) - [Next Module ⏭️](../04_searching-and-editing-assets/documentation.md)
