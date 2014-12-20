#load "Generator.fsx"

open Generator

let tableName = "Environments"
let schemaName = "KeyDeployment"

let EnvironmentNames = "Personal,Development,QA,UAT,PreProduction,Production,Distaster Recovery".Split(',')

let counter = ref 1 
let getNext () = 
    let value = counter.Value; 
    counter := counter.Value + 1; 
    value

let multipleInserts = seq {
    
    for environment in EnvironmentNames do 
        yield seq {
                //This is the Entry record.  Defined in the other fsx file.
            yield {FieldName="EnvironmentId"; FieldValue = getNext().ToString(); IsNumber=true; IsPrimaryKey=true} 
            yield {FieldName="Name"; FieldValue = "External Product Web"; IsNumber=false; IsPrimaryKey = false}
        } |> Seq.toArray

}


let insertStatments = multipleInserts 
                    |> Seq.map(fun(x) -> GenerateInsertStatement schemaName tableName x) 
                    |> (fun(x) -> System.String.Join(@"
                    GO
                    ", x)) |> (fun x -> Generator.AddIdentityInsertWrapper schemaName tableName x)

System.IO.File.WriteAllText(sprintf "%s\%s.%s.sql" __SOURCE_DIRECTORY__  schemaName tableName, insertStatments)