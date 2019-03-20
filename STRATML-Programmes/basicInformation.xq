import module namespace stratml = "http://semantechs.co.uk/ns/stratml" at "basicInformation.xqm";

let $collection := 'StratML-Files' 
let $stylesheet := 'stratml.xsl'
let $str := 'Agency'
let $ss := for $doc in collection($collection)
    where matches(document-uri($doc), $stylesheet)
return $doc

return ( 
(: stratml:countsPerOrganisation($collection), :)


(: stratml:filesForOrganisation($collection, 'Office of Management and Budget'), :)

for $i in stratml:filesForStakeholderDescription($collection, $str)
return xslt:transform($i, $ss)
,


(: stratml:filesForGoalName($collection, $str), :)


(: stratml:filesForGoalDescription($collection,'investment'), :)
()
)