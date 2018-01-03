
/*
	LEADS DATA DATA
	SQL QUERY FOR dbo.leads - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	March 27, 2017
	version 2.0

	NEED TO REMOVE COMMENT FOR STAGE NAME - PREDICT AND TRAIN DUE TO SIZE OF DATA.


*/
SELECT 
		CAST(lead.[Id] AS varchar(max)) as LeadId  /* Used In Campaign Member Table as well - 00Qi000.... */

		,lead.[Company]
		,lead.[Name]
		,lead.[NumberOfEmployees]

		,lead.[LeadSource]
		,lead.[Named_on_Convert__c]	
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



		/* CAMPAIGN DETAILS */
		,lead.[Campaign__c]

		,lead.[Campaign_Id__c]
		,lead.[Campaign_Association__c]

		,lead.[Campaign_Member_Further_Information__c]
		,lead.[Campaign_Member_Rating__c]

		/* CONVERTED DETAILS */
		,lead.[IsConverted]
		,lead.[ConvertedAccountId]
		,lead.[ConvertedContactId]
		,lead.[ConvertedOpportunityId]
		,lead.[ConvertedDate]


		/* NOT SURE IF THIS IS IMPORTANT */
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



		/* SYSTEM ACTIVITIES */

		,lead.[SystemModstamp]
		,lead.[CreatedById]
		,lead.[CreatedDate]
		,CAST(lead.[LastModifiedById] AS varchar(max))
		,lead.[LastModifiedDate]


			



  FROM [SFDCReplicaDB].[dbo].[Lead] as lead

  
