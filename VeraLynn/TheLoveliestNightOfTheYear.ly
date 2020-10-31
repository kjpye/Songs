\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Loveliest Night of the Year"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \right-column { \line {Juventino Rosas,}
                                          \line {Paul Francis Webster}
                                          \line {& Irving Aaronson}
                                  }
                        }
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
}

TempoTrack = {
  \global
  \tempo 4=96
  \set Score.tempoHideNote = ##t
  s2.*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "44a" } s2.*4
  \mark \markup { \circle "44b" } s2.*5
  \mark \markup { \circle "44c" } s2.*5
  \mark \markup { \circle "45a" } s2.*4
  \mark \markup { \circle "45b" } s2.*4
  \mark \markup { \circle "45c" } s2.*4
  \mark \markup { \circle "45d" } s2.*5
  \mark \markup { \circle "46a" } s2.*5
  \mark \markup { \circle "46b" } s2.*5
  \mark \markup { \circle "46c" } s2.*5
  \mark \markup { \circle "46d" } s2.*5
  \mark \markup { \circle "47a" } s2.*5
  \mark \markup { \circle "47b" } s2.*4
  \mark \markup { \circle "47c" } s2.*4
  \mark \markup { \circle "47d" } s2.*4
}

ChordTrack = \chordmode {
  f2.:maj7
  c2.:7
  f2.:maj7
  c2.:7
  f2. % 44b
  s2.*5
  c2.:7 % 44c+
  s2.*7
  f2. % 45b
  s2.*6
  f2.:13 % 45c+++
  bes2. % 45d
  s2.*2
  b2.:dim
  f2 ees4
  d2.:7 % 46a
  g2.:7
  c2.:7
  f2 g4:m7/f
  s4 f:9 a/f
  bes2. % 46b
  s2.*4
  s2 des4:dim % 46c
  f2.:7/c
  f2.:7
  s2.*2
  c2.:m7 % 46d
  f2.:7
  s2.*2
  bes2.:6
  g2:m7 c4:7 % 47a
  f2.
  s2.*4
  f2.:13 % 47b+
  bes2.
  s2.
  bes2.:6 % 47c
  b2.:dim
  f2 f4:7
  d2.:7
  g2.:13 % 47d
  c2.:7
  f2:6
  g4:m7/c
  f2.
}

melody = \relative {
  \global
  R2.*4
  a2. % 44b
  gis4 a c
  f2.~
  f4 e f
  g4 f e
  f4 a,4. c8 % 44c
  e2.~
  e2.
  bes2.
  a4 bes c
  e2.~ % 45a
  e4 dis e
  f4 e dis
  e4 bes4. e8
  a,2.~ % 45b
  a2.
  a2.
  gis4 a4. c8
  f2.~ % 45c
  f4 e f
  g4 f e
  f4 a,4. c8
  d2.~ % 45d
  d2.
  d2.
  d4 e f
  c2.~
  c4 b c % 46a
  d4 e f
  g4 f e
  f2.~
  f2 r4
  d4 cis d % 46b
  bes'4 a4. g8
  bes2.~
  bes4 a g
  d4 cis d
  g4 f4. bes,8 % 46c
  a2.~
  a2.
  a4 gis a
  g'4 f4. e8
  g2.~ % 46d
  g4 f ees
  a,4 gis a
  ees'4 d c
  bes2.
  c2. % 47a
  a2.
  gis4 a c
  f2.~
  f4 e f
  g4 f e % 47b
  f4 a,4. c8
  d2.~
  d2.
  d2. % 47c
  d4 e f
  a2.~
  a4 bes a
  g4 f e % 47d
  d4 e g
  f2.~
  f2\fermata r4
  \bar "|."
}

wordsOne = \lyricmode {
  When you are in love __
  it's the love -- li -- est night of the year, __
  stars twin -- kle a -- bove __
  and you al -- most can touch them from here. __
  Words fall in -- to rhyme __
  a -- ny time you are hold -- ing me near, __
  when you are in love __
  it's the love -- li -- est night of the year, __
  Waltz -- ing a -- long in the blue __
  like a breeze drift -- ing o -- ver the sand, __
  thrilled by the won -- der of you __
  and the won -- der -- ful touch of your hand.
  And my heart starts to beat __
  like a child when a birth -- day is near, __
  so, kiss me my sweet, __
  it's the love -- li -- est night of the year. __
}

