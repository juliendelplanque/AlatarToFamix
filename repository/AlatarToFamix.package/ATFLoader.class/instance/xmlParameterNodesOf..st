xml-nodes extraction
xmlParameterNodesOf: aFunctionXMLNode
	self flag: #todo. "Remove the #ifNil: when XML is fixed."
	^ ((aFunctionXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'arguments' ] ]) ifNil: [ ^ #() ])
			nodes reject: [ :n | n class = XMLString ]