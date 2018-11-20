\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Jubilate Deo"
  composer = "Michael Praetorius 1571-1621)"
  copyright = \today
}

global = {
  \key c \major
  \time 2/2
  \tempo 4=100
}

melody = \relative c'' {
  \repeat volta 3 {
    c2\mark "A" d
    e4\mark "B" c c b
    c4\mark "C" a g4. f8
    e4(f) d2
    c2 g'4 g
    c,1
  }
}

firstverse = \lyricmode {
  Ju- bi- la- te De o,
  ju- bi- la- te De o,
  Al- le- lu- ia.
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
		     \oneVoice << \transpose c g, {\global \melody} >> }
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
