
%.pdf %.kar %.mp3: %.ly
	lilypond $<
	timidity -Or -o - $*.midi | lame -r - $*.mp3
	-mv $*.midi $*.kar

#BlowTheManDown: BlowTheManDown.pdf BlowTheManDown.kar
#
#BlowTheManDown.kar BlowTheManDown.pdf: BlowTheManDown.ly
#
#MarysBoyChild: MarysBoyChild.pdf MarysBoyChild.kar MarysBoyChild.mp3 MarysBoyChild-melody.mp3 MarysBoyChild-harmony.mp3
#
#MarysBoyChild.kar MarysBoyChild.pdf MarysBoyChild.mp3 MarysBoyChild-melody.mp3 MarysBoyChild-harmony.mp3: MarysBoyChild.ly
#	lilypond MarysBoyChild.ly
#	timidity -Or -o - MarysBoyChild.midi   | lame -r - MarysBoyChild.mp3
#	timidity -Or -o - MarysBoyChild-1.midi   | lame -r - MarysBoyChild-melody.mp3
#	timidity -Or -o - MarysBoyChild-2.midi   | lame -r - MarysBoyChild-harmony.mp3
#	mv MarysBoyChild.midi MarysBoyChild.kar
#	rm MarysBoyChild-[12].midi
