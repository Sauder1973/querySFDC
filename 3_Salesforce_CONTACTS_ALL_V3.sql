/*
SFDC CONTACT DATA ------------------------------------------------------------------------
	SQL QUERY FOR dbo.contact using Opportunity to Pull USED contacts - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	March 27, 2017
	version 2.0

	NEED TO REMOVE COMMENT FOR STAGE NAME - PREDICT AND TRAIN DUE TO SIZE OF DATA.

*/
	SELECT 

	
				
		/** CONTACT ONLY DETAILS 	**/
		 contact.[Id]
		 ,contact.[Email]
		,contact.[AccountId]
		,contact.[Contact_Type__c]
		,contact.[Department]
		,contact.[Job_Level__c]
		,contact.[CleanStatus]
		,contact.[Contact_Sort__c]
		,contact.[Account_Active_Owner_ID__c]
		,contact.[ContactZipCode__c]
		,contact.[Title]
		,contact.[User_Role__c]
		,contact.[Lead_Source_Most_Recent__c]
		,contact.[LeadSource]
		,contact.[Salutation]
		,contact.[Name]

		/** ELOQUA DATA **/
		,contact.[Eloqua_Created_Date__c]
		,contact.[Eloqua_ID__c]

		,contact.[Email_Has_Bounced__c]


		,contact.[HasOptedOutOfEmail]
		,contact.[InActive__c]
		,contact.[IsEmailBounced]
		,contact.[Language_Preference__c]
		,contact.[MailingCity]
		,contact.[MailingCountry]
		,contact.[MailingPostalCode]
		,contact.[MailingState]

		,contact.[Primary_Language__c]
		,contact.[OwnerId]
		,contact.[RPO_Account_Owner__c]
		,contact.[RPO_Contact_Owner_Country__c]


		/** not sure if required  	**/
		,contact.[Last_Profiled_Date__c]

		/** SYSTEM RECORD  	**/
		,contact.[CreatedById]
		,contact.[CreatedDate]
		,contact.[X18_Char_ID__c]
		,contact.[LastActivityDate]
		,contact.[LastModifiedById]
		,contact.[LastModifiedDate]
		,contact.[LastViewedDate]
		
		,contact.[OtherLatitude]
		,contact.[OtherLongitude]



	FROM [SFDCReplicaDB].[dbo].[Contact] as contact


  /** NOT USED  **/

  /**
		,contact.[LastName]
		,contact.[FirstName]
		,contact.[Email_Unsubscribe__c]
		,contact.[CASL_Marketing_Permission_Granted__c]
		,contact.[CASL_Status__c]
		,contact.[CASL_Subscribe_Date__c]
		,contact.[CASL_Subscribe_Method__c]
		,contact.[CASL_Subscribe_Source__c]
		,contact.[Engage__c]
		,contact.[Fax]
		,contact.[Field_History__c]
		,contact.[Find_an_Asset__c]
		,contact.[PhotoUrl]
		,contact.[Pivotal_Activity_History__c]
		,contact.[Send_a_Spotlight__c]
		,contact.[SocialMedia_Facebook__c]
		,contact.[SocialMedia_LinkedIn__c]
		,contact.[SocialMedia_TwitterHandle__c]
		,contact.[SuccessPortal__c]
		,contact.[Suffix__c]
		,contact.[Activity_Status__c]
		,contact.[Additional_Email__c]
		,contact.[AdvocateHub__Date_Added_To_AdvocateHub__c]
		,contact.[AdvocateHub__Date_Joined_AdvocateHub__c]
		,contact.[Assign_Owner__c]
		,contact.[AssistantName]
		,contact.[AssistantPhone]
		,contact.[BDE_Email__c]
		,contact.[BDE_Email_Mapped__c]
		,contact.[Birthdate]
		,contact.[Ceridian_Product_Relationship__c]
		,contact.[CurrencyIsoCode]
		,contact.[Department__c]
		,contact.[Description]
		,contact.[Account_Has_Alert__c]
		,contact.[ContactCount__c]
		,contact.[Contacted_Status__c]
		,contact.[Account_is_Parent__c]
		,contact.[Contact_Ext_ID__c]
		,contact.[Contact_Me__c]
		,contact.[DoNotCall]
		,contact.[Eloqua_Created_Date__c]
		,contact.[Eloqua_Email_Sync_Status__c]
		,contact.[Eloqua_ID__c]
		,contact.[Eloqua_Lead_Rating__c]
		,contact.[Eloqua_Lead_Score__c]
		
		,contact.[Email_Bounce_Date__c]
		,contact.[HomePhone]
		,contact.[LastCURequestDate]
		,contact.[LastCUUpdateDate]
		,contact.[jsImpacts__Data_com_does_not_auto_update__c]
		,contact.[jsImpacts__Data_com_Managed__c]
		,contact.[jsImpacts__Imported_from_Jigsaw__c]
		,contact.[Email_Opt_Out_Date__c]

		,contact.[EmailBouncedDate]
		,contact.[EmailBouncedReason]
		,contact.[Industry_Focus__c]
		,contact.[IsDeleted]
		,contact.[Lead_Score_Image__c]
		,contact.[Market_Focus__c]
		,contact.[MasterRecordId]
		,contact.[Memberships_Trade_Organizations__c]
		,contact.[Migration_Invalid_Email__c]
		,contact.[Migration_Source__c]
		,contact.[MobilePhone]
		,contact.[Temporarily_Remove_Contact_From_Campaign__c]
		,contact.[Temporarily_Remove_Expiration__c]
		,contact.[Temporarily_Remove_From_Campaign__c]
		,contact.[Temporarily_Remove_Modified_Date__c]
		,contact.[OtherCity]
		,contact.[OtherCountry]
		,contact.[OtherCountryCode]
		,contact.[OtherLatitude]
		,contact.[OtherLongitude]
		,contact.[OtherPhone]
		,contact.[OtherPostalCode]
		,contact.[OtherState]
		,contact.[OtherStateCode]
		,contact.[OtherStreet]
		,contact.[SystemModstamp]
		,contact.[TimeZone__c]
		,contact.[Title_Role__c]
		,contact.[uas__Active_User__c]
		,contact.[uas__User__c]
		,contact.[MailingCountryCode]
		,contact.[MailingLatitude]
		,contact.[MailingLongitude]
		,contact.[MailingStreet]
		,contact.[MailingStateCode]
		,contact.[Most_Recent_Market_Activity__c]
		,contact.[Most_Recent_Marketing_Activity__c]
		,contact.[New_XOXO_Nomination__c]
		,contact.[Notification_Type__c]
		,contact.[Phone]
		,contact.[Product_Solution_of_Interest__c]
		,contact.[Reference_Type__c]
		,contact.[Referrer_ID__c]
		,contact.[Region__c]
		,contact.[Relationship__c]
		,contact.[Relationship_Status__c]
		,contact.[ReportsToId]
		,contact.[Rknews__News_Search_Override__c]
		,contact.[RPO_Account_Owner_Email__c]
		,contact.[RPO_Account_Tax_Sales_Rep_Email__c]
		,contact.[LastReferencedDate]

		**/

		/**Third Party Info 	**/
		/**
		,contact.[Jigsaw]
		,contact.[JigsawContactId] 	

		**/