\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Just As I Am"
  composer = "J. H. Maunder"
  poet     = "Charlotte Elliot"
}

#(set-global-staff-size 18)

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key d \major
  \time 3/4
  \tempo 4=92
}

tempoMark = {
  \tempo 2=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c' {
  \global
  \repeat volta 4 {
    fis4^\p fis fis
    f2 f4
    fis2 b4
    a2.
    g4 g g
    fis2 fis4
    g2 c4
    b2.
    b4 b cis
    d2 a4
    g2 a4
    fis2 fis4
    e2 a4
    d4(cis) b
    a2.
    b4 b b
    b2.
    a4^\mp a a
    a2.
    d4^\mf e, fis
    g4. r8 e4^\p
    d2.
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    d4^\p d d
    d2 d4
    d2 d4
    d2.
    e4 e e
    dis2 dis4
    e2 fis4
    fis2.
    g4 g e
    d2 d4
    d2 cis4
    d2 d4
    b2 e4
    fis4 e d
    cis2. dis4 g fis
    e2.
    e4^\mp fis e
    d2.
    d4^\mf d d
    d4. r8 cis4^\p
    d2.
  }
}

ten = \relative c' {
  \global
  \repeat volta 4 {
    a4^\p a a
    gis2 gis4
    a2 g4
    a2.
    b4 b b
    c2 c4
    b2 e4
    dis2.
    b4 b bes
    a2 a4
    b2 a4
    a2 a4
    gis2 a4
    a2 gis4
    a2.
    r2.
    b4 e d
    cis2.^\mp
    a4 d cis
    b2.^\mf(
    b4.) r8 g4^\p
    fis2.
  }
}

bas = \relative c {
  \global
  \repeat volta 4 {
    d4^\p d d
    d2 d4
    d2 g4
    fis2.
    e4 e e
    a2 a4
    g2 a4
    b2.
    e,4 e g
    fis2 fis4
    e2 a,4
    d2 d4
    d2 cis4
    b4(e) e
    a2.
    a4 a a
    g2.
    g4^\mp g g
    fis2.
    b,4^\mf g' fis
    e4. r8 a,4^\p
    d2.
  }
}

verseOneWomen = \lyricmode {
  Just as I am, with- out one plea
  but that Thy blood was shed for me,
  And that Thou bidd'st me come to Thee,
  O Lamb of God, I come.
  Just as I am, just as I am,
  Just as I am, I come.
}

verseOneMen = \lyricmode {
  Just as I am, with- out one plea
  but that Thy blood was shed for me,
  And that Thou bidd'st me come to Thee,
  O Lamb of God, I come.
  Just as I am,
  Just as I am, I come.
}

verseOneBass = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  O Lamb of God I come.
  Just as I am, Just as I am,
  Just as I am, I come.
}

verseTwo = \lyricmode {
  Just as I am, poor wretch- ed, blind
  sight, rich- es heal- ing of the mind.
  Yea all I need, in Thee I find,
}

verseThree = \lyricmode {
  Just as I am Thou wilt re-  ceive
  Wilt wel- come par- don, cleanse, re- lieve.
  Be- cause Thy pro- mise I be- lieve,
}

verseFour = \lyricmode {
  Just as I am, of that free love
  the breadth, length, depth, and height to prove.
  Here for a sea- son, then a- bove,
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = sop << \sop >>
      >>
      \new Lyrics \lyricsto sop \verseOneWomen
      \new Lyrics \lyricsto sop \verseTwo
      \new Lyrics \lyricsto sop \verseThree
      \new Lyrics \lyricsto sop \verseFour
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = alt << \alt >>
      >>
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = ten << \clef "G_8" \ten >>
      >>
      \new Lyrics \lyricsto ten \verseOneMen
      \new Lyrics \lyricsto ten \verseTwo
      \new Lyrics \lyricsto ten \verseThree
      \new Lyrics \lyricsto ten \verseFour
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = bas << \clef F \bas >>
      >>
      \new Lyrics \lyricsto bas \verseOneBass
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
  \score {
    \new ChoirStaff <<
      \new Voice = sop << \unfoldRepeats \sop >>
      \new Lyrics \lyricsto sop \verseOneWomen
      \new Lyrics \lyricsto sop \verseTwo
      \new Lyrics \lyricsto sop \verseThree
      \new Lyrics \lyricsto sop \verseFour
      \new Voice = alt << \unfoldRepeats \alt >>
      \new Voice = ten << \clef "G_8" \unfoldRepeats \ten >>
      \new Lyrics \lyricsto ten \verseOneMen
      \new Lyrics \lyricsto ten \verseTwo
      \new Lyrics \lyricsto ten \verseThree
      \new Lyrics \lyricsto ten \verseFour
      \new Voice = bas << \clef F \unfoldRepeats \bas >>
      \new Lyrics \lyricsto bas \verseOneBass
    >>
    \midi {}
  }
}
