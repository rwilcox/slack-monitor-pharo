as yet unclassified
initializeWidgets
	teamNameCtrl := self newTextInput.
	teamNameCtrl autoAccept: true.
	teamNameLabel := self newLabel.
	teamNameLabel label: 'Team Name'.
	tokenLabel := self newLabel.
	tokenLabel label: 'OAuth Token (https://api.slack.com/docs/oauth-test-tokens)'.
	tokenCtrl := self newTextInput.
	tokenCtrl autoAccept: true.
	usernameLabel := self newLabel.
	usernameLabel label: 'Username'.
	userNameCtrl := self newTextInput.
	userNameCtrl autoAccept: true.
	saveBtn := self newButton.
	saveBtn action: [ self doSave ].
	saveBtn label: 'Save'