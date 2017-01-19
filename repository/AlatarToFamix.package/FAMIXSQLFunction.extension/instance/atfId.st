*AlatarToFamix
atfId
	^ self privateState
			attributeAt: ATFLoader privateStateIdAttributeName ifAbsent: nil