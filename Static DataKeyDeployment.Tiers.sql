
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=1)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            1,'External Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='External Product Web'
             WHERE [TierId]=1
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=1', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=2)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            2,'External Product Application'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='External Product Application'
             WHERE [TierId]=2
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=2', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=3)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            3,'External Product Database'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='External Product Database'
             WHERE [TierId]=3
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=3', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=4)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            4,'Internal Product Web'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='Internal Product Web'
             WHERE [TierId]=4
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=4', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=5)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            5,'Internal Product  Application'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='Internal Product  Application'
             WHERE [TierId]=5
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=5', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[Tiers] WHERE [TierId]=6)
BEGIN
        
        INSERT INTO [KeyDeployment].[Tiers]
        (
            [TierId],[Name]
        )   
        VALUES
        (
            6,'Internal Product Database'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[Tiers]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[Tiers]
             SET [Name]='Internal Product Database'
             WHERE [TierId]=6
             RAISERROR('UPDATE ran for [KeyDeployment].[Tiers] with [TierId]=6', 0, 0) WITH NOWAIT
            
END
            