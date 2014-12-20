IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'Products' and s.name = 'KeyDeployment')
BEGIN
		CREATE TABLE KeyDeployment.Products
		(
			ProductId INT NOT NULL PRIMARY KEY
			,Name VARCHAR(50) NOT NULL
		)
END