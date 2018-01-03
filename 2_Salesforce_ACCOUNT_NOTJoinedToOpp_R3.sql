
/*
	ACCOUNT DATA -----------------------------------------------------------------------------------------------------
	SQL QUERY FOR dbo.account - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Dec 12, 2017
	version 2.0
	NOT JOINED TO OPPORTUNITY
*/


SELECT 
	   acc.[Id],
	   acc.[OwnerId],
	   acc.[ParentId],
	   acc.[Most_Recent_Closed_Opportunity__c],
	   acc.[Segment__c],		/** Segment Code	**/
	   acc.[Segment_f2__c],	/** Combine f2 and f for a full sement	**/
	   acc.[Segment_f__c],
	   acc.[Sales_Primary__c],
	   acc.[Open_Opportunities__c], /** NOT SURE WHAT THIS DOES	**/

	/** FINANCIAL SYSTEMS ID DETAILS **/
		acc.[Finance_ID_PR_HR__c],
		acc.[Finance_ID_Tax__c],
		acc.[Finance_ID_Time_WFM__c],

	/** ACCOUNT DETAILS		**/
		acc.[Name],
		acc.[Named_Account__c], /** WHAT IS THIS FLAG DO?	**/
		acc.[Legal_Business_Name__c],
		acc.[Legal_Name__c],
		acc.[NumberOfEmployees],
		acc.[Out_of_Business__c],
		acc.[Out_of_Business_Indicator_Data_com__c],
		/**acc.[Actual_Number_of_Employees_Location__c],	**/
		acc.[Ownership],
		acc.[Multinational__c],
		acc.[Year_Established__c],

	/**ADDRESS	**/

		acc.[Site],

		acc.[Billing_Detail__c], /** WHAT IS THIS?	**/
		acc.[BillingCity],
		acc.[BillingCountry],
		acc.[BillingCountryCode],
		acc.[BillingPostalCode],
		acc.[BillingStateCode],
		acc.[BillingZipCode__c],

		acc.[County_Name_US_Only__c],

		acc.[ShippingCity],
		acc.[ShippingCountry],
		acc.[ShippingCountryCode],
		acc.[ShippingPostalCode],
		acc.[ShippingStateCode],
		acc.[Zip_Lookup__c],


	/**INDUSTRY STATS	**/
		acc.[NaicsCode],
		acc.[NaicsDesc],
		acc.[Override_Industry__c],
		acc.[Override_Industry_Flag__c],
		acc.[Override_Sub_Industry__c],
		acc.[Sic],
		acc.[SicDesc],
		acc.[Primary_SIC_Code_Description__c],
		acc.[Industry],
		acc.[Industry_is_Override__c],

		acc.[DandbCompanyId],
		acc.[DunsNumber],
		acc.[Data_com_Industry__c],	/**SAME AS INDUSTRY - USE IF [Industry] IS BLANK	**/
		
		/**acc.[Data_com_Industry_Update__c], **/
		acc.[Jigsaw],
		acc.[JigsawCompanyId],
		acc.[Equifax_Universal_ID__c],
		/**acc.[Total_Employees_Equifax__c], **/

/** EXTERNAL ACCOUNT DETAILS	**/
		acc.[Customer_Status__c],
		acc.[Days_since_last_closed_Opportunity__c],

	/** CERIDIAN RESOURCES	**/
		acc.[Active_Owner_ID__c],
		acc.[Active_Owner_Name__c],
		acc.[Account_Owner_By_Trigger__c],



	/** ADDITIONAL ACCOUNT OWNERSHIP	**/
		acc.[RPO_Account_Owner_Manager__c],
		acc.[RPO_Acct_Owner_Role__c],
		acc.[RPO_Owner_Department__c],
		acc.[RPO_Owner_Division__c],
		acc.[Business_Development_Executive__c],
		acc.[BDE_Name__c],
		/**acc.[Customer_Success_Manager__c],**/
		acc.[CSM_Name__c],
		acc.[CSM_User__c],
		/**acc.[Business_Development_Executive__c],**/
		/**acc.[Solutions_Consultant__c],**/
			
	/**CERIDIAN PRODUCTS AND BUSINESS DATA	**/
		acc.[Active_Contacts__c],
		acc.[Annual_Repetitive_Revenue__c],
		acc.[AnnualRevenue],
		acc.[CurrencyIsoCode],
		acc.[Total_Open_Opps__c],	/**NOT SURE WHAT THIS DOES**/
		acc.[Total_Sales_Estimated_In_Thousands__c],


/** PRODUCT INFORMATION	**/

	/** MARKETING INTELLIGENCE	**/
  		acc.[Has_Dayforce__c],
		acc.[Payroll_Product__c],
		acc.[Payroll_Vendor__c],

		acc.[WFM_Product1__c],
		acc.[WFM_Vendor1__c],

		acc.[HR_Product__c],
		acc.[HR_Vendor__c],

		acc.[HR_Payroll__c],
		acc.[Benefits__c],

	/** PRIOR AND CURRENT PRODUCTS		PICK THIS UP IN ANOTHER QUERY TO REDUCE THE COLUMNS 	

		acc.[Current_Financials__c],
		acc.[Current_HR__c],
		acc.[Current_PR__c],
		acc.[Current_Talent__c],
		acc.[Current_Tax__c],
		acc.[Current_Time_WFM__c],

		acc.[Prior_Payroll_Product__c],
		acc.[Prior_Payroll_Vendor__c],
		acc.[Prior_WFM_Product1__c],
		acc.[Prior_WFM_Vendor1__c],
		acc.[Prior_HR_Product__c],
		acc.[Prior_HR_Vendor__c],

	**/
	
	/** ACCOUNT DATA TRAFFIC	**/
		acc.[Last_Profiled_By__c],
		acc.[Last_Profiling_Date__c],
		acc.[Last_Touch_By_Owner__c],

/** RECORD DATES OF SALESFORCE.COM ACTIVITY	**/
		acc.[CreatedById],
		acc.[CreatedDate],
		acc.[LastActivityDate],
		acc.[LastModifiedById],
		acc.[LastModifiedDate],
		acc.[Last_Meaningful_Activity__c]


/**  AVAILABLE BUT NOT NEEDED:
	acc.[Account_Zip_for_Trigger_Match__c],
	acc.[Zip_Lookup__c],

	/** NOT SURE WHAT THIS DOES	**/
	acc.[Authority__c],	
	acc.[Background_Screening_Vendor__c],
	acc.[CPCount__c],  /** NOT SURE WHAT THIS DOES **/
	acc.[Exclude_from_territory_management_custom__c],
	acc.[Operating_Status__c],	/**	SEEMS TO BE ALWAYS 'Open'**/
	acc.[PEPM_calc__c],
	acc.[PHCount__c],
**/

  FROM [SFDCReplicaDB].[dbo].[account] as acc