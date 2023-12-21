\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Magnum Mysterium"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tomás Luis de Victoria"
  arranger    = "Ed. Alice Parker & Robert Shaw"
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
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \tempo Warmly 4=72
  s1*52
  \set Score.tempoHideNote = ##t
  \tempo \markup{\rhythm {2} = \rhythm {2.}} 4=108
  s2.*14
  \tempo \markup{\rhythm {2.} = \rhythm {2}} 4=72
  s1*8
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s2.*4
  \textMark \markup { \box "10a" } s2.*5
  \textMark \markup { \box "10b" } s2.*5
  \textMark \markup { \box "11a" } s1*4
  \textMark \markup { \box "11b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*7 |
  s1*8 | % 4
  s1\omit\cresc-\markup\italic "poco cresc." | s1*3 | s4 s2.\mp | s1*3 |
  s1*5 | s4 s2.\p | s1*2 | % 6
  s1*3 | s4 s2.\< | s1\! | s4 s2.\> | s4 s2.\! | s1\p |
  s1*5 | s4. s8\< s2 | s s\! | s4 s2.\mf | % 8
  s1*4 | s2 s4\mp | s2.*3 |
  s2.*5 | s2 s4\cresc | s2.*4 | % 10
  s1 | s4 s2.\f | s1*6 |
}

soprano = \relative {
  \global
  c''1 | f,2-- c'~ | 4 4 des-- 4-- | c2 r4 f |
  des4 ees f4.-- 8 | 4 c des c--(~ | 8 bes aes g aes bes c aes | bes aes aes g16 f g2~ |
  g2) f \breathe | a1 | bes2-- a4.(bes8 | c4) des(~8 c bes4~ | % 4a
  bes4 a) bes--(aes8 g | f4) g aes2 | r4 f' des ees | f4.-- 8 4 des |
  bes4 c des4.-- 8 | 4 c4. bes8 4--(~ | bes a) bes2 | R1 | % 5a
  r4 des c4. a8 | bes4-- c des bes | des4.-- 8 4-- 4 | c2 c-- |
  a4 c c4.-- 8 | 4-- d ees2 | des4--(c8 bes c2 | des) c | % 6a
  R1 | r4 f, bes2-- | aes4 f g(a) | bes4.--(c8 des4) des |
  c2 r | R1 | r4 bes ees2-- | des4 bes c(d) | % 7a
  ees4.--(des8 c bes8 4~ | 4 a8 g a4) a | bes2 r | a2. 4 |
  a2-- bes | a4.--(bes8 c4 des~ | 8 c8 4~8 bes8 4) | c4 a2-- 4 | % 8a
  bes4.-- 8 2 | r4 bes4(~8 c des bes | c4) f ees2-- | des4 f ees-- c |
  des4.--(c8 bes aes aes g16 f | g4) g f c'--~ | 4 aes2 des4--(~ | 8 c bes2 a4) \section \time 3/4 | % 9a
  bes2 des4 | c2 a4 | bes4. aes8(bes c) | des4 c2 |
  des2 bes4 | aes2 f4 | g4. f8(g aes) | bes2 a4 | bes2. | % 10a
  r4 r ees | des4.(c8 des bes | c4) aes8(bes c des) | ees2 4 | des4 f2 \section \time 4/4 |
  f1 | r4 f4 8(ees des c | bes4) ees--(~ 8 des c bes | a4 bes2 a4) | % 11a
  bes1~ | 1~ | 1~ | 1 |
  \bar "|."
}

wordsSop = \lyricmode {
  O ma -- gnum my -- ste -- ri -- um,
  et __ ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O ma -- gnum my -- ste -- ri -- um,
  et __ ad -- mi -- ra -- bi -- le,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a
  vi -- de -- rent Do -- mi -- num na -- tum,
  vi -- de -- rent Do -- mi -- num na -- tum,
  ja -- cen -- tem in præ -- se -- pi -- o,
  ja -- cen -- tem in præ -- se -- pi -- o:
  O be -- a -- ta Vir -- go, cu -- jus vi -- sce -- ra
  me -- ru -- e -- runt por -- ta -- re
  Do -- mi -- num Je -- sum Chri -- stum.
  Al -- le -- lu -- ia,

  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
}

