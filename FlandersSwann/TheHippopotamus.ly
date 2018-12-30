\version "2.19.80"

global = {
  \time 3/4
  \key g \major
  \tempo 2. = 58
}

melody = \relative c' {
  \global
  s2.
  s2.
  s2.
  s4 s d
  \repeat volta 3 {
    g4 g g
    g8 d b4 g
    a4 b c
    b2 b8 a
    s2.*28 \bar "||" \break
    s2.*14
  }
  \alternative {
    {
      s2.*6
    }
    {
      s2.*4
    }
  }
  \bar "|."
}

trebleOne = \relative c' {
  \global
  \oneVoice
  r4 <b d g> q
  r4 q q
  <c e g>2 <g c e>4
  <a c fis>4 \grace cis'8 d4-\fermata d,
  \repeat volta 3 {
    g4 <b, d g> q % 5
    g'8 d b4 g
    \voiceOne a4 b c
    r4 <c fis>2
    s2.*28 \bar "||" \break
    s2.*14
  }
  \alternative {
    {
      s2.*6
    }
    {
      s2.*4
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s2.
  s2.
  s2.
  s2.
  \repeat volta 3 {
    s2. % 5
    s2.
    a2.
    b2 b8 a
    s2.*28 \bar "||" \break
    s2.*14
  }
  \alternative {
    {
      s2.*6
    }
    {
      s2.*4
    }
  }
}

bassOne = \relative c, {
  \global
  s2.
  s2.
  s2.
  s4 s d
  \repeat volta 3 {
    s2.*32 \bar "||" \break
    s2.*14
  }
  \alternative {
    {
      s2.*6
    }
    {
      s2.*4
    }
  }
  \bar "|."
}

bassTwo = \relative c {
  \global
  \voiceTwo
  s2.
  s2.
  s2.
  s4 s d
  \repeat volta 3 {
    s2.*32 \bar "||" \break
    s2.*14
  }
  \alternative {
    {
      s2.*6
    }
    {
      s2.*4
    }
  }
  \bar "|."
}

verseOne = \lyricmode {
  A bold Hip- po- po- ta- mus was stand- ing one day
  On the banks of the cool Sha- li- ma.
}

verseTwo = \lyricmode {
  A fair Hip- po- po- ta- mus he aimed to en- tice
  From her seat on that hill- top a- bove,
}

verseThree = \lyricmode {
  Now more Hip- po- po- ta- mi be- gan to con- vene
  On the banks of that riv- er so wide.
}

chorus = \lyricmode {
}

MverseOne = \lyricmode {
}

MverseTwo = \lyricmode {
}

MverseThree = \lyricmode {
}

Mchorus = \lyricmode {
}

\book {
  \header {
    title = "The Hippopotamus"
    composer = "Michael Flanders, Donald Swann"
  }

  \score {
    <<
      \context GrandStaff {
        <<
	  \new Staff = melody { \melody }
	  \addlyrics { \verseOne }
	  \addlyrics { \verseTwo \chorus }
	  \addlyrics { \verseThree }
	  \context PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassOne }
	      \new Voice { \clef bass \bassTwo }
	    >>
	  >>
        >>
      }
    >>
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \MverseOne }
	\addlyrics { \MverseTwo \Mchorus }
	\addlyrics { \MverseThree }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bassOne }
	      \new Voice { \clef bass \unfoldRepeats \bassTwo }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
