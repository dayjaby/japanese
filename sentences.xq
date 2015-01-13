declare variable $y external := "1";
declare option output:method "json";
declare option output:json 'format=attributes,merge=true';
let $db := db:open("japanese_examples")//sentences/r
let $amount := xs:integer($y)
let $count := count($db)
return <json arrays="x" type="array">{
for $i in (1 to $amount)
let $n := random:integer($count)+1
return (<item type="array"><item>{$db[$n]/eng/text()}</item><item>{$db[$n]/jp/text()}</item></item>)
}</json>
