\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Deep River / Wade in the Water"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Trad arr. Stephen Sharpe"
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

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  \repeat volta 2 { s1 | s | }
  s1*2 |
  s1*3 | % 2a
  s2 \tempo 4=60 s4. \tempo 4=120 s8 | s1 | s |
  s1*4 |
  s1*4 | % 3a
  \repeat volta 2 { s1 | s }
  s1*2 |
  s1*3 | % 4a
  s2 \tempo 4=60 s4. \tempo 4=120 s8 | s1 | s | s |
  s1*4 |
  s1*3 | \repeat volta 2 { s1 | s } s1 | % 5a
  s1*3 |
  s1 | s2 \tempo 4=60 s4. \tempo 4=120 s8 | s1 | % 6a
  s1*3 |
  s1*2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
                                %  \mark \markup { \box "1a" } s2.*4
  \repeat volta 2 {
    \textMark \markup { \box "1a" } s1*2
  }
  \textMark \markup { \box "1b" } s1*2
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*4
  \textMark \markup { \box "3a" } s1*4
  \repeat volta 2 {
    \textMark \markup { \box "3b" } s1*2
  }
  \textMark \markup { \box "3c" } s1*2
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "4c" } s1*4
  \textMark \markup { \box "5a" } s1*3
  \repeat volta 2 {
    s1
    \textMark \markup { \box "5b" } s1
  }
  s1
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*2
}

dynamicsSoprano = {
  \repeat volta 2 {
    s8 s\p s2. | s1 |
  }
  s8 s\pp s2. | s1 |
  s1*3 | % 2a
  s1 | s | s2. s4\ff |
  s1*4 |
  s1 | s\> | s | s\ppp | % 3a
  \repeat volta 2 {
    s8 s\p s2. | s1 |
  }
  s1*2 |
  s1*3 | % 4a
  s1 | s | s | s\ff |
  s1*4 |
  s1*3 | % 5a
  \repeat volta 2 { s8 s\p s2. | s1 | }
  s8 s\p s2. |
  s1*3 |
  s1 | s | s\p | % 6a
  s1 | s\pp | s |
  s1\ppp | s |
}

soprano = \relative {
  \global
  \repeat volta 2 {
    r8 d' d d r fis8 8 8 | r8 fis8 8 8 8(d) e4
  }
  r8 d d d r fis8 8 8 | r fis8 8 8 8(d) e4 |
  r8 d d d d' d~4 | cis(a) b(a) | r8 d, d d r fis fis fis | % 2a
  e4. fis8 g4.\fermata r8 | d'4(b2 a4 | g2 fis) |
  b8 4 cis8 b(a) fis4 | a(fis2) r8 a | b4(d2) cis4 | a(fis2) a4 |
  d4(fis~8 e) cis(b) | a4(fis2) 4 | 4(e2) d4 | e1 | % 3a
  \repeat volta 2 {
    r8 d d d r fis fis fis | r fis8 8 8 8(d) e4 |
  }
  r8 d d d r fis8 8 8 | r8 8 8 8 8(d) e4 |
  r8 d d d d' d~4 | cis(a) b(a) | r8 d, d d r fis fis fis | % 4a
  e4. f8 g4.\fermata r8 | d'4(b2 a4 | g2 fis) | b4 4 8(a) fis4 |
  a4 fis2 r8 a | b4(d2) cis4 | a(fis2) a4 | d(fis~8 e) cis(b) |
  a4(fis2) 4 | fis(e2) d4 | e1 | % 5a
  \repeat volta 2 {
    r8 d d d r fis fis fis | r fis8 8 8 8(d) e4 |
  }
  r8 d d d r fis8 8 8 |
  r8 fis8 8 8 8(d) e4 | r8 d d d d' d~4 | cis4(a) b(a) |
  r8 d d d r fis8 8 8 | e4. fis8 g4.\fermata r8 | d4(b2 a4 | % 6a
  g2 fis) | d'4(b2 a4 | g2 fis) |
  d'8 cis b4 8 8 a a | g2 fis |
%  \bar "|."
}

