\version "2.25.35"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Simple Simon"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. C. Macy."
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
  \key bes \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Moderato 4=100 s4 s1*7 s2..
  \tempo "In brisk marching time." 4.=100 s8 s2.*18
  \tempo Moderato 4=100 s1*19 s2..
  \tempo Religioso 4=100 s8 s1*12
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s1*3 |
  \textMark \markup { \box "1b" }    s1*4 | s2..
  \textMark \markup { \box "2a" } \time 6/8 \partial 8 s8 | s2.*5
  \textMark \markup { \box "2b" }    s2.*6 |
  \textMark \markup { \box "2c" }    s2.*7 |
  \textMark \markup { \box "3a" } \time 4/4 s1*5
  \textMark \markup { \box "3b" } s1*5
  \textMark \markup { \box "3c" } s1*6 |
  \textMark \markup { \box "4a" } s1*3 s2.. \break
  \textMark \markup { \box "4b" } s8 s1*5
  \textMark \markup { \box "4c" } s1*9 |
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2. s4\mf | s1*5 | s2-\markup\italic rit. s\p | s2..
  s8 | s2. | s2 s8 s\mf | s2.*2 | s4 s2\f | % 2a
  s2. | s4 s2\p | s2. | s2.\omit\pp-\markup{\dynamic pp \italic "poco rit."} | s2 s8 s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2. |
  s2. | s4 s2\f | s2. | s4. s\ff | s2. | s2-\markup\italic "dim e rit." s8 s\p | s4 s2\mf |
  s1*2 | s2. s4\< | s2 s8\! s4.\< | s1\ff | % 3a
  s1*5 |
  s1*2 | s1\p | s | s4 s2.\p | s8 s\< s4. s\! |
  s4 s2.\ff | s2.. s8\ff | s1 | s2.. % 4a
  s8\mf s1*5 |
  s1*6 | s2\< s\> | s1\! |
}

soprano = \relative {
  \global
  r4 | r2 r4 bes'8 8 | d4 bes r2 | r r4 bes8 8 |
  ees4 bes r2 | r4 bes8 8 ces4 4 | bes8 8 r4 bes8 8 r4 | bes2(a) | bes2\fermata r4. \section
  r8 | R2. | r4. r4 bes8 | c4 a8 a(bes) c | d(c) bes8 8(c) d | r4 ees8 4-> 8 | % 2a
  r4 d8 4-> 8 | r4 d8 f(e) d | cis4. d4 r8 | e4 8 f4 e8 | d4.(ees4\fermata) d8 | c4 a8 a(bes) c |
  d8(c) bes8 8(c) d | r4 e8 4-> 8 | r4 d8 4-> 8 | r4. f4 8 | d4. bes | d~4 c8 | bes4\fermata 8 4 8 \section \key ees \major \time 4/4 |
  ees2 bes4 r | r ees8. 16 2 | d4 r r d8. 16 | ees2 bes8 g bes ees | 2 d8 r f8. 16 | % 3a
  ees4 4 r d8(c) | bes(c d bes c d ees c | d ees f d) ees r ees8. 16 | 2(d) | ees4 r r2 |
  R1*2 | bes1 | ces2 bes4 r | r bes ces8 bes r4 | r8 bes8 8 8 b4 8 r |
  r4 f'8. 16 8 c r4 | r2\fermata r4 r8 c, | bes'4 a g8 8 r c | 4 4 8 8 r8\fermata \section \key bes \major % 4a
  a8 | bes1 | c2 a | bes2 r4 bes | 1 | c4 c bes(c) |
  d2 r4 bes | 1 | 2 2 | a r4 c | 1 | bes2 c | d r | ees1 | d8-. d-. r4 r2 |
  \bar "|."
}

