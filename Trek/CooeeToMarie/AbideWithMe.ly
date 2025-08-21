\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Abide With Me"
  composer = "William Henry Monk"
  poet     = "Henry F. Lyte"
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key c \minor
  \time 4/4
}

tempoMark = {
  \tempo 4=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

sop = \relative c'' {
  \global
  \repeat volta 4 {
    g2 g4 f
    ees2 bes'
    c4 bes bes aes
    g1
    g2 aes4 bes
    c2 bes
    aes4 f g a
    bes1
    g2 g4 f
    ees2 bes'
    bes4 aes aes g
    f1
    f2 g4 aes
    g4 f ees aes
    g2 f
    c1
  }
}

alt = \relative c' {
  \global
  \repeat volta 4 {
    ees2 d4 d
    ees2 ees
    ees4 d ees f
    ees1
    ees2 ees4 ees
    ees2 ees
    ees4 f ees ees
    d1
    ees2 d4 d
    ees2 ees
    ees4 ees e e
    f1
    d2 ees4 d
    ees4 d ees f
    ees2 d
    ees1
  }
}

ten = \relative c' {
  \global
  \repeat volta 4 {
    bes2 bes4 aes
    g2 ees
    ees4 bes' bes bes
    bes1
    bes2 aes4 g
    aes2 g
    c4 bes bes f
    f1
    g4(aes) bes aes
    g2 ees'4(d)
    c4 c c bes
    aes1
    bes2 bes4 bes
    bes4 aes g c
    bes2. aes4
    g1
  }
}

bas = \relative c {
  \global
  \repeat volta 4 {
    f2 bes,4 bes
    c2 g
    aes4 bes c d
    ees1
    ees4(d) c bes
    aes2 ees'
    f4 d ees c
    bes1
    ees2 bes4 bes
    c2 g
    aes4. bes8 c4 c
    f1
    aes2 g4 f
    ees4 bes c aes
    bes2 bes
    f1
  }
}

verseOne = \lyricmode {
  A- bide with me; fast falls the e- ven- tide;
  The dark- ness deep- ens; Lord, with me a- bide!
  When oth- er help- ers fall, and com- forts flee,
  help of the help- less, O a- bide with me!
}

verseTwo = \lyricmode {
  Swift to it's close ebbs out life's lit- tle day:
  Earth's joys grow dim, its glor- ies pass a- way;
  Change and de- cay in all a- round I see;
  O thou who chang- est not, a- bide with me!
}

verseThree = \lyricmode {
  I need thy pres- ence ev- "'ry" pass- ing hour;
  What but thy grace can foil the tempt- ers power?
  Who, like thy- self, my guide and stay can be?
  Thro' cloud and sun- shine, Lord, a- bide with me!
}

verseFour = \lyricmode {
  I fear no foe, with thee at hand to bless;
  Ills have no weight, and tears no bit- ter- ness;
  Where is death's sting? where, grave, thy vic- tor- y!
  I tri- umph still, if thou a- bide with me.
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
