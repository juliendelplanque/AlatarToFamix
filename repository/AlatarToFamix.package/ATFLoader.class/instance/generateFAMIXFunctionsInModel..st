model generation
generateFAMIXFunctionsInModel: aMooseModel
	"Generate FAMIXFunctions from the XML's 'function' nodes."
	self xmlFunctionNodes do: [ :functionNode |
			|function|
			function := FAMIXSQLFunction fromXMLNode: functionNode.
			aMooseModel add: function.
			"Generate FAMIXParameters."
			(self xmlParameterNodesOf: functionNode) do: [ :parameterNode |
				|parameter|
				parameter := FAMIXParameter fromXMLNode: parameterNode.
				function addParameter: parameter.
				aMooseModel add: parameter ].
			"Generate FAMIXRequests."
			self flag: #todo ]