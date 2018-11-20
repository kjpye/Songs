\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "The Twelve Days of the Cloud"
  composer = "Traditional"
  poet = "CenITex"
  copyright = \today
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=100
}

melody = \relative c' {
  \partial 4 c8 c
  a8 a f' f f4 e8 f
  g8 a bes g a2
  \repeat volta 7 {
    \time 3/4
    c8 c g a bes g
  }
  \time 4/4
  c2 d4 b
  c1
  \time 3/4
  c8(bes) a g f4
  bes4 d, f
  \time 4/4
  g8(f) e d c4 a'8 bes 
  c4 d8(bes) a f g4
  f2. \bar "||"
}

firstverse = \lyricmode {
  On the twelfth _ day of Christ- mas my true love sent to me
  Twelve _ drum- mers drum- ming
  Five gold- en rings
  Four call- ing birds
  Three French hens
  Two tur- tle doves
  and a par- tridge in a pear tree.
}

otherverses = \lyricmode {
  Eleven pi- pers pip- ing
  Ten lords a- leap- ing
  Nine la- dies danc- ing
  Eight maids a milk- ing
  Seven swans a swim- ming
  Six geese a lay- ing
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
