\version "2.25.16"

\include "kjp.ly"

\header {
  title = "God so loved the world"
  subtitle = "from The Crucifixion (1887)"
  composer = "Sir John Stainer (1840-1901)"
  copyright = \markup \center-column {
    \line {
      Original engraved by
      \with-url "http://www.wilbertberendsen.nl/"
      {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2008
      \with-url "http://www.cpdl.org/"
      {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
}

TempoTrack = {
  \tempo "Andante ma non lento" 4=90
}

global = {
  \key d \major
  \time 3/4
}

dyn = {
  \global
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.*3
  \crescTextCresc
  s2.\<
  s2.*6\!
  s2 s4\mf
  s2.*4
  s2.\p
  s2.
  \crescTextCresc
  s2.\<
  s2 s4\f
  s2.*3
  % For God...
  \mark \default
  s4 s\p s
  s2.*2
  \crescTextCresc
  s4 s2\<
  s2 s4\mf
  s2.*4
  s4\p s2
  s2.*4
  % God so loved...
  \mark \default
  s2.\pp
  s2.*3
  \crescTextCresc
  s2.\<
  s2.*6\!
  s2 s4\mf
  s2.*4
  s2.\p
  s2.
  \crescTextCresc
  s2.\<
  s2 s4\f
  s2.*2
  \crescTextCresc
  s2.\<
  s2.*4\!
  \dimTextDim
  s2.\>
  \override TextSpanner.bound-details = #'left
  % #'text = "rall."
  s2.\!\startTextSpan
  s2.\stopTextSpan
  \mark \default
  s2.\pp
  s2.*7
  s2.\ppp
  s2.\startTextSpan
  s2.\stopTextSpan
}

soprano = \relative c' {
  \global
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2.|
  % For God...
  r4 fis, fis b a g fis4. g8 fis e d4 fis b|
  d8. cis16 cis4 cis e e d cis4. cis8 d b|
  ais4 b g g8. fis16 fis2|
  fis4 fis fis fis2 fis4 fis cis' b a2(gis4)fis2.|
  % God so loved...
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2 r4|
  R2. r4 d g g2 fis4 e2 d4 cis2.(d2) b4 a2.\fermata|
  % God so loved...
  a b4 a4. a8 d2.~d2 r4|
  fis,2. fis4 e4. e8 a2.~a2 r4|
  fis2. fis4 e fis d2.\fermata
  \bar"|."
}

alto = \relative c' {
  \global
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis2.|
  % For God...
  r4 d d fis e d cis4. d8 cis ais b4 d fis|
  b8. ais16 ais4 fis e e fis g4. g8 fis fis|
  e4 fis d e8. e16 e2|
  fis4 fis fis d(cis) b cis cis d cis2(b4)a2.|
  % God so loved...
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis fis b|
  b2 a4 g g g c2 c4 b2 a4 g2. g g\fermata|
  % God so loved...
  fis e4 fis4. a8 a2.(g2) r4|
  d2. cis4 cis4. e8 e2.(d2) r4|
  cis2. cis4 cis cis d2.\fermata
  \bar"|."
}

tenor = \relative c' {
  \global
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d2.|
  % For God...
  r4 b b d cis b ais4. b8 ais fis b4 b d|
  fis8. fis,16 fis4 ais b b b ais4. ais8 b b|
  cis4 b d cis8. cis16 cis2|
  fis,4 fis fis fis2 fis4 fis fis fis fis2(eis4)fis2.|
  % God so loved...
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d d d|
  d(e)fis g d d dis2 dis4 e2 fis4 a,2. b e\fermata|
  % God so loved...
  c c4 c4. c8 b2.~b2 r4|
  a2. g4 g4. g8 g2.(fis2) r4|
  a2. a4 g a fis2.\fermata
  \bar"|."
}

bass = \relative c {
  \global
  d2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 d2.|
  % For God...
  R2.*4 r4 r fis, g g fis e4. e8 d d|
  cis4 d b ais8. ais16 ais2|
  fis'4 fis fis b,(a) gis a a b cis2. fis,|
  % God so loved...
  d'2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 b b b|
  c2 c4 b b b a2 a4 g2 fis4 e2. d cis\fermata|
  % God so loved...
  d2. d4 d4. d8 d2.~d2 r4|
  d2. d4 d4. d8 d2.~d2 r4|
  a2. a4 a a d,2.\fermata
  \bar"|."
}

trebleaccOne = \relative c' {
  \global
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2.|
  % For God...
  r4 fis, fis b a g fis4. g8 fis e d4 fis b|
  d8. cis16 cis4 cis e e d cis4. cis8 d b|
  ais4 b g g8. fis16 fis2|
  fis4 fis fis fis2 fis4 fis cis' b a2(gis4)fis2.|
  % God so loved...
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2 r4|
  R2. r4 d g g2 fis4 e2 d4 cis2.(d2) b4 a2.\fermata|
  % God so loved...
  a b4 a4. a8 d2.~d2 r4|
  fis,2. fis4 e4. e8 a2.~a2 r4|
  fis2. fis4 e fis d2.\fermata
  \bar"|."
}

