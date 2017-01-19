*AlatarToFamix
fromXMLNode: anXMLNode
	| parameter |
	self flag: #todo. "Modify access to name once XML fixed."
	self flag: #todo. "Add return type."
	parameter := self new
						name: (anXMLNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'name' ] ]) nodes first asString;
						yourself.
	parameter privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id').
	^ parameter