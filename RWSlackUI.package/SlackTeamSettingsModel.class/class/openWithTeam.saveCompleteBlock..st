as yet unclassified
openWithTeam: editTeam saveCompleteBlock: saveBlock
	"comment stating purpose of message"

	| settingsModel settingsModelModel |
	settingsModel := SlackTeamSettingsModel new.
	settingsModel currentSlackTeam: editTeam.
	settingsModel saveCompleteBlock: saveBlock .
	settingsModelModel := settingsModel openWithSpec.
	settingsModelModel title: 'Slack Team Settings'.
	^ settingsModelModel