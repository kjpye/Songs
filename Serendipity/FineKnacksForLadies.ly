\version "2.19.80"

global = {
  \time 4/4
  \key f \major
%  \tempo 4 = 120
}

soprano = \relative c'' {
  \global
  c2 c4 c
}

alto = \relative c'' {
  a2 a4 a
}

tenor = \relative c' {
  f2 f4 f
}

bass = \relative c {
  f2 f4 f
  \bar "|."
}

trebleacc = \relative c'' {
  \global
}

bassacc = \relative c, {
}


sopranoWords = \lyricmode {
  Fine knacks for La- dies cheap, choice, brave and new
  Good pen- ny worths, but mo- ney can- not move!
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
    title    = "Fine knacks for ladies"
    composer = "John Dowland"
    opus     = "London 1562 - 1626"
  }

  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = soprano { \soprano	}
	\addlyrics \sopranoWords
	\new Staff = alto { \alto }
	\addlyrics \altoWords
	\new Staff = tenor { \clef "treble_8" \tenor }
	\addlyrics \tenorWords
	\new Staff = bass { \clef "bass" \bass }
	\addlyrics \bassWords
      >>
      \context PianoStaff <<
	    \new Staff <<
	      \set Staff.printPartCombineTexts = ##f
	      \partcombine
              << \soprano >>	      
	      << \alto >>
	    >>
	    \new Staff <<
              \clef "bass"
	      \set Staff.printPartCombineTexts = ##f
	      \partcombine
              << \tenor >>	      
	      << \bass >>
	    >>
      >>
    >>
    \layout {}
    \midi {}
  }
}
