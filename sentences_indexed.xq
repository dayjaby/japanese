let $content := file:read-text-lines(file:parent(static-base-uri()) || "examples.utf")
let $n := count($content)
return file:write-text(file:parent(static-base-uri()) || "examples.xml",concat("<sentences>",string-join(for $i in (1 to $n)
where $i mod 2 = 1
let $str := fn:replace($content[$i],"A: (.*?)\t(.*)#ID=(.*)_(.*)","<jp>$1</jp><eng>$2</eng><j>$3</j><e>$4</e>")
return concat("<r>",$str,"</r>")),"</sentences>"))