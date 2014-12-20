IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'Environments' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.Environments
	(
		EnvironmentId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,Name VARCHAR(50) NOT NULL
	)


END