\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Just As I Am"
  composer = "J. H. Maunder"
  poet     = "Charlotte Elliot"
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key d \major
  \time 3/4
}

tempoMark = {
  \tempo 2=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c' {
  \global
  \repeat volta 4 {
    fis4 fis fis
    f2 f4
    f2 b4
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
    a4 a a
    a2.
    d4 e, fis
    g4. r8 e4
    d2.
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    d4 d d
  }
}

ten = \relative c' {
  \global
  \repeat volta 4 {
    a4 a a
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
    cis2.
    a4 d cis
    b2.(
    b4.) r8 g4
    fis2.
  }
}

bas = \relative c {
  \global
  \repeat volta 4 {
    d4 d d
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
    g4 g g
    fis2.
    b,4 g' fis
    e4. r8 a,4
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

verseTwo = \lyricmode {
  Just as I am, poor wreth- ed, blind
}

verseThree = \lyricmode {
  Just as I am Thou wilt re-  ceive
}

verseFour = \lyricmode {
  Just as I am, of that free love
}

\book {
  \score {
    \new ChoirStaff <<
      \new Voice = sop << \sop >>
      \new Lyrics \lyricsto sop \verseOneWomen
      \new Lyrics \lyricsto sop \verseTwo
      \new Lyrics \lyricsto sop \verseThree
      \new Lyrics \lyricsto sop \verseFour
      \new Voice = alt << \alt >>
%      \new Lyrics \lyricsto alt \verseOne
%      \new Lyrics \lyricsto alt \verseTwo
%      \new Lyrics \lyricsto alt \verseThree
%      \new Lyrics \lyricsto alt \verseFour
      \new Voice = ten << \clef "G_8" \ten >>
      \new Lyrics \lyricsto ten \verseOneMen
      \new Lyrics \lyricsto ten \verseTwo
      \new Lyrics \lyricsto ten \verseThree
      \new Lyrics \lyricsto ten \verseFour
      \new Voice = bas << \clef F \bas >>
%      \new Lyrics \lyricsto bas \verseOne
%      \new Lyrics \lyricsto bas \verseTwo
%      \new Lyrics \lyricsto bas \verseThree
%      \new Lyrics \lyricsto bas \verseFour
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