wordsSopMidi = \lyricmode {
  "O " ma "gnum " my ste ri "um, "
  "\net "  ad mi ra bi "le " sa cra men "tum, "
  "\nO " ma "gnum " my ste ri "um, "
  "\net "  ad mi ra bi "le, "
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nut " a ni ma li "a "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nja" cen "tem " "in " præ se pi "o, "
  "\nja" cen "tem " "in " præ se pi "o: "
  "\nO " be a "ta " Vir "go, " cu "jus " vi sce "ra "
  "\nme" ru e "runt " por ta "re "
  "\nDo" mi "num " Je "sum " Chri "stum. "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2 s\p | s1*6 |
  s1*8 | % 4
  s1\omit\cresc-\markup\italic "poco cresc." | s1*3 | s4 s2.\mp | s1*3 |
  s1*3 | s4 s2.\p | s1*4 | % 6
  s1*2 | s2. s4\< | s1 | s1\! | s4 s2.\> | s4 s2.\! | s1\p |
  s1*5 | s4. s8\< s2 | s s\! | s4 s2.\mf | % 8
  s1*4 | s2 s4\mp | s2.*3 |
  s2.*4 | s2 s4\cresc | s2.*5 | % 10
  s2. s4\f | s1*7 |
}

alto = \relative {
  \global
  R1 | r2 f'~ | 2 bes,-- | f'2. 4 |
  ges4-- 4 f2 | r4 f des ees | f4.-- 8 4 c | des f2--(e8 d |
  e2) f | 1 | 2-- 4.(g8 | aes4) aes, bes4.--(c8 | % 4a
  des4) c bes f' | f ees c4.-- 8 | 4 des~8 c bes4--(~ | 4 a) bes bes' |
  f4 aes4 4.-- 8 | 2 f4 ges | f2-- 2~ | 2 r | % 5a
  r4 bes aes4. f8 | g4-- a bes f | 4.-- 8 4-- g | a2 g-- |
  f4 a4 4.-- 8 | aes4-- 4 bes c--(~ | 8 bes8 2 a4) | bes f aes4.--(g16 aes | % 6a
  bes4 aes8 g f4) c | r2 r4 bes | f'2-- ees4 c | d(ees) f8--(ees f g |
  aes4. g16 aes bes4) aes8(g) | f2 r4 c | f2-- ees4 c | des8(ees f g aes2) | % 7a
  bes4.--(aes8 ges f ges4 | f2.) 4 | d2 r | f2. 4 |
  f2-- 2 | 1-- ~ | 1 | 2 r4 f--~ | % 8a
  f4 f ges4.-- 8 | f4 bes,8(c des ees f g | aes4) 4 2-- | f4 f g-- a |
  bes4.--(aes8 g f f4~ | 4) e f aes--(~ | 8 g f ees f2 | des4) ees f2 \section | % 9a
  f2 bes4 | aes2 f4 | g4. f8(g aes) | bes2 a4 |
  bes2 f4 | 2 c4 | ees2 4 | f4 2 | 2 des4 | % 10a
  bes2 a4 | bes2 bes'4 | aes2 f4 | g4. f8(g aes) bes2 a4 \section |
  bes2 r4 f | 8(ees des c bes4) bes'--(~ | 8 aes ges f ees4 ges) | f2 r4 c | % 11a
  des4.(ees8 f4) ges--(~ | 4 f ees4. f8 | ges2) f~ | 1 |
  \bar "|."
}

wordsAlto = \lyricmode {
  O __ ma -- gnum my -- ste -- ri -- um,
  et __ ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  O ma -- gnum __ my -- ste -- ri -- um,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum, __
  ut a -- ni -- ma -- li -- a
  vi -- de -- rent Do -- mi -- num na -- tum,
  vi -- de -- rent Do -- mi -- num na -- tum,
  ja -- cen -- tem,
  ja cen -- tem in præ -- se -- pi -- o,
  ja -- cen -- tem in præ -- se -- pi -- o:
  O be -- a -- ta Vir -- go, cu -- jus vi -- sce -- ra
  me -- ru -- e -- runt por -- ta -- re
  Do -- mi -- num Je -- sum Chri -- stum.
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
}

