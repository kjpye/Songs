%.pdf %.kar %.mp3: %.ly
	lilypond $<
#	fluidsynth -T raw -F- -q /usr/share/sounds/sf2/FluidR3_GM.sf2 $*.midi | lame -r - $*.mp3
#	fluidsynth -T raw -F- -q /usr/share/sounds/sf2/FluidR3_GM.sf2 $*-midi.midi | lame -r - $*.mp3
	/home/kevin/git/Songs/miditomp3andkar $*

clean:
	rm -f *.pdf *.kar *.midi *.png *.mp3 *~


