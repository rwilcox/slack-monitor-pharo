accessing
handleMessage: values
	| message channelId fromUser channelName |
	(values includesKey: 'hidden' ) ifFalse: [ 
		"hidden messages might be subtype message_changed, or other auth messages, whatever don't care"
	message := (values includesKey: 'mrkdwn')
		ifTrue: [ ((values at: 'attachments') at: 1) at: 'fallback' ]
		ifFalse: [ (values includesKey: 'text') ifTrue: [values at: 'text'] ifFalse: [values ] ].
	"message := values at: 'text'."
	channelId := values at: 'channel'.
	fromUser := (values includesKey: 'user') 
	ifTrue: [ values at: 'user' ]
	ifFalse: [  ( values includesKey: 'bot_id' ) ifTrue: [ '(a bot)' ] ifFalse: [ values at: 'username' ] ] .
	channelName := slackMonitorWindow channelNameFor: channelId.
	slackMonitorWindow displayMessage: message from: fromUser onChannel: channelName
	].