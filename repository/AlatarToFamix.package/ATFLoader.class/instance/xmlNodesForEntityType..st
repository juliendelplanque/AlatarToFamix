xml-nodes extraction
xmlNodesForEntityType: aString
	^ (self xmlKindOfEntityNodes detect: [ :n | n name = aString ]) nodes
			reject: [ :n | n class = XMLString ]