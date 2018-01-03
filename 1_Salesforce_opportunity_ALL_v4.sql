
/*
	OPPORTUNITY DATA -------------------------------------------------------------------------
	SQL QUERY FOR dbo.opportunity - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Aug 02, 2017
	version 3.0
*/


SELECT

/** INTERNAL ACCOUNT DETAILS	**/ 

		opp.[Id],
		opp.[Name],
		opp.[AccountId],
		
		opp.[Opportunity__c],
		opp.[StageName],
		opp.[Add_On_Type__c],
		opp.Primary_Product_Interest__c,
		opp.[Type],
		opp.[Targeted_Opportunity__c],



	/** ACCOUNT DETAILS	**/

		opp.Customer_Status__c,


	/** CERIDIAN AND SALES PERSON SPECIFICS	**/
		opp.[Owner_Country__c],
		opp.[Owner_Country_Div__c],
		opp.[Owner_Dept__c],
		opp.[Owner_Div__c],
		opp.[Owner_Role__c],
		opp.[OwnerId],

		opp.[AVPForm__c],
		opp.[BDE__c],
		opp.[LDR__c],
        opp.[LDR_User__c],

		opp.[Opp_Owner_Department__c],
		opp.[Opp_Owner_Division__c],
		opp.[OppCount__c],	/** SEEMS TO BE 1 - MAY NOT BE REQUIRED  **/
		opp.[Solution_Consultant_1__c],
        opp.[Solution_Consultant_2__c],

/** PURCHASE SPECIFICS	**/

	/** OPPPORTUNITY SPECIFICS	**/
		opp.[Ballpark_Figure_Quoted__c],

	/** CURRENT SITUTATION	**/
		opp.[HasDayforce__c],
		opp.[HasOpportunityLineItem],
		/**opp.[Amount],**/
		opp.[Total_Commissionable_ACV__c],
		opp.[Total_Number_Of_Employees__c],

	/** Account Value or Amount **/
		opp.[Amount] as AmountOLD , /** NET  **/
		opp.[Dayforce_Gross_ACV__c], /** ONLY DAYFORCE ACV **/
		opp.[Gross_ACV__c] as Amount,  /** USE **/
		opp.[Total_Commissionable_ACV__c],
		opp.[Recurring_Total__c],
		opp.[One_Time_Total__c],
		opp.[Dayforce_Gross_plus_Managed_Gross__c],
		opp.[Managed_Gross__c],

	/** CLOSE DETAILS	**/
		opp.[Close_Day__c],
		opp.[Close_Opportunity__c],
		opp.[Close_Reasons__c],
		opp.[Lost_To__c],
		opp.[Close_Comments__c],

/** MARKETING SPECIFICS 	**/

		opp.[LeadSource],
		opp.[CampaignId],

	/** ACCOUNT DATA TRAFFIC  	**/
		opp.[CreatedById],
		opp.[CreatedDate],
		opp.[CloseDate],

	/** FORECAST CATEGORY DETAILS **/
	    opp.[ForecastCategory],
		opp.[ForecastCategoryName],

	/** OPPORTUNITY STAGE TIMES	**/

		opp.[Stage_0_1_Change_Date__c],
		opp.[Stage_0_Duration__c],
		opp.[Stage_1_2_Change_Date__c],
		opp.[Stage_1_Duration__c],
		opp.[Stage_2_3_Change_Date__c],
		opp.[Stage_2_Duration__c],
		opp.[Stage_3_4_Change_Date__c],
		opp.[Stage_3_Duration__c],
		opp.[Stage_4_5_Change_Date__c],
		opp.[Stage_4_Duration__c],
		opp.[Stage_5_6_Change_Date__c],
		opp.[Stage_5_Duration__c],
		opp.[Stage_6_7_Change_Date__c],
		opp.[Stage_6_Duration__c],
		opp.[Stage_7_Duration__c],
		opp.[Stage_Comments__c]
	



/**- RECORD DATES OF SALESFORCE.COM ACTIVITY **/

  FROM [SFDCReplicaDB].[dbo].[opportunity] as opp
  WHERE YEAR(CloseDate) > 2013 
		
  order by       [AccountId], [CreatedDate]