apc       = \lyricmode { a pie -- man, }
ASe       = \lyricmode { Ah, Si -- mon! }
Gttfc     = \lyricmode { Go -- ing to the fair, }
Gttfp     = \lyricmode { Go -- ing to the fair. }
Hhnpe     = \lyricmode { He has no pen -- ny! }
hmapGttfp = \lyricmode { he met a pie -- man Go -- ing to the fair. }
Ihnpc     = \lyricmode { “I have no pen -- ny,” }
Ihnpe     = \lyricmode { “I have no pen -- ny!” }
Lmtywp    = \lyricmode { “Let me taste your ware.” }
OSSMapc   = \lyricmode { Oh, Sim -- ple Si -- mon Met a pie -- man, }
OSssSc    = \lyricmode { Oh, Sim -- ple, sim -- ple, sim -- ple, Si -- mon, }
Smap      = \lyricmode { Si -- mon met a pie -- man }
SSe       = \lyricmode { Sim -- ple Si -- mon! }
SsSe      = \lyricmode { Sim -- ple, sim -- ple Si -- mon! }
SssSc     = \lyricmode { Sim -- ple, sim -- ple, sim -- ple, Si -- mon, }
SSSTtpc   = \lyricmode { Said Sim -- ple Si -- mon To the pie -- man, }
SSTtpcc   = \lyricmode { Said Si -- mon To the pie -- man: }
STtpc     = \lyricmode { Si -- mon To the pie -- man, }
tfe       = \lyricmode { the fair! }
Tstpcc    = \lyricmode { Then said the pie -- man: }
Ttpc      = \lyricmode { To the pie -- man, }
Wypq      = \lyricmode { “Where’s your pen -- ny?” }
YSSMapc   = \lyricmode { Yes, Sim -- ple Si -- mon Met a pie -- man, }
YSssSc    = \lyricmode { Yes, Sim -- ple, sim -- ple, sim -- ple, Si -- mon, }

commonlyrics = \lyricmode {
  Now
  \markup \small \column \string-lines "all ye who are inclined, through
                                        hunger, cheek or curiosity, to
                                        taste, free of charge, a"
  ba -- ker’s wares, Re --
  \markup\small\column { "member he is sometimes"
                         \concat {"liable to be " \italic crusty, " and"}
                       }
  hea -- vy with cares.
  When
  \markup\small\column { "hungry people beg for"
                         \concat {\italic bread, "we seldom"}
                       }
  pass them by; But
  \markup\small\column \string-lines "human generosity
                                      is taxed to the
                                      utmost when they"
  ask for \markup\italic "pie!"
  Ah, Si -- mon!
}

wordsSop = \lyricmode {
  \SSe \SSe \SsSe \SSe
  \OSSMapc \apc \apc \hmapGttfp \YSSMapc \apc \apc \Gttfc \tfe \SSSTtpc % 2
  \Ttpc \SSSTtpc \SSTtpcc \ASe \ASe \Tstpcc
  \Wypq \Hhnpe \Hhnpe \commonlyrics
}