wordsSop = \lyricmode {
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  oh don’t you want to go that gos -- pel feast
  that pro -- mised land where all is peace
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  I’ll go in to heav -- en and take my seat
  I’ll cast my crown at Je -- sus feet
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter, Lord,
  Ah Ah
  want to cross o -- ver in -- to camp -- ground
}

wordsSopMidi = \lyricmode {
  \repeat volta 2 {
    "Wade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\noh " "don’t " "you " "want " "to " "go " "that " gos "pel " "feast "
  "\nthat " pro "mised " "land " "where " "all " "is " "peace\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\nI’ll " "go " "in " "to " heav "en " "and " "take " "my " "seat "
  "\nI’ll " "cast " "my " "crown " "at " Je "sus " "feet\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter, " "Lord, "
  "\nAh " "Ah "
  "\nwant " "to " "cross " o "ver " in "to " camp "ground "
}

alto = \relative {
  \global
  \repeat volta 2 {
    r8 d' d d r d d d | r8 d d d d4 4 |
  }
  r8 d d d r d d d | r d d d d4 4 |
  r8 d d d g g~4 | a8(g fis e) g4(e) | r8 d d d r d d d | % 2a
  b4. 8 d4.\fermata r8 | g4(fis a e | d1) |
  b'8 4 cis8 b(a) fis4 | e8 4 fis8 e d4 cis8 | d4(fis2) e4 | cis4(d2) a'4 |
  b4(d2) a4 | a(fis2) 4 | b,2 2 | d1 | % 3a
  \repeat volta 2 {
    r8 d d d r d d d | r d d d d4 4
  }
  r8 d d d r d d d | r d d d d4 4 |
  r8 d d d g g~4 | a8(g fis e) g4(e) | r8 d d d r d d d | % 4a
  b4. 8 d4.\fermata r8 | g4(f g e | d1) | b'4 4 8(a) fis4 |
  e8 4 fis8 e d4 cis8 | d4(fis2) e4   | cis4(d2) a'4 | b4(d2) a4 |
  a4(fis2) 4 | b,2 2 | d1 | % 5a
  \repeat volta 2 {
    r8 d d d r d d d | r d d d d4 d |
  }
  r8 d d d r d d d |
  r8 d d d d4 d | r8 d d d g g~4 | a8(g fis e) g4(e) |
  r8 d d d r d d d | b4. 8 d4.\fermata r8 | g4(fis g e | % 6a
  d1) | g4(fis g e | d1) |
  g8 8 fis4 g8 8 fis e | d2 2 |
  \bar "|."
}

wordsAlto = \lyricmode {
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  oh don’t you want to go to that gos -- pel that gos -- pel feast
  that pro -- mised land where all is peace
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  I’ll go in to I’ll go to heav -- en and take my seat
  I’ll cast my crown at Je -- sus feet
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter, Lord,
  Ah Ah
  want to cross o -- ver in -- to camp -- ground
}

wordsAltoMidi = \lyricmode {
  \repeat volta 2 {
    "Wade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\noh " "don’t " "you " "want " "to " "go " "to " "that " gos "pel " "that " gos "pel " "feast "
  "\nthat " pro "mised " "land " "where " "all " "is " "peace\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\nI’ll " "go " "in " "to " "I’ll " "go " "to " heav "en " "and " "take " "my " "seat "
  "\nI’ll " "cast " "my " "crown " "at " Je "sus " "feet\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter, " "Lord, "
  "\nAh " "Ah "
  "\nwant " "to " "cross " o "ver " in "to " camp "ground "
}

dynamicsTenor = {
  \repeat volta 2 {
    s8 s\p s2. | s1 |
  }
  s8 s\pp s2. | s1 |
  s1*3 | % 2a
  s1*3 |
  s1 | s2.. s8\ff | s1 | s |
  s1 | s\> | s | s\ppp | % 3a
  \repeat volta 2 {
    s8 s\p s2. | s1 |
  }
  s1*2 |
  s1*3 | % 4a
  s1*4
  s2.. s8\ff | s1 | s | s |
  s1*3 | % 5a
  \repeat volta 2 { s8 s\p s2. | s1 | }
  s8 s\p s2. |
  s1*3 |
  s1 | s | s\p | % 6a
  s1 | s\pp | s |
  s1\ppp | s |
}

tenor = \relative {
  \global
  \repeat volta 2 {
    r8 fis8 8 8 r a a a | r8 b8 8 8 4 a |
  }
  r8 fis8 8 8 r a a a | r b b b b4 a |
  r8 d d cis b8 8~4 | e2 d4(cis) | r8 fis,8 8 8 r a a a | % 2a
  g4. a8 b4.\fermata r8 | b4(d e cis | b2 a) |
  R1 | r2 r4 r8 cis | b2 cis | d2(cis4) r8 cis |
  d2 e | cis d | g, g | a1 | % 3a
  \repeat volta 2 {
    r8 fis8 8 8 r a a a | r b b b b4 a |
  }
  r8 fis8 8 8 r a a a | r b b b b4 a |
  r8 d d cis b b~4 | e2 d4(cis) | r8 fis,8 8 8 r a a a | % 4a
  g4. a8 b4.\fermata r8 | b4(d e cis | b2 a) | R1 |
  r2 r4 r8 cis | b2 cis | d2(cis4) r8 cis | d2 e |
  cis2 d | g, g | a1 | % 5a
  \repeat volta 2 {
    r8 fis8 8 8 r a a a | r b b b b4 a |
  }
  r8 fis8 8 8 r a a a |
  r8 b b b b4 a | r8 d d cis b b~4 | e2 d4(cis) |
  r8 fis,8 8 8 r a a a | g4. a8 b4.\fermata r8 | b4(d e cis | % 6a
  b2 a) | b4( d e cis | b2 a) |
  b8 cis d4 e8 8 d cis | b2 a |
  \bar "|."
}

wordsTenor = \lyricmode {
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  that gos -- pel feast
  the pro -- mised land where all is peace
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter Lord,
  Ah
  and take my seat
  and cast my crown at Je -- sus feet
  \repeat volta 2 {
    Wade in the, wade in the, wade in the wa -- ter
  }
  Wade in the, wade in the, wade in the wa -- ter
  my home is o -- ver Jor -- dan
  Wade in the, wade in the wa -- ter, Lord,
  Ah Ah
  want to cross o -- ver in -- to camp -- ground
}

wordsTenorMidi = \lyricmode {
  \repeat volta 2 {
    "Wade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\nthat " gos "pel " "feast "
  "\nthe " pro "mised " "land " "where " "all " "is " "peace\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter " "Lord, "
  "\nAh "
  "\nand " "take " "my " "seat "
  "\nand " "cast " "my " "crown " "at " Je "sus " "feet\n"
  \repeat volta 2 {
    "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  }
  "\nWade " "in " "the, " "wade " "in " "the, " "wade " "in " "the " wa "ter "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nWade " "in " "the, " "wade " "in " "the " wa "ter, " "Lord, "
  "\nAh " "Ah "
  "\nwant " "to " "cross " o "ver " in "to " camp "ground "
}

dynamicsBass = {
  \repeat volta 2 { s1\p | s | }
  s1\f | s |
  s1*3 | % 2a
  s1*3 |
  s1 | s2.. s8\ff | s1 | s |
  s1*4 | % 3a
  \repeat volta 2 { s1\p | s | }
  s1\f | s |
  s1*3 | % 4a
  s1*4 |
  s2.. s8\ff | s1 | s | s |
  s1 | s | s | % 5a
  \repeat volta 2 { s1\p | s | }
  s1\mp |
  s1*3 |
  s1 | s2.. s8\p | s1 | % 6a
  s2.. s8\pp | s1 | s2.. s8\ppp |
  s1*2 |
}

bass = \relative {
  \global
  \repeat volta 2 {
    d2(fis | g2. a4) |
  }
  fis2~8(e d4) | e b2 d4 |
  d4 d d'4. b8 | a4(fis8 e) d2 | fis2~8(e d4) | % 2a
  e4 b d4.\fermata 8 | \tuplet 3/2 {b4 d8} 4 \tuplet 3/2 {d4 b8} \tuplet 3/2 {a4 b8} | d4 2 r4 |
  R1 | r2 r4 r8 <fis, fis'> | <g d'>2 <a e'> | <b fis'>2.~8 8 |
  <b g'>2 <cis a'> | <<{\vo a' b} \new Voice {\vt fis2. 4}>> | \ov e2 2 | a1 | % 3a
  \repeat volta 2 {
    d,2(fis | g2. a4) |
  }
  fis2~8(e d4) | e b2 d4 |
  d4 d d'4. b8 | a4(fis8 e) d2 | fis2~8(e d4) | % 4a
  e4 b d4.\fermata 8 | \tuplet 3/2 {b4 d8} 4 \tuplet 3/2 {d4 b8} \tuplet 3/2 {a4 b8} | d4 2 r4 | R1 |
  r2 r4 r8 <fis, fis'> | <g d'>2 <a e'> | <b fis'>2.~8 8 | <b g'>2 <cis a'> |
  <<{\vo a'2 b} \new Voice {\vt fis2. 4}>> | \ov e2 e | a1 | % 5a
  \repeat volta 2 {
    d,2(fis | g2. a4) |
  }
  fis2~8(e d4) |
  e4 b2 d4 | d d d'4. b8 | a4(fis8 e) d2 |
  fis2~8(e d4) | e b d4.\fermata 8 | \tuplet 3/2 {b4 d8} 4 \tuplet 3/2 {d4 b8} \tuplet 3/2 {a4 b8} | % 6a
  d4 2 r8 d | \tuplet 3/2 {b4 d8} 4 \tuplet 3/2 {d4 b8} \tuplet 3/2 {a4 b8} | d4 2 r8 d |
  \tuplet 3/2 {b4 d8} 4 \tuplet 3/2 {d4 b8} \tuplet 3/2 {a4 b8} | d2 d |
  \bar "|."
}

wordsBass = \lyricmode {
  \repeat volta 2 { Ooh... }
  Deep ri -- ver
  my home is o -- ver Jor -- dan
  Deep ri -- ver Lord,
  I want to cross o -- ver in -- to Jor -- dan
  that gos -- pel feast
  the pro -- mised land where all is peace
  \repeat volta 2 {
    Ooh...
  }
  Deep ri -- ver
  my home is o -- ver Jor -- dan
  Deep ri -- ver Lord,
  I want to cross o -- ver in -- to camp ground

  and take my seat
  and cast my crown at Je -- sus feet
  \repeat volta 2 {
    Ooh...
  }
  Deep ri -- ver
  my home is o -- ver Jor -- dan
  Deep ri -- ver Lord,
  I want to cross o -- ver in -- to camp ground
  I want to cross o -- ver in -- to camp ground
  I want to cross o -- ver in -- to camp ground
}

wordsBassMidi = \lyricmode {
  \repeat volta 2 { "Ooh... " }
  "\nDeep " ri "ver "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nDeep " ri "ver " "Lord, "
  "\nI " "want " "to " "cross " o "ver " in "to " Jor "dan "
  "\nthat " gos "pel " "feast "
  "\nthe " pro "mised " "land " "where " "all " "is " "peace\n"
  \repeat volta 2 { "\nOoh... " }
  "\nDeep " ri "ver "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nDeep " ri "ver " "Lord, "
  "\nI " "want " "to " "cross " o "ver " in "to " "camp " "ground "

  "\nand " "take " "my " "seat "
  "\nand " "cast " "my " "crown " "at " Je "sus " "feet\n"
  \repeat volta 2 { "\nOoh... " }
  "\nDeep " ri "ver "
  "\nmy " "home " "is " o "ver " Jor "dan "
  "\nDeep " ri "ver " "Lord, "
  "\nI " "want " "to " "cross " o "ver " in "to " "camp " "ground "
  "\nI " "want " "to " "cross " o "ver " in "to " "camp " "ground "
  "\nI " "want " "to " "cross " o "ver " in "to " "camp " "ground "
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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

#(set-global-staff-size 18)

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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsSoprano
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSoprano
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSoprano
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsSoprano
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSoprano
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsSoprano
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
    output-suffix = midi-sop
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
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
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
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
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSoprano
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSoprano
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
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
