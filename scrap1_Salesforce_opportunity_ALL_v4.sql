
SELECT

/** INTERNAL ACCOUNT DETAILS	**/ 

		opp.[Id],
		opp.[Name],
		opp.[AccountId],
		
		opp.[StageName],
		opp.Primary_Product_Interest__c,
		opp.[Type],
	
	/** ACCOUNT DETAILS	**/

		opp.Customer_Status__c,


	/** CERIDIAN AND SALES PERSON SPECIFICS	**/
		opp.[Owner_Country__c],
		opp.[Owner_Country_Div__c],
		
	/** CURRENT SITUTATION	**/
		opp.[HasDayforce__c],
		opp.[HasOpportunityLineItem],
		/**opp.[Amount],**/
	
	/** Account Value or Amount **/
		opp.[Gross_ACV__c] as Amount,  /** USE **/
	

/** MARKETING SPECIFICS 	**/

		opp.[LeadSource],
		opp.[CampaignId],

	/** ACCOUNT DATA TRAFFIC  	**/
		opp.[CreatedById],
		opp.[CreatedDate],
		opp.[CloseDate],


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
  FROM [SFDCReplicaDB].[dbo].[opportunity] as opp


