\version "2.19.80"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 120
}

melody = \relative c {
  \global
  r1
  r1
  r1
  r1
  c2.^\p 4
  d8^\pp d r4 r2
  r4 g8-> r g-> r g-> r
  g4. ( c8) a4 r
  c,2.^\p c4
  d8^\pp d r4 r2
  r4 g8-> r g-> r g-> r
  g4.(c8) g4 r-\fermata
  c4 c b8 b a a
  \bar "|."
}

treble = \relative c' {
  \global
  c2~ c8(b16 c d c b c)
  d2 r8 cis16(d e d c d)
  g8 r g r g r g r
  g4. \times 2/3 {c16(e c)} g4 r
  c,2~ c8(b16 c d c b c)
  d2 r8 cis16(d e d c d)
  g8 r g r g r g r
  g4. \times 2/3 {c16(e c)} g4 r
  c,2~ c8(b16 c d c b c)
  d2 r8 cis16(d e d c d)
  g8 r g r g r g r
  g4. \times 2/3 {c16(e c)} g4 r-\fermata
  <e c'>2(<d b'>4 <c a'>)
}

bass = \relative c {
  \global
  <c e g>1
  <c f a>2 r
  r4 <b d f>8 r q r q r
  <c e>8 r r4 r2
  <c e g>1
  <c f a>2 r
  r4 <b d f>8 r q r q r
  <c e>4 r r2
  <c e g>1
  <c f a>2 r
  r4 <b d f>8 r q r q r
  <c e>4 r r r-\fermata
  <a c>2 \> (<b d>4 \! <c e>)
}

words = \lyricmode {
  La ca- lun- nia
  "é un" ven- ti- cel- lo.
  un fu- ret ta
  as- sai gen- ti- le "che in" sen- si- bile e sot-
}

\book {
  \header {
    title = "Aria della Calunnia"
    subtitle = "Il barbiere di Siviglia"
    composer = "Gioacchino Rossini (1792-1868)"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \clef bass
	  \melody
	}
	\addlyrics \words
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
	\new Staff = melody {
          \clef bass
	  \melody
	}
	\addlyrics \words
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
    \midi {}
  }
}
