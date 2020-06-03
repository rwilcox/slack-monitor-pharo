as yet unclassified
doSave
	"comment stating purpose of message"

	currentSlackTeam teamName: teamNameCtrl getText;
	token: tokenCtrl getText;
	user: userNameCtrl getText .
	
	saveCompleteBlock value: currentSlackTeam