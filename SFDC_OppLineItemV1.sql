/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
		 OpLineItem.[Id]
		,OpLineItem.[OpportunityId]
		,OpLineItem.[Name]
		,OpLineItem.[EmployeeQuantity__c]
      
		,OpLineItem.[OptionID__c]
		,OpLineItem.[Option_Name__c]
		,OpLineItem.[Opportunity_Type__c]
		,OpLineItem.[Product_Family__c]
		,OpLineItem.[Current_Family__c]

		,OpLineItem.[Product_Group__c]
		,OpLineItem.[Product_Name__c]
		,OpLineItem.[Product_Tier__c]
		,OpLineItem.[Tier__c]
		,OpLineItem.[Family__c]
		,OpLineItem.[Group__c]
		,OpLineItem.[Current_Group__c]
		,OpLineItem.[Description]
		,OpLineItem.[ProductCode]
		,OpLineItem.[Miscellaneous_Revenue_Type__c]
		,OpLineItem.[Product_Category__c]
		,OpLineItem.[CreatedDate]
      
		/****** PRICE FOCUS  ******/	  
		,OpLineItem.[Charge_Type__c]
		,OpLineItem.[CreatedById]
		,OpLineItem.[CurrencyIsoCode]
		,OpLineItem.[Extended_List_Price__c]
		,OpLineItem.[Frequency__c]
		,OpLineItem.[LastModifiedById]
		,OpLineItem.[LastModifiedDate]
		,OpLineItem.[LineItemID_del__c]
		,OpLineItem.[List_Price_Formula__c]
		,OpLineItem.[ListPrice]
		,OpLineItem.[Net_Adjustment__c]
		,OpLineItem.[Price_Type__c]
		,OpLineItem.[PricebookEntryId]
		,OpLineItem.[PriceChargeTypeFormula__c]
		,OpLineItem.[PriceTypeFormula__c]
		,OpLineItem.[Product2Id]
		,OpLineItem.[Product_Total__c]
		,OpLineItem.[Quantity]
		,OpLineItem.[Total_Gross_ACV__c]
		,OpLineItem.[TotalPrice]
		,OpLineItem.[UnitPrice]
		,OpLineItem.[Apttus_List_Price__c]
		,OpLineItem.[Calc_Discount__c]
		,OpLineItem.[Calc_Discount_No__c]
		,OpLineItem.[SystemModstamp]


  FROM [SFDCReplicaDB].[dbo].[opportunitylineitem] AS OpLineItem
  /****** WHERE REPLACE  ******/	

  WHERE OpLineItem.[Opportunity_Type__c] != 'NULL' AND
		OpLineItem.[Opportunity_Type__c] != 'Renewal' AND
		OpLineItem.[Opportunity_Type__c] != 'Bundle Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Payroll Split' AND
		OpLineItem.[Opportunity_Type__c] != 'Frequency Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Business Entity Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Migration' AND

		OpLineItem.Family__c = 'Dayforce' OR
		OpLineItem.Family__c = 'Tax' OR
		OpLineItem.Family__c = 'Ceridian Products' OR
		OpLineItem.Family__c = 'LifeWorks' OR
		OpLineItem.Family__c = 'Benefits' OR
		OpLineItem.Family__c = 'Global' OR
		OpLineItem.Family__c = 'HR Advisory Services' OR
		OpLineItem.Family__c = 'Time and Attendance' 




  
  /***
  SELECT 
  OpLineItem.[Opportunity_Type__c],
  COUNT(OpLineItem.[Opportunity_Type__c]) AS FREQ
  
  FROM [SFDCReplicaDB].[dbo].[opportunitylineitem] AS OpLineItem 
  GROUP BY OpLineItem.[Opportunity_Type__c]
  ORDER BY FREQ

  ***/
  /***
  SELECT 
  OpLineItem.Family__c,
  COUNT(OpLineItem.Family__c) AS FREQ
  
  FROM [SFDCReplicaDB].[dbo].[opportunitylineitem] AS OpLineItem 
  GROUP BY OpLineItem.Family__c
  ORDER BY FREQ
  ***/