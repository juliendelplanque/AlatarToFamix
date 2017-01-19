*AlatarToFamix
atfSourceCode
	^ self privateState
			attributeAt: ATFLoader privateStateSourceCodeAttributeName ifAbsent: nil