Mapc       = \lyricmode { "a " pie "man, " }
MASe       = \lyricmode { "Ah, " Si "mon! " }
MGttfc     = \lyricmode { "\nGo" "ing " "to " "the " "fair, " }
MGttfp     = \lyricmode { "\nGo" "ing " "to " "the " "fair. " }
MHhnpe     = \lyricmode { "\nHe " "has " "no " pen "ny! " }
MhmapGttfp = \lyricmode { "he " "met " "a " pie "man " Go "ing " "to " "the " "fair. " }
MIhnpc     = \lyricmode { "\n“I " "have " "no " pen "ny,” " }
MIhnpe     = \lyricmode { "\n“I " "have " "no " pen "ny!” " }
MLmtywp    = \lyricmode { "\n“Let " "me " "taste " "your " "ware.” " }
MOSSMapc   = \lyricmode { "\nOh, " Sim "ple " Si "mon " "Met " "a " pie "man, " }
MOSssSc    = \lyricmode { "\nOh, " Sim "ple, " sim "ple, " sim "ple, " Si "mon, " }
MSmap      = \lyricmode { "\nSi" "mon " "met " "a " pie "man " }
MSSe       = \lyricmode { "\nSim" "ple " Si "mon! " }
MSsSe      = \lyricmode { "\nSim" "ple, " sim "ple " Si "mon! " }
MSssSc     = \lyricmode { "\nSim" "ple, " sim "ple, " sim "ple, " Si "mon, " }
MSSSTtpc   = \lyricmode { "\nSaid " Sim "ple " Si "mon " "To " "the " pie "man, " }
MSSTtpcc   = \lyricmode { "\nSaid " Si "mon " "To " "the " pie "man: " }
MSTtpc     = \lyricmode { "\nSi" "mon " "To " "the " pie "man, " }
Mtfe       = \lyricmode { "the " "fair! " }
MTstpcc    = \lyricmode { "\nThen " "said " "the " pie "man: " }
MTtpc      = \lyricmode { "\nTo " "the " pie "man, " }
MWypq      = \lyricmode { "\n“Where’s " "your " pen "ny?” " }
MYSSMapc   = \lyricmode { "\nYes, " Sim "ple " Si "mon " "Met " "a " pie "man, " }
MYSssSc    = \lyricmode { "\nYes, " Sim "ple, " sim "ple, " sim "ple, " Si "mon, " }

Mcommonlyrics = \lyricmode {
  "\nNow "
  "all ye who are inclined, through hunger, cheek or curiosity, to taste, free of charge, a "
  "ba" "ker’s " "wares, " Re
  "member he is sometimes liable to be crusty, and  "
  "hea" "vy " "with " "cares. "
  "\nWhen "
  "hungry people beg for bread, we seldom  "
  "pass " "them " "by; " "\nBut "
  "human generosity is taxed to the utmost when they "
  "ask " "for " "pie! "
  "\nAh, " Si "mon! "
}

wordsSopMidi = \lyricmode {
  \MSSe \MSSe \MSsSe \MSSe
  \MOSSMapc \Mapc \Mapc \MhmapGttfp \MYSSMapc \Mapc \Mapc \MGttfc \Mtfe \MSSSTtpc % 2
  \MTtpc \MSSSTtpc \MSSTtpcc \MASe \MASe \MTstpcc
  \MWypq \MHhnpe \MHhnpe \Mcommonlyrics
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1*3 | s1*3 | s2-\markup\italic rit. s\p | s2..
  s8 | s2. | s2 s8 s\mf | s2.*2 | s4 s2\f | % 2a
  s2. | s4 s2\p | s2. | s2.\omit\pp-\markup{\dynamic pp \italic "poco rit."} | s2 s8 s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2. |
  s2. | s4 s2\f | s2. | s4. s\ff | s2. | s2-\markup\italic "dim e rit." s8 s\p | s2. |
  s1*3 | s2 s8 s4.\< | s1\ff | % 3a
  s1*5 |
  s1*2 | s1\p | s | s4 s2.\p | s8 s\< s4. s\! |
  s4 s2.\ff | s2.. s8\ff | s1 | s2.. % 4a
  s8\mf s1*5 |
  s1*6 | s2\< s\> | s1\! |
}

alto = \relative {
  \global
  r4 | bes'1~ | 1~ | 2 r4 g8 g |
  bes4 g r2 | r4 g8 8 aes4 4 | g8 8 r4 g8 8 r4 | f2(c4 f) | 2\fermata r4. \section
  r8 | R2. | r4. r4 d8 | ees4 c8 c(d) ees | f(ees) d d(ees) f | r4 f8 g4-> f8 | % 2a
  r4 f8 g4-> f8 | r4 a8 a(g) f | e4. f4 r8 | a4 8 4 g8 | f4.~4\fermata 8 | ees4 c8 c(d) ees |
  f8(ees) d d(ees) f | r4 f8 g4-> f8 | r4 f8 g4-> f8 | r4. bes4 8 | d4. bes | f~4 ees8 | d4\fermata r8 r4. \section \key ees \major |
  g2 4 8 8 | bes4 ees, r2 | r4 aes8. 16 2 | g2~8 ees8 8 bes' | ees2 bes8 r b8. 16 | % 3a
  g4 g r f | g8(aes bes g aes bes c aes | bes c d bes) c r f,8. 16 | g2(aes) | g4 r r2 |
  R1*2 | bes1 | ces2 bes4 r | r bes ces8 bes r4 | r8 f8 8 8 4 8 r |
  r4 b8. 16 c8 c r4 | r2\fermata r4. c,8 | g'4 f e8 8 r g | a4 g a8 8 r8\fermata \section \key bes \major % 4a
  ees8 | d1 | c2 c | d r4 d | 1 | g4 4 f2 |
  f2 r4 f | g1 | 2 2 | f r4 f | 1 | 2 2 | 2 r | g1 | f8-. f-. r4 r2 |
}