wordsAltoMidi = \lyricmode {
  "O "  ma "gnum " my ste ri "um, "
  "\net "  ad mi ra bi "le " sa cra men "tum, "
  "\nO " ma "gnum "  my ste ri "um, "
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\net " ad mi ra bi "le " sa cra men "tum, " 
  "\nut " a ni ma li "a "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nja" cen "tem, "
  "\nja " cen "tem " "in " præ se pi "o, "
  "\nja" cen "tem " "in " præ se pi "o: "
  "\nO " be a "ta " Vir "go, " cu "jus " vi sce "ra "
  "\nme" ru e "runt " por ta "re "
  "\nDo" mi "num " Je "sum " Chri "stum. "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*7 | s2 s\p |
  s1*8 | % 4
  s1\omit\cresc-\markup\italic "poco cresc." | s1 | s2. s4\mp | s1*5 |
  s1*3 | s4 s2.\p | s1*4 | % 6
  s1*3 | s2 s\< | s1\! | s4 s2.\> | s4 s2.\! | s1\p |
  s1*4 | s2. s4\< | s1 | s\! | s4 s2.\mf | % 8
  s1*4 | s2 s4\mp | s2.*3 |
  s2.*4 | s2 s4\cresc | s2.*5 | % 10
  s4 s2.\f | s1*7 |
}

tenor = \relative {
  \global
  R1*4 |
  R1*3 | r2 c'~ |
  c2 f,-- | c'2. 4 | des-- 4 c2 | r4 f des ees | % 4a
  f4.-- 8 4 c | des c--(~8 bes aes g | aes2 bes | c) des4 f |
  des4 ees f4.-- 8 | 4 ees des(ees) | c2-- bes4 des | c4. aes8 bes4-- c | % 5a
  des4 bes f'4. 8 | ees4-- c bes des | 4.-- 8 4-- 4 | ees f2--(e4) |
  f4 f, f'4.-- 8 | 4-- 4 ees2 | ges2-- f | r4 bes, f'2-- | % 6a
  ees4 c d(ees) | f8--(ees des c bes c des bes | c2.) 4 | bes2 r4 bes |
  f'2-- ees4 c | des c--(~8 bes aes g | aes4 bes2) a4 | bes des ees(f) | % 7a
  ges4.--(f8 ees des ees4 | des c8 bes c4) c | bes2 r | c2. 4 |
  c2-- des | c2.--(bes4 | c2 des) | c4 2-- 4 | % 8a
  d4.-- 8 ees4 bes8(c | des ees f2) des4 | ees--(des2 c4) | des4 4 ees-- f |
  bes,2.-- des4 | c1 | aes-- | bes2 c-- \section | % 9a
  bes2 4 | f'2 4 | ees2 4 | bes4 f'2 |
  bes,2 des4 | c2 a4 | bes4. aes8(bes c) | des4 c2 | bes2 f4 | % 10a
  g4 ees2 | f2 des'4 | c2 aes4 | bes2 4 | 4 c2 \section |
  bes4 des c8(bes aes g | f4) bes8--(c des ees f des | ees4. f8 ges f ees des | c4 bes) c f | % 11a
  f8(ees d c bes4) d--( | ees d ges4. f8 | ees2. d8 c) | d1 |
  \bar "|."
}

wordsTenor = \lyricmode {
  O __ ma -- gnum my -- ste -- ri -- um,
  et __ ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a,
  ut a -- ni -- ma -- li -- a
  vi -- de -- rent Do -- mi -- num na -- tum,
  vi -- de -- rent Do -- mi -- num na -- tum,
  ja cen -- tem in præ -- se -- pi -- o,
  ja -- cen -- tem in præ -- se -- pi -- o,
  in præ -- se -- pi -- o:
  O be -- a -- ta Vir -- go, cu -- jus vi -- sce -- ra
  me -- ru -- e -- runt por -- ta -- re
  Do -- mi -- num Je -- sum Chri -- stum.
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia.
}

