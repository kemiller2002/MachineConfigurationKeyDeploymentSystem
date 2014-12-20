IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'Tier' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.Tiers
	(
		TierId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,Name VARCHAR(50) NOT NULL
	)


END