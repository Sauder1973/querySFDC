/*
	CAMPAIGN MEMBER DATA ------------------------------------------------------
	USE FOR SFDC IN R
	SQL QUERY FOR dbo.CampaignMember - Ceridan Salesforce.com Replica Database
	NOT LINKED TO OPPORTUNITY


	W. Sauder
	AUGUST 2, 2017
	version 1.0

	
*/
SELECT 

		[CampaignId]
  		,[Status]
		,[FirstName]
		,[LastName]
		,[Email]
		,[ContactId]
		,[City]
		,[Title]
		,[Type]
		,[CompanyOrAccount]

		,[Country]
		,[CreatedById]
		,[CreatedDate]
		,[CurrencyIsoCode]
		,[Custom_Status__c]
		,[Description]
		,[DoNotCall]

		,[Fax]
      
		,[FirstRespondedDate]
		,[Further_Information__c]
		,[HasOptedOutOfEmail]
		,[HasOptedOutOfFax]
		,[HasResponded]
		,[Id]
		,[IsDeleted]
		,[LastModifiedById]
		,[LastModifiedDate]
  
		,[LeadId]
		,[LeadOrContactId]
		,[LeadOrContactOwnerId]
		,[LeadSource]
		,[MobilePhone]
		,[Name]
		,[Phone]
		,[PostalCode]
		,[Rating__c]
		,[Salutation]
		,[State]

		,[Status_for_Reports__c]
		,[Street]
		,[SystemModstamp]

  FROM [SFDCReplicaDB].[dbo].[CampaignMember]



