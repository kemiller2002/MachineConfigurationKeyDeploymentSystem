SET IDENTITY_INSERT [KeyDeployment].[Environments] ON


IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=1)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            1,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=1
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=1', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=2)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            2,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=2
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=2', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=3)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            3,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=3
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=3', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=4)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            4,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=4
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=4', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=5)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            5,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=5
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=5', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=6)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            6,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=6
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=6', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Environments] WHERE [EnvironmentId]=7)
BEGIN
        
        INSERT INTO [KeyDeployment].[Environments]
        (
            [EnvironmentId],[Name]
        )   
        VALUES
        (
            7,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Environments]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Environments]
             SET [Name]='External Product Web'
             WHERE [EnvironmentId]=7
             RAISERROR('UPDATE ran for [KeyDeployment].[Environments] with [EnvironmentId]=7', 0, 0) WITH NOWAIT
            
END
             
    
SET IDENTITY_INSERT [KeyDeployment].[Environments] OFF