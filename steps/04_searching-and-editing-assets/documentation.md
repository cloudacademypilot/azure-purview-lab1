# Searching and Editing Assets

Once sources have been registered and scanned, the underlying data catalog will begin to populate with assets that represent real-world objects (e.g. a table in an Azure SQL Database, a Power BI report, etc.) The surfacing of these assets via Microsoft Purview's search experience helps empower data consumers to find data assets that matters to them.

In this module, you'll learn to edit technical metadata by adding definitions and classifications to data attributes, such as tables and columns. You'll learn to assign technical ownership by linking technical attributes to contact persons. You'll learn to use classifications to mark data. All these activities, such as categorizing data, will help you to better manage your data.

## Prerequisites
*	An Azure account with an active subscription.
*	An Azure Purview account (covered in Create an Azure Purview Account Demo) 
*	Relevant data sources are registered and scanned in Azure Purview and underlying data catalog has been populated. 

## Objectives
* Search the catalog by keyword.
* Browse the catalog by source.
* Update an existing asset.
* Perform a bulk edit operation.

## 1. Search Catalog
1. Open the **Microsoft Purview Governance Portal**, navigate to **Data Catalog** > **Home**, type the asterisk character (**\***) into the search bar, and hit **Enter**.

  ![search](./assets/5-1_search.jpg "search")
  
2. Filter the search results by **Classification** (e.g. **Country/Region**) and click the hyperlinked asset name to view the details (e.g. `QueriesByState`).

  ![filter](./assets/5-2_filter.jpg "filter")
  

## 2. Update an Asset
1. Click **Edit** to modify the asset details.

    ![edit](./assets/5-3_edit.jpg "edit")
    
2. Update the **Description** by copying and pasting the sample text below.

    ```text
    This dataset was curated from the Bing search logs (desktop users only) over the period of Jan 1st, 2020 – (Current Month - 1). Only searches that were issued many times by multiple users were included. The dataset includes queries from all over the world that had an intent related to the Coronavirus or Covid-19. In some cases this intent is explicit in the query itself (e.g., “Coronavirus updates Seattle”), in other cases it is implicit , e.g. “Shelter in place”
    ```
    
3. Assign a **Classification** (e.g. `World Cities`) using the drop-down menu.

    ![overview](./assets/5-4_overview.jpg "overview")
    
4. Navigate to the **Schema** tab and update the **Asset description** for each column using the sample text below.

    ![schema](./assets/5-5_schema.jpg "schema")
    
    **Date**

    ```text
    Date on which the query was issued.
    ```

    **Query**

    ```text
    The actual search query issued by user(s).
    ```

    **IsImplicitIntent**

    ```text
    True if query did not mention covid or coronavirus or sarsncov2 (e.g, “Shelter in place”). False otherwise.
    ```

    **State**

    ```text
    State from where the query was issued.
    ```

    **Country**
    
    ```text
    Country from where the query was issued.
    ```

    **PopularityScore**

    ```text
    Value between 1 and 100 inclusive. 1 indicates least popular query on the day/State/Country with Coronavirus intent, and 100 indicates the most popular query for the same geography on the same day.
    ```
    
5. Navigate to the **Contacts** tab and set someone within your organization to be an **Expert** and an **Owner**. Click **Save**.
  
    ![contacts](./assets/5-6_contacts.jpg "contacts")
    
6. To see other assets within the same path, navigate to the **Related** tab.

    ![related](./assets/5-7_related.jpg "related")
    
 
## 3. Browse Assets

While the search experience is ideal for keyword based discovery, the Microsoft Purview Governance Portal allows alternate methods of browsing assets (i.e. by collection OR by source type).

1. Open the **Microsoft Purview Governance Portal**, click on  **Browse assets** in the homepage.

    ![browse](./assets/5-8_browse.jpg "browse")
    
2. On the **Browse asset page**, select **By collection pivot**. Collections are listed with hierarchical table view. To further explore assets in each collection, select the corresponding collection name.

    ![collection](./assets/5-9_by_collection.jpg "collection")

3. On the next page, the search results of the assets under selected collection will show up. You can narrow the results by selecting the filters. Or you can see the assets under other collections by selecting the sub/related collection names.
    
    ![viewsources](./assets/5-10_view_sources.jpg "viewsources")
    
4. Switch to the **By source type** tab and select a **source** (e.g. `Azure Data Lake Storage Gen2`).

    ![sourcetype](./assets/5-11_by_source_type.jpg "sourcetype")
    
5. Select an **account** (e.g. `pvlab{randomId}adls`). 

   ![adls](./assets/5-12_select_adls.jpg "adls") 

6. Select a **container** (e.g. `raw`).

    ![raw](./assets/5-13_raw.jpg "raw")
    
## 4. Bulk Edit
Microsoft Purview allows us to perform certain operations (add/replace/remove) against a subset of attributes (Expert, Owner, Term, Classification) in bulk directly within the Microsoft Purview Governance Portal.

1. Open the **Microsoft Purview Governance Portal**, navigate to **Data Catalog** > **Home**, type the asterisk character (**\***) into the search bar, and hit **Enter**.

   ![bulk](./assets/5-14_bulk.jpg "bulk") 

2. Hover your mouse over an item in the list to reveal the checkbox on the right-hand side. Select five items and click **View selected**.

    ![select](./assets/5-15_select.jpg "select")

3. Click **Bulk edit**.

    ![bulkedit](./assets/5-16_bulk_edit.jpg "bulkedit")

4. Set the **Attribute** to `Owner`, set **Operation** to `Add`, select one or more users in your organization, and click **Apply**.

    ![attribute](./assets/5-17_attribute.jpg "attribute")

5. Click **Deselect all and close**.

    ![deselect](./assets/5-18_deselect.jpg "deselect")


  [ ⏮️ Previous Module](../03_registering-and-scanning-an-on-premises-sql-server-instance/documentation.md) 