wordsTenorMidi = \lyricmode {
  "O "  ma "gnum " my ste ri "um, "
  "\net "  ad mi ra bi "le " sa cra men "tum, "
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nut " a ni ma li "a, "
  "\nut " a ni ma li "a "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nja " cen "tem " "in " præ se pi "o, "
  "\nja" cen "tem " "in " præ se pi "o, "
  "\nin " præ se pi "o: "
  "\nO " be a "ta " Vir "go, " cu "jus " vi sce "ra "
  "\nme" ru e "runt " por ta "re "
  "\nDo" mi "num " Je "sum " Chri "stum. "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*8 |
  s1 | s\p | s1*6 | % 4
  s1\omit\cresc-\markup\italic "poco cresc." | s1 | s2. s4\mp | s1*5 |
  s1*2 | s2. s4\p | s1*5 | % 6
  s1*3 | s2 s\< | s1\! | s4 s2.\> | s4 s2.\! | s1\p |
  s1*5 | s4 s2.\< | s1\! | s1 | % 8
  s1 | s2 s\mf | s1*2 | s2.*4 |
  s2 s4\mp | s2.*3 | s2 s4\cresc | s2.*5 | % 10
  s4 s2.\f | s1*7 |
}

bass = \relative {
  \global
  R1*4 |
  R1*4 |
  R1 | f | bes,2-- f'~ | 4 4 ges-- 4 | % 4a
  f2 r4 f | des ees f4.-- 8 | 4 des ges2 | f2-- bes,4 4 |
  bes'4 aes des,4.-- 8 | 4 aes' bes(ees,) | f2-- bes,4 bes' | aes4. f8 g4-- aes | % 5a
  bes2 r | r r4 bes, | bes'4.-- 8 4-- 4 | aes4.(bes8) c2-- |
  f,2 r | R1 | r2 r4 f | bes2-- aes4 f | % 6a
  g4(aes) bes--(aes8 g | f4. aes8 ges4) 4 | f2 r | r4 ees bes'2-- |
  aes4 f g(aes) bes--(aes8 g f4. ees8 | des4 c8 bes c4) c | bes bes' aes(f) | % 7a
  ees1--( | f2.) 4 | bes,2 r | f'2. 4 |
  f2-- bes, | f'4.--( g8 a4 bes~ | 8 a a4 bes2) | f4 2-- 4 | % 8a
  bes4.-- 8 ees,2 | bes'2. 4 | aes4--(des, aes'2) | des,2 r |
  R1 | r2 f--~ | 2 des | ges--(f2) \section | % 9a
  bes,2 r4 | R2. | R | R |
  r4 r bes | f'2 4 | ees2 4 | bes f'2 | bes,2 4 | % 10a
  ees4 c2 | bes2 4 | f'2 4 | ees2 4 | ges4 f2 \section |
  bes,4 bes' aes8(g f ees | des c bes aes bes2) | ees1--( | f1) | % 11a
  bes,4 bes'4 8(aes ges f | ees4 d) ees2--~ | 2 bes~ | 1 |
  \bar "|."
}

wordsBass = \lyricmode {
  O ma -- gnum __ my -- ste -- ri -- um,
  et __ ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  ut a -- ni -- ma -- li -- a
  vi -- de -- rent Do -- mi -- num na -- tum,
  ja cen -- tem in præ -- se -- pi -- o,
  ja -- cen -- tem in præ -- se -- pi -- o,
  in præ -- se -- pi -- o:
  O be -- a -- ta Vir -- go, cu -- jus vi -- sce -- ra
  me -- ru -- e -- runt
  Je -- sum Chri -- stum.
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
}

wordsBassMidi = \lyricmode {
  "O " ma "gnum "  my ste ri "um, "
  "\net "  ad mi ra bi "le " sa cra men "tum, "
  "\net " ad mi ra bi "le " sa cra men "tum, "
  "\nut " a ni ma li "a "
  "\nvi" de "rent " Do mi "num " na "tum, "
  "\nja " cen "tem " "in " præ se pi "o, "
  "\nja" cen "tem " "in " præ se pi "o, "
  "\nin " præ se pi "o: "
  "\nO " be a "ta " Vir "go, " cu "jus " vi sce "ra "
  "\nme" ru e "runt "
  "\nJe" "sum " Chri "stum. "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nAl" le lu "ia. " 
}

