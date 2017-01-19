model generation
generateFAMIXSequencesInModel: aMooseModel
	"Generate FAMIXSequencess from the XML's 'sequence' nodes."
	self xmlSequenceNodes do: [ :sequenceNode |
		|sequence|
		sequence := FAMIXSequence fromXMLNode: sequenceNode.
		aMooseModel add: sequence ]