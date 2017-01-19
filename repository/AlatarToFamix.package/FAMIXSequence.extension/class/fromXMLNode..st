*AlatarToFamix
fromXMLNode: anXMLNode
	| sequence |
	sequence := self new
						name: (anXMLNode attributeAt: 'name');
						yourself.
	sequence privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id').
	^ sequence