pianoRHone = \relative {
  \global \voiceOne
  c''1 | f,2 c'~ | 4 4 des4 4 | c2 r4 f |
  des4 ees f4. 8 | 4 c des c~ | 8 bes aes g aes bes c aes | bes aes aes g16 f g2~ |
  g2 f \breathe | a1 | bes2 a4. bes8 | c4 des~8 c bes4~ | % 4a
  bes4 a bes aes8 g | f4 g aes2 | r4 f' des ees | f4. 8 4 <f, bes des> |
  <des f bes>4 <ees aes c> <f aes des>4. 8 | <f des'>4 c'4~8 bes8 4~ | bes a bes2 | s1 | % 5a
  r4 des c4. a8 | bes4 c des bes | des4. 8 4 4 | <aes c>2 <g c> |
  a4 c c4. 8 | 4 d ees2 | des4 c8 bes <f c'>2 | des' <f, c'> | % 6a
  s1 | r4 f bes2 | aes4 f g a | bes4. c8 des4 des |
  c2 r | f,2 r4 c | r4 bes' ees2 | des4 bes c <f, d'> | % 7a
  \oneVoice <ges bes ees>4. <f aes des>8 <ees ges c> <des f bes> \voiceOne bes'4~ | 4 a8 g a4 <f a> | <d bes'>2 r | <f a>2. 4 |
  <f a>2 <des f bes> | a'4. bes8 c4 des~ | 8 c8 4~8 bes8 4 | c4 a2 4 | % 8a
  bes4. 8 2 | r4 bes4 ~8 c <f, des'> <g bes> | <aes c>4 <aes f'> <aes ees'>2 | <f des'>4 <f f'> <g ees'>  <a c> |
  <bes des>4. <aes c>8 <g bes> <f aes> aes g16 f | g4 <e g> f c'~ | 4 aes2 des4~ | 8 c bes2 a4 \section \time 3/4 | % 9a
  \oneVoice <f bes>2 <bes des>4 | <a c>2 a4 | <g bes>4. <f aes>8 <g bes> <aes c> | des4 c2 |
  <bes des>2 <des, f bes>4 | <c f aes>2 <c f>4 | \voiceOne g'4. f8 g aes | bes2 a4 | bes2. | % 10a
  r4 r ees | des4. c8 des bes | c4 aes8 bes c des | ees2 4 | des4 f2 \section \time 4/4 |
  f1 | r4 f4 8 ees des c | bes4 ees~ <g, ees'>8 <f des'> <ees c'> <des bes'> | a'4 bes2 a4 | % 11a
  bes1~ | 1~ | 1~ | 1 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1 | s2 f'~ | 2 bes, | f'2. 4 |
  ges4 4 f2 | r4 f des ees | f4. 8 4 c | des f2e8 d |
  e2 f | 1 | 2 4. g8 | aes4 f des ees | % 4a
  f4. 8 4 4 | f ees c4. r8 | r4 s2. | s1 |
  s1 | aes'2 f4 ges | f2 2~ | 2 r | % 5a
  r4 bes aes4. f8 | g4 a bes <des, f> | 4. 8 4 <des g> | ees4 f~4 e4 |
  f4 a4 4. 8 | aes4 4 bes c~ | 8 bes8 2 a4 | bes f aes4. g16 aes | % 6a
  \oneVoice bes4 aes8 g f4 r | r s2. | \voiceTwo s2 ees4 s | d ees f8 ees f g |
  aes4. g16 aes bes4 aes8 g | s2 r4 s | f2 ees4 r | des8 ees f g aes2 | % 7a
  s2. <ees ges>4 | f2. s4 | s2 r | s1 |
  s1 | f1 ~ | 1 | 2 r4 f | % 8a
  f4 f ges4. 8 | f4 2 s4 | s1 | s |
  s2. f4~ | 4 s f aes~ | 8 g f ees f2 | des4 ees f2 \section | % 9a
  s2.*4 |
  s2. | s | ees2 4 | <des f>4 <c f>2 | f2 des4 | % 10a
  r4 r s | s2 <des bes'>4 | aes'2 f4 | g4. f8 g aes | bes2 a4 \section |
  bes2 r4 f | f8 ees <bes des> c des ees <<{f des} \new Voice {\voiceFour bes'4}>> \voiceTwo | bes8 aes ges f ees4 ges | f2 r4 f | % 11a
  f8 ees des <c ees> f4 <des ges>~ | <ees ges> f <ees ges>4. f8 | <ees ges>2~ <<{ees4 d8 c | d1 } \new Voice { \voiceThree f2~ | 1 }>> |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup "for rehearsal only"
}

pianoLHone = \relative {
  \global \voiceOne
  R1*4 |
  R1*3 | r2 c'~ |
  c2 f, | c'2. 4 | des4 4 c2 | r4 aes bes4. c8 | % 4a
  des4 c bes c | des c r8 bes aes <g c> | <<{aes2 s | s4 a <bes des> r} \new Voice {\voiceThree s4 des~8 c bes4~ 4 s2.}>> |
  \voiceOne des4 ees f4. 8 | 4 ees des(ees) | c2 bes4 des | c4. aes8 bes4 c | % 5a
  \oneVoice <bes des>4 bes f'4. 8 | ees4 c bes bes, | bes'4. 8 4 4 | aes4. bes8 c2 |
  f,4 f d'4. 8 | 4 4 ees2 | ges r4 f, | bes bes aes f | % 6a
  <g ees'>4 <aes c> <bes d> \voiceOne c | f8 ees des c bes c <bes des> bes | c2. 4 | bes2 r4 bes |
  f'2 s | des4 c~8 bes aes g | aes4 bes2 <a c>4 | s1 | % 7a
  s1 | des4 c8 bes c4 s | s2 r | s1 |
  s2 bes, | c'2. bes4 | c2 s | s1 | % 8a
  s2 ees4 bes8 c | des8 ees bes c des ees s4 | s4 des2 c4 | des4 4 ees f |
  s1 | c1 | aes | s1 \section | % 9a
  s2.*4 |
  s2 bes,4 | s2. | s | bes4 s2 | s2. | % 10a
  bes'2 a4 | bes2 bes,4 | s2.*3 \section |
  s1 | f'2 bes4 r | ees4. r8 r2 | c4 bes c c | % 11a
  des4 s2. | s1 | s2 bes,~ | 1 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  R1*4 |
  R1*4 |
  R1 | f | bes,2 f'~ | 4 4 ges4 4 | % 4a
  f2 r4 f | des ees f4. 8 | <f c'>4 des <ges bes>2 | <f c'>2 bes,4 4 |
  bes'4 aes des,4. 8 | 4 aes' bes(ees,) | f2 bes,4 bes' | aes4. f8 g4 aes | % 5a
  s1*4 |
  s1*4 | % 6a
  s2. aes8 g | f4. aes8 ges4 4 | f2 r | r4 ees bes'2 |
  aes4 f <g ees'> <aes c> | bes aes8 g f4. ees8 | des4 c8 bes c4 c | <bes bes'> <bes' des> <aes ees'> f | % 7a
  ees1 | f2. <f c'>4 | <bes, bes'>2 r | <f' c'>2. 4 |
  <f c'>2 s | f4. g8 a4 bes~ | 8 a a4 <bes d>2 | <f c'>4 2 4 | % 8a
  <bes d>4. 8 ees,2 | bes'2. <bes des>4 | <aes ees>4 des, aes'2 | des,2 r |
  bes'2. des4 | r2 f,~ | 2 des | <ges bes> <f c'>2 \section | % 9a
  <bes, bes'>2 bes'4 | f'2 4 | ees2 4 | bes f'2 |
  bes,2 s4 | f2 <f a>4 | bes4. aes8 bes c | s4 f,2 | <bes, bes'>2 <bes f'>4 | % 10a
  <ees g>4 <c ees>2 | <bes f'>2 s4 | <f' c'>2 <f aes>4 | <ees bes'>2 4 | <ges bes>4 <f c'>2 \section |
  <bes, bes'>4 <bes' des> <aes c>8 <g bes> <f aes> <ees g> | des c bes aes bes2 | ees1 | f1 | % 11a
  bes,4 bes'4 8 aes ges f | ees4 d ees2~ | 2 s | s1 |
  \bar "|."
}

#(set-global-staff-size 20)

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
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
  \bookOutputSuffix "single-noacc"
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
%   \unfoldRepeats
%   \articulate
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
  \bookOutputSuffix "midi-sop"
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
%   \unfoldRepeats
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
%   \unfoldRepeats
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
%   \unfoldRepeats
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
%   \unfoldRepeats
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
