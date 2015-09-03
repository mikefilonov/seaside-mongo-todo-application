as yet unclassified
install
	"self install"
	|app|
	app := WAAdmin register: self asApplicationAt: 'todo'.
	app 
 	   addLibrary: JQDeploymentLibrary;
 	   addLibrary: TBSDeploymentLibrary.
	
	^ app