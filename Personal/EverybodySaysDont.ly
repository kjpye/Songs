\version "2.19.80"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 120
}

melody = \relative c' {
  \global
  \repeat volta 2 { r1 }
  r8 g16 g g g g8 a c,16 c c c c8
  d8 g,16 g g g g8 a c e a
  g4. a,8~a c e a
  g2. r4
  r8 g16 g g g g8 a c,16 c c c c8
  d8 g,16 g g g g8 a c e a
  \bar "|."
}

treble = \relative c' {
  \global
  \repeat volta 2 { <e a d>8-. r r q-. r4 q8-. r }
  <d g a d>8->_\fz r r <e, a d>-. r4 <e gis c>8-. r
}

bass = \relative c {
  \global
  \repeat volta 2 { <c g'>8-. r r q-. r4 q8-. r }
  <c g'e'>8-> r r <c g'>-. r4 <c g' c>8-. r
}

words = \lyricmode {
  Ev- 'ry- bod- y says don't, Ev- 'ry- bod- y says don't
  Ev- 'ry- bod- y says don't, it is- n't right.
  Don't! It is- n't nice!
  Ev- 'ry- bod- y says don't, Ev- 'ry- bod- y says don't
  Ev- 'ry- bod- y says: don't walk on the grass.
  Don't dis- turb the peace. Dont' skate on the ice.

  Well, I say do!
}

Mwords = \lyricmode {
}

\book {
  \header {
    title = "Everybody Says Don't"
    composer = "Stephen Sondheim"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \clef bass \melody }
	\addlyrics { \words }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \treble
	    }
	    \new Staff = bass {
	      \clef bass
	      \bass
	    }
	  >>
	}
      >>
    }
  \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody \unfoldRepeats {
	  \melody
	}
	\addlyrics { \Mwords
		   }
	\context PianoStaff {
	  <<
	    \new Staff = treble \unfoldRepeats {
	      \treble
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
	      \bass
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}
