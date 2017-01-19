model generation
generateFAMIXTriggersInModel: aMooseModel
	"Generate FAMIXTriggers from the XML's 'triggers' nodes."
	self xmlTriggerNodes do: [ :triggerNode |
		|trigger tableId functionId|
		trigger := FAMIXTrigger fromXMLNode: triggerNode.
		aMooseModel add: trigger.
		"Find table referenced."
		self flag: #todo. "Fix when XML is modified."
		tableId := (triggerNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'table' ] ])
							attributeAt: 'id'.
		functionId := (triggerNode nodes detect: [ :n | n class ~= XMLString and: [ n name = 'invokedFunction' ] ])
								attributeAt: 'id'.
		trigger
			ownerTable: (aMooseModel detect: [ :e | e class = FAMIXTable and: [ e atfId = tableId ] ]).
			self flag: #todo. "Needs to XML to be fixed to work."";
			invokedFunction: (aMooseModel detect: [ :e | e class = FAMIXSQLFunction and: [ e atfId = functionId ] ])."
		self flag: #todo. "Add events?" ]