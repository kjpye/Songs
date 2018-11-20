\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  \repeat volta 6 {
    \partial 4 f4
    a4. a8 g4 f
    bes4 bes a g
    a4 c c b
    c2. a4
    d4. c8 bes4 a
    g4 f e a
    g4 f f e
    f2.
}
}

altoMusic = \relative c' {
  \repeat volta 6 {
    \partial 4 c4
    f4. f8 e4 d
    d4 f f e
    f4 e g g
    e2. f4
    f4. f8 f4 f
    e4 d cis c
    e4 d d c
    c2.
  }
}

tenorMusic = \relative c' {
  \repeat volta 6 {
    \partial 4 a4
    c4. c8 c4 a
    bes4 d c c
    c4 c d d
    c2. c4
    bes4. a8 bes4 c
    c4 a a a
    c4 a bes g
    a2.
  }
}

bassMusic = \relative c {
  \repeat volta 6 {
    \partial 4 f4
    f4. f8 c4 d
    bes4 bes f' c
    f4 a g g
    c,2. f4
    bes4. f8 d4 f
    c4 d a f'
    c4 d bes c
    f2.
  }
}

wordsOne = \lyricmode {
  \set stanza = "1. "
  While shep- herds watched their flocks by night,
  All sea- ted on the ground,
  The an- gel of the Lord came down,
  And glo- ry shone a- round.
}

wordsTwo = \lyricmode {
  \set stanza = "2. "
  "\"Fear" "not!\"" said he, for migh- ty dread
  Had seized their troub- led mind.
  "\"Glad" ti- dings of great joy I bring
  To you and all min- kind.
}

wordsThree = \lyricmode {
  \set stanza = "3. "
  "\"To" you, in Da- vid's town, this day
  is born of Da- vid's line
  A sa- viour, who is Christ the Lord,
  And this shall be the sign.
}

wordsFour = \lyricmode {
  \set stanza = "4. "
  "\"The" heav'n- ly Babe you there shall find
  To hu- man view dis- played,
  All mean- ly wrapped in swath- ing bands,
  And in a man- ger "laid.\""
}

wordsFive = \lyricmode {
  \set stanza = "5. "
  Thus spake the ser- aph and forth- with
  Ap- peared a shin- ing throng
  Of an- gels prai- sing God on high,
  Who thus ad- dressed their song:
}

wordsSix = \lyricmode {
  \set stanza = "6. "
  "\"All" glo- ry be to God on high,
  And to the Earth be peace;
  Good will hence- forth from Heav'n to men
  Be- gin and nev- er "cease!\""
}

\book
{
  \header {
    title = "While Shepherds Watched Their Flocks by Night"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \sopMusic } >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo <<{ \global \altoMusic}>> }
	>>
	\context Lyrics = wordsOne   { s1 }
	\context Lyrics = wordsTwo   { s1 }
	\context Lyrics = wordsThree { s1 }
	\context Lyrics = wordsFour  { s1 }
	\context Lyrics = wordsFive  { s1 }
	\context Lyrics = wordsSix   { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne <<{\global \tenorMusic } >> }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo <<{\global \bassMusic } >> }
	  >>
	}
	\context Lyrics = wordsOne   \lyricsto altos { \wordsOne }
	\context Lyrics = wordsTwo   \lyricsto altos { \wordsTwo }
	\context Lyrics = wordsThree \lyricsto altos { \wordsThree }
	\context Lyrics = wordsFour  \lyricsto altos { \wordsFour }
	\context Lyrics = wordsFive  \lyricsto altos { \wordsFive }
	\context Lyrics = wordsSix   \lyricsto altos { \wordsSix }
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {\RemoveEmptyStaffContext
		\override VerticalAxisGroup #'remove-first = ##t }
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \partial 2 \sopMusic \sopMusic \sopMusic \sopMusic r2} >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo { \global \partial 2 \altoMusic \altoMusic \altoMusic \altoMusic r2 } }
	>>
	\context Lyrics = words { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \partial 2 \tenorMusic \tenorMusic \tenorMusic  \tenorMusic r2} >> }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo <<{\global \partial 2 \bassMusic \bassMusic \bassMusic \bassMusic r2} >> }
	  >>
	}
	\context Lyrics = words \lyricsto altos {\wordsOne}
      >>
    >>
    
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
  