wordsAlto = \lyricmode {
  \markup\italic "Simple Simon humming."
  \SSe \SsSe \SSe
  \OSSMapc \apc \apc \hmapGttfp \YSSMapc \apc \apc \Gttfc \tfe % 2
  \STtpc \Ttpc \SSSTtpc \SSTtpcc \ASe \ASe \Tstpcc
  \Wypq \Hhnpe \Hhnpe \commonlyrics
}

wordsAltoMidi = \lyricmode {
  "Simple Simon humming."
  \MSSe \MSsSe \MSSe
  \MOSSMapc \Mapc \Mapc \MhmapGttfp \MYSSMapc \Mapc \Mapc \MGttfc \Mtfe % 2
  \MSTtpc \MTtpc \MSSSTtpc \MSSTtpcc \MASe \MASe \MTstpcc
  \MWypq \MHhnpe \MHhnpe \Mcommonlyrics
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2. s4\mf | s1*2 | s1*3 | s2-\markup\italic rit. s\p | s2..
  s8 | s2.*4 | s4 s2\f | % 2a
  s2. | s4 s2\p | s2. | s2.\omit\pp-\markup{\dynamic pp \italic "poco rit."} | s2 s8 s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2. |
  s2. | s4 s2\f | s2. | s4. s\ff | s2. | s2-\markup\italic "dim e rit." s8 s\p | s2. |
  s1*2 | s2. s4\< | s2 s8\! s4.\< | s1\ff | % 3a
  s1*4 | s2. s4\mf |
  s1*3 | s2. s4\mf | s1*2 |
  s4 s2.\ff | s8 s2..\mf| s1 | s2.. % 4a
  s8\mf s1*5 |
  s1*6 | s2\< s\> | s1\! |
}

tenor = \relative {
  \global
  r4 | r2 r4 d'8 8 | f4 d r2 | r2 r4 ees8 8 |
  g4 ees r2 | r4 ees8 8 4 4 | 8 8 r4 c8 cis r4 | d2(f4 ees) | d2\fermata r4. \section
  r8 f,2.~ | f~ | f~ | 4.~4 r8 | r4 a8 bes4-> a8 | % 2a
  r4 bes8 4-> 8 | r4 a8 d(cis) d | a4. d4 r8 | cis4 8 d4 a8 | 4.~4\fermata bes8 | c4 a8 a(bes) c |
  d8(c) bes8 8(c) d | r4 a8 bes4-> a8 | r4 bes8 4-> 8 | r4. d4 8 | 4. bes | 4.~4 a8 | bes4\fermata r8 r4. \section \key ees \major |
  bes2 4 r | r g8. 16 4(bes) | 4 r r bes8. 16 | 2 8 8 8 8 | ees2 bes8 r b8. 16 | % 3a
  c4 c r d8(c) | bes(c d bes c d ees c | d ees f d) ees r c8. 16 | bes1 | 4 r r bes8. 16 |
  bes2 2 | 2. r4 | R1 | r2 r4 bes8 8 | ees2. 4 | d2. r4 |
  r4 d8. 16 c8 f r4 | r8 c e\fermata e\fermata c c r4 | r2 r4. e8 | f4 e ees8 8 r8\fermata \section \key bes \major % 4a
  c8 | bes1 | f2 c' | bes2 r4 bes | 1 | 4 4 4(a) |
  bes2 r4 bes | 1 | c2 2 | 2 r4 a | 1 | bes2 a | bes2 r | 1 | 8-. 8-. r4 r2 |
}

