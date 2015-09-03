as yet unclassified
renderContentOn: html	
	html heading level: 1; with: 'Todo list'.
	html form class: 'form-inline'; with: [
		|label|
		html textInput class: 'form-control'; callback: [ :v | label := v ].
		html submitButton class: 'btn btn-primary'; callback: [ TodoItem new label: label; isDone: false; save ]; with: 'Add'
		].
	
	html orderedList: [
		TodoItem selectAll do: [ :i | 
			html listItem: [
			
			
				(i isDone)
					ifTrue: [  html anchor callback: [ i isDone: false ]; with: [ html deleted: i label ] ]
					ifFalse: [ html anchor callback: [ i isDone: true ]; with: [ html text: i label ] ].
				html space.
				html anchor callback: [ i remove ]; with: [ html tbsGlyphIcon iconRemove  ] ].
		 		].
			
			].