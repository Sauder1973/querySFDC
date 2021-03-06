/*
	SFDC USER DATA ------------------------------------------------------
	SQL QUERY FOR dbo.user 
	W. Sauder
	August 27, 2017
	version 2.0

	DOES NOT NEED PREDICTION OR TRAINING QUERY DUE TO SIZE OF TABLE.

*/
SELECT 

		[Id]
		,[Name]
		,[Department]
		,[Division]
		,[CompanyName]
		,[Hire_Date__c]	/* JUST ADDED MARCH 27 */

		,[Title]
		,[City]
		,[StateCode]
		,[PostalCode]
		,[CountryCode]
		,[CurrencyIsoCode]

		,[ManagerId]

		,[Has_Quota__c]

		,[IsActive]
		,[LastLoginDate]
		,[LastReferencedDate]
		,[LastViewedDate]
		,[License_Allocation__c]

		,[Profile_Name__c]
		,[ProfileId]

		,[RPO_Active__c]
		,[SC_RVP2__c]
		,[SC_RVP_DEPRECATED__c]
		,[SCRVP__c]

		,[User_Currency__c]


		,[UserRoleId]
		,[January__c]
		,[February__c]
		,[March__c]
		,[April__c]
		,[May__c]
		,[June__c]
		,[July__c]
		,[August__c]
		,[September__c]
		,[October__c]
		,[November__c]
		,[December__c]


		,[Q1__c]
		,[Q2__c]
		,[Q3__c]
		,[Q4__c]

		,[CreatedById]
		,[CreatedDate]
		,[Migration_Tag__c]

FROM [SFDCReplicaDB].[dbo].[user]




