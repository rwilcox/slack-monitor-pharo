as yet unclassified
displayMessage: message from: name onChannel: channelName
	"comment stating purpose of message"

	1 + 1.
	messageTable
		items:
			messageTable listItems ,
			{'{1}: {2} ({3})'
				format:
					{channelName.
					message.
					name}}.
	self needRebuild: false.
	self buildWithSpecLayout: self defaultSpec