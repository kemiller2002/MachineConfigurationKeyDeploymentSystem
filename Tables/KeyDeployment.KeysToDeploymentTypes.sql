IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'KeysToDeploymentTypes' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.KeysToDeploymentTypes
	(
		Key_KeyId INT NOT NULL REFERENCES KeyDeployment.Keys(KeyId)
		,ProgramType_ProgramTypeId INT NOT NULL REFERENCES KeyDeployment.DeploymentTypes(DeploymentTypeId)
		,PRIMARY KEY (Key_KeyId, ProgramType_ProgramTypeId)
	)
END