/* NOT USED
--,[Club_Quota__c]
--,[CommunityNickname]

--,[ContactId]
--,[Convert_Lead__c]
--,[Country]
--[AboutMe]
--  ,[AccountId]
--  ,[Alias]
--  ,[Allocation_Purchased__c]
--  ,[Annual__c]
--  ,[Annual_Quota_2012__c]
--  ,[Annual_Quota_2013__c]
--  ,[Annual_Quota_2014__c]
,[Running_User__c]

,[iD__c]
,[JigsawImportLimitOverride]
,[LanguageLocaleKey]

,[LastModifiedById]
,[LastModifiedDate]
,[LastName]
,[LastPasswordChangeDate]
,[Street]
,[Signature]
,[SmallPhotoUrl]
,[State]
,[UserType]
--,[Apttus_Approval__Approval_Level__c]
--,[Apttus_Approval__Next_Level_Approver__c]
--,[Assignment_Group_Active__c]

--,[Backup_ID__c]
--,[BadgeText]
--,[CallCenterId]

,[CreatedById]
,[CreatedDate]

,[ReceivesAdminInfoEmails]
,[ReceivesInfoEmails]
,[Department__c]
,[DigestFrequency]

,[Division__c]
,[Division_Department__c]
,[EmployeeNumber]

,[SenderEmail]
,[SenderName]
,[SystemModstamp]
,[TimeZoneSidKey]
,[Notes__c]
,[Migration_Tag__c]
,[OfflinePdaTrialExpirationDate]
,[OfflineTrialExpirationDate]
,[MobilePhone]
,[Phone]
,[Opportunity_Minimum__c]
,[Full_Name__c]

,[Latitude]
,[Lightning_Preferred__c]
,[LocaleSidKey]
,[Longitude]
,[X2012_to_Quota__c]
,[X2013_to_Quota__c]
,[X2014_to_Quota__c]
,[X2015_Annual_Quota__c]
,[X2015_to_Quota__c]
,[X2016_to_Quota__c]
,[XOXO_Director__c]
,[UserPermissionsAvantgoUser]
,[UserPermissionsCallCenterAutoLogin]
,[UserPermissionsChatterAnswersUser]
,[UserPermissionsInteractionUser]
,[UserPermissionsJigsawProspectingUser]
,[UserPermissionsKnowledgeUser]
,[UserPermissionsMarketingUser]
,[UserPermissionsMobileUser]
,[UserPermissionsOfflineUser]
,[UserPermissionsSFContentUser]
,[UserPermissionsSupportUser]
,[UserPreferencesActivityRemindersPopup]
,[UserPreferencesApexPagesDeveloperMode]
,[UserPreferencesCacheDiagnostics]
,[UserPreferencesContentEmailAsAndWhen]
,[UserPreferencesContentNoEmail]
,[UserPreferencesDisableAllFeedsEmail]
,[UserPreferencesDisableBookmarkEmail]
,[UserPreferencesDisableChangeCommentEmail]
,[UserPreferencesDisableEndorsementEmail]
,[UserPreferencesDisableFileShareNotificationsForApi]
,[UserPreferencesDisableFollowersEmail]
,[UserPreferencesDisableLaterCommentEmail]
,[UserPreferencesDisableLikeEmail]
,[UserPreferencesDisableMentionsPostEmail]
,[UserPreferencesDisableMessageEmail]
,[UserPreferencesDisableProfilePostEmail]
,[UserPreferencesDisableSharePostEmail]
,[UserPreferencesDisCommentAfterLikeEmail]
,[UserPreferencesDisMentionsCommentEmail]
,[UserPreferencesDisProfPostCommentEmail]
,[UserPreferencesEnableAutoSubForFeeds]
,[UserPreferencesEventRemindersCheckboxDefault]
,[UserPreferencesHideChatterOnboardingSplash]
,[UserPreferencesHideCSNDesktopTask]
,[UserPreferencesHideCSNGetChatterMobileTask]
,[UserPreferencesHideS1BrowserUI]
,[UserPreferencesHideSecondChatterOnboardingSplash]
,[UserPreferencesJigsawListUser]
,[UserPreferencesLightningExperiencePreferred]
,[UserPreferencesPathAssistantCollapsed]
,[UserPreferencesReminderSoundOff]
,[UserPreferencesShowCityToExternalUsers]
,[UserPreferencesShowCityToGuestUsers]
,[UserPreferencesShowCountryToExternalUsers]
,[UserPreferencesShowCountryToGuestUsers]
,[UserPreferencesShowEmailToExternalUsers]
,[UserPreferencesShowEmailToGuestUsers]
,[UserPreferencesShowFaxToExternalUsers]
,[UserPreferencesShowFaxToGuestUsers]
,[UserPreferencesShowManagerToExternalUsers]
,[UserPreferencesShowManagerToGuestUsers]
,[UserPreferencesShowMobilePhoneToExternalUsers]
,[UserPreferencesShowMobilePhoneToGuestUsers]
,[UserPreferencesShowPostalCodeToExternalUsers]
,[UserPreferencesShowPostalCodeToGuestUsers]
,[UserPreferencesShowProfilePicToGuestUsers]
,[UserPreferencesShowStateToExternalUsers]
,[UserPreferencesShowStateToGuestUsers]
,[UserPreferencesShowStreetAddressToExternalUsers]
,[UserPreferencesShowStreetAddressToGuestUsers]
,[UserPreferencesShowTitleToExternalUsers]
,[UserPreferencesShowTitleToGuestUsers]
,[UserPreferencesShowWorkPhoneToExternalUsers]
,[UserPreferencesShowWorkPhoneToGuestUsers]
,[UserPreferencesSortFeedByComment]
,[UserPreferencesTaskRemindersCheckboxDefault]
,[echosign_dev1__EchoSign_Allow_Delegated_Sending__c]
,[echosign_dev1__EchoSign_Email_Verified__c]
,[Email]
,[EmailEncodingKey]
,[EmailPreferencesAutoBcc]
,[EmailPreferencesAutoBccStayInTouch]
,[EmailPreferencesStayInTouchReminder]
,[Extension]
,[Fax]

,[FederationIdentifier]
,[FirstName]
,[ForecastEnabled]
,[FullPhotoUrl]
,[uas__Home_Phone__c]
,[uas__Sync_to_Contact__c]
,[Update_Territory__c]
,[User_18_Digit_Id__c]
,[User_Ext_ID__c]
,[User_Unique__c]
,[Username]
,[Data_com_License_Date__c]

,[DefaultCurrencyIsoCode]
,[DefaultGroupNotificationFrequency]

,[StayInTouchNote]
,[StayInTouchSignature]
,[StayInTouchSubject]
*/