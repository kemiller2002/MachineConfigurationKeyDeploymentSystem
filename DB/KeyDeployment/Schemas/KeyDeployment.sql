IF NOT EXISTS (SELECT * FROM sys.schemas s WHERE s.name = 'KeyDeployment')
BEGIN
	exec sp_sqlexec 'CREATE SCHEMA KeyDeployment'
END