wordsTenor = \lyricmode {
  \SSe \SSe \SsSe \SSe
  \markup\italic "Simple Simon humming." __
  \apc \apc \hmapGttfp \YSSMapc \apc \apc \Gttfc \tfe % 2
  \STtpc \Ttpc \SSSTtpc \SSTtpcc \Lmtywp \Lmtywp
  \Wypq \Ihnpc \Ihnpe \commonlyrics
}

wordsTenorMidi = \lyricmode {
  \MSSe \MSSe \MSsSe \MSSe
  "Simple Simon humming."
  \Mapc \Mapc \MhmapGttfp \MYSSMapc \Mapc \Mapc \MGttfc \Mtfe % 2
  \MSTtpc \MTtpc \MSSSTtpc \MSSTtpcc \MLmtywp \MLmtywp
  \MWypq \MIhnpc \MIhnpe \Mcommonlyrics
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*6 | s2-\markup\italic rit. s\p | s2..
  s8\mf | s2.*4 | s2.\f | % 2a
  s | s\p | s s\omit\pp-\markup{\dynamic pp \italic "poco rit."} | s4. s4 s8\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2. |
  s2. | s\f | s | s4. s\ff | s2. | s2-\markup\italic "dim e rit." s8 s\p | s2. |
  s1*3 | s2 s8 s4.\< | s1\ff | % 3a
  s1*5 |
  s1*2 | s1\p | s | s4 s2.\p | s8 s\< s4. s\! |
  s8 s2..\ff | s2.. s8\ff | s1 | s2.. s8\mf | s1*14 | % 4
}

bass = \relative {
  \global
  bes8 8 | 4 bes, r2 | r2 r4 bes'8 8 | 4 bes, r2 |
  r2 r4 ees8 8 | 1 | 4 r e8 8 r4 | 4(f,)~2 | bes2\fermata r4. \section
  f'8 | \repeat unfold 12 {bes, r f'} |
  a,8 r f' a, r f' | a,4(e'8) a,4 r8 | % 2b+
  <a \tweak font-size #-2 a'>4 8 4 8 |d4.(c4\fermata) f8 |
  \repeat unfold 8 {<bes, \tweak font-size #-2 bes'>8 r f'} |
  r4. bes4 f8 | d4. bes | <f \tweak font-size #-2 f'>4.~4 8 | % 2c+3
  bes4\fermata r8 r4. \section \key ees \major
  ees2 4 r | r2 r4 g8. 16 | aes4(f d bes) | ees2~8 8 g g | bes2 aes8 r g8. 16 | % 3a
  c4 c, r aes' | g8(aes bes g aes bes c aes | bes c d bes) c r a8. 16 | bes2~_(<bes, bes'>) | ees4 r r2 |
  R1*2 | bes1 | ces2 bes4 r | r bes ces8 bes r4 | r8 bes'8 8 8 aes4 8 r |
  r4 aes8. 16 a8 8 r4 | r2\fermata r4. c,8 | 4 4 8 8 r c | 4 4 <f, f'>8 q  r\fermata \section \key bes \major % 4a
  f'8 | bes,1 | aes2 f' | bes, r4 g' | 1 | ees4 4 d(f) |
  bes,2 r4 d | ees1 | e2 e | f r4 ees | 1 | d2 f | bes, r | ees1 | bes8-. 8-. r4 r2 |
}

wordsBass = \lyricmode {
  \SSe \SSe \SSe \SSe
  \OSssSc \SssSc \SssSc \Smap \Gttfp \YSssSc \SssSc \Gttfc \tfe % 2
  \STtpc \SSSTtpc \SSTtpcc \ASe \ASe \Tstpcc
  \Wypq \Hhnpe \Hhnpe \commonlyrics
}

