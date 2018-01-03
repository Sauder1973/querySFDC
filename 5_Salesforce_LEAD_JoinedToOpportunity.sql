
/*
	LEADS DATA DATA ------------------------------------------------------
	SQL QUERY FOR dbo.leads - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	March 27, 2017
	version 2.0

	NEED TO REMOVE COMMENT FOR STAGE NAME - PREDICT AND TRAIN DUE TO SIZE OF DATA.


*/
SELECT 
	--DISTINCT
		CAST(opp.[AccountId] AS varchar(max)) AS OppAcctId
		,CAST(opp.CampaignId AS varchar(max)) AS OppCampaignId
		,CAST(opp.[StageName]AS varchar(max)) AS OppStageName

		,CAST(lead.[Id] AS varchar(max)) as LeadId  --Used In Campaign Member Table as well - 00Qi000....

		,lead.[Company]
		,lead.[Name]
		,lead.[NumberOfEmployees]

		,lead.[LeadSource]
		,lead.[Named_on_Convert__c]	-- WHAT DOES THIS MEAN?
		,lead.[Lead_Age__c]


		,lead.[FSA__c]
		,lead.[Email]
		,lead.[Phone]
		,lead.[PostalCode]

		,lead.[Year_Created__c]
		,lead.[Title]
		,lead.[Industry]

		,lead.[Job_Level__c]
		,lead.[Source_Type__c]

		,lead.[City]
		,lead.[Country]
		,lead.[CurrencyIsoCode]
		,lead.[State]
		,lead.[LeadZipCode__c]

		,lead.[Primary_Product_Interest__c]
		,lead.[Department__c]
		,CAST(lead.[Description] AS varchar(max))
		,lead.[Further_Information__c]


		,lead.[Referring_Partner__c]



		-- CAMPAIGN DETAILS
		,lead.[Campaign__c]

		,lead.[Campaign_Id__c]
		,lead.[Campaign_Association__c]

		,lead.[Campaign_Member_Further_Information__c]
		,lead.[Campaign_Member_Rating__c]

		--CONVERTED DETAILS
		,lead.[IsConverted]
		,lead.[ConvertedAccountId]
		,lead.[ConvertedContactId]
		,lead.[ConvertedOpportunityId]
		,lead.[ConvertedDate]


		-- NOT SURE IF THIS IS IMPORTANT
		,lead.[Acceptance_Date_Time__c]
		,lead.[Acceptance_Time__c]
		,lead.[Active_Service_Lead__c]


		,lead.[Lead_Owner_Country_Reporting_Only__c]
		,lead.[Lead_Owner_Currency__c]
		,lead.[Lead_Owner_Department__c]


		,lead.[Owner_Country__c]
		,lead.[Owner_Country_Div__c]
		,lead.[Owner_Dept__c]
		,lead.[Owner_Div__c]

		,lead.[OwnerId]

		,lead.[Payroll_Number__c]



			  
		,lead.[Referral__c]
		,lead.[Referral_Submit_Date__c]
		,lead.[Referred_By__c]
		,lead.[Referred_By_Department__c]
		,lead.[Referred_By_Division__c]
		,lead.[Referred_By_Email_for_Cross_Sell__c]
		,lead.[Referred_By_Phone__c]
		,lead.[Referred_By_Title__c]


		,lead.[RPO_Lead_Owner_Active__c]
		,lead.[RPO_Lead_Owner_Manager_Email__c]



		-- SYSTEM ACTIVITIES

		,lead.[SystemModstamp]
		,lead.[CreatedById]
		,lead.[CreatedDate]
		,CAST(lead.[LastModifiedById] AS varchar(max))
		,lead.[LastModifiedDate]


			



  FROM [SFDCReplicaDB].[dbo].[Lead] as lead
  
