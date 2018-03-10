\version "2.18.2"

global = {
  \time 2/4
  \key d \major
  \tempo 4 = 120
}

melody = \relative c {
  \global
  r2
  r2
  r2
  r2
  \bar "||" \key g \major \time 2/2
  r1 % 5
  r2 r4 d
  g4 g a g8 a
  b8 d4.(d4) r8 d,
  b'4 b8 a(a) b a4
  g2 fis % 10
  e4 e cis4. r8
  e4 e cis4. cis8
  e4 e cis e
  eis1 ~
  eis2 fis % 15
  g4 g a g8 a
  b8 d4.(d4) r
  b4 b8 a(a) b a4
}

treble = \relative c' {
  \global
  <d a'>4-- <a d>--
  <d a'>8 d16(e fis8) g16(a
  b8) c16(d e8) fis16(g
  a8) b16(c d8) e16(fis
  \bar "||" \key g \major \time 2/2
  g8) r8 \clef "bass" <d,,, g a>4-.-> r <e a c>-.-> % 5
  r4 <fis b d>-.-> r <e a c>-.->
  r4^\p <d g b> r <e a c>
  r4 <fis b d>8 q r4 <e a c>
  r4 <d g a> r <e a c>8 q
  r4 <g b d> r <a b dis> % 10
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <g b e>
  r4 <gis cis eis> r q
  r4 q r <a d fis> % 15
  <b d g> <d, g b> r <e a c>
  r4 <fis b d>8 q r4 q
  r4 <d g b> r <e a c>8 q
}

bass = \relative c {
  \global
  d8 e16(fis g8) a16(b
  c8)r <a d>4
  \clef "treble" <d a'>4 <a d>
  <d g>4 \clef "bass" <a d>
  \bar "||" \key g \major \time 2/2
  <g, g'>4-. r q-. r % 5
  q4 r q r
  g'4 r g r
  g4 r g r
  g4 r g r
  g4 r b r % 10
  e,4 r a r
  e4 r a r
  e4 r a e
  cis4 r cis r
  cis4 r d r % 15
  g4 r g r
  g4 r g r
  g4 r g r
}

words = \lyricmode {
  Oh I got plen- ty o' nut- tin',
  An' nut- tin's plen- ty fo' me.
  I got no car, got no mule,
  I got no mis- er -y.
  De folks wid plen- ty o' plen- ty
  got a lock on dey
}

Mwords = \lyricmode {
}

\book {
  \header {
    title = "I Got Plenty O' Nuttin"
    composer = "Ira Gershwin and Dubose Heyward"
    poet = "George Gershwin"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
          \clef "bass"
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
	  \melody
	}
	\addlyrics \Mwords
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
