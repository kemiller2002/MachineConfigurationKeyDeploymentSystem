IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'Frameworks' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.Frameworks
	(
		FrameworkId INT NOT NULL PRIMARY KEY
		,Name VARCHAR(50) NOT NULL
		,FilePath AS 'v' + Name + '\config\machine.config'
	)
END

