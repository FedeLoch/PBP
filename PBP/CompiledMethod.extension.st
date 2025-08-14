Extension { #name : 'CompiledMethod' }

{ #category : '*PBP' }
CompiledMethod >> isLoop [

	^ CompiledMethod loopSelectors includes: self selector
]
