\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "O God Our Help in Ages Past"
  composer = "William Croft, 1677-1727"
  poet     = "Isaac Watts, 1674-1748"
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key c \major
  \time 4/4
}

tempoMark = {
  \tempo 4=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c'' {
  \global
  \repeat volta 4 {
    \partial 4 g4
    e4 a g c
    c4 b c g
    c4 g a fis
    g2. \bar "" \break b4
    c4 a d b
    c4 a b g
    a4 c d b
    c2.
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    \partial 4 c4
    c4 c c e
    d4 d e e
    e4 e e d
    d2. d4
    e4 c f e
    e4 d d c
    c4 c f d
    e2.
  }
}

ten = \relative c {
  \global
  \repeat volta 4 {
    \partial 4 e4
    g4 a c c
    a4 g g c
    c4 b a a
    b2. g4
    g4 a a gis
    a4 a g g
    f4 g a g
    g2.
  }
}

bas = \relative c {
  \global
  \repeat volta 4 {
    \partial 4 c4
    c4 f e a
    f4 g c, c
    a'4 e c d
    g,2. g4
    c4 f d e
    a4 fis g e
    f4 e d g
    c,2.
  }
}

verseOne = \lyricmode {
  O God, our help in a- ges past,
  Our hope for years to come,
  Our shel- ter from the storm- y blast,
  And our e- ter- nal home.
}

verseTwo = \lyricmode {
  With- in the shad- ow of they throne,
  Still may we dwell se- cure.
  Suf- fi- cient is thine arm a- lone,
  And our de- fense is sure.
}

verseThree = \lyricmode {
  Be- fore the hills in or- der stood,
  Or earth re- ceived her frame,
  From ev- er- last- ing thou art God,
  To end- less years the same.
}

verseFour = \lyricmode {
  O God, our help in a- ges past,
  Our hope for years to come,
  Be thou our guide while life shall last,
  And our e- ter- nal home.
}

\book {
  \score {
    \new ChoirStaff <<
      \new Voice = sop << \sop >>
      \new Lyrics \lyricsto sop \verseOne
      \new Lyrics \lyricsto sop \verseTwo
      \new Lyrics \lyricsto sop \verseThree
      \new Lyrics \lyricsto sop \verseFour
      \new Voice = alt << \alt >>
      \new Lyrics \lyricsto alt \verseOne
      \new Lyrics \lyricsto alt \verseTwo
      \new Lyrics \lyricsto alt \verseThree
      \new Lyrics \lyricsto alt \verseFour
      \new Voice = ten << \clef "G_8" \ten >>
      \new Lyrics \lyricsto ten \verseOne
      \new Lyrics \lyricsto ten \verseTwo
      \new Lyrics \lyricsto ten \verseThree
      \new Lyrics \lyricsto ten \verseFour
      \new Voice = bas << \clef F \bas >>
      \new Lyrics \lyricsto bas \verseOne
      \new Lyrics \lyricsto bas \verseTwo
      \new Lyrics \lyricsto bas \verseThree
      \new Lyrics \lyricsto bas \verseFour
    >>
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}
