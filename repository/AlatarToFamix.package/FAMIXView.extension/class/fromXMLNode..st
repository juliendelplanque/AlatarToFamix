*AlatarToFamix
fromXMLNode: anXMLNode
	| view |
	view := self new
					name: (anXMLNode attributeAt: 'name');
					yourself.
	view privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id').
	^ view