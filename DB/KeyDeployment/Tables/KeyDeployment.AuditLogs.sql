IF NOT EXISTS(SELECT * FROM sys.tables t join sys.schemas s ON t.name = 'AuditLogs' and s.name = 'KeyDeployment')
BEGIN
	CREATE TABLE KeyDeployment.AuditLogs
	(
		AuditLogId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,TableName VARCHAR(100) NOT NULL
		,Data XML NOT NULL
	)

END