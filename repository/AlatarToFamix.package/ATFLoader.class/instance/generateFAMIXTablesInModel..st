model generation
generateFAMIXTablesInModel: aMooseModel
	"Generate FAMIXTables from the XML's 'table' nodes."
	self xmlTableNodes do: [ :tableNode |
			|table|
			table := FAMIXTable fromXMLNode: tableNode.
			aMooseModel add: table.
			"Generate FAMIXColumns and add them to the table."
			(self xmlColumnNodesOf: tableNode) do: [ :columnNode |
				|column|
				column := FAMIXColumn fromXMLNode: columnNode.
				column mooseModel: aMooseModel.
				table addColumn: column ] ]