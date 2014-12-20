
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[ProgramTypes] WHERE [ProgramTypeId]=1)
BEGIN
        
        INSERT INTO [KeyDeployment].[ProgramTypes]
        (
            [ProgramTypeId],[Name]
        )   
        VALUES
        (
            1,'32 bit'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[ProgramTypes]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[ProgramTypes]
             SET [Name]='32 bit'
             WHERE [ProgramTypeId]=1
             RAISERROR('UPDATE ran for [KeyDeployment].[ProgramTypes] with [ProgramTypeId]=1', 0, 0) WITH NOWAIT
            
END
            
                    GO
                    
IF NOT EXISTS (SELECT * FROM [KeyDeployment].[ProgramTypes] WHERE [ProgramTypeId]=2)
BEGIN
        
        INSERT INTO [KeyDeployment].[ProgramTypes]
        (
            [ProgramTypeId],[Name]
        )   
        VALUES
        (
            2,' 64 bit'
        )

        RAISERROR('INSERT ran for [KeyDeployment].[ProgramTypes]', 0, 0) WITH NOWAIT 

        
END
ELSE
BEGIN
        
             UPDATE [KeyDeployment].[ProgramTypes]
             SET [Name]=' 64 bit'
             WHERE [ProgramTypeId]=2
             RAISERROR('UPDATE ran for [KeyDeployment].[ProgramTypes] with [ProgramTypeId]=2', 0, 0) WITH NOWAIT
            
END
            