trebleaccTwo = \relative c' {
  \global
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis2.|
  % For God...
  r4 d d fis e d cis4. d8 cis ais b4 d fis|
  b8. ais16 ais4 fis e e fis g4. g8 fis fis|
  e4 fis d e8. e16 e2|
  fis4 fis fis d(cis) b cis cis d cis2(b4)a2.|
  % God so loved...
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis fis b|
  b2 a4 g g g c2 c4 b2 a4 g2. g g\fermata|
  % God so loved...
  fis e4 fis4. a8 a2.(g2) r4|
  d2. cis4 cis4. e8 e2.(d2) r4|
  cis2. cis4 cis cis d2.\fermata
  \bar"|."
}

bassaccOne = \relative c' {
  \global
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d2.|
  % For God...
  r4 b b d cis b ais4. b8 ais fis b4 b d|
  fis8. fis,16 fis4 ais b b b ais4. ais8 b b|
  cis4 b d cis8. cis16 cis2|
  fis,4 fis fis fis2 fis4 fis fis fis fis2(eis4)fis2.|
  % God so loved...
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d d d|
  d(e)fis g d d dis2 dis4 e2 fis4 a,2. b e\fermata|
  % God so loved...
  c c4 c4. c8 b2.~b2 r4|
  a2. g4 g4. g8 g2.(fis2) r4|
  a2. a4 g a fis2.\fermata
  \bar"|."
}

bassaccTwo = \relative c {
  \global
  d2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 d2.|
  % For God...
  R2.*4 r4 r fis, g g fis e4. e8 d d|
  cis4 d b ais8. ais16 ais2|
  fis'4 fis fis b,(a) gis a a b cis2. fis,|
  % God so loved...
  d'2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 b b b|
  c2 c4 b b b a2 a4 g2 fis4 e2. d cis\fermata|
  % God so loved...
  d2. d4 d4. d8 d2.~d2 r4|
  d2. d4 d4. d8 d2.~d2 r4|
  a2. a4 a a d2.\fermata
  \bar"|."
}

textOne = \lyricmode {
  God so loved the world, __
  God so loved the world, __
  that He gave His on -- ly be -- got -- ten Son,
  that who -- so be -- liev -- eth,
  be -- liev -- eth in Him
  should not per -- ish,
  should not per -- ish,
  but have ev -- er -- last -- ing life.
}

textTwo = \lyricmode {
  For God sent not His Son in -- to the world
  to con -- demn the world,
}

