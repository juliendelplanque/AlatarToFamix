xml-nodes extraction
xmlRequestNodeOf: aViewXMLNode
	^ aViewXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'request' ] ]