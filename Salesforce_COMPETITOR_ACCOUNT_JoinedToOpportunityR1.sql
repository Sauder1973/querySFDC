
/*
	COMPETITOR ACCOUNT DATA ------------------------------------------------------
	SQL QUERY FOR dbo.account - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	FEB 10, 2017
	version 1.0
*/


SELECT 
--top (100) 


-- INTERNAL ACCOUNT DETAILS	 
		--OPPORTUNITY TABLE DETAILS

	--	opp.[Id],
	--	opp.[Name],


	DISTINCT
	   acc.[Id],
	   acc.[OwnerId],
	   acc.[ParentId],
	   acc.[Most_Recent_Closed_Opportunity__c],
	   acc.[Segment_f2__c],	-- Combine f2 and f for a full sement
	   acc.[Segment_f__c],
	   acc.[Sales_Primary__c],
	   acc.[Open_Opportunities__c], -- NOT SURE WHAT THIS DOES

	-- ACCOUNT DETAILS
		acc.[Name],
		acc.[Named_Account__c], -- WHAT IS THIS FLAG DO?
--COMPETITIVE DATA
		--acc.[Product_and_Providers_Rollup_DEPRECATE__c],
		CAST(acc.[Competitive_Intelligence__c]AS varchar(max)) AS Competitive_Intelligence__c,
		acc.[Competitor__c],
		CAST(acc.[Competitor_Collateral__c]AS varchar(max)) AS Competitor_Collateral,
		CAST(acc.[Top_Competitors__c]AS varchar(max)) AS Top_Competitors,
		acc.[Background_Screening_Vendor__c],
		CAST(acc.[Market_Insights__c] AS varchar(max)) AS MarketInsights,
		CAST(acc.[Insights_Attendee__c] AS varchar(max)) AS Insights_Attendee,
		CAST(acc.[Dayforce_Modules__c] AS varchar(max)) AS Dayforce_Modules__c,
		CAST(acc.[Referenceable_Products__c] AS varchar(max)) AS Referenceable_Products,
		acc.[Vendor__c],
		acc.[Competitor_Exists__c],
	
	--ADDED MAY 16 FOR COMPETITOR ANALYSIS
		acc.[NumberOfEmployees],
		acc.[Year_Established__c],
		acc.[Site],
		acc.[BillingCountryCode],
		acc.[BillingStateCode],
		acc.[BillingZipCode__c],


--FINANCIALS
		acc.[Financials_Product__c],
		acc.[Financials_Vendor__c],
		acc.[Current_Financials__c],
		acc.[Prior_Financials_Product__c],
		acc.[Prior_Financials_Vendor__c],
--BENEFITS
		acc.[Ben_Admin_Product__c],
		acc.[Ben_Admin_Vendor__c],
		acc.[Prior_Ben_Admin_Product__c],
		acc.[Prior_Ben_Admin_Vendor__c],
--HR
		acc.[HR_Product__c],
		acc.[HR_Vendor__c],
		acc.[Current_HR__c],
		acc.[Prior_HR_Product__c],
		acc.[Prior_HR_Vendor__c],
--IPS
		acc.[IPS_Product__c],
		acc.[IPS_Vendor__c],
		acc.[Prior_IPS_Product__c],
		acc.[Prior_IPS_Vendor__c],
--LW
		acc.[Lifeworks__c],
		acc.[Lifeworks_AE_DEPRECATED__c],
		acc.[LifeWorks_Broker__c],

		acc.[Prior_LW_Product1__c],
		acc.[Prior_LW_Product2__c],
		acc.[Prior_LW_Product3__c],
		acc.[Prior_LW_Vendor1__c],
		acc.[Prior_LW_Vendor2__c],
		acc.[Prior_LW_Vendor3__c],
		acc.[LW_Product1_DEPRECATED__c],
		acc.[LW_Product2_DEPRECATED__c],
		acc.[LW_Product3_DEPRECATED__c],
		acc.[LW_Vendor1_DEPRECATED__c],
		acc.[LW_Vendor2_DEPRECATED__c],
		acc.[LW_Vendor3_DEPRECATED__c],

--LEARNING
		acc.[Learning_Vendor__c],
		acc.[Prior_Learning_Vendor__c],

--PAYROLL
		acc.[Payroll_Product__c],
		acc.[Payroll_Vendor__c],
		acc.[Compensation_Vendor__c],
		acc.[Current_PR__c],
		acc.[Prior_Payroll_Product__c],
		acc.[Prior_Payroll_Vendor__c],
		acc.[Prior_Compensation_Vendor__c],
--PERFORMANCE				
		acc.[Performance_Vendor__c],
		acc.[Prior_Performance_Vendor__c],

--REIMBURSEMENT
		acc.[Reimbursement_Product__c],
		acc.[Reimbursement_Vendor__c],
		acc.[Prior_Reimbursement_Product__c],
		acc.[Prior_Reimbursement_Vendor__c],

--SUCCESSION
		acc.[Succession_Vendor__c],
		acc.[Prior_Succession_Vendor__c],
--WFM				
		acc.[WFM_Product1__c],
		acc.[WFM_Product2__c],
		acc.[WFM_Product3__c],
		acc.[WFM_Vendor1__c],
		acc.[WFM_Vendor2__c],
		acc.[WFM_Vendor3__c],
		acc.[Current_Time_WFM__c],      
		acc.[Prior_WFM_Product1__c],
		acc.[Prior_WFM_Product2__c],
		acc.[Prior_WFM_Product3__c],
		acc.[Prior_WFM_Vendor1__c],
		acc.[Prior_WFM_Vendor2__c],
		acc.[Prior_WFM_Vendor3__c],

--RECRUITING
		acc.[Recruiting_Product__c],
		acc.[Recruiting_Vendor__c],
		acc.[Current_Talent__c],
		acc.[Prior_Recruiting_Product__c],
		acc.[Prior_Recruiting_Vendor__c],
		acc.[Prior_Background_Screening_Vendor__c],
-- COBRA
		acc.[COBRA_Product__c],
		acc.[COBRA_Vendor__c],
		acc.[Prior_COBRA_Product__c],
		acc.[Prior_COBRA_Vendor__c],
-- TAX
		acc.[Tax_Product__c],
		acc.[Tax_Vendor__c],
		acc.[Current_Tax__c],
		acc.[Prior_Tax_Product__c],
		acc.[Prior_Tax_Vendor__c],
--OTHER PRODUCTS
		CAST(acc.[Other_HCM_Providers__c]AS varchar(max)) AS Other_HCM_Providers,
		acc.[Other_Product__c],
		acc.[Other_Vendor__c],
		acc.[Prior_Other_Product__c],
		acc.[Prior_Other_Vendor__c]

  FROM [SFDCReplicaDB].[dbo].[account] as acc


  	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  left JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON acc.Id = opp.AccountID 
	


  WHERE YEAR(opp.CloseDate) > 2013 and opp.Close_Reasons__c not like 'Duplicate Opportunity' AND (opp.StageName = 'Closed Lost' or opp.StageName = 'Closed Won') and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1 
  and 		(opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
  and (opp.Primary_Product_Interest__c = 'Payroll' or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
			or opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' or opp.Primary_Product_Interest__c = 'UK - Payroll' or opp.Primary_Product_Interest__c = 'International Payroll Solutions'
			)
  order by       acc.[Id]