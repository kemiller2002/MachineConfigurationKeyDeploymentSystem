IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'KeyValues' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.KeyValues
	(
		KeyValueId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,Key_KeyId INT NOT NULL REFERENCES KeyDeployment.Keys(KeyId)
		,Version_VersionId INT NOT NULL REFERENCES KeyDeployment.Versions(VersionId)
		,Value VARCHAR(320) NOT NULL
		,IsEncrypted BIT NOT NULL DEFAULT(0)
		,LastUpdatedBy VARCHAR(50) NOT NULL
	)

END

