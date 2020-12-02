\version "2.20.0"

\include "swing.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Up the Wooden Hill to Bedfordshire"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Reginald Connelly"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Clifford Grey"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \tempo 4=82
}

TTa = {
  \global
  s1-\markup \upright \bold {Gentle swing feel}
  s1*3
}

TTb = {
  \set Score.tempoHideNote = ##t
  \tempo 4=82
  s1*17
  \tempo 4=75 s1-\markup \upright \bold rall.
}

TTc = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70 s1-\markup \upright \bold slower
  s1
  \tempo 4=75s1-\markup \upright \bold "more freely"
  s1*10
  \tempo 4=70 s1-\markup \upright \bold rit.
}

TTd = {
  \tempo 4=75 s2 \tempo 4=37 s
  \tempo 4=75 s2 \tempo 4=37 s
}

TempoTrack       = { \TTa \TTb \TTc      \TTd }
TempoTrackSingle = { \TTa \TTb \TTc \TTb \TTd }

RTa = {
  \set Score.currentBarNumber = #1
  \mark \markup { \circle "66a" } s1*4
}

RTb = {
%  \mark \markup { \circle "66b" } s1*4
  \mark \markup { { \musicglyph #"scripts.segno" } } s1*4
  \mark \markup { \circle "66c" } s1*4
  \mark \markup { \circle "67a" } s1*3
  \mark \markup { \circle "67b" } s1*3
  \mark \markup { \circle "67c" } s1*3
  \mark \markup { \circle "68a" } s2. s8 \mark \markup \bold { To Coda \musicglyph #"scripts.coda" } s
}

RTc = {
  s1*2
  \mark \markup { \circle "68b" } s1*3
  \mark \markup { \circle "68c" } s1*3
  \mark \markup { \circle "69a" } s1*3
  \mark \markup { \circle "69b" } s1*2
  s2. s8 \mark \markup \bold { D. S. al Coda } s
}

RTd = {
  \break
  \mark \markup { \musicglyph #"scripts.coda" } s4
  \mark \markup { \circle "69c" } s2. s1
}

RehearsalTrack       = { \RTa \RTb \RTc      \RTd }
RehearsalTrackSingle = { \RTa \RTb \RTc \RTb \RTd }

CTa = \chordmode {
  d1/a
  d1:dim7/a
  a1:9
  a1:7
}

CTb = \chordmode {
  d1 % 66b
  a2 a4:9 a
  s2 a:7
  d1:6
  s2 d4:6/fis f:7 % 66c
  a1/e
  e1:7
  a1:7
  d2:6 dis:dim7 % 67a
  a1:9
  d2:7 d:aug7
  g2:6 a:9 % 67b
  d2:6 dis:dim7
  a1:9
  d2:6 dis:dim7 % 67c
  a1:9
  d2:6 g
  g4:m d b2:7 % 68a
}

CTc = \chordmode {
  e2 a4:7 a:13
  d1:6
  d2:6 dis:dim7 % 68b
  a1:9
  d2:6 dis:dim7
  a1:7 % 68c
  fis1:7
  b1:m
  cis4. cis8:7 s2 % 69a
  fis1:m
  e1:7
  a2 a:6 % 69b
  e1:7
  a2.:7 a4:aug7
}

CTd = \chordmode {
  e2 a4:7 a:13 % 69c
  d1:6
}

ChordTrack       = { \CTa \CTb \CTc      \CTd }
ChordTrackSingle = { \CTa \CTb \CTc \CTb \CTd }

melodyA = \relative {
  \global
  R1*4
}

melodyB = \relative \tripletFeel 8 {
  fis'8 eis fis eis fis4 a % 66b
  fis8 eis e2 r4
  e8 dis~ \tuplet 3/2 {dis e dis} e4. fis8
  b,2. r8 a
  b4. a8 b4~ \tuplet 3/2 {b8 bis bis} % 66c
  \tuplet 3/2 {cis8 bis cis~}cis fis e4. cis8
  cis8 b e2 fis4
  e1
  {fis4 fis a4. fis8} % 67a
  \tuplet 3/2 {a8 fis a~} a fis e2
  d8 e fis d e4 fis
  b,2. r8 a % 67b
  fis'4 \tuplet 3/2 {fis8 eis fis~} fis4 \tuplet 3/2 {r8 a, a}
  a'4 \tuplet 3/2 {a8 g4} fis r8 a,
  fis'8 eis fis eis fis4 \tuplet 3/2 {r8 eis fis} % 67c
  a8 g a g fis4 r
  a,8 gis a ais \tuplet 3/2 {b ais b~}b d
  g8 d fis2~\tuplet 3/2 {fis8 g fis} % 68a
}

melodyC = \relative \tripletFeel 8 {
  \tuplet 3/2 {fis'8 e4~}\tuplet 3/2 {e8 dis e} a4 fis
  d1
  r8 eis fis eis fis eis fis fis % 68b
  g8 a g fis e4. a,8
  fis'16 fis8. fis8 eis fis eis fis fis
  g8 a g fis e2 % 68c
  fis4 cis fis4. e8
  \tuplet 3/2 {e8 d d~}d cis d4. gis,8
  cis4 cis8 gis'~4. gis8 % 69a
  gis8 fis~\tuplet 3/2 {fis fis eis} fis2
  e8 eis fis gis fis e d bis
  cis8 bis cis gis' fis2 % 69b
  e8 b ais b e b ais b
  cis8 cis d dis e4(f) \bar "||"
}

melodyD = \relative \tripletFeel 8 {
  \tuplet 3/2 {fis'8 e4~} \tuplet 3/2 {e8 dis e} a4\fermata fis\fermata % 69c
  d1\fermata
}

melody       = { \melodyA \melodyB \melodyC          \melodyD \bar "|." }
melodySingle = { \melodyA \melodyB \melodyC \melodyB \melodyD \bar "|." }

wordsOne = \lyricmode {
  Up the wood -- en hill to Bed -- ford -- shire,
  head -- ing __ for the land of dreams
  When I look back __ to those hap -- py child -- hood days,
  like yes -- ter -- day it seems.
  It was grand, my mo -- ther held __ my hand,
  Dad -- dy was the old gee gee.
  The old wood -- en hill __
  was the old wood -- en stair,
  and Bed -- ford -- shire a cot where I knelt to say my prayer.
  Climb -- ing up the wood -- en hill __ to Bed -- ford -- shire, __
  they were hap -- py, __ hap -- py days for me.

  Last night I dreamt a -- bout the place where I was born,
  the vil -- lage school, the wind -- ing lane,
  the fields of wav -- ing corn.
  Seems that dream brought me -- mo -- ries __ to me,
  my child -- hood days __ in fan -- cy __ I could see.
  When the sun had gone to rest and I was tired of play.
  dad would put me on his back and then to me he'd say: __

  hap -- py, __ hap -- py days for me.
}

wordsSingle = \lyricmode {
  Up the wood -- en hill to Bed -- ford -- shire,
  head -- ing __ for the land of dreams
  When I look back __ to those hap -- py child -- hood days,
  like yes -- ter -- day it seems.
  It was grand, my mo -- ther held __ my hand,
  Dad -- dy was the old gee gee.
  The old wood -- en hill __
  was the old wood -- en stair,
  and Bed -- ford -- shire a cot where I knelt to say my prayer.
  Climb -- ing up the wood -- en hill __ to Bed -- ford -- shire, __
  they were hap -- py, __ hap -- py days for me.

  Last night I dreamt a -- bout the place where I was born,
  the vil -- lage school, the wind -- ing lane,
  the fields of wav -- ing corn.
  Seems that dream brought me -- mo -- ries __ to me,
  my child -- hood days __ in fan -- cy __ I could see.
  When the sun had gone to rest and I was tired of play.
  dad would put me on his back and then to me he'd say: __

  Up the wood -- en hill to Bed -- ford -- shire,
  head -- ing __ for the land of dreams
  When I look back __ to those hap -- py child -- hood days,
  like yes -- ter -- day it seems.
  It was grand, my mo -- ther held __ my hand,
  Dad -- dy was the old gee gee.
  The old wood -- en hill __
  was the old wood -- en stair,
  and Bed -- ford -- shire a cot where I knelt to say my prayer.
  Climb -- ing up the wood -- en hill __ to Bed -- ford -- shire, __
  they were hap -- py, __ hap -- py days for me.
}

midiWords = \lyricmode {
  "Up " "the " wood "en " "hill " "to " Bed ford "shire, "
  "\nhead" "ing "  "for " "the " "land " "of " "dreams "
  "\nWhen " "I " "look " "back "  "to " "those " hap "py " child "hood " "days, "
  "\nlike " yes ter "day " "it " "seems. "
  "\nIt " "was " "grand, " "my " mo "ther " "held "  "my " "hand, "
  "\nDad" "dy " "was " "the " "old " "gee " "gee. "
  "\nThe " "old " wood "en " "hill " 
  "\nwas " "the " "old " wood "en " "stair, "
  "\nand " Bed ford "shire " "a " "cot " "where " "I " "knelt " "to " "say " "my " "prayer. "
  "\nClimb" "ing " "up " "the " wood "en " "hill "  "to " Bed ford "shire, " 
  "\nthey " "were " hap "py, "  hap "py " "days " "for " "me. "

  "\nLast " "night " "I " "dreamt " a "bout " "the " "place " "where " "I " "was " "born, "
  "\nthe " vil "lage " "school, " "the " wind "ing " "lane, "
  "\nthe " "fields " "of " wav "ing " "corn. "
  "\nSeems " "that " "dream " "brought " me mo "ries "  "to " "me, "
  "\nmy " child "hood " "days "  "in " fan "cy "  "I " "could " "see. "
  "\nWhen " "the " "sun " "had " "gone " "to " "rest " "and " "I " "was " "tired " "of " "play. "
  "\ndad " "would " "put " "me " "on " "his " "back " "and " "then " "to " "me " "he'd " "say: " 

  "\nUp " "the " wood "en " "hill " "to " Bed ford "shire, "
  "\nhead" "ing "  "for " "the " "land " "of " "dreams "
  "\nWhen " "I " "look " "back "  "to " "those " hap "py " child "hood " "days, "
  "\nlike " yes ter "day " "it " "seems. "
  "\nIt " "was " "grand, " "my " mo "ther " "held "  "my " "hand, "
  "\nDad" "dy " "was " "the " "old " "gee " "gee. "
  "\nThe " "old " wood "en " "hill " 
  "\nwas " "the " "old " wood "en " "stair, "
  "\nand " Bed ford "shire " "a " "cot " "where " "I " "knelt " "to " "say " "my " "prayer. "
  "\nClimb" "ing " "up " "the " wood "en " "hill "  "to " Bed ford "shire, " 
  "\nthey " "were " hap "py, "  hap "py " "days " "for " "me. "
}

pRHa = \relative {
  \global
  <a' d fis a>1
  <d eis gis b>1
  <cis e g b>1
  <cis e g a>1 \break
}

pRHb = \tripletFeel 8 \relative {
  <d'' fis>8 <cis eis> <d fis> <cis eis> <d fis>4 <fis a> % 66b
  <d fis>8 eis <cis e>2 r4
  <cis e>8 <bis dis>~\tuplet 3/2 {q <cis e> <b dis>} <cis e>4. fis8
  b,2. r8 a
  b4. a8 <d, fis b>4~\tuplet 3/2 {q8 <dis a' bis> q} % 66c
  \tuplet 3/2 {cis'8 bis cis~} cis fis e4. cis8cis8 b e2 fis4
  s1
  fis4 fis a4. fis8 % 67a
  \tuplet 3/2 {a8 fis a~}a fis e2
  d8 e fis d e4 fis
  b,2. r8 a % 67b
  fis'4 \tuplet 3/2 {fis8 eis fis~}fis4 \tuplet 3/2 {r8 a, a}
  a'4 \tuplet 3/2 {a8 g4} fis4 r8 a,
  fis'8 eis fis eis fis4 \tuplet 3/2 {r8 eis fis} % 67c
  a8 g a g fis4 r
  <fis, a>8 <eis gis> <fis a> ais \tuplet 3/2 {<g b> ais q~}q8 d
  s1 % 68a
}

pRHc = \relative {
  s1
  <fis' a b d>1
  s1 % 68b
  s1
  s1
  s1 % 68c
  s1
  \tuplet 3/2 {<cis' e>8 <b d> q~}q <ais cis> <b d>4. gis8
  <eis cis'>4 cis'8 <cis gis'>8~4. gis'8 % 69a
  s1
  s1
  s1 % 69b
  s1
  s1
}

pRHd = \relative {
  s1
  <fis' a b d>1\fermata
}

pianoRH       = { \pRHa \pRHb \pRHc       \pRHd }
pianoRHSingle = { \pRHa \pRHb \pRHc \pRHb \pRHd }

pRHoneA = \relative {
  \global
  \voiceOne
  s1*4
}

pRHoneB = \tripletFeel 8 \relative {
  \voiceOne
  s1*7
  e''1 % 66c+++
  s1*9
  g8 d fis2~\tuplet 3/2 {fis8 g fis} % 68a
}

pRHoneC = \tripletFeel 8 \relative {
  \voiceOne
  \tuplet 3/2 {fis''8 e4~} \tuplet 3/2 {e8 dis e} a4 fis
  s1
  r8 eis fis eis fis eis fis fis % 68b
  g8 a g fis e4. a,8
  fis'16 fis8. fis8 eis fis eis fis fis
  g8 a g fis e2 % 68c
  fis4 cis fis4. e8
  s1
  s1 % 69a
  gis8 fis~\tuplet 3/2 {fis fis eis} fis2
  e8 eis fis gis fis e d bis
  cis8 bis cis gis' fis2 % 69b
  e8 b ais b e b ais b
  cis8 cis d dis e4 f
}

pRHoneD = \tripletFeel 8 \relative {
  \voiceOne
  \tuplet 3/2 {fis''8 e4~}\tuplet 3/2 {e8 dis e} a4\fermata fis4\fermata % 69c
  s1
}

pianoRHone       = { \pRHoneA \pRHoneB \pRHoneC          \pRHoneD }
pianoRHoneSingle = { \pRHoneA \pRHoneB \pRHoneC \pRHoneB \pRHoneD }

pRHtwoA = \relative {
  \global
  \voiceTwo
  s1*4
}

pRHtwoB = \tripletFeel 8 \relative {
  \voiceTwo
  s1*7
  cis''4 <d, b'> <cis ais'> <cis a'> % 66c+++
  s1*9
  bes'4 <a d> <a dis>2 % 68a
}

pRHtwoC = \tripletFeel 8 \relative {
  \voiceTwo
  <gis' b>2 cis
  s1
  a2 a % 68b
  cis2 cis
  a2 a
  cis2 cis % 68c
  ais1
  s1
  s1 % 69a
  <a cis>1
  gis1
  <e a>4. <a cis>8~2 % 69b
  gis1
  g4 g8 g g4 <g cis>
}

pRHtwoD = \relative {
  \voiceTwo
  <gis' b>2 cis
  s1
}

pianoRHtwo       = { \pRHtwoA \pRHtwoB \pRHtwoC          \pRHtwoD }
pianoRHtwoSingle = { \pRHtwoA \pRHtwoB \pRHtwoC \pRHtwoB \pRHtwoD }

dPa = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*3
}

dPb = {
  \override DynamicTextSpanner.style = #'none
  s1*18
}

dPc = {
  \override DynamicTextSpanner.style = #'none
  s1*14
}

dPd = {
  \override DynamicTextSpanner.style = #'none
  s1*2
}

dynamicsPiano       = { \dPa \dPb \dPc      \dPd }
dynamicsPianoSingle = { \dPa \dPb \dPc \dPb \dPd }

pLHa = \relative {
  \global
  \oneVoice
  <a, a'>1
  q1
  q1
  q1
}

pLHb = \tripletFeel 8 \relative {
  d,4 <a'' d fis> a, q % 66b
  a4 <a' cis e> <cis e b'> <cis e a>
  a,4 <a' cis e> a, <g' cis e>
  d,4 <a'' b d fis> d,, q
  d4 q fis eis % 66c
  e4 <a' cis e> e, q
  b'4 <gis' b d e> e, q
  <a g'>1
  d,4 <a'' b d fis> dis,, <fis' ais b dis> % 67a
  e,4 <g' b cis e> a, q
  d,4 <a'' c d fis> d,, <ais'' c d fis>
  g,4 \tuplet 3/2 {<g' b e>8 dis' d} <g, b cis e>4 a, % 67b
  d,4 <a'' b d fis> dis,, <fis' ais b dis>
  e,4 <g' b cis e> a, q
  d,4 <a'' b d fis> dis,, <f' ais b dis> % 67c
  e,4 <g' b cis e> a, q
  d,4 <a'' b d fis> a, <g' b d>
  <g bes d>4 d b2 % 68a
}

pLHc = \tripletFeel 8 \relative {
  e,2 <a g'>
  d4 a d,2
  d4 <a'' b d fis> dis,, <g' ais b dis> % 68b
  e,4 <g' b cis e> a, q
  d,4 <a'' b d fis> dis,, <fis' ais b dis>
  e,4 <g' b cis e> a, q % 68c
  <fis e'>1
  <b fis' b>1
  <cis gis'>4. <gis' b eis>8~2 % 69a
  <fis, fis'>1
  <e' b'>1
  <a, a'>1 % 69b
  <e' b'>1
  s1
}

pLHd = \tripletFeel 8 \relative {
  \oneVoice
  e,2 <a g'>\fermata
  d4 a d,2\fermata
}

pianoLH       = { \pLHa \pLHb \pLHc       \pLHd }
pianoLHSingle = { \pLHa \pLHb \pLHc \pLHb \pLHd }

pLHoneA = \relative {
  \global
  \voiceOne
  s1*4
}

pLHoneB = \relative {
  \voiceOne
  s1*18
}

pLHoneC = \relative {
  \voiceOne
  s1*13
  \tripletFeel 8 {a,4 b'8 c cis4 g}
}

pLHoneD = \relative {
  \voiceOne
  s1*2
}

pianoLHone       = { \pLHoneA \pLHoneB \pLHoneC          \pLHoneD }
pianoLHoneSingle = { \pLHoneA \pLHoneB \pLHoneC \pLHoneB \pLHoneD }

pLHtwoA = \relative {
  \global
  \voiceTwo
  s1*4
}

pLHtwoB = \relative {
  \voiceTwo
  s1*18
}

pLHtwoC = \relative {
  \voiceTwo
  s1*13
  a,2. a4
}

pLHtwoD = \relative {
  \voiceTwo
  s1*2
}

pianoLHtwo       = { \pLHtwoA \pLHtwoB \pLHtwoC          \pLHtwoD }
pianoLHtwoSingle = { \pLHtwoA \pLHtwoB \pLHtwoC \pLHtwoB \pLHtwoD }

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrackSingle
        \new FretBoards \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice \RehearsalTrackSingle
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \midi {}
  }
}
