SELECT 
		 OpLineItem.[Id]
		,OpLineItem.[OpportunityId]
		,OpLineItem.[Name] as OppName
		,OpLineItem.[EmployeeQuantity__c],
      
	  	opp.[Id] as OppId,
		opp.[Name] as CompanyName,
		opp.[AccountId],
		opp.[StageName],
		opp.Primary_Product_Interest__c,
		opp.[Type]

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
   
RIGHT JOIN   [SFDCReplicaDB].[dbo].[opportunity] as opp
ON OpLineItem.[OpportunityId] = opp.[Id]

  WHERE OpLineItem.[Opportunity_Type__c] != 'NULL' AND
		OpLineItem.[Opportunity_Type__c] != 'Renewal' AND
		OpLineItem.[Opportunity_Type__c] != 'Bundle Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Payroll Split' AND
		OpLineItem.[Opportunity_Type__c] != 'Frequency Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Business Entity Change' AND
		OpLineItem.[Opportunity_Type__c] != 'Migration' AND
		OpLineItem.[Tier__c] = 'Tier 1' AND

		OpLineItem.Family__c = 'Dayforce' OR
		OpLineItem.Family__c = 'Tax' OR
		OpLineItem.Family__c = 'Ceridian Products' OR
		OpLineItem.Family__c = 'LifeWorks' OR
		OpLineItem.Family__c = 'Benefits' OR
		OpLineItem.Family__c = 'Global' OR
		OpLineItem.Family__c = 'HR Advisory Services' OR
		OpLineItem.Family__c = 'Time and Attendance' 
