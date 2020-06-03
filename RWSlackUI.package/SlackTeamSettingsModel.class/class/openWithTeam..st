as yet unclassified
openWithTeam: editTeam
	"comment stating purpose of message"

	| settingsModel settingsModelModel |
	settingsModel := SlackTeamSettingsModel new .
	settingsModel currentSlackTeam: editTeam .
	settingsModelModel := settingsModel openWithSpec. 
	
	settingsModelModel title: 'Slack Team Settings'.
	^ settingsModelModel