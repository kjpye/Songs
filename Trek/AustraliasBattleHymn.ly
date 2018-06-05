\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Australia's Battle Hymn"
  composer = "Rev. J. McIntosh, M.A."
  poet     = "J. Laurence Rentook D.D."
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key g \major
  \time 4/2
}

tempoMark = {
  \tempo 2=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c' {
  \global
  \repeat volta 4 {
    d2. d4 g2 a
    b2 a g1
    a2 b c b
    a2 g a1
    b2 c4(d) e2 d
    c2 b a1
    b2 b c c
    cis2 cis d1
    d,2. d4 g2 a
    b2 c d1
    c2 b a g
    a2 e fis1^\fermata
    g2. g4 b(a) g(fis)
    e2 g d1
    e2 fis g b
    a2 g a1
    g2. g4 b(a) g(fis)
    e2 g c1
    b2 a d c
    b2 a g1
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    b2. b4 e2 fis
    g2 fis g1
    e2 e e e
    e2 e fis1
    g2 g g b
    a2 g fis1
    f2 e4(d) c2 e
    g2 fis4(e) d1
    b2. b4 c2 c
    d2 e4(fis) g1
    g2 g fis e
    e2 e d1^\fermata
    d2 c d d
    c2 c b1
    c2 c d g
    e2 e fis1
    d2 e f dis
    e2 d e(d)
    d2 d d e
    d2 d4(c) b1
  }
}

ten = \relative c' {
  \global
  \repeat volta 4 {
    bes2. bes4 bes2 d
    d2 c b1
    a2 gis a d
    c2 a d1
    d2 e4(f) e2 e
    e2 cis d1
    a2 g4(f) e2 g
    b2 a4(g) fis1
    gis2. gis4 gis2 gis
    g2 g4(a) b2(f')
    e2 d c b
    a2 a a1^\fermata
    b2 a g b4(a)
    g2 e g1
    g2 a g d'
    cis2 cis d1
    b2 b dis4(c) b(a)
    g2 g g(fis)
    g2 fis g g
    g2 fis g1
  }
}

bas = \relative c' {
  \global
  \repeat volta 4 {
    g2. g4 e2 d
    g2 d g1
    c,2 b a b
    c2 cis d1
    gis2 gis c gis
    a2 a d,1
    g,2 g c c
    a2 a d1
    gis2. f4 e2 dis
    d2 c b1
    c2 d dis e
    c2 c d1^\fermata
    g,2 a b b
    c2 c g1
    c2 a b g
    a2 a d1
    gis2 e b b
    c2 b a(d)
    g,2 c b c
    d2 e g,1
  }
}

verseOne = \lyricmode {
  God that made our fath- ers strong
  Lead us when the dan- gers throng;
  God, that made our moth- ers purer,
  Make us stead= fast to en- dure!
  On the wave or tent- ed field
  Be our sword and bat- "tle-" shield!

  God, that watch- est through the day,
  Guard each sea- ward coast and bay!
  God, in love's un- sleep- ing night,
  Keep our homes through dark- est night!
}

verseTwo = \lyricmode {
  Hail, our em- pire spread- ing far,
  Great in peace as dread in war!
  Ban- ner brave as in the past
  Float on fort and tower and mast:
  Let thy blaz- on flut- ter free,
  South and north, on e- very sea!
}

verseThree = \lyricmode {
  Here thy sons shall guard the gates
  Of thy south- ward shores and straits;
  On wide o- cean we shall meet
  One un- sund- ered flag and fleet,
  And the path- way of the sea
  Prove our broad- ening des- tin- y.
}

verseFour = \lyricmode {
  Oh, for peace or bat- "tle-" fray
  Nel- son's sig- nal points the way;
  Dut- y's claim and count- ry's call
  Shall be con- science for us all!
  Set that sig- nal high, ad then
  For- ward! Quit your- selves like men!
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
