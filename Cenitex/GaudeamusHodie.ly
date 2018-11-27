\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title     = "Gaudeamus Hodie"
  subtitle  = "(Let us rejoice today)"
  composer  = "M. S. Miller"
  copyright = \today
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

melody = \relative c' {
  \repeat volta 3 {
    c4^\markup{\italic Freely} c e g
    f4 g f8(e) d4
    c4 c e g
    f4 e d2
    c4 c e g
    c4 b a8(g) f4
    e2 d
    c1
    c1^\markup{\bold \huge *}
    d1
    e1
    f1
    g1
    a1
    g4 e f d
    c1
    g'2^\markup{\bold \huge *} g
    a4 c2.
    g2 g
    a4 f2.
    g2 c
    e4 d c d
    b4 c2 b4
    c1
  }
}

firstverse = \lyricmode {
  Gau- de- a- mus, Gau- de- a- mus, Gau- de- a- mus Ho- di- e!
                   Gau- de- a- mus, Gau- de- a- mus Ho- di- e!
                   Gau- de- a- mus, Gau- de- a- mus Ho- di- e!
  Gau- de- a- mus, Gau- de- a- mus, Gau- de- a- mus Ho- di- e! Ho- di- e!
}

Mwords =\lyricmode {
}

\book
{
  \score { % this version for the printed page
    <<
%      \new ChordNames {
%	\set chordChanges = ##t
%        \guitar
%      }
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice << {\global \melody} >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = firstverse \lyricsto sopranos \firstverse
    >>
    \layout {
    }
  }
  \score { % this version for the midi output
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \unfoldRepeats \melody} }
	>>
	\context Lyrics = firstverse { s1 }
        \context Lyrics = firstverse \lyricsto sopranos \Mwords
    >>
    \midi {
    }
%    \layout {}
  }
}
