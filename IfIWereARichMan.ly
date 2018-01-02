\version "2.19.80"

global = {
  \time 4/4
  \key c \major
}

melodyOne = \relative c'' {
  \global
  r1
  r1
}

melodyTwo = \relative c'' {
  g8 f g f e4 d
  r4 e8 f g f g f
  e8 f g a bes a bes a
  g4 r r2
  aes4 g ges f
  ees8 d c d ees4 r
  ees8 d c d ees4 c
  g'4 r r2
}

melodyR = \relative c'' {
}

melodyRR = \relative c'' {
}

trebleOne = \relative c'' {
  \global
  \ottava #1
  r4 <g c e>8 q r4 q4
  r4 <g c e>8 q r4 q4
}

trebleTwo = \relative c''' {
  g8 f g f e4 d
}

trebleR = \relative c' {
}

trebleRR = \relative c' {
}

bassOne = \relative c {
  \global
  c4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
}

bassTwo = \relative c {
  c4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
}

bassR = \relative c' {
}
bassRR = \relative c {
}

firstVerse = \lyricmode {
  \set stanza = "1."
  If I were a rich man
}

chorus = \lyricmode {
}

secondVerse = \lyricmode {
  \set stanza = "2."
}

thirdVerse = \lyricmode {
  \set stanza = "3."
}

\book {
  \header {
    title = "If I Were A Rich Man"
    composer = "Jerry Bock"
    poet = "Sheldon Harnick"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \melodyOne \repeat volta 3 { \melodyTwo } \alternative { {\melodyR} {\melodyRR} }
	}
	\addlyrics { \firstVerse \chorus ! }
	\addlyrics   \secondVerse
	\addlyrics   \thirdVerse
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \trebleOne \repeat volta 6 \trebleTwo \alternative { \trebleR \trebleRR }
	    }
	    \new Staff = bass {
	      \clef bass
	      \bassOne \repeat volta 6 \bassTwo \alternative { \bassR \bassRR }
	    }
	  >>
	}
      >>
    }
  }
  \layout {}
  \midi {}
}