midiWords = \lyricmode {
  "\nWhen " "you " "are " "in " "love " 
  "\nit's " "the " love li "est " "night " "of " "the " "year, " 
  "\nstars " twin "kle " a "bove " 
  "\nand " "you " al "most " "can " "touch " "them " "from " "here. " 
  "\nWords " "fall " in "to " "rhyme " 
  "\na" "ny " "time " "you " "are " hold "ing " "me " "near, " 
  "\nwhen " "you " "are " "in " "love " 
  "\nit's " "the " love li "est " "night " "of " "the " "year, " 
  "\nWaltz" "ing " a "long " "in " "the " "blue " 
  "\nlike " "a " "breeze " drift "ing " o "ver " "the " "sand, " 
  "\nthrilled " "by " "the " won "der " "of " "you " 
  "\nand " "the " won der "ful " "touch " "of " "your " "hand. "
  "\nAnd " "my " "heart " "starts " "to " "beat " 
  "\nlike " "a " "child " "when " "a " birth "day " "is " "near, " 
  "\nso, " "kiss " "me " "my " "sweet, " 
  "\nit's " "the " love li "est " "night " "of " "the " "year. " 
}

pianoRH = \relative {
  \global
  r4 s2
  r4 s2
  r4 s2
  r4 s2
  s2. % 44b
  <e' gis>4 <f a> <e g c>
  s2.
  s2.
  s2.
  s2. % 44c
  s2.
  s2.
  s2.
  <dis fis a>4 <e g bes> <e bes' c>
  s2. % 45a
  s2.
  s2.
  s2.
  s2. % 45b
  s2.
  s2.
  <e gis>4 <f a>4. <e g c>8
  s2. % 45c
  s2.
  s2.
  s2.
  s2. % 45d
  s2.
  s2.
  s2.
  s2.
  s4 <e f b> <e f c'> % 46a
  <f b d>4 <g b e> <a b f'>
  s2.
  s2.
  s2.
  <f bes d>4 <e a cis> <f bes d> % 46b
  s2.
  s2.
  s4 <a d f a> <g bes d g>
  <f bes d> <e a cis> <f bes d>
  s2. % 46c
  s2.
  s2.
  <ees a>4 <d gis> <ees a> s2.
  s2. % 46d
  s2.
  <ees a>4 <d gis> <ees a>
  <g a ees'>4 <f a d> <ees a c>
  s2.
  s2. % 47a
  s2.
  <e gis>4 <f a> <e g c>
  s2.
  s2.
  s2. % 47b
  s2.
  s2.
  s2.
  s2. % 47c
  s2.
  s2.
  s2.
  <b' e g>4 <a b f'> <g b e> % 47d
  <f bes d>4 <g bes e> <bes e g>
  <a, c d f>2 <f' bes d f>4
  <c' f a c>2.\fermata
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s4 <ees'' g> <d f>
  s4 <fis, d'> <g c>
  s4 g f
  s4 <fis, e'> <g c>
  <f' a>2. % 44b
  s2.
  f'2.~
  f4 e f
  <e g>4 <d f> e
  <d f>4 a4. c8 % 44c
  e2.~
  e2.
  bes2.
  s2.
  e2.~ % 45a
  e4 <bes dis> e
  <d f>4 <c e> dis
  e4 bes4. e8
  a,2.~ % 45b
  a2.
  <f a>2.
  s2.
  f'2.~ % 45c
  f4 e f
  <e g>4 <d g> e
  <d f>4 a4. c8
  d2.~ % 45d
  d2.
  <d, d'>2.
  <d d'>4 <e e'> <f f'>
  <c c'>2.~
  q4 s2 % 46a
  s2. <e' g>4 <d f> <c e>
  f2.~
  f2 r4
  s2. % 46b
  <g bes>4 <f a>4. g8
  <bes, d bes'>2.~
  q4 s2
  s2.
  <bes g'>4 <bes f'>4. bes8 % 46c
  a2.~
  a4 <d g> <c f>
  s2.
  g'4 f4. e8
  <ees g>2.~ % 46d
  q4 <d f> <c ees>
  s2.
  s2.
  bes2.
  <bes c>2. % 47a
  <f a>2.
  s2.
  f'2.~
  f4 e f
  <e g>4 <d f> e % 47b
  <d f>4 a4. c8
  d2.~
  d2.
  <d, d'>2. % 47c
  <d d'>4 <e e'> <f f'>
  a'2.~
  a4 bes a
  s2.*4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4 a'2
  s4 e2
  s4 <a, c>2
  s4 e2
  r4 d' c % 44b
  s2.
  r4 <a' d> <a c>
  r4 <gis cis> <a d>
  c2 c4
  a4 f2 % 44c
  r4 <bes d> <bes c>
  r4 <e, a> <e g>
  r4 <c e> q
  s2.
  r4 <bes' d> <bes c> % 45a
  r4 <g bes c> <bes c>
  bes2 b4
  bes4 e,2
  r4 <e g> <d f> % 45b
  r4 <d f> <c e>
  r4 d c
  s2.
  r4 <a' d> <a c> % 45c
  r4 <gis cis> q
  c2 c4
  a4 f2
  r4 <a c> <g bes> % 45d
  r4 <fis a> <g bes>
  r4 q q
  gis2.
  f4 a g
  f4 s2 % 46a
  s2.
  bes2 bes4
  r4 <f a> <g bes>
  r4 <g c> <a cis>
  s2. % 46b
  d4 c cis
  r4 g' f
  s2.
  s2.
  g,4 f e % 46c
  r4 <ees g> <ees d>
  r4 a2
  s2.
  a2.
  bes4 g bes % 46d
  a2.
  s2.
  s2.
  r4 <d, g> <d f>
  d4 f e % 47a
  r4 d c
  s2.
  r4 <a' d> <a c>
  r4 <gis cis> <a d>
  c2 c4 % 47b
  a4 f2
  r4 <a c> <g bes>
  r4 <fis a> <g bes>
  r4 <g bes> q % 47c
  gis2.
  <a c f>4 c8 a c f
  <a, c fis>4 <bes d fis> <a d fis>
  s2.*4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.*65
  s2.\<
  s2.\f
}

