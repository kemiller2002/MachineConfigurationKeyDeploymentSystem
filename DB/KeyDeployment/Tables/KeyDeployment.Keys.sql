IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'Keys' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.Keys
	(
		KeyId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,Name VARCHAR(100) NOT NULL 
		,Product_ProductId INT NOT NULL REFERENCES KeyDeployment.Products(ProductId)
		,Environment_EnvironmentId INT NOT NULL REFERENCES KeyDeployment.Environments(EnvironmentId)
		,Tier_TierId INT NOT NULL REFERENCES KeyDeployment.Tiers(TierId)
--		,DeploymentType_DeploymentTypeId INT NOT NULL REFERENCES KeyDeployment.DeploymentTypes(DeploymentTypeId)
		,Deploy BIT NOT NULL DEFAULT(1)
		,CONSTRAINT CT_Unique_Name UNIQUE(Name)
	)
END
