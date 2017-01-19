*AlatarToFamix
fromXMLNode: anXMLNode
	| trigger |
	trigger := self new
					name: (anXMLNode attributeAt: 'name');
					yourself.
	self flag: #todo. "Fire time?"
	trigger privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id');
		attributeAt: ATFLoader privateStateSourceCodeAttributeName
		put: (anXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'sql' ] ]) nodes first asString.
	^ trigger