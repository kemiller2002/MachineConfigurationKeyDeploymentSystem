#load "Generator.fsx"

open Generator

let tableName = "Frameworks"
let schemaName = "KeyDeployment"

let Names = "1.0.3705,1.1.4322,2.0.50727,3.0,3.5,4.0.30319".Split(',')

let counter = ref 1 
let getNext () = 
    let value = counter.Value; 
    counter := counter.Value + 1; 
    value

let multipleInserts = seq {
    
    for name in Names do 
        yield seq {
                //This is the Entry record.  Defined in the other fsx file.
            yield {FieldName="FrameworkId"; FieldValue = getNext().ToString(); IsNumber=true; IsPrimaryKey=true} 
            yield {FieldName="Name"; FieldValue = name; IsNumber=false; IsPrimaryKey = false}
        } |> Seq.toArray

}


let insertStatments = multipleInserts 
                    |> Seq.map(fun(x) -> GenerateInsertStatement schemaName tableName x) 
                    |> (fun(x) -> System.String.Join(@"
                    GO
                    ", x)) |> (fun x -> Generator.AddIdentityInsertWrapper schemaName tableName x)

System.IO.File.WriteAllText(sprintf "%s\%s.%s.sql" __SOURCE_DIRECTORY__  schemaName tableName, insertStatments)