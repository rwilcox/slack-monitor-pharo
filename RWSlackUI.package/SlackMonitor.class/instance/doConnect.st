as yet unclassified
doConnect
	"comment stating purpose of message"

	| url currentTeam |
	currentTeam := teamPopup selectedItem.
	connection := PSlackClient
		user: currentTeam user
		token: currentTeam token .
	res := connection rtmStart.
	url := res values at: 'url'.
	channels := res values at: 'channels'.
	users := res values at: 'users'.
	private_channels := res values at: 'groups'.
	messageHandler := SlackMonitorWriter new.
	messageHandler slackMonitorWindow: self.
	websocketReciever := PSlackRtmReceiver url: url handler: messageHandler.
	websocketReciever start