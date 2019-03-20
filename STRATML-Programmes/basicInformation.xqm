module namespace stratml = "http://semantechs.co.uk/ns/stratml";

declare function stratml:countsPerOrganisation($collection){
  (:~ 
  returns the numbers of publications for each organisation
   :)
  <results>{
  for $entry in collection($collection)//StrategicPlanCore/Organization
  let $author := $entry/Name/string()
  group by $author
  order by count($entry) descending, $author
  return 
 <name number="{count($entry)}">{$author}</name>

}</results>
};

declare function stratml:filesForOrganisation($collection, $str){
  (:~ 
  returns the publications for each organisation based on name
   :)
 for $i in collection($collection)//StrategicPlanCore/Organization/Name[contains(.,$str)]
 return root($i)
};

declare function stratml:filesForStakeholderName($collection, $str){
  (:~ 
  returns the publications by stakeholder name
   :)
 for $i in collection($collection)//StrategicPlanCore/Organization/Stakeholder/Name[contains(.,$str)]
 return root($i)
};

declare function stratml:filesForStakeholderDescription($collection, $str){
  (:~ 
  returns the publications by stakeholder description
   :)
 for $i in collection($collection)//StrategicPlanCore/Organization/Stakeholder/Description[contains(.,$str)]
 return root($i)
};



declare function stratml:filesForGoalName($collection, $str){
  (:~ 
  returns the publications containing $str in the Goal Name
   :)
 for $i in collection($collection)//Goal/Name[contains(.,$str)]
 return root($i)
};


declare function stratml:filesForGoalDescription($collection, $str){
  (:~ 
  returns the publications containing $str in the Goal Description
   :)
 for $i in collection($collection)//Goal/Description[contains(.,$str)]
 return root($i)
};

