\version "2.19.80"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 108
}

melody = \relative c' {
  \global
  s1*8
  \bar "||"
  g8^\markup{Slowly with expression} fis a g g4 c,~ % 9
  c2. r4 % 10
  \bar "|."
}

trebleTop = \relative c'' {
  \global
  \voiceOne
  s1*5
  r2 a2 % 6
  a'2-^ s
  r2 <g, g'>
}

trebleOne = \relative c' {
  \global
  r4 \voiceOne <c c'>_-_\pp q_- q_-
  a'4.(e8 d2~
  d4) c'-- c-- c--
  a4.(e8 d2~
  d4) d(\times 2/3{e g e} % 5
  d1~)
  d4_\markup{\italic rall} d \times 2/3{e a e}
  d1
  g8_\p (fis a g) g4(c,)
  g''8(fis a g) g4(c,)
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s1
  a1~
  a4 c-- c-- c--
  a1~
  a4 r g2 % 5
  a1~
  a4 r a2
  b1
  r4 <c e> r <e, g>
  r4 <c'' e> r <e, g> % 10
}

bassOne = \relative c {
  \global \voiceOne
  r2 <e gis>
  c4 2 c4~
  c4 r r2
  c4 2 4~
  c4 r <e, b>2 % 5
  <f c'>1 ~
  q4 r <g c f>2 ~
  q1
  \oneVoice <c, g' e'>4-\arpeggio r <g g'> r
  <c c'>4 <g'' c e> <g,, g'> <e'' g c> % 10
}

bassTwo = \relative c, {
  \global \voiceTwo
  s1
  f1~
  f4 s s2
  fis1~
  fis1 s4 s2
  s1*13
}

words = \lyricmode {
  Some en- chant- ed eve- ning
}

Mwords = \lyricmode {
}

\book {
  \header {
    title = "Some Enchanted Evening"
    subtitle = "from South Pacific"
    composer = "Richard Rodgers"
    poet = "Oscar Hammerstein"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \clef bass \melody }
	\addlyrics { \words }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
              <<
                \trebleTop
                \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass {
	      \clef bass
	      <<
		\bassOne
		\bassTwo
	      >>
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
              <<
                \trebleTop
	        \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
              <<
		\bassOne
		\bassTwo
	      >>
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}
