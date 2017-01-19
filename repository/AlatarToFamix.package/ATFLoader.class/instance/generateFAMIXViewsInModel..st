model generation
generateFAMIXViewsInModel: aMooseModel
	"Generate FAMIXViews from the XML's 'view' nodes."
	self xmlViewNodes do: [ :viewNode |
			|view queryNode query|
			view := FAMIXView fromXMLNode: viewNode.
			aMooseModel add: view.
			queryNode := self xmlRequestNodeOf: viewNode.
			query := FAMIXSelectRequest fromXMLNode: queryNode.
			aMooseModel add: query.
			view query: query ]