pianoLH = \relative {
  \global
  \oneVoice
  s2.*4
  f,2. % 44b
  c2.
  f,2.
  c'2.
  a2.
  c2. % 44c
  c'2.
  s2.
  c2.
  c,2.
  g'2. % 45a
  c,2.
  g'2.
  c2 c,4
  f2. % 45b
  s2.
  f2.
  c2.
  f2. % 45c
  c2.
  a2.
  s2.
  bes2. % 45d
  d'2.
  <bes, g'>2.
  <b gis'>2.
  <c a'>4 f ees
  d4 r r % 46a
  g2.
  c,2.
  s2.
  s2.
  bes2. % 46b
  s2.
  bes2.
  f'2.
  bes,2.
  d2 des4 % 46c
  c2.
  s2.
  c4 b c
  s2.
  <c c'>2. % 46d
  <f ees'>2.
  c4 b c
  f,2.
  s2.
  g'2 <c, bes'>4 % 47a
  f2.
  c2.
  f2.
  c2.
  a2. % 47b
  s2.
  bes2.
  f'2.
  <bes, g'>2. % 47c
  <b gis'>2.
  <c a'>4 <f f'> <ees ees'>
  <d d'>2.
  <g f'>2. % 47d
  <c, g'>2 c4
  s2.
  s2.
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  r4 c'2
  r4 bes2
  r4 e, d
  r4 bes2
  s2.*7
  r4 bes2 % 44c++
  s2.*7
  r4 c2 % 45b+
  s2.*5
  ees2.\arpeggio % 45c+++
  s2.*8
  r4 c d % 46a+++
  r4 ees e
  s2. % 46b
  r4 ees2
  s2.*5
  r4 ees2 % 46c++
  s2.
  ees4 d des
  s2.*4
  r4 f,2 % 46d++++
  s2.*6
  ees'2.\arpeggio % 47b+
  s2.*8
  r4 r g % 47d++
  <f, c' f>2.\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  f2.
  c2.
  f,2.
  c2.
  s2.*7
  c2. % 44c++
  s2.*7
  c2. % 45b+
  s2.*5
  c2\arpeggio f4 % 45c+++
  s2.*8
  f2. % 46a+++
  f2.
  s2.
  f2. % 46b+
  s2.*5
  f2. % 46c++
  s2.
  f2.
  s2.*4
  bes,2. % 46d++++
  s2.*6
  c2\arpeggio f4 % 47b+
  s2.*8
  f4 c'2 % 47d++
  r4 f,,2\fermata
  \bar "|."
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
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
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
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
    \midi {}
  }
}