textThree = \lyricmode {
  God sent not His Son in -- to the world
  to con -- demn the world;
  but that the world through Him might be sa -- ved.

  God so loved the world, __
  God so loved the world, __
  that He gave His on -- ly be -- got -- ten Son,
  that who -- so be -- liev -- eth,
  be -- liev -- eth in Him
  should not per -- ish,
  should not per -- ish,
  but have ev -- er -- last -- ing life,
  ev -- er -- last -- ing life,
  ev -- er -- last -- ing,
  ev -- er -- last -- ing life.

  God so loved the world, __
  God so loved the world, __
  God so loved the world.

}

wordsMidi = \lyricmode {
  "God " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life. "

  "\nFor " "God " "sent " "not " "His " "Son " in "to " "the " "world "
  "\nto " con "demn " "the " "world, "

  "\nGod " "sent " "not " "His " "Son " in "to " "the " "world "
  "\nto " con "demn " "the " "world; "
  "\nbut " "that " "the " "world " "through " "Him " "might " "be " sa "ved. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life, "
  "\nev" er last "ing " "life, "
  "\nev" er last "ing, "
  "\nev" er last "ing " "life. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world. "
}

wordsMidiSop = \lyricmode {
  "God " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life. "

  "\nFor " "God " "sent " "not " "His " "Son " in "to " "the " "world "
  "\nto " con "demn " "the " "world, "

  "\nGod " "sent " "not " "His " "Son " in "to " "the " "world "
  "\nto " con "demn " "the " "world; "
  "\nbut " "that " "the " "world " "through " "Him " "might " "be " sa "ved. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life, "
  "\nev" er last "ing, "
  "\nev" er last "ing " "life. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world. "
}

wordsMidiBass = \lyricmode {
  "God " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life. "

  "\nGod " "sent " "not " "His " "Son " in "to " "the " "world "
  "\nto " con "demn " "the " "world; "
  "\nbut " "that " "the " "world " "through " "Him " "might " "be " sa "ved. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nthat " "He " "gave " "His " on "ly " be got "ten " "Son, "
  "\nthat " who "so " be liev "eth, "
  "\nbe" liev "eth " "in " "Him "
  "\nshould " "not " per "ish, "
  "\nshould " "not " per "ish, "
  "\nbut " "have " ev er last "ing " "life, "
  "\nev" er last "ing " "life, "
  "\nev" er last "ing, "
  "\nev" er last "ing " "life. "

  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world, " 
  "\nGod " "so " "loved " "the " "world. "
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
          \addlyrics { \textOne          \textThree }
        >>
      >>
      \new PianoStaff <<
	\new Staff = pianorh \with {
        }
        <<
	  \new Voice { \vo \trebleaccOne }
	  \new Voice { \vt \trebleaccTwo }
	>>
	\new Staff = pianolh \with {
        }
        <<
          \clef bass
	  \new Voice { \vo \bassaccOne }
	  \new Voice { \vt \bassaccTwo }
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
          \addlyrics { \textOne          \textThree }
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dyn
          \new Voice \alto
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \tiny \dyn
          \new Voice \tenor
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dyn
          \new Voice \bass
          \addlyrics { \tiny \textOne \textThree }
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dyn
          \new Voice \soprano
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \tiny \dyn
          \new Voice \tenor
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dyn
          \new Voice \bass
          \addlyrics { \tiny \textOne \textThree }
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dyn
          \new Voice \soprano
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dyn
          \new Voice \alto
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
          \addlyrics { \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dyn
          \new Voice \bass
          \addlyrics { \tiny \textOne \textThree }
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dyn
          \new Voice \soprano
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dyn
          \new Voice \alto
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \tiny \dyn
          \new Voice \tenor
          \addlyrics { \tiny \textOne \textTwo \textThree }
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
          \addlyrics { \textOne \textThree }
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
          \addlyrics \wordsMidi
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
          midiInstrument = "choir aahs"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
          \addlyrics \wordsMidiSop
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
          midiInstrument = "choir aahs"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dyn
          \new Voice \soprano
        >>
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dyn
          \new Voice \alto
        >>
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dyn
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
          midiInstrument = "choir aahs"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dyn
          \new Voice \bass
          \addlyrics \wordsMidiBass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
