\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O magnum mysterium"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Morten Lauridsen"
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
  \tempo "Adagio, molto legato e espressivo" 4=72 
  s1*3
  \set Score.tempoHideNote = ##t
  s2 \tempo "rit." 4=65 s2
  \tempo "a tempo" 4=72
  s1 |
  s1*3 s1.*2 | s1*4 | % 2
  s1 | \tempo "rit." 4=65 s1 | \tempo "a tempo" 4=72 s1*2 | % 3a
  \set Score.tempoHideNote = ##f
  \tempo "Poco più mosso" 4=76 s1*3 | % 3b
  \set Score.tempoHideNote = ##t
  s2 \tempo "poco rit." 4=72 s | \tempo "a tempo" 4=76 s1 |
  s1*3 | s1.*2 | s1*3 | % 4
  s1*2 | \tempo "rit." 4=70 s2. \tempo "a tempo" 4=76 s4 | s1*2 | % 5a
  s4 \tempo "rit." 4=70 s2. | \tempo "Tempo primo" 4=75 s1.*3 | % 5b
  s2. \tempo "poco rit." 4=72 s2. | \tempo "a tempo" 4=75 s1.*3 | % 6a
  s2. \tempo "molto rit." 4=68 s | \tempo "a tempo, poco deliberamente" 4 = 75 s1*3 | s2 \tempo "poco rit" 4=72 s2 |
  \tempo "a tempo" 4=75 s1*4 | s1.*2 | s1*2 | % 7
  s1*3 | \tempo "rit." 4=70 s1 | % 8a
  s4 \tempo "molto rit." 4=68 s2. | \tempo "a tempo" 4=75 s1*2 | s4 \tempo "poco rit." 4=72 s2. |
  \tempo "a tempo" 4=75 s1*3 | \tempo "molto rit." 4=68 s1 | % 9a
  \tempo "meno mosso" 4=65 s1 | s2 \tempo 4=22 s2 | \tempo 4=38 s1 |
  
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*5
  \textMark \markup { \box "2a" } s1*3 s1.
  \textMark \markup { \box "2b" } s1. s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*5
  \textMark \markup { \box "4a" } s1*3 s1.
  \textMark \markup { \box "4b" } s1. s1*3
  \textMark \markup { \box "5a" } s1*5
  \textMark \markup { \box "5b" } s1 s1.*3 |
  \textMark \markup { \box "6a" } s1.*4 |
  \textMark \markup { \box "6b" } s1. s1*4 |
  \textMark \markup { \box "7a" } s1*4 |
  \textMark \markup { \box "7b" } s1.*2 s1*2 |
  \textMark \markup { \box "8a" } s1*4 |
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*3
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*3 | s1\pp |
  s1*3 | s2. s\p | s s\< | s1\mp | s | s | s | % 2
  s1 | s2. s4\p | s1 | s | s\p | s | s | s | s |
  s1*3 | s2. s\mp | s s\< | s1\mf | s | s | % 4
  s1 | s | s2.\> s4\p | s1 | s | s4 s2.\> | s1.\pp | s | s |
  s1. | s | s | s\cresc | s | s1*4 | % 6
  s1*4 | s2. s\mp | s s\< | s1\mf | s |
  s1 | s | s | s2. s4\p | s1 | s | s | s | % 8
  s4 s2.\mp | s1 | s | s\> | s\pp | s | s2..\ppp\> s8\! |
}

dynamicsSopSep = {
  \override DynamicTextSpanner.style = #'none
  s1*8 s1.*2 s1*16 s1.*2 s1*9 s1.*7
  s1.\omit\cresc | s1\mf | s | s | s2 s\< | s1\f | s | s | s\>
  s1.*2\! s1*17
}

