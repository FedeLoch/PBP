Class {
	#name : 'BaselineOfPBP',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPBP',
	#package : 'BaselineOfPBP'
}

{ #category : 'baselines' }
BaselineOfPBP >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'PBP'.
		spec group: 'default' with: #( 'PBP' )
	]
]