-- REQUIRED TABLE JOINS
	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  LEFT JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON opp.AccountID = lead.ConvertedAccountId
			
			WHERE (opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
			AND YEAR(opp.CloseDate) > 2013 
			and opp.Close_Reasons__c not like 'Duplicate Opportunity' 
			
			--AND (opp.StageName = 'Closed Lost' or opp.StageName = 'Closed Won')		-- TRAINING
			AND (opp.StageName NOT LIKE 'Closed Lost' or opp.StageName NOT LIKE 'Closed Won')   --PREDICTION
			
			and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1
			AND  (opp.Primary_Product_Interest__c = 'Payroll' 
				or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' 
				or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
				OR opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' 
				--or opp.Primary_Product_Interest__c = 'UK - Payroll' 
				or opp.Primary_Product_Interest__c = 'International Payroll Solutions')

ORDER BY CAST(opp.[AccountId] AS varchar(max))





		-- QUALIFYING AND BANT STUFF
				--,lead.[Are_you_working_with_an_approved_budget__c]
				--,lead.[Budget__c]
				--,lead.[Ballpark_Figure_Quoted__c]
				--,lead.[Authority__c]
				--,lead.[Authorization__c]
				--,lead.[Level_Of_Authority__c]
				--,lead.[Compelling_Event__c]
				--,lead.[Clients_Decision_Driver__c]
				--,lead.[Need__c]
				--,lead.[Business_Pain__c]
				--,lead.[Business_Pain_Description__c]
				--,lead.[Timeline_for_decision__c]
				--,lead.[Timing__c]
				--,lead.[BANT_Score__c]
				--,lead.[Rating]  - IS THIS USED?
		 



		-- NOT USED
		--,lead.[Named_Account__c]
		--,lead.[DandbCompanyId]
		--,lead.[CompanyDunsNumber]

		--,lead.[AnnualRevenue]
		--,lead.[Assign_using_active_assignment_rule__c]
		--,lead.[Lead_Created__c] -- NOT SURE IF THIS IS NECESSARY
		--,lead.[FirstName]
		--,lead.[LastName]
		--,lead.[StateCode]
		--,lead.[ActivelyEvaluating__c]
		--,lead.[Administrator_Use_Only__c]
		--,lead.[AdvocateHub__Referral_Source__c]
		--,lead.[Break_Workflows_Before_Convert__c]
		--,lead.[Convertible__c]--always true
		--,lead.[CASL_Marketing_Permission_Granted__c]
		--,lead.[CASL_Subscribe_Date__c]
		--,lead.[CASL_Subscribe_Method__c]
		--,lead.[CASL_Subscribe_Source__c]
		--,lead.[CIBC_Portfolio_Number__c]
		--,lead.[CleanStatus]
		--,lead.[Assign_to_Lead_Owner__c]
		--,lead.[Assign_to_Lead_Queue__c]
		--,lead.[Campaign_ID_Formula__c]
		--,lead.[CountryCode]
		--,lead.[CountryName__c]
		--,lead.[Create_Opportunity_on_Conversion__c]
		--,lead.[Email_Unsubscribe__c]
		--,lead.[EmailBouncedDate]
		--,lead.[EmailBouncedReason]
		--,lead.[Engage__c]

		-- CURRENT SCENARIO  --always null
		--,lead.[Current_Method_of_Payroll__c]
		--,lead.[Current_Payroll_Vendor__c]
		--,lead.[Current_TimeAttendance_Vendor__c]
		--,lead.[Current_Vendor_HR__c]
		--,lead.[Contact__c]
		--,lead.[Web_Referrer_Account__c]
		--,lead.[Web_Referrer_Business_Unit__c]
		--,lead.[Web_Referrer_Email__c]
		--,lead.[Web_Referrer_Employee_Number__c]
		--,lead.[Web_Referrer_Manager__c]
		--,lead.[Web_Referrer_Name__c]
		--,lead.[Web_Referrer_Phone__c]
		--,lead.[Website]
		--,lead.[WorkflowTriggerDate__c]
		--,lead.[Writing_Number__c]

		 --     ,lead.[Salutation]
		 --     ,lead.[Send_Thank_You__c]

		   --   ,lead.[StateCode__c]
		   --   ,lead.[Status]
		   --   ,lead.[Status_Reasons__c]
		  --    ,lead.[Street]

		 --     ,lead.[TempOwnerID__c]


		   --   ,lead.[Transit_TEST__c]
			  --   ,lead.[InterCountry_Locations__c]

			--  ,lead.[IsDeleted]
			  --    ,lead.[Email_field_for_alerts__c]

		--ELOQUA DETAILS
		--,lead.[Eloqua_Email_Sync_Status__c]
		--,lead.[Eloqua_ID__c]
		--,lead.[Eloqua_Lead_Rating__c]
		--,lead.[Eloqua_Lead_Score__c]
		--,lead.[Eloqua_Ran_Assignment_Rules__c]
		--JIG SAW AND DATA.COM FIELDS
		--,lead.[Jigsaw]
		--,lead.[JigsawContactId]
		--,lead.[jsImpacts__Added_from_Data_com__c]
		--,lead.[jsImpacts__Data_com_do_not_auto_update__c]
		--,lead.[jsImpacts__Data_com_managed__c]
		--,lead.[jsImpacts__Imported_from_Jigsaw__c]

		-- DOES NOT APPEAR TO BE USED
		--  ,lead.[LastReferencedDate]
		--  ,lead.[LastViewedDate]
		--  ,lead.[Latitude]
		--  ,lead.[LDR__c]
		--  ,lead.[Language_Preference__c]
		--  ,lead.[Last_Activity_Year__c]
		--  ,lead.[LastActivityDate]


		--,lead.[ContactMe__c]
		--,lead.[Created_Date_1_Hour__c]
		--,lead.[Cross_Sell_Email_Recipient__c]
		--,lead.[Date_of_Consent__c]
		--,lead.[Email_Bounced_Date__c]
		--,lead.[Email_has_Bounced__c]
		--,lead.[Field_History__c]
		--,lead.[IsUnreadByOwner]
		--,lead.[HasOptedOutOfEmail]
		--,lead.[Exclude_from_FI_Auto_Assignment__c]
		--,lead.[Lead_Owner_by_Trigger__c]
		--,lead.[Lead_Owner_Country_At_Close__c]
		--,lead.[Lead_Owner_Department_At_Close__c]
		--,lead.[Lead_Owner_Manager_Email__c]
		--,lead.[Lead_Partner_Relationship__c]
		--,lead.[Lead_Score_Image__c]
		--,lead.[Lead_Source_Most_Recent__c]
		--,lead.[Lead_Zip_for_Trigger_Match__c]
		--,lead.[LifeWorks_Broker__c]  -- mostly false
		--,lead.[Longitude]
		--,lead.[MasterRecordId]
		--,lead.[MobilePhone]
		--,lead.[MQL_Date__c]
		--,lead.[PhotoUrl]
		--,lead.[Policy_Number__c]
		--,lead.[Price_Based_or_Value_Based_decision__c]
		--,lead.[Products__c]
		--,lead.[Queue_by_Trigger__c]
		--,lead.[Queue_Rotation__c]
		--,lead.[Referrer_ID__c]
		--,lead.[Reward__c]
		--,lead.[Notification_Type__c]
		--,lead.[Number_of_Employees__c]
		--,lead.[Payroll_Frequency__c] -- mostly NULL
		--,lead.[Lead_Owner_Division__c]
		--,lead.[Lead_Owner_Division_At_Close__c]