soprano = \relative {
  \global
  a'1 | 2 4 4 | 4(b g a~ | a) a4 2\fermata \caesura | d1 |
  d4(e) a, a | a(d g, a~ | a) d,4 2 \time 3/2 | r2 r4 b'(cis) d | % 2a
  d4(a) d, d' e fis \time 4/4 | g2.(fis4 | e g a,) cis | 4(d d,) \breathe g | g(fis d g~ |
  g4 fis d) a' | a e d\fermata \breathe d(~ | d g e) d | e2 e\fermata \caesura \section | % 3a
  a1 | 2 4 4 | 4(b g a~ | a) 4 2 | d1 |
  d4(e) a, a | a(d g, a~ | a) d,4 2 \time 3/2 | r2 r4 b' cis d | % 4a
  d4 a d, \breathe d' e fis \time 4/4 | g2.(fis4 | e g a,) cis | 4(d d,) \breathe g |
  g4(fis d) g | g fis d(a') | a(e) fis\fermata \breathe d | d g e d | e2 e~ | % 5a
  e4 \breathe a a a \section \time 3/2 | a2.(b4 g a~ | 2) 2 \breathe 4 4 | b b b2 fis4 g |
  a2 4 \breathe a a a | 2.(b4 g a~ | 2) 4 \breathe 4 4 4 | d4 4 1 | % 6a
  \splitStaffBarLine
  R1. \section \time 4/4 | R1*8 | \time 3/2
  r2 r4 b(cis) d | d(a) d, \breathe d' e fis \time 4/4 | g2.(fis4 | e g a,) cis |
  cis4(d d,) \breathe g | g(fis d) g | g fis d(a') | a(e) d\fermata \breathe d | % 8a
  d4 g e d | d1 | d | R |
  r4 a'2 4 | 4(b g a~ | 1) | 1 \breathe | % 9a
  \break d,2 2 | d(a\fermata) | a1\fermata |
  \bar "|."
}

sopranoOne = \relative {
  \key d \major
  s1*8 s1.*2 s1*16 s1.*2 s1*9 s1.*7 \break |
  d''4^\markup{"S.1" \italic "(cresc.)"}(e) 2 \breathe a,4-- d-- \section | d1-- ~ | 4 e \breathe a,-- e'8--(d) | d1-- ~ | 4 a \breathe a-- d-- | % 6b
  g1-- ~ | 4 e \breathe a,-- e'8--(d) | d1--(~ | 4 a) d,2 \section | \break
  \convDownStaffBarLine
  s1.*2 s1*17
}

sopranoTwo= \relative {
  \key d \major
  s1*8 s1.*2 s1*16 s1.*2 s1*9 s1.*7
  d''4^\markup{"S.2" \italic "(cresc.)"}(e) 2(a,) \breathe \section | a1 | 2 4 4 | 4(b g a~ | a) 4 2 \breathe |
  d1 | 4(e) a, a | a(d g, a~ | a) d,4 2 \section |
  \convUpStaffBarLine
  s1.*2 s1*17
}

wordsSop = \lyricmode {
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  sa -- cra -- men -- tum, et ad -- mi -- ra -- bi -- le, __
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  vi -- de -- rent Do -- mi -- num,
  ut a -- ni -- ma -- li -- a __ vi de -- rent Do -- mi -- num __ na -- tum,
  ja -- cen -- tem in præ -- se -- pio! __
  Be -- a -- ta Vir -- go,
  cu -- jus vis -- ce -- ra me -- ru -- e -- runt,
  Be -- a -- ta Vir -- go, por -- ta -- re Do -- mi -- num % Christ -- um.
%  Al -- le -- lu -- ia!
%  Al -- le -- lu -- ia!
%  Al -- le -- lu -- ia!
%  Al -- le -- lu -- ia!
  sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a __ vi -- de -- rent
  Do -- mi -- num na -- tum,
  ja -- cen -- tem in præ -- se -- pio.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

wordsSopMidi = \lyricmode {
  "O " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nsa" cra men "tum, " "et " ad mi ra bi "le, " 
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nO " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nvi" de "rent " Do mi "num, "
  "\nut " a ni ma li "a "  "vi " de "rent " Do mi "num "  na "tum, "
  "\nja" cen "tem " "in " præ se "pio! " 
  "\nBe" a "ta " Vir "go, "
  "\ncu" "jus " vis ce "ra " me ru e "runt, "
  "\nBe" a "ta " Vir "go, " por ta "re " Do mi "num "
  "\nsa" cra men "tum, "
  "\nut " a ni ma li "a "  vi de "rent "
  "\nDo" mi "num " na "tum, "
  "\nja" cen "tem " "in " præ se "pio. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
}

wordsSopOne = \lyricmode {
  Chris -- tum.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

wordsSopOneMidi = \lyricmode {
  "Chris" "tum. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
}

wordsSopTwo = \lyricmode {
  Chris -- tum. __
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
}

wordsSopTwoMidi = \lyricmode {
  "Chris" "tum. " 
  "\nO " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4 s2.\pp | s1*3 | s1\pp |
  s1 | s | s4 s2.\p | s1. | s2. s\< | s1\mp | s | s | s | % 2
  s1 | s2. s4\p | s1 | s | s4 s2.\p | s1 | s | s | s |
  s1 | s | s4 s2.\mp | s1. | s2. s\< | s1\mf | s | s | % 4
  s1 | s | s2.\> s4\p | s1 | s | s4 s2.\> | s1.\pp | s | s |
  s1. | s | s | s\cresc | s | s4 s2.\mf | s1 | s | s2 s\< | % 6
  s1\f | s | s | s1\> | s1.\mp | s2. s\< | s1\mf | s |
  s1 | s | s | s2. s4\p | s1 | s | s | s4 s2.\mp | % 8
  s1 | s | s | s\> | s\pp | s | s2..\ppp\> s8\! |
}

alto = \relative {
  \global
  r4 d'(g e) | a,2 4 e' | g1( | d4) e e(d\fermata) \caesura | g1 |
  e4(d) cis d | 2. 4 | 4 4 e fis \time 3/2 | a e fis \breathe a2 4 | % 2a
  g2 d4 \breathe a' a a \time 4/4 |
  <<{\voiceOne d1(~ | 2 a4)} \new Voice {\voiceTwo g4(fis e g | a2.) }>> \oneVoice <a b>4 |
  <e a>2(d4) \breathe d | 1~ |
  d2. 4 | e e d\fermata \breathe cis( | d2.) 4 | 2 2\fermata \caesura \section | % 3a
  r4 d(g e) | a,2 4 e' | g1( | d4) e e(d) | g1 |
  e4(d) cis d | 2. 4 | 4 \breathe d e fis \time 3/2 | a e fis a a a | % 4a
  <g a>4 4 d \breathe a' a a \time 4/4 | <<{\voiceOne d1(~ | 2 a4)} \new Voice {\voiceTwo g4 fis e g | a2.}>> \oneVoice <a b>4 | <e a>2(d4) \breathe d |
  d2. 4 | 4 4 2 | e2 d4\fermata \breathe cis | d d d d | e2 e~ | % 5a
  e1 \section \time 3/2 e2(d2. a'4 | gis2) fis \breathe cis4 4 | d4 4 2 4 4 |
  e2 1 \breathe | 2(d2. a'4 | gis2) fis4 \breathe 4 4 4 | 4 4 <<{\voiceOne d(fis g d')} \new Voice {\voiceTwo d,(fis g2)}>> \oneVoice | % 6a
  <a d>2^\markup{"A." \italic "(cresc.)"} a(<e g>) \section \time 4/4 | r4 d(g e) | a,2 4 e' | g1( | d4) e e(d) \breathe |
  <b d'>1 | <<{\voiceOne a'2 4 d,} \new Voice {\voiceTwo e4(d) cis d}>> \oneVoice | <b g'>2. 4 | d4 \breathe d e fis \section \time 3/2 | % 7a
  a4 e fis \breathe a2 4 | <g a>2 d4 \breathe a' a a \time 4/4 <<{\voiceOne d1(~ | 2 a4)} \new Voice {\voiceTwo g4(fis e g | a2.)}>> \oneVoice <a b>4 |
  <e a>2(d4) \breathe d | 2. 4 | 4 4 2 | e2 d4\fermata \breathe cis | % 8a
  d4 d d d | a1 | a | r4 d g e |
  e1( | g | e | d) | % 9a
  d2 a | b(g\fermata) | a1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le, __
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  et a -- ni -- ma -- li -- a vi -- de -- rent Do -- mi -- num,
  ut a -- ni -- ma -- li -- a __ vi de -- rent Do -- mi -- num __ na -- tum,
  ja -- cen -- tem in præ -- se -- pio! __
  Vir -- go,
  cu -- jus vis -- ce -- ra me -- ru -- e -- runt,
  Vir -- go, por -- ta -- re Do -- mi -- num Christ -- um.
  O __ mag -- num mys -- te -- ri -- um, __
  O __ mag -- num mys -- te -- ri -- um,
  et ad -- mi ra -- bi -- le sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a __ vi -- de -- rent
  Do -- mi -- num na -- tum,
  ja -- cen -- tem in præ -- se -- pio.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

wordsAltoMidi = \lyricmode {
  "O " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\net " ad mi ra bi "le, " 
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nO " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\net " a ni ma li "a " vi de "rent " Do mi "num, "
  "\nut " a ni ma li "a "  "vi " de "rent " Do mi "num "  na "tum, "
  "\nja" cen "tem " "in " præ se "pio! " 
  "\nVir" "go, "
  "\ncu" "jus " vis ce "ra " me ru e "runt, "
  "\nVir" "go, " por ta "re " Do mi "num " Christ "um. "
  "\nO "  mag "num " mys te ri "um, " 
  "\nO "  mag "num " mys te ri "um, "
  "\net " ad "mi " ra bi "le " sa cra men "tum, "
  "\nut " a ni ma li "a "  vi de "rent "
  "\nDo" mi "num " na "tum, "
  "\nja" cen "tem " "in " præ se "pio. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*3 | s4 s2.\pp |
  s1 | s | s | | s2. s\p | s2. s\< | s1\mp | s | s | s | % 2
  s1 | s2. s4\p | s1 | s | s\p | s | s | s | s |
  s1 | s | s | s2. s\mp | s s\< | s1\mf | s | s | % 4
  s1 | s | s2.\> s4\p | s1 | s | s4 s2.\> | s1.\pp | s | s |
  s1. | s | s | s\cresc | s | s1\mf | s1 | s | s2 s\< | % 6
  s4 s2.\f | s1 | s | s1\> | s1.\mp | s2. s\< | s1\mf | s |
  s1 | s | s | s2. s4\p | s1 | s4 s2.\mp | s1 | s | % 8
  s1 | s | s | s4 s\mp s2\> | s1\pp | s | s2..\ppp\> s8\! |
}

tenor = \relative {
  \global
  <d' e>1 | <a e'>2 4 a | <g d'>1(~ | <fis d'>4) 4 2\fermata \caesura | r4 d'(g e) |
  a,2 4 <a e'> | <a d>1(~ | <a e'>4) <a d> <a d>2(_~ | <a e'>2.) \breathe d2 4 | % 2a
  d2 a4 \breathe e' e e | <<{\voiceOne fis(g2 e4~ | 2.)} \new Voice {\voiceTwo d1( | e2.)}>> \oneVoice e4 | d2. \breathe a4 | <a b>2.( g4 |
  fis2.) g4 | a a fis\fermata \breathe 4( | g2.) 4 | a2 2\fermata \section \caesura | % 3a
  <d e>1 | <a e'>2 4 a | <g d'>1(~ | <fis d'>4) 4 2 \breathe | r4 d'(g e) |
  a,2 4 <a e'> | <a d>1(~ | <a e'>4) <a d> q2(~ \time 3/2 | <a e'>2.) \breathe d4 d d | % 4a
  d4 d a \breathe e' e e \time 4/4 | <<{\voiceOne fis(g2 e4~ | 2.)} \new Voice {\voiceTwo d1( | e2.)}>> \oneVoice e4 | d2. \breathe a4 |
  <a b>2. g4 | fis4 4 4(g) | a2 fis4\fermata \breathe 4 | g g g g | a2 a~ | % 5a
  a1 \breathe \section d2(<a b>1 | cis2) 2 fis,4 4 | 4 4 2 4 4 |
  a2 1 | d2(<a b>1 | cis2) 4 \breathe 4 4 4 | <b d>4 4 1 | % 6a
  <<{\voiceOne e4^\markup{"T." \italic "(cresc.)"}(d) d(a d2)} \new Voice {\voiceTwo a2 a(b4 a)}>> \breathe \section | <d e>1 | <cis e>2 4 4 | <b d>1(~ | <a d>4) 4 2 |
  r4 d(g e) | <a, cis>2 <a d>4 <cis e> | <a d>1(_~ | <a e'>4) <a d> q2(~ \section | % 7a
  <a e'>2.) d2 4 | d2 a4 \breathe e' e e | <<{\voiceOne fis4(g2 e4~ | e2.)} \new Voice {\voiceTwo d1( | e2.)}>> \oneVoice e4 |
  d2. \breathe a4 | <a b>2. g4 | fis4 4 4(g) | a2 fis4\fermata \breathe 4 | % 8a
  g2 g | r4 a2 4 | a(b g a~ | 2. d4) |
  d1(~ | d | e2 a,) | r4 d(g) e | % 9a
  a,2(d | a e\fermata) | <d fis>1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le, __
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  vi -- de -- rent Do -- mi -- num,
  ut a -- ni -- ma -- li -- a __ vi de -- rent Do -- mi -- num __ na -- tum,
  ja -- cen -- tem in præ -- se -- pio! __
  Vir -- go,
  cu -- jus vis -- ce -- ra me -- ru -- e -- runt,
  Vir -- go, por -- ta -- re Do -- mi -- num Christ -- um.
  O __ mag -- num mys -- te -- ri -- um, __
  O __ mag -- num mys -- te -- ri -- um,
  sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a __ vi -- de -- rent
  Do -- mi -- num na -- tum,
  ja -- cen -- tem in præ -- se -- pio.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

wordsTenorMidi = \lyricmode {
  "O " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nsa" cra men "tum, "
  "\net " ad mi ra bi "le, " 
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nO " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nvi" de "rent " Do mi "num, "
  "\nut " a ni ma li "a "  "vi " de "rent " Do mi "num "  na "tum, "
  "\nja" cen "tem " "in " præ se "pio! " 
  "\nVir" "go, "
  "\ncu" "jus " vis ce "ra " me ru e "runt, "
  "\nVir" "go, " por ta "re " Do mi "num " Christ "um. "
  "\nO "  mag "num " mys te ri "um, " 
  "\nO "  mag "num " mys te ri "um, "
  "\nsa" cra men "tum, "
  "\nut " a ni ma li "a "  vi de "rent "
  "\nDo" mi "num " na "tum, "
  "\nja" cen "tem " "in " præ se "pio. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s1*3 | s1\pp |
  s1 | s | s | | s2. s\p | s2. s\< | s1\mp | s | s | s | % 2
  s1 | s2. s4\p | s1 | s | s\p | s | s | s | s |
  s1 | s | s | s2. s\mp | s s\< | s1\mf | s | s | % 4
  s1 | s | s2.\> s4\p | s1 | s | s4 s2.\> | s1.\pp | s | s |
  s1. | s | s | s\cresc | s | s1\mf | s1 | s | s2 s\< | % 6
  s1\f | s | s | s1\> | s1.\mp | s2. s\< | s1\mf | s |
  s1 | s | s | s2. s4\p | s1 | s | s | s4 s2.\mp | % 8
  s1 | s | s | s\> | s1\pp | s | s2..\ppp\> s8\! |
}

bass = \relative {
  \global
  fis1 | cis2 4 4 | b1( | a4) 4 2\fermata \caesura | b'1 |
  a2 <a d>4 <a cis> | <g b>1( | <fis a>4) 4 <<{\voiceOne <fis a>2~ | a2.} \new Voice {\voiceTwo \once\hideNotes fis2( | cis2 d4)}>> \oneVoice \breathe g2 4 | % 2a
  fis2 a4 \breathe d d d | b1( | cis2.) 4 | fis,2. 4 | g2.( b,4 |
  a2.) b4 | cis4 4 b\fermata \breathe 4~ | 2. 4 | cis2 2\fermata \caesura \section | % 3a
  fis1 | cis2 4 4 | b1( | a4) 4 2 \breathe | b'1 |
  a2 <a d>4 <a cis> | <g b>1( | <fis a>4) 4 <<{\voiceOne <fis a>2~ | a2.} \new Voice {\voiceTwo \once\hideNotes fis2( | cis2 d4)}>> \oneVoice \breathe g4 4 4 | % 4a
  fis4 4 a \breathe d d d | b1( | cis2.) 4 | fis,2. \breathe 4 |
  g2. b,4 | a a a(b) | cis2 b4\fermata \breathe b | b b b b | cis2 2~ | % 5a
  cis1 \breathe \section | fis2(g1 | fis2) 2 \breathe 4 4 | b,4 4 2 4 4 |
  cis2 1 \breathe | fis2(g1 | fis2) 4 \breathe 4 4 4 | <b, fis'>4 4 1 | % 6a
  <a e'>2^\markup{"B." \italic "(cresc.)"} 2 \breathe 4-- 4-- \section | <d, a' fis'>1-- ~ | 4 4 \breathe 4-- 4-- | <d b' g'>1-- ^(~ | <d a' fis'>4) 4 \breathe 4-- 4-- |
  <d b' g'>1--^(~ | <d a' e'>4) 4 \breathe 4-- 4-- | <d b' g'>1--^(~ | % 7a
  <d a' fis'>2) <<{<a' fis'>2^( \section <cis a'>2~<d a'>4) \breathe } \new Voice {\voiceTwo d,2 | r2 r4}>> \oneVoice g'2 4 |
  fis2 a4 \breathe d d d | b1( | cis2.) 4 |
  fis,2. \breathe 4 | g2. b,4 | a a a(b) | cis2 b4\fermata \breathe b | % 8a
  b4 b b <b g'> | <a fis'>1 | <b g'>1( | <cis a'>4) \breathe <b g'>2 4 |
  <a fis'>1( | <b g'> | <cis a'>) | <b g'> | % 9a
  <a fis'>2 2 | <g d'>1\fermata | <d a'>\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le, __
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O mag -- num mys -- te -- ri -- um,
  O mag -- num mys -- te -- ri -- um,
  vi -- de -- rent Do -- mi -- num,
  ut a -- ni -- ma -- li -- a __ vi de -- rent Do -- mi -- num __ na -- tum,
  ja -- cen -- tem in præ -- se -- pio! __
  Vir -- go,
  cu -- jus vis -- ce -- ra me -- ru -- e -- runt,
  Vir -- go, por -- ta -- re Do -- mi -- num Christ -- um.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a __ vi -- de -- rent
  Do -- mi -- num na -- tum,
  ja -- cen -- tem in præ -- se -- pio.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

wordsBassMidi = \lyricmode {
  "O " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nsa" cra men "tum, "
  "\net " ad mi ra bi "le, " 
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nO " mag "num " mys te ri "um, "
  "\nO " mag "num " mys te ri "um, "
  "\nvi" de "rent " Do mi "num, "
  "\nut " a ni ma li "a "  "vi " de "rent " Do mi "num "  na "tum, "
  "\nja" cen "tem " "in " præ se "pio! " 
  "\nVir" "go, "
  "\ncu" "jus " vis ce "ra " me ru e "runt, "
  "\nVir" "go, " por ta "re " Do mi "num " Christ "um. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nsa" cra men "tum, "
  "\nut " a ni ma li "a "  vi de "rent "
  "\nDo" mi "num " na "tum, "
  "\nja" cen "tem " "in " præ se "pio. "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
}

pianoRHone = \relative {
  \global \voiceOne
  a'1 | <e a>2 4 4 | a4 b g a~ | <d, a'> <d e a>4 a'2\fermata \caesura | d1 |
  d4 e a, a | a d g, a~ | a d,4 e fis | a e fis b cis d | % 2a
  d4 a d, d' e fis | g2. fis4 | e g a, cis | 4 d d, g | g fis d g~ |
  g4 fis d a' | a e d\fermata d~ | d g e d | e2 e\fermata \caesura \section | % 3a
  a1 | 2 4 4 | 4 b g a~ | a4 4 2 | d1 |
  d4 e a, a | a d g, a~ | a d,4 e fis | a4 e fis b cis d | % 4a
  d4 a d, d' e fis | g2. fis4 | e g a, cis | 4 d d, g |
  g4 fis d g | g fis d a' | a e fis\fermata d | d g e d | e2 e~ | % 5a
  \once\apart r4 a a a \section | a2. b4 g a~ | 2 2 4 4 | b b b2 fis4 g |
  a2 4 a a a | 2. b4 g a~ | 2 4 4 4 4 | d4 4 2. 4 | % 6a
  d4 e e2 a,4-- d-- | <a d>1-- ~ | d4 e a,-- e'8-- d | a4(b g a~ | <d, a' d>4) <d e a> <e a>-- <d d'>-- |
  <g d' g>1~ | <e d' g>4 <d e'> a'-- e'8-- d | <d, g d'>1--~ | \once\chord d'4 a e fis \section | % 7a
  a4 e fis b cis d | d a d, \breathe d' e fis | g2. fis4 | e g a, <a b cis> |
  cis4 d d, g | g fis d g | g fis d a' | a e d\fermata d | % 8a
  d4 g e d | d1 | d | \once\apart r4 d g e |
  \once\apart r4 a2 4 | 4 b g a~ | 1 | 1 | % 9a
  d,2 2 | d a\fermata | a1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r4 d' g e | s1 | <d g>1 | s2 <d e>4 d\fermata | g1 |
  e4 d cis d | 2. 4 | <d e>4 d4 2 | e2. a2 4 | % 2a
  g2 d4 a' a a |
  <<{\voiceOne d1_~ | 2 a4} \new Voice {\voiceTwo g4 fis e g | a2. }>> \oneVoice \once\chord <a b>4 |
  <e a>2 d4 d | 1_~ |
  d2. 4 | e e d\fermata cis | \once\apart \once\voiceTwo d2. 4 | 2 2\fermata \section | % 3a
  \once\apart\once\voiceTwo r4 d g e | 2 4 4 | <d g>1 | d4 \once\chord <d e> \voiceTwo q d | g1 |
  e4 d cis \once\chord <d e> | d2. 4 | \once\chord <d e>4 d d2 | e2. a4 a a | % 4a
  <g a>4 4 d a' a a | <<{\voiceOne d1_~ | \voiceTwo <a d>2 \voiceOne a4} \new Voice {\voiceTwo g4 2 4 | s2.}>> \oneVoice \once\chord <a b>4 | <e a>2 d4 d |
  d2. 4 | 4 4 2 | e4 s d4\fermata cis | d d d d | e2 e~ | % 5a
  e1 \section e2 d2. a'4 | gis2 fis cis4 4 | d4 4 2 4 4 |
  e2 1 | 2 d2. a'4 | gis2 fis4 4 4 4 | \chord <d fis>4 4 \auto d fis g2 | % 6a
  <a d>2 <d, a'> <d e a> \section | \once\apart r4 d g e | <a, cis e a>2 4 <cis e a> | <b d g d'>1 | s2 <d a'> |
  \once\apart r4 d g e | <a, cis a'>2 <a cis d>4 <cis d e a> | a' cis g <b, g' a>~ | <d e a>4 d d2 \section | % 7a
  e2. a2 4 | <g a>2 d4 a' a a | <<{\voiceThree d1_~ | \voiceTwo <a d>2} \new Voice {\voiceTwo g4 2 4 | s2}>> s2 |
  <e a>2 d4 d | 2. 4 | 4 4 2 | e4 4 d\fermata cis | % 8a
  d4 d d d | a1 | a | a2. d4 |
  <d e>1~ | <d g> | e | d | % 9a
  a2 a | \once\chord <a b> g\fermata | fis1\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  <d' e>1 | a2 4 a | g1 | fis4 4 2\fermata | \once\apart r4 d' g e |
  a,2 cis4 4 | b1 | a4 a a2~ | a2 4 d2 4 | % 2a
  d2 a4 e' e e | fis4 4 e4 <d e> | e2. 4 | d2. a4 | <a b>2. g4 |
  fis2. g4 | a a fis\fermata 4 | g2. 4 | a2 2\fermata \section | % 3a
  <d e>1 | a2 4 a | g1~ | fis4 4 2 | \once\apart r4 d' g e |
  a,2 cis4 4 | \chord <a b>1 | a4 a4 2~ | a2~4 d4 d d \auto | % 4a
  d4 d a e' e e | fis4 4 e <d e> | e2. 4 | d2. a4 |
  <a b>2. g4 | fis4 4 4 g | a2 fis4\fermata 4 | g g g g | a2 a~ | % 5a
  a1 \section d2 \once\chord <a b>1 | cis2 2 fis,4 4 | 4 4 2 4 4 |
  a2 1 | d2 <a b>1 | cis2 4 4 4 4 | \chord b4 4 <b d>1 \auto | % 6a
  e4 d d a b a \section | <d e>1 | s | s | s |
  s1 | s | \once\chord <a b>1~ | a4 a a2 \section | % 7a
  a2~4 d2 4 | d2 a4 e' e e | fis fis e <d e> | e2. 4 |
  d2. a4 | <a b>2. g4 | fis4 4 4 g | a2 fis4\fermata 4 | % 8a
  g2 4 4 | \once\apart r4 a2 4 | a b g a | 4 g2 4 |
  d1 | g | a2 a | \once\apart r4 d g e | % 9a
  fis,2 2 | \chord d2~<d e>\fermata | <a d>1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  fis1 | cis2 4 4 | b1 | a4 4 2\fermata | b'1 |
  a2 a4 a | \chord <g b>1 | fis4 4 2 | cis2 d4 g2 4 \auto | % 2a
  fis2 a4 d d d | <b d>1 | cis2. 4 | fis,2. 4 | g2. b,4 |
  a2. b4 | cis4 4 b\fermata 4~ | 2. 4 | cis2 2\fermata \section | % 3a
  fis1 | cis2 4 4 | b1 | a4 4 2 | b'1 |
  a2 a4 a | g1 | fis4 4 2 | cis2 d4 g4 4 4 | % 4a
  fis4 4 a d d d | <b d>1 | cis2. 4 | fis,2. 4 |
  g2. b,4 | a a a b | cis2 b4\fermata b | b b b b | cis2 2~ | % 5a
  cis1 \section | fis2 g1 | fis2 2 4 4 | b,4 4 2 4 4 |
  cis2 1 | fis2 g1 | fis2 4 4 4 4 | <b, fis'>4 4 1 | % 6a
  <a e' a>2 2 4-- 4-- \section | <d, a' fis'>1-- ~ | 4 4 4-- 4-- | <d b' g'>1-- ~ | <d a' fis' a>4 4 4--^(4--) |
  <d b' g' b>1-- ~ | <d a' e'>4 4 4-- 4-- | <d b' g'>1-- ~ | <d a' fis'>2 2 % 7a
  cis'2 d4 g2 4 | fis2 a4 d d d | <b d>1 | cis2. 4 |
  fis,2. 4 | g2. b,4 | a a a b | cis2 b4\fermata b | % 8a
  b4 b b <b g'> | <a fis'>1 | <b g'>1 | cis4 b2 4 |
  a1 | b | cis | <b g'> | % 9a
  a2 2 | g2~2\fermata | d1\fermata |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "singlepage-sop"
  \paper {
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
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \sopranoOne
            \addlyrics \wordsSopOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
  \bookOutputSuffix "singlepage-alto"
  \paper {
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
  \bookOutputSuffix "singlepage-tenor"
  \paper {
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
  \bookOutputSuffix "singlepage-bass"
  \paper {
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSopOne}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} {\teeny \dynamicsSopSep}
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
  \bookOutputSuffix "midi-sop1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \soprano
            \addlyrics \wordsSopMidi
            \new Voice \sopranoOne
            \addlyrics \wordsSopOneMidi
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoTwo
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-sop2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \soprano
            \addlyrics \wordsSopMidi
            \new Voice \sopranoTwo
            \addlyrics \wordsSopTwoMidi
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoTwo
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoTwo
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoOne
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano 2"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSop
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopSep
            \new Voice \soprano
            \new Voice \sopranoTwo
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
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
