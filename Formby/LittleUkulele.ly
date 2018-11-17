\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key f \major
  \tempo 4 = 150
}

melody = \relative c' {
  \global
  s1
  s1
  s1
  s2. \bar "||" a4
  \repeat volta 3 {
    c4 d c a % 5
    bes4 c bes g
    c4 bes a g
    f2. c8 c
    d4 d f d
    c4 c a a % 10
    a4 g g a
    g2. c4
    d4 bes bes c
    d4 f4 e d
    c4 a a bes % 15
    c2. a4
    g4 gis a bes
    b4 bes a aes
    g4 f' e d
    c4 c a g \bar "||" % 20
    f4 f f f
    f4 g a bes
    c1~
    c2. c4
    d4 cis d e % 25
    f4 e f d
    c1~
    c2 r4 c
    c4 g g a
    bes4 d c bes' % 30
    a4 g a bes
    c2. a4
    g4 a b c
    d4 b a g
    d4 b a g % 35
    c2. g4
    a4 a a a
    g4 g g g
    f1~
    f2 r4 c' % 40
    d4 d d e
    f4 e f d
    e1
    r4 c d e
    f4 e f d % 45
    e4 e cis cis
    d4 cis d a
    bes4 bes a g
    c4 c c d
    c4 bes a g % 50
    f2 e'
    e4 d2 d4
    f4 d f d
    f4 e d e
  }
  \alternative {
    { f1~
      f2 r4 a,
    }
    { f1~
      f2 r
    }
  }
  \bar "|."
}

ukulele = \chordmode {
  s1
  s1
  s1
  s2. d4:7
  \repeat volta 3 {
  }
  \alternative {
    { s1
      s1
    }
    { s1
      s1
    }
  }
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  g8 g e4 d e
  g4 e d2
  b'4 b a8 g a4
  g2. \bar "||" d4
  \repeat volta 3 {
  }
  \alternative {
    { s1
      s1
    }
    { s1
      s1
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  r4 <b d> r q
  r4 q r <gis b>
  r4 cis r <c fis>
  r4 <b d> r \bar "||" c
  \repeat volta 3 {
  }
  \alternative {
    { s1
      s1
    }
    { s1
      s1
    }
  }
  \bar "|."
}

bass = \relative c {
  \global
  g4 r d r
  g4 r e r
  a4 r d, r
  g4 fis e \bar "||" d
  \repeat volta 3 {
  }
  \alternative {
    { s1
      s1
    }
    { s1
      s1
    }
  }
}

verseOne = \lyricmode {
}

MverseOne = \lyricmode {
}

verseTwo = \lyricmode {
}

MverseTwo = \lyricmode {
}

verseThree = \lyricmode {
}

MverseThree = \lyricmode {
}

\book {
  \header {
    title = "Little Ukulele"
    composer = "Jack Cottrell"
  }

  \score {
    \context GrandStaff {
      <<
        \new ChordNames { \ukulele }
	\new FretBoards { \set Staff.stringTunings = #ukulele-tuning \transpose d c \ukulele }
	\new Staff = melody { \melody }
	\addlyrics \verseOne
	\addlyrics \verseTwo
	\addlyrics \verseThree
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bass }
	    >>
	  >>
      >>
    }
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \MverseOne \MverseTwo \MverseThree }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bass }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
