as yet unclassified
doSettings
	"comment stating purpose of message"

	SlackTeamSettingsModel
		openWithTeam: SlackTeams new
		saveCompleteBlock: [ :slackTeam | SlackTeamsStore storeTeam: slackTeam ]