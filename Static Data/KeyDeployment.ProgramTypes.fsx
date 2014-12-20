﻿#load "Generator.fsx"

open Generator
let nameParts = __SOURCE_FILE__.Split('.')
let schemaName = nameParts.[0]
let tableName = nameParts.[1]

let Names = "32 bit, 64 bit".Split(',')

let counter = ref 1 
let getNext () = 
    let value = counter.Value; 
    counter := counter.Value + 1; 
    value

let multipleInserts = seq {
    
    for name in Names do 
        yield seq {
            yield {FieldName="ProgramTypeId"; FieldValue = getNext().ToString(); IsNumber=true; IsPrimaryKey=true} 
            yield {FieldName="Name"; FieldValue = name; IsNumber=false; IsPrimaryKey = false}
        } |> Seq.toArray

}


let insertStatments = multipleInserts 
                    |> Seq.map(fun(x) -> GenerateInsertStatement schemaName tableName x) 
                    |> (fun(x) -> System.String.Join(@"
                    GO
                    ", x)) 

System.IO.File.WriteAllText(sprintf "%s\%s.%s.sql" __SOURCE_DIRECTORY__  schemaName tableName, insertStatments)