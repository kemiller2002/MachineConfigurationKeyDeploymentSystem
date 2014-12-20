IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'KeysToProgramTypes' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.KeysToProgramTypes
	(
		Key_KeyId INT NOT NULL REFERENCES KeyDeployment.Keys(KeyId)
		,ProgramType_ProgramTypeId INT NOT NULL REFERENCES KeyDeployment.ProgramTypes(ProgramTypeId)
		,PRIMARY KEY (Key_KeyId, ProgramType_ProgramTypeId)
	)
END
