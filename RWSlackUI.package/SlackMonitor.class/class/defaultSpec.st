as yet unclassified
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row
				add: #connectButton;
				add: #teamPopup;
				add: #settingsButton ]
			height: 30;
		add: #messageTable;
		yourself