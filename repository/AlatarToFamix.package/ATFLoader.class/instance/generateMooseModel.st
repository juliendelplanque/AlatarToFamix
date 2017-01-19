model generation
generateMooseModel
	"Creates a MooseModel, adds entities created from the XML and returns it."
	| model |
	model := MooseModel new.
	self
		generateFAMIXSequencesInModel: model;
		generateFAMIXTablesInModel: model;
		generateFAMIXViewsInModel: model;
		generateFAMIXFunctionsInModel: model;
		generateFAMIXTriggersInModel: model.
	
	self flag: #todo. "Verify if the order of generations is right."
	^ model