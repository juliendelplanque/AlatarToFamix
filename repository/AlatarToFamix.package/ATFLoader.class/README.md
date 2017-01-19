I use the XML document one gives me to build a MooseModel representing the model described in this XML document.

Example:
loader := ATFLoader on: (FileLocator home / 'database.xml') readStream.
loader generateMooseModel