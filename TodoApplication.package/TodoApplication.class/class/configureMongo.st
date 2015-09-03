as yet unclassified
configureMongo
	"self configureMongo"
	|aRepository|
	aRepository := VOMongoRepository database: 'todoappdb'.
	aRepository enableSingleton.