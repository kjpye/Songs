\version "2.19.80"

global = {
  \time 4/4
  \key f \major
  \tempo 4 = 120
}

soprano = \relative c'' {
  \global
  c2 c4 c
}

alto = \relative c'' {
  a2 a4 a
}

tenor = \relative c'' {
  f2 f4 f
}

bass = \relative c'' {
  f2 f4 f
  \bar "|."
}

treble = \relative c'' {
  \global
}

bass = \relative c' {
}


sopranoWords = \lyricmode {
  Fine
}

altoWords = \lyricmode {
  Fine
}

tenorWords = \lyricmode {
  Fine
}

bassWords = \lyricmode {
  Fine
}

\book {
  \header {
    title = "Fine knacks for ladies"
    composer = "John Dowland"
  }

  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = soprano { \soprano	}
	\addlyrics \sopranowords
	\new Staff = alto { \alto }
	\addlyrics \altoowords
	\new Staff = tenor { \tenor }
	\addlyrics \tenorwords
	\new Staff = bass { \bass }
	\addlyrics \basswords
      >>
      \context PianoStaff <<
	    \new Staff = treble {
	      
	    }
	    \new Staff = bass {
	      \clef bass
	    }
      >>
    >>
    \layout {}
    \midi {}
  }
}
