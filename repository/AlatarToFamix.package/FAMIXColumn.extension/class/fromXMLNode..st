*AlatarToFamix
fromXMLNode: anXMLNode
	| column |
	column := self new
					name: (anXMLNode attributeAt: 'name');
					type: (anXMLNode attributeAt: 'date');
					canBeNull: (anXMLNode attributeAt: 'notNull') = 'false';
					isPK: (anXMLNode attributeAt: 'primaryKey') = 'true';
					isFK: (anXMLNode attributeAt: 'foreignKey') = 'true';
					isInherited: (anXMLNode attributeAt: 'inherited') = 'true';
					yourself.
	column privateState
		attributeAt: ATFLoader privateStateIdAttributeName put: (anXMLNode attributeAt: 'id').
	^ column