wordsBassMidi = \lyricmode {
  \MSSe \MSSe \MSSe \MSSe
  \MOSssSc \MSssSc \MSssSc \MSmap \MGttfp \MYSssSc \MSssSc \MGttfc \Mtfe % 2
  \MSTtpc \MSSSTtpc \MSSTtpcc \MASe \MASe \MTstpcc
  \MWypq \MHhnpe \MHhnpe \Mcommonlyrics
}

pianoRHone = \relative {
  \global
  r4 | r2 r4 bes'8 8 | d4 bes r2 | r2 r4 <g bes>8 8 |
  <bes ees>4 <g bes> r2 | r4 <ees g bes>8 8 <ees aes ces>4 4 | % 1b
  <ees g bes>8 8 r4 <c g' bes>8 <cis g' bes> r4 |
  \vo <d f bes>2 ees | \ov <d f bes>2\fermata r4. \section
  r8 | f2. | r4. r4 <d bes'>8 | <ees c'>4 <c a'>8 8 <d bes'> <ees c'> | % 2a
  <f d'>8 <ees c'> <d bes'> q <ees c'> <f d'> |
  r4 <f a ees'>8 <g bes ees>4-> <f a ees'>8 |
  r4 <f bes d>8 <g bes d>4-> <f bes d>8 | % 2b
  r4 <a d>8 <a d f> <g cis e> <f d'> | <e a cis>4. <f a d>4 r8 |
  <a cis e>4 8 <a d f>4 <g a e'>8 | <f d'>4.~(<f ees'>4\fermata) <f d'>8 |
  <c ees c'>4 <a c a'>8 8 <bes d bes'> <c ees c'> |
  <d f d'>8 <c ees c'> <bes d bes'> q <c ees c'> <d f d'> | % 2c
  r4 <f a ees'>8 <g bes ees>4 <f a ees'>8 |
  r4 <g bes d>8 <g bes d>4-> <f bes d>8 | r4. <bes f'>4 8 |
  d4. bes | <f bes d>4.~4 <ees a c>8 |
  <d bes'>4\fermata bes'8 4 8 \section \key ees \major |
  <g ees'>2 <g bes>4 g8. 16 | bes4 ees8. 16 2 | % 3a
  d4 a8. 16 \vo r4 d8. 16 \ov |
  <g, ees'>2~<g bes>8 <ees g> <ees bes'> <bes' ees> |
  <g ees'>2 <f d'>8 r <g f'>8. 16 |
  <g ees'>4 4 r2*1/2 \tiny \vo d'8 c | % 3b
  <g bes>8 <aes c> <bes d> <g bes> <aes c> <bes d> <c ees> <aes c> |
  <bes d>8 <c ees> <d f> <bes d> <c ees> r8 \normalsize \ov <f, ees'>8. 16 |
  <g ees'>2 <aes d> | <g ees'>4 r r2 |
  R1*2 | bes1 | ces2 bes4 bes,8 8 | \vo r4 bes' ces8 bes r4 | % 3c
  r8 <f bes> q q <f b>4 4 |
  \ov r4 <b f'>8. 16 <c f>8 c r4 | r2\fermata r4 r8 c, | % 4a
  <g' bes>4 <f a> <e g>8 8 r <e g c> |
  <f a c>4 <e g c> <ees a c>8 8 r8\fermata \section \key bes \major
  <ees a>8 | <d bes'>1 | <c c'>2 <c a'> | <d bes'>2 r4 q | q1 | <g c>4 4 \vo bes(c) | % 4b
  <f, d'>2 r | R1*6 | <g ees'>1 | <f d'>8 8 r4 r2 |
}

pianoRHtwo = \relative {
  \global \vt
  s4 s1*3 |
  s1*3 | \vo \once\hideNotes bes'2^( \vt <bes, f>4 <ees f>) | s2..
  s8 | s2.*18 | % 2
  s1*2 | s2 a | s1*3 | R1 | r2 r4 s | s1*6 | ees2. 4 | d2. r4 |
  s1*8 | s2 f | % 4ab
  s2 \tiny r4 <f bes> | <g bes>1 | 2 2 | <f aes> r4 <f c'> | 1 | <f bes>2 <f c'> | <f d'> s | s1*2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*6 | s2-\markup\italic rit. s\p | s2..
  s8\mf | s2.*4 | s4 s2\f | % 2a
  s2. | s\p | s | s\omit\pp-\markup{\dynamic pp \italic "poco rit."} s2 s8 s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2. |
  s2. s4 s2\f | s2. | s4. s\ff | s2. | s-\markup\italic "dim. e rit." | s4 s2\mf |
  s1*2 | s2 s\< | s\! s8 s4.\< | s1\ff | % 3a
  s1*4 | s2. s4\mf |
  s1*2 | s1\p | s1*2 | s2.\< s4\! |
  s8 s2..\ff | s8 s2.\mf s8\ff | s1 | s2.. % 4a
  s8\mf | s1*14 |
}

pianoLHone = \relative {
  \global
  bes8 8 | 4 bes, r d'8 8 | f4 d r bes8 8 | 4 bes, r ees'8 8 |
  g4 ees \vo r2 | R1 | r2 \ov e,8 8 r4 | f4(f,~2) | bes2\fermata r4. \section
  f'8 | \repeat unfold 12 { bes,8 [ r f' ] } | % 2a
  a,8 [ r f' ] a, [ r f' ] | a,4 e'8 a,4 r8 | <a a'>4. q | % 2b+
  <d a'>4.~_(<c a'>4) <f bes>8 | \repeat unfold 8 {<bes, bes'>8 [ r f' ]} |
  r4. <bes d>4 <f d'>8 | <d d'>4. <bes bes'> | % 2c+3
  <f f'>4.~4 8 | <bes bes'>4\fermata r8 r4. \section \key ees \major |
  <ees bes'>2 4 r | r4 g8. 16 4 <g bes>8. g16 | % 3a
  <a bes>4 f d bes | <ees bes'>2~8 8 <g bes> q |
  <bes ees>2 <aes bes>8 r <g b>8. 16 |
  c4 <c, c'> r2 | R1 | r2 r4 <a' c>8. 16 | % 3b
  bes2~_(<bes, bes'>) | <ees bes>4 r r bes'8. 16 |
  bes2 2 | 2. r4 | <bes, bes'>1 | <ces ces'>2 <bes bes'>4 r | % 3c
  r4 bes ces8 bes r4 | r8 bes'8 8 8 aes4 8 r |
  r4 <aes d>8. 16 <a c>8 <a f'> r4 | % 4a
  \vo \tiny r8 c e\fermata e\fermata c c r4 | \ov \normalsize c,4 4 8 8 r c |
  c4 c <f, f'>8 8 r8\fermata \section \key bes \major
  <f' c'>8 | <bes, bes'>1 | <a f'>2 f' | % 4b
  <bes, bes'> r4 <g' bes> | 1 | <ees bes'>4 4 <d bes'>(<f a>) |
  <bes, bes'>2 \vo \tiny r4 <d bes'> | <ees bes'>1 | <e c'>2 2 | % 4c
  <f c'> r4 <ees a> | 1 | <d bes'>2 <g a> | <bes, bes'> r |
  \ov \normalsize <ees bes'>1 | <bes bes'>8 8 r4 r2 |
}

pianoLHtwo = \relative {
  \global \vt
  s4 | s1*3 | s2 \tiny r4 ees8 8 | 1 | 4 r s2 | s1 | s2..
  s8 | s2.*18 |
  s1*16 |
  s1 | \normalsize r2\fermata r4 r8 c | s1 | s2.. % 4a
  s8 s1*5 |
  s2 r | R1*6 | s1*2 |
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
