IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'KeysToFrameworks' and s.name = 'KeyDeployment')
BEGIN

	CREATE TABLE KeyDeployment.KeysToFrameworks
	(
		Framework_FrameworkId INT NOT NULL REFERENCES KeyDeployment.Frameworks(FrameworkId)
		,Keys_KeyId INT NOT NULL REFERENCES KeyDeployment.Keys(KeyId)
	)

END