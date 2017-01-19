*AlatarToFamix
fromXMLNode: anXMLNode
	| table |
	table := self new
					name: (anXMLNode attributeAt: 'name');
					yourself.
	table privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id');
		attributeAt: ATFLoader privateStateSourceCodeAttributeName
		put: (anXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'sql' ] ]) nodes first asString.
	^ table