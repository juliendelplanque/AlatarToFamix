instance creation
on: aReadStream
	^ self new
		document: (XMLDOMParser parse: aReadStream);
		yourself