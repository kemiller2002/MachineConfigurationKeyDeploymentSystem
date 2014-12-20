IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'ProgramTypes' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.ProgramTypes
	(
		ProgramTypeId INT NOT NULL PRIMARY KEY
		,Name VARCHAR(50)
	)
END

