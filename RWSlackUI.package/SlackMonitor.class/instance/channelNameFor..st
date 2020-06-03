as yet unclassified
channelNameFor: channelId
	"It might be in the channel list, it might be in the users list"

	| info |
	info := channels detect: [ :item | (item at: 'id' ifAbsent: [ '' ]) = channelId ] ifNone: [ nil ].
	info ifNil: [ info := private_channels detect: [ :item | (item at: 'id' ifAbsent:  [''] ) = channelId ] ifNone: [ nil  ] ] . 		
	info ifNil: [ info := users detect: [ :user | (user at: 'id' ifAbsent: [ '' ]) = channelId ] ifNone: [ nil ] ].	"maybe yourself?? RPW 11-30-2016"
	^ info ifNotNil: [ info at: 'name' ]