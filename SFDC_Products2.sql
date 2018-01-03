Select
	DISTINCT
	[Id]
	,[Name]
	,Product_Group__c
	,Product_Tier__c
	,ProductCode
	,[Family]
	,[Family__c]
	,[Family_Group__c]
	,[French_Product_Name__c]
	,[Group__c]
	,[Apttus_Config2__ConfigurationType__c]
	,[Revenue_Group__c]
    ,[Revenue_Type__c]


	FROM [SFDCReplicaDB].[dbo].[Product2]

	ORDER BY [Id]



/****** Script for SelectTopNRows command from SSMS  ******/
/******
SELECT TOP (1000) [Apttus_Config2__BundleInvoiceLevel__c]
      ,[Apttus_Config2__ConfigurationType__c]
      ,[Apttus_Config2__Customizable__c]
      ,[Apttus_Config2__EffectiveDate__c]
      ,[Apttus_Config2__ExpirationDate__c]
      ,[Apttus_Config2__HasAttributes__c]
      ,[Apttus_Config2__HasDefaults__c]
      ,[Apttus_Config2__HasOptions__c]
      ,[Apttus_Config2__HasSearchAttributes__c]
      ,[Apttus_Config2__Icon__c]
      ,[Apttus_Config2__IconId__c]
      ,[Apttus_Config2__IconSize__c]
      ,[Apttus_Config2__Uom__c]
      ,[CreatedById]
      ,[CreatedDate]
      ,[CurrencyIsoCode]
      ,[Description]
      ,[DisplayUrl]
      ,[Exclude_From_Discounting__c]
      ,[ExternalDataSourceId]
      ,[ExternalId]
      ,[Family]
      ,[Family__c]
      ,[Family_Group__c]
      ,[French_Product_Name__c]
      ,[Group__c]
      ,[Id]
      ,[IsActive]
      ,[IsDeleted]
      ,[LastModifiedById]
      ,[LastModifiedDate]
      ,[LastReferencedDate]
      ,[LastViewedDate]
      ,[Name]
      ,[Price_Type__c]
      ,[Product_External_Id__c]
      ,[Product_Group__c]
      ,[Product_Manager__c]
      ,[Product_Tier__c]
      ,[ProductCode]
      ,[QuantityUnitOfMeasure]
      ,[Revenue_Group__c]
      ,[Revenue_Type__c]
      ,[Sales_Allowed_to_Generate_Documents__c]
      ,[SystemModstamp]
      ,[Tier__c]
  FROM [SFDCReplicaDB].[dbo].[Product2]
***/