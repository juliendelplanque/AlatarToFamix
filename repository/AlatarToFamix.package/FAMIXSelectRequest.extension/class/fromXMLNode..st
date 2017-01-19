*AlatarToFamix
fromXMLNode: anXMLNode
	| request |
	request := self new.
	self flag: #todo.
	request privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id');
		attributeAt: ATFLoader privateStateSourceCodeAttributeName
		put: (anXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'sql' ] ]) nodes first asString.
	^ request