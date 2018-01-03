/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	
	campMbr.[Id] as UniqueID,
	campMbr.[CampaignId],
	camp.[Type],
	camp.[Name] as CampaignName,

	contact.[AccountId],
	campMbr.[City],
	campMbr.[CompanyOrAccount],
	account.NumberOfEmployees,
	account.Year_Established__c,
	account.Segment_f2__c,
	account.Segment_f__c,
		

	
	campMbr.[Custom_Status__c],
	campMbr.[Description],

	
	/* Contact Details */
	contact.[Id] as ContactID,
	campMbr.[FirstName],
	campMbr.[LastName],
	campMbr.[Name],

	contact.[Contact_Type__c],
	
	campMbr.[Email],
	contact.[Department],
	contact.[Job_Level__c],


	/* Location Details */
	campMbr.[PostalCode],
	campMbr.[State],
	campMbr.[Country],
	
	
	
	campMbr.[FirstRespondedDate],
	campMbr.[Further_Information__c],
	campMbr.[LeadSource],
	

	
	campMbr.[Rating__c],

	
	campMbr.[Status],
	campMbr.[Status_for_Reports__c],
	campMbr.[SystemModstamp],
	campMbr.[Title],
	campMbr.[Type]







FROM [SFDCReplicaDB].[dbo].[CampaignMember] as campMbr


JOIN [SFDCReplicaDB].[dbo].[Contact] as contact
ON campMbr.[ContactId] = contact.[Id]

JOIN [SFDCReplicaDB].[dbo].[campaign] as camp
ON camp.[Id] = campMbr.[CampaignId]

JOIN [SFDCReplicaDB].[dbo].[account] as account
ON account.[Id] = contact.[AccountId]

/*
WHERE 
	CompanyOrAccount LIKE '%Albright%'
	OR [ContactId] = '003i000000oocWG'
	OR [ContactId] = '003i000000FUwcj'
	OR [ContactId] = '003i0000043xZst'
	OR [ContactId] = '003i0000043CNm6'
*/

order BY 	contact.[AccountId]



	/* DO NOT USE

	campMbr.[CreatedById],
	campMbr.[CreatedDate],
	campMbr.[CurrencyIsoCode],
	campMbr.[MobilePhone],
	campMbr.[Phone],
	campMbr.[HasOptedOutOfEmail],
	campMbr.[HasOptedOutOfFax],
	campMbr.[HasResponded],
	campMbr.[IsDeleted],
	campMbr.[LastModifiedById],
	campMbr.[LastModifiedDate],
	campMbr.[LeadId],
	campMbr.[LeadOrContactId],
	campMbr.[LeadOrContactOwnerId],
	campMbr.[ContactId]
	campMbr.[DoNotCall],
	campMbr.[Fax],
	campMbr.[Street],

	 */