as yet unclassified
initializeWidgets
	"comment stating purpose of message"

	connectButton := self newButton.
	connectButton label: 'Connect'.
	connectButton
		action: [ connectButton label = 'Connect'
				ifTrue: [ self doConnect.
					connectButton label: 'Disconnect' ]
				ifFalse: [ self doDisconnect.
					connectButton label: 'Connect' ] ].
			teamPopup := self newDropList .
			teamPopup items: SlackTeamsStore getStore .
			teamPopup displayBlock: [  :selectedSlackTeam | selectedSlackTeam teamName . ] .
	settingsButton := self newButton.
	settingsButton label: 'Settings'.
	settingsButton action: [ self doSettings ].
	messageTable := self newList.
	messageTable displayBlock: [ :item | item ifNil: '' ]