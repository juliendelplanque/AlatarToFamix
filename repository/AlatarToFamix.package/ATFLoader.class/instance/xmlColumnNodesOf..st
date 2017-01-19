xml-nodes extraction
xmlColumnNodesOf: aTableXMLNode
	^ (aTableXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'columns' ] ])
			nodes reject: [ :n | n class = XMLString ]