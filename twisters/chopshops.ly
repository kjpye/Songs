\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Chop Shops Stock Chops"
  copyright = \today
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=120
}

melody = \relative c' {
  <c e g>4 q4 q8 q q4 c e d c c e d c c e d c
}

words = \lyricmode {
  _ _ _ _ _ Chop shops stock chops. Chop shops stock chops. Chop shops stock chops.
}

\book
{
  \score { % this version for the printed page
    <<
      \context ChoirStaff <<
	\context Staff = partOne <<
	  \context Voice =
	  partOne { \oneVoice { \global
                                                                   \melody \break
                                  \key des \major \transpose c des \melody \break
                                  \key e   \major \transpose c e   \melody \break
                                  \key fes \major \transpose c fes \melody \break
                                  \key f   \major \transpose c f   \melody \break
                                  \key ges \major \transpose c ges \melody \break
                                  \key g   \major \transpose c g   \melody \break
                                  \key aes \major \transpose c aes \melody \break
                              } }
	>>
	\context Lyrics = partOne { s1 }
	\context Lyrics = partOne \lyricsto partOne { \words \words \words \words \words \words \words \words}
      >>
    >>
    \layout {
    }
  }
}
