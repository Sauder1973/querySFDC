/*
	CAMPAIGN DATA ------------------------------------------------------
	SQL QUERY FOR dbo.campaign - Ceridan Salesforce.com Replica Database
	NOT LINKED TO OPPORTUNITY


	W. Sauder
	May 16, 2017
	version 3.0

	
*/

SELECT 
DISTINCT
		camp.[Id]
		,camp.[Type]
		,camp.[Name]
		,camp.[StartDate]
		,camp.[NumberOfContacts]
		,camp.[NumberOfConvertedLeads]
		,camp.[NumberOfLeads]
		,camp.[NumberOfOpportunities]
		,camp.[NumberOfResponses]
		,camp.[NumberOfWonOpportunities]


		,camp.[HierarchyAmountWonOpportunities]
		,camp.[HierarchyExpectedRevenue]
		,camp.[HierarchyNumberOfContacts]
		,camp.[HierarchyNumberOfConvertedLeads]
		,camp.[HierarchyNumberOfLeads]
		,camp.[HierarchyNumberOfOpportunities]
		,camp.[HierarchyNumberOfWonOpportunities]
		,camp.[HierarchyNumberSent]

		,camp.[Status]
		,camp.[ParentId]
		,camp.[CurrencyIsoCode]
		,camp.[AmountAllOpportunities]
		,camp.[AmountWonOpportunities]

/* System Records */
		,camp.[CreatedById]
		,camp.[CreatedDate]
		,camp.[SystemModstamp]




		,camp.[EndDate]
		,camp.[ExpectedResponse]
		,camp.[ExpectedRevenue]



		,camp.[LastActivityDate]
		,camp.[LastModifiedById]
		,camp.[LastModifiedDate]
		,camp.[LastReferencedDate]
		,camp.[LastViewedDate]

		,camp.[OwnerId]




  FROM [SFDCReplicaDB].[dbo].[campaign] as camp
  
/*WHERE FREETEXT (camp.Name,  '"*Dine*"');
  ORDER BY camp.[Type]
*/








  		/* NOT USED

		,camp.[Campaign_Ext_ID__c]
		,camp.[CampaignMemberRecordTypeId]


		,camp.[Description]
		,camp.[ELOQUA__Call_Center_Calls__c]
		,camp.[ELOQUA__Campaign_Search_Visits__c]
		,camp.[ELOQUA__Email_Bouncebacks__c]
		,camp.[ELOQUA__Email_Click_Throughs__c]
		,camp.[ELOQUA__Email_Unsubscribes__c]
		,camp.[ELOQUA__Emails_Opened__c]
		,camp.[ELOQUA__Emails_Sent__c]
		,camp.[ELOQUA__Event_Registrations__c]
		,camp.[ELOQUA__Faxes_Sent__c]
		,camp.[ELOQUA__Forms_Submitted__c]
		,camp.[ELOQUA__Hypersite_Visits__c]
		,camp.[ELOQUA__Online_Referral_Visits__c]
		,camp.[ELOQUA__Possible_Email_Forwards__c]
		,camp.[ELOQUA__Print_Mail_Sends__c]
		,camp.[ELOQUA__Surveys_Completed__c]
		,camp.[ELOQUA__Unique_Email_Visitors__c]
		,camp.[NumberSent]
		,camp.[IsActive]
		,camp.[IsDeleted]
		,camp.[X18_Char_ID_c__c]
		*/