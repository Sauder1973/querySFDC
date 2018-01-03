
/*
	OPPORTUNITY LINE ITEM DATA ------------------------------------------------------
	SQL QUERY FOR dbo.opportunity - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	MAY 15, 2017
	version 3.0

	COMBINES LINE ITEM FOR PREDICTION OR TRAINING DATA SET CREATION.

*/
SELECT 
		 lineItem.[OpportunityId]
		,opp.[StageName]
		,opp.[Add_On_Type__c]
		,opp.[Type]
		,opp.Primary_Product_Interest__c
		,lineItem.[Name]
		,lineItem.[Opportunity_Type__c]
		,lineItem.[Product2Id]
		,lineItem.[Product_Category__c]
		,lineItem.[Product_Family__c]
		,lineItem.[Product_Group__c]
		,lineItem.[Product_Name__c]
		,lineItem.[Product_Tier__c]
		,lineItem.[Product_Total__c]
		,lineItem.[ProductCode]
		,lineItem.[Calc_Discount__c]
		,lineItem.[Calc_Discount_No__c]
		,lineItem.[Charge_Type__c]
		,lineItem.[CreatedDate]
		,lineItem.[Option_Name__c]
        ,lineItem.[OptionID__c]


	    FROM [SFDCReplicaDB].[dbo].[opportunitylineitem] as lineItem


  	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  left JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON lineItem.[OpportunityId] = opp.Id 
		
  WHERE YEAR(opp.CloseDate) > 2013 
  and opp.Close_Reasons__c not like 'Duplicate Opportunity' 
  --AND (opp.StageName = 'Closed Lost' or opp.StageName = 'Closed Won') 
   					--AND opp.StageName not like 'Closed Lost'
					--AND opp.StageName not like 'Closed Won'
  and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1 
  and (opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
  and (opp.Primary_Product_Interest__c = 'Payroll' 
		or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' 
		or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
		or opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' 
		--or opp.Primary_Product_Interest__c = 'UK - Payroll' 
		or opp.Primary_Product_Interest__c = 'International Payroll Solutions'
	   )

  order by lineItem.[OpportunityId]



/** NOT USED



[Annualized_Price__c]
      ,[Apttus_Approval__Approval_Status__c]
      ,[Apttus_List_Price__c]
      ,[Calc_Discount__c]
      ,[Calc_Discount_No__c]
      ,[Charge_Type__c]
      ,[Commisionable__c]
      ,[CreatedById]

      ,[CurrencyIsoCode]
      ,[Current_Family__c]
      ,[Current_Group__c]
      ,[Current_Price_Book__c]
      ,[Current_Product_Manager__c]
      ,[Dayforce_Gross_ACV__c]
      ,[Description]
      ,[EmployeeQuantity__c]
      ,[Extended_List_Price__c]
      ,[Family__c]
      ,[French_Product_Name__c]
      ,[Frequency__c]
      ,[Group__c]
      ,[Id]
      ,[Implementation_Revenue_Group__c]
      ,[IsClock__c]
      ,[IsDeleted]
      ,[IsOption__c]
      ,[LastModifiedById]
      ,[LastModifiedDate]
      ,[LineItemID_del__c]
      ,[List_Price_Formula__c]
      ,[ListPrice]
      ,[Miscellaneous_Revenue_Type__c]

      ,[Net_Adjustment__c]

      ,[Option_Name__c]
      ,[OptionID__c]
      ,[Price_Type__c]
      ,[PricebookEntryId]
      ,[PriceChargeTypeFormula__c]
      ,[PriceTypeFormula__c]

      ,[Quantity]
      ,[Recurring_PEPM_Revenue_Group__c]
      ,[Revenue_Group__c]
      ,[Revenue_Type__c]
      ,[RevenueGroupFormula__c]
      ,[RevenueTypeFormula__c]
      ,[ServiceDate]
      ,[SortOrder]
      ,[SystemModstamp]
      ,[Tier__c]
      ,[Total_Gross_ACV__c]
      ,[TotalPrice]
      ,[UK_Domestic_Amount__c]
      ,[UK_International_Amount__c]
      ,[UnitPrice]
	  **/