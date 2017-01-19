xml-nodes extraction
xmlKindOfEntityNodes
	^ document nodes first nodes
		reject: [ :n | n class = XMLString ]