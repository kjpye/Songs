\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Rock of Ages"
  composer = "J. H. Maunder"
%  poet     = ""
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key g \major
  \time 4/4
}

tempoMark = {
  \tempo 4=85
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c' {
  \global
  \repeat volta 4 {
    d4 d e g
    g4 fis e(d)
    d4 d e g
    g4 fis e(d)
    d b' b b % 5
    c4 e, e(d)
    d4 b' b  b
    c4 e, e(d)
    g4. a8 a4 g
    a4. b8 b4(a)
    d4 f, e c'
    b2 a
    g1
  }
  g1
  g1
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    b4 b b b
    c4 c c2
    b4 d d cis
    c4 c c2
    b4 d f f
    e4 c c2
    b4 d f f
    e4 c c2
    b4 f' e e
    e4 cis d2
    d4 d c e
    g2 g4 fis
    g1
  }
  e1
  d1
}

ten = \relative c {
  \global
  \repeat volta 4 {
    d4 d d d
    d4 a' g(fis)
    g4 b b bes
    a4 a a2
    g4 g d' d
    c4 a a2
    g4 g d' d
    c4 a a2
    g4 g g g
    g4 g g(fis)
    g4 g g a
    d4(g,) c2
    b1
  }
  c1
  b1
}

bas = \relative c {
  \global
  \repeat volta 4 {
    g4 g g g
    a4 a d2
    g4 g g g
    a4 a g fis
    g4 g gis gis
    a4. g8 fis2
    g4 g gis gis
    a4. g8 fis2
    g4 b,c c
    cis4 a d4. c8
    b4 b c c
    d2 d
    g1
  }
  c,1
  g1
}

verseOne = \lyricmode {
  Rock of a- ges cleft for me,
  Let me hide my- self in thee.
  Let the wa- ter and the Blood,
  from Thy riv- en Side which flowed,
  be of sin the doub- le cure.
  Cleanse me from its guilt and power.
  A- men
}

verseTwo = \lyricmode {
  Not the lab- ours of my hands
  can ful- fil Thy laws de- mands.
  Could my zeal no res- pite know,
  could my tears for- e- ver flow.
  All for sin could not a- tone,
  Thou must save, and Thou a- lone.
}

verseThree = \lyricmode {
  Noth- ing in my hand I bring,
  simp- ly to thy cross I cling,
  Na- ked, come to Thee for dress,
  Help- less look to Thee for grace.
  Foul I to the Foun- tain fly,
  wash me Sav- iour, or I die.
}

verseFour = \lyricmode {
  While I draw this fleet- ing breath,
  when my eye- lids close in death.
  When I soar to tracts un- known,
  see Thee on Thy Judg- ment Throne.
  Rock of a- ges cleft for me,
  Let me hide my- self in thee.
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff <<
	\new Voice = sop << \voiceOne \sop >>
	\new Voice = alt << \voiceTwo \alt >>
      >>
      \new Lyrics \lyricsto sop \verseOne
      \new Lyrics \lyricsto sop \verseTwo
      \new Lyrics \lyricsto sop \verseThree
      \new Lyrics \lyricsto sop \verseFour
      \new Staff <<
%      \new Voice = ten << \clef "G_8" \ten >>
	\new Voice = ten << \clef bass \voiceOne \ten >>
	\new Voice = bas << \clef bass \voiceTwo \bas >>
      >>
%      \new Lyrics \lyricsto ten \verseOne
%      \new Lyrics \lyricsto ten \verseTwo
%      \new Lyrics \lyricsto ten \verseThree
%      \new Lyrics \lyricsto ten \verseFour
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
