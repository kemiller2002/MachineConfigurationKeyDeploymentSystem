IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'DeploymentTypes' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.DeploymentTypes 
	(
		DeploymentTypeId INT NOT NULL PRIMARY KEY
		,Name VARCHAR(50) NOT NULL
	)

END