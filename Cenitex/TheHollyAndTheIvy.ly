\version "2.14.2"
#(set-default-paper-size "a4")

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 3/4
  \tempo 4=100
}

melody = \relative c'' {
  \partial 4 g4
  \repeat volta 6 {
    g8 g g4 e'
    \voiceOne << { d4 b4. g8 \oneVoice } \new Voice {\voiceTwo \hideNotes \slurDashed d'4(b4.)g8 \unHideNotes } >>
    g8 g g4 e'4
    d2 d8(c)
    b8 a g4 b8 b
    e,8 e d4 g8(a)
    \voiceOne << { b8 c b4 a8 a \oneVoice } \new Voice {\voiceOne \hideNotes \slurDown \slurDashed b8 c b4 a8(a) \unHideNotes } >>
  }
  \alternative {
    {
      g2 g8 g
      g8 g g4 e'4
      d4(b) g8 g
      g8 g g4 e'
      d2 d8(c)
      b8 a g4 b
      e,8 e d8 d g8(a)
      b8 c b4 a
      g2 g4
    }
    {
      g2 r4
    }
  }
}

guitarchords = \chordmode {
  \partial 4 g
  \repeat volta 6 {
    g2 c4/g
    g2.
    g2 c4
    g2.
    g2.
    c4 g4/b e8:m d
    g8 c g4/d d4
  }
  \alternative {
    {
      g2.
      g2 c4
      g2.
      e2.:m
      b2:m d4
      g2.
      c4 g/b e8:m d
      g8 c g4/d d
      g2.
    }
    {
      g2.
    }
  }
}

verseOne = \lyricmode {
  \set stanza = "1. "
  The hol- ly and the i- vy,
  When they are both full grown,
  Of all the trees that are in the wood,
  The hol- ly bears the _ crown:
  O, the ris- ing of the sun,
  And the run- ning of the deer
  The play- ing of the mer- ry or- gan,
  Sweet sing- ing in the choir.
  The
  crown..
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  The hol- ly bears a blos- som,
  As white as lil- y flow'r,
  And Mar- y bore sweet _ Je- sus Christ,
  To be our dear Sav- _ iour:
}

verseThree = \lyricmode {
  \set stanza = "3. "
  The hol- ly bears a ber- ry,
  As red as an- y blood,
  And Mar- y bore sweet _ Je- sus Christ,
  To do poor sin- ners _ good:
}

verseFour = \lyricmode {
  \set stanza = "4. "
  The hol- ly bears a pri- ckle,
  As sharp as an- y thorn,
  And Mar- y bore sweet _ Je- sus Christ,
  On christ- mas Day in the morn:
}

verseFive = \lyricmode {
  \set stanza = "5. "
  The hol- ly bears a bark, _
  As bit- ter as the gall,
  And Mar- y bore sweet _ Je- sus Christ,
  For to re- deem us _ all:
}

verseSix = \lyricmode {
  \set stanza = "6. "
  The hol- ly and the i- vy,
  When they are both full grown,
  Of all the trees that are in the wood,
  The hol- ly bears the _
}

\book
{
  \header
  {
    title = "The Holly and the Ivy"
    copyright = \today
  }
  \score
  {
    <<
      \new ChordNames {
	\set chordChanges = ##t
	\transpose g e \guitarchords
      }
      \new Staff \new Voice = melody { \voiceOne \transpose g e << \global \melody >> }
      \new Lyrics \lyricsto melody \verseOne
      \new Lyrics \lyricsto melody \verseTwo
      \new Lyrics \lyricsto melody \verseThree
      \new Lyrics \lyricsto melody \verseFour
      \new Lyrics \lyricsto melody \verseFive
      \new Lyrics \lyricsto melody \verseSix
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}
