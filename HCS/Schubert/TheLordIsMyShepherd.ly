\version "2.25.13"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord Is My Shepherd"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Franz Schubert (1797–1828)"
  arranger    = "Arr. Sir John Stainer (1840–1901)"
  opus        = "Ed. Douglas J Walczak"

  poet        = "Psalm 23"
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
  \tempo Adagio 4=60
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*4
  \textMark \markup { \box "1c" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*4
  \textMark \markup { \box "9c" } s1*4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\p | s2 s\< | s\> s\! | s1*2 | s2 s\< | s\> s\! |
  s2\< s\> | s s4.\! s8\pp | s4\> s2.\! | s4\> s2.\! | s4\> s2.\! | s4\> s2.\! | s2.\< s4\> | s2.\< s4\> | s1\ppp | % 2
  s1*2 | s2.. s8\p | s2. s4\< | s2\> s4\! s\< | s1 | s2\> s4 s\< | s2\fz\> s\fz | s\fz s\fz |
  s1\fz | s2. s4\pp s1 | s4 s2.\> | s2 s\! | s s\< | s2.\! s4\mf\> | s1 | s2 s4\! s\pp | % 4
  s1 | s4 s2.\> | s2 s\! | s s\< | s s4\! s\mf\> | s1 | s2 s\! | s s\< | s2.\> s4\! |
  s1 | s2 s\< | s\> s\! | s s\< | s\> s\! | s1*3 | s2.. s8\p | % 6
  \repeat unfold 4 {s4\> s2.\! |} s2.\< s4\! | s2.\< s4\> | s1\pp | s4\> s\! s2\pp | s2. s4\p |
  s2 s\< | s\> s\! | s\< s\> | s1\! | s2 s\< | s\> s\! | s\< s\> | s s4\! s\ppp | s1*2 | % 8
  s2\< s\> | s1\! | s-\markup\italic morendo | s1*2 | s2\< s4\> s\! | s2 s\< | s1 | s1\> s2 s\! | s1*2 |
}

soprano = \relative {
  \global
  R1*3 |
  r2 r4 ees'' | 2 4. 8 | f4 ees r8 des c bes | aes2(ees'4.) des8 |
  c2 r | ees2 4. 8 | aes4 c, r8 des ees f |
  aes,2 c4.(bes8) | aes2 r4 r8 ees | des'8.(c16) 8.(bes16) 4. 8 | % 2a
  aes8. bes16 8.(ees16) 4 c8 ees, | des'8.(c16) 8.(bes16) 4. 8 | aes8.(bes16) 8.(ees16) 4 c8 8|
  f2. 4 | ees2. 4 | 8(des) 8(c) ees(des) 8(c) |
  f8(ees) f(ees) des(c \tuplet 3/2 {ees d c)} | bes2 r | r2 r4 r8 bes | % 3a
  bes4. 8 8. 16 8 8 | c4(bes) r c | des4. 8 ees8. 16 8. 16 |
  fes8.(ees16) 4 r ees | ges2 fes | ees des |
  ces1~ | 4 r r b | 4. 8 4. 8 | % 4a
  b4 4 4 ais | b b r b | 4. a8 4. e'8 |
  e4(d) r e8(c) | b4. 8 4 c8(a) | g2 r4 d' |
  d4. 8 4. 8 | 4 4 4 cis | d d r d | % 5a
  d4. c8 4 g' | g(f) r g8(ees) | d4. 8 4 ees8(c) |
  bes2 r4 bes | des1~ | 2. 4 |
  c2. 4 | 4. 8 des4 ees | f4. 8 des4 c | % 6a
  bes2 c4 des | ees4. des8 c4 bes | a2 8(bes des bes) |
  aes2(g4) r | R1 | r2 r4 r8 ees16 16 |
  des'8.(c16) 8.(bes16) 4. 8 | aes8.(bes16) 8. ees16 4. ees,8 | des'8.(c16) 8.(bes16) 4. 8 | % 7a
  aes8.(bes16) 8.(ees16) 4. c8 | f4. 8 4 8 8 | ees2 4. 8 |
  ees8(des) 8 c ees(des) 8(c) | f(ees) f(ees) des(c \tuplet 3/2 {ees des) c} | bes4 4 r ees |
  ees4. 8 4. 8 | f4. ees8 8 des c bes | aes2(ees'4.) 8 | % 8a
  c2 r | ees2 4. 8 | aes4. c,8 8 des ees f |
  aes,2(c4.) bes8 | aes2 r4 ees' | 4. des8 4 f8(ees) | des4. c8 4 4 |
  bes4(c ees8 des) c(bes) | aes2 des | c2. ees4 | 4(des4. f8) ees(des) | % 9a
  des4. c8 2 | bes4(c) ees8(des) c(bes) | ees1~ | 2 2 |
  ees1~ | 2 r | R1 | R |
  \bar "|."
}

wordsSop = \lyricmode {
  The Lord is my shep -- herd; I shall not, shall __ not want,
  He is my shep -- herd;
  I shall not, shall not __ want.
  He mak -- eth __ me to rest in green __ pas -- tures;
  He lead -- eth __ me be -- side __ still __ wa -- ters,
  He lead -- eth me,
  He lead -- eth __ me __ be -- side __ still __ wa -- ters.
  He giv -- eth peace un -- to my soul; __
  He lead -- eth me in paths of good -- ness for His,
  for His Name’s sake. __
  Yea, though I walk __ thro’ Death‘s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with me,
  yea though I walk __ thro’ Death’s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with __ me,
  Thy rod and staff, Thy rod and staff they com -- fort, com -- fort me,
  for Thy rod and staff they com -- fort __ me. __
  Thou pre -- par -- est __ here a ta -- ble for me,
  in pre -- sence __ of mine en -- e -- mies;
  my head with __ oil Thou a -- noint -- est;
  my __ cup __ run -- neth o -- ver __ run -- neth __ run -- neth o -- ver.
  Yea, sure -- ly peace and mer -- cy all my life shall fol -- low me;
  and I will dwell with God for ev -- er, ev -- er -- more,
  yea, sure -- ly peace and __ mer -- cy all my life __
  shall fol -- low me;
  and I __ will __ dwell with God for __ ev -- er, __
  ev -- er -- more. __
}

wordsSopMidi = \lyricmode {
  "The " "Lord " "is " "my " shep "herd; " "I " "shall " "not, " "shall "  "not " "want, "
  "\nHe " "is " "my " shep "herd; "
  "\nI " "shall " "not, " "shall " "not "  "want. "
  "\nHe " mak "eth "  "me " "to " "rest " "in " "green "  pas "tures; "
  "\nHe " lead "eth "  "me " be "side "  "still "  wa "ters, "
  "\nHe " lead "eth " "me, "
  "\nHe " lead "eth "  "me "  be "side "  "still "  wa "ters. "
  "\nHe " giv "eth " "peace " un "to " "my " "soul; " 
  "\nHe " lead "eth " "me " "in " "paths " "of " good "ness " "for " "His, "
  "\nfor " "His " "Name’s " "sake. " 
  "\nYea, " "though " "I " "walk "  "thro’ " "Death‘s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with " "me, "
  "\nyea " "though " "I " "walk "  "thro’ " "Death’s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with "  "me, "
  "\nThy " "rod " "and " "staff, " "Thy " "rod " "and " "staff " "they " com "fort, " com "fort " "me, "
  "\nfor " "Thy " "rod " "and " "staff " "they " com "fort "  "me. " 
  "\nThou " pre par "est "  "here " "a " ta "ble " "for " "me, "
  "\nin " pre "sence "  "of " "mine " en e "mies; "
  "\nmy " "head " "with "  "oil " "Thou " a noint "est; "
  "\nmy "  "cup "  run "neth " o "ver "  run "neth "  run "neth " o "ver. "
  "\nYea, " sure "ly " "peace " "and " mer "cy " "all " "my " "life " "shall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for " ev "er, " ev er "more, "
  "\nyea, " sure "ly " "peace " "and "  mer "cy " "all " "my " "life " 
  "\nshall " fol "low " "me; "
  "\nand " "I "  "will "  "dwell " "with " "God " "for "  ev "er, " 
  "\nev" er "more. " 
}

alto = \relative {
  \global
  R1*3 |
  r2 r4 aes' | 2 bes4. 8 | aes4 4 r8 des, ees des | ees2 g |
  aes2 r | 2 bes4. 8 aes4 4 r8 aes ges f |
  ees2 aes4.(g8) | aes2 r4 r8 ees | bes'8.(aes16) 8.(g16) 4. 8 | % 2a
  aes8. g16 8.(aes16) 4 8 ees | bes'8.(aes16) 8.(g16) 4. 8 | aes8.(g16) 8.(aes16) 4 8 8 |
  a4 bes8(c) 4 bes8(aes) | g4 aes8 bes8 4 aes8 g16(aes) | 4  bes aes bes |
  aes4 4 g8(aes g aes) | g2 r | r2 r4 r8 ees | % 3a
  ees4. 8 f8. 16 8. 16 | ees2 r4 g | f4. aes8 bes8. 16 8. 16 |
  aes4 4 r ces | 2 des | ges, fes |
  ees1~ | 4 r r <dis fis>^\markup "div." | q4. <fis a>8 4(<e g>8) 8 | % 4a
  <dis fis>4 <d f> <cis e> q | <b dis> q r q | <c e>4. <e a>8 4 <fis a> |
  <g b>2 r4 g | 4. 8 4 fis | g2 r4 d |
  <fis a>4. <a c>8 4(<g bes>8) 8 | <fis a>4 <f aes> <e g> <ees g> | <d fis> q r q | % 5a
  <ees g>4. g8 4 <a c> | <bes d>2 r4 g | f4. 8 4 4 |
  d2 r4 bes' | 1~ | 2. f4 |
  g4. 8 f4 g | f4. 8 4 4 | 4. 8 4 4 | % 6a
  f2 aes4 4 | 4. 8 4 ges | f2 2 |
  ees2. r4 | R1 | r2 r4 r8 ees16 16 |
  bes'8.(aes16) 8.(g16) 4. 8 | aes8.(16) 8. aes16 4. ees8 | bes'8.(aes16) 8.(g16) 4. 8 | % 7a
  ees8.(g16) 8.(aes16) 4. 8 | a4 bes8(c) 4 bes8 aes | g4(aes8 bes) 4 aes8(g16 aes) |
  aes4 beses8 8 aes4 beses | aes4 4 g8(aes) g(aes) | g4 4 r g |
  aes4. 8 bes4. 8 | aes4. 8 8 des, ees des | ees2(g4.) 8 | % 8a
  aes2 r | aes2 bes4. 8 |  aes4. 8 8 8 ges f |
  ees2(aes4.) ges8 | aes2 r4 ees | f4. 8 g4 4 | 4. aes8 4 4 |
  aes2. c,8(f) | ees2 g | aes2. ees4 | f2 g | % 9a
  g4. aes8 4 4 | 2 4 4 | c1 | g |
  aes1~ | 2 r | R1 | R |
}

wordsAlto = \lyricmode {
  The Lord is my shep -- herd; I shall not, shall not want
  He is my shep -- herd;
  I shall not, shall not __ want.
  He mak -- eth __ me to rest in green __ pas -- tures;
  He lead -- eth __ me be -- side __ still __ wa -- ters,
  He mak -- eth __ me to __ rest in green pas -- tures,
  He lead -- eth __ me __ be -- side __ still __ wa -- ters.
  He giv -- eth peace un -- to my soul; __
  He lead -- eth me in paths of good -- ness for His,
  for His Name’s sake. __
  Yea, though I walk __ thro’ Death‘s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with me,
  yea though I walk __ thro’ Death’s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with __ me,
  Thy rod, Thy rod and staff,
  Thy rod and staff they com -- fort, com -- fort me,
  for Thy rod and staff they com -- fort __ me. __
  Thou pre -- par -- est __ here a ta -- ble for me,
  in pre -- sence __ of mine en -- e -- mies;
  my head with __ oil Thou a -- noint -- est;
  my __ cup __ run -- neth o -- ver __ run -- neth __ run -- neth o -- ver.
  Yea, sure -- ly peace and mer -- cy all my life shall fol -- low me;
  and I will dwell with God for ev -- er, ev -- er -- more,
  yea, sure -- ly peace and __ mer -- cy all my life __
  shall fol -- low me;
  and I will dwell with God for __ ev -- er,
  for ev -- er -- more. __
}

wordsAltoMidi = \lyricmode {
  "The " "Lord " "is " "my " shep "herd; " "I " "shall " "not, " "shall " "not " "want "
  "\nHe " "is " "my " shep "herd; "
  "\nI " "shall " "not, " "shall " "not "  "want. "
  "\nHe " mak "eth "  "me " "to " "rest " "in " "green "  pas "tures; "
  "\nHe " lead "eth "  "me " be "side "  "still "  wa "ters, "
  "\nHe " mak "eth "  "me " "to "  "rest " "in " "green " pas "tures, "
  "\nHe " lead "eth "  "me "  be "side "  "still "  wa "ters. "
  "\nHe " giv "eth " "peace " un "to " "my " "soul; " 
  "\nHe " lead "eth " "me " "in " "paths " "of " good "ness " "for " "His, "
  "\nfor " "His " "Name’s " "sake. " 
  "\nYea, " "though " "I " "walk "  "thro’ " "Death‘s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with " "me, "
  "\nyea " "though " "I " "walk "  "thro’ " "Death’s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with "  "me, "
  "\nThy " "rod, " "Thy " "rod " "and " "staff, "
  "\nThy " "rod " "and " "staff " "they " com "fort, " com "fort " "me, "
  "\nfor " "Thy " "rod " "and " "staff " "they " com "fort "  "me. " 
  "\nThou " pre par "est "  "here " "a " ta "ble " "for " "me, "
  "\nin " pre "sence "  "of " "mine " en e "mies; "
  "\nmy " "head " "with "  "oil " "Thou " a noint "est; "
  "\nmy "  "cup "  run "neth " o "ver "  run "neth "  run "neth " o "ver. "
  "\nYea, " sure "ly " "peace " "and " mer "cy " "all " "my " "life " "shall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for " ev "er, " ev er "more, "
  "\nyea, " sure "ly " "peace " "and "  mer "cy " "all " "my " "life " 
  "\nshall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for "  ev "er, "
  "\nfor " ev er "more. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\p | s2 s\< | s\> s\! | s1 | s1 | s2 s\< | s\> s\! |
  s2\< s\> | s s\! | s2.. s8\pp | s4\> s2.\! | s2.. s8\pp | s4\> s2.\! | s2.\< s4\> | s2.\<  s4\> | s1\ppp | % 2
  s1*2 | s2.. s8\p | s2. s4\< | s2\> s4\! s\< | s1 | s2\> s4\! s\< | s2\fz\> s\fz\! | s2\fz s\fz |
  s1\fz | s2. s4\pp | s1 | s4 s2.\> | s2 s\! | s s\< | s2.\! s4\mf\> | s1 | s2 s4\! s\pp | % 4
  s1 | s4 s2.\> | s2 s\! | s s\< | s s4\! s\mf\> | s1 | s2 s\! | s1*2 |
  s1 | s2 s\< | s\> s\! | s s\< | s\> s\! | s1*4 | % 6
  s2. s4\pp | s\> s2.\! | s1 | s4\> s2.\! | s2.\< s4\> | s2.\< s4\> | s1\pp | s4\> s\! s2\pp | s2. s4\p |
  s2 s\< | s\> s\! | s\< s\> | s1\! | s2 s\< | s\> s\! | s\< s\> | s s4\! s\ppp | s1*2 | % 8
  s1 | s | s-\markup\italic morendo | s1 | s | s | s2 s\< | s1 | s1\> | s2 s\! | s1*2 |
}

tenor = \relative {
  \global
  R1*3 |
  r2 r4 c' | 2 des4. 8 | c4 4 r8 aes a bes | c2(bes4.) ees8 |
  ees2 r | c2 des4. 8 | c4 ees r8 aes,8 8 8 |
  c2 ees4.(des8) | c2 r | r r4 r8 ees, | % 2a
  c'8.(bes16) 8.(aes16) 4. r8 | r2 r4 r8 ees | c'8.(bes16) 8.(aes16) 4 8 c |
  c4 des8(ees) 4 des8(c) | bes4 c8 des8 4 c8 ees | f4 ges f ges |
  f8(c) des(ees) 2 | 2 r | r2 r4 r8 g, | % 3a
  g4. 8 aes8. 16 8. 16 | g2 r4 bes | aes4. des8 8. 16 8. 16 |
  ces4 4 r ces | 2 aes | ces bes |
  ges1~ | 4 r r b | 4. 8 4. 8 | % 4a
  b4 4 4 4 | 4 4 r b | c4. 8 4 4 |
  b2 r4 e | d4. 8 4 8(c) | b2 r4 d |
  d4. 8 4. 8 | 4 4 4 4 | 4 4 r d | % 5a
  ees4. 8 4 4 | d2 r4 bes | 4. 8 4 a |
  bes2 r | R1 | r2 r4 bes |
  bes2. 4 | aes4. 8 4 4 | 4. 8 4 4 | % 6a
  aes2 4 f' | ees4. 8 4 4 | 2 des |
  c2(bes4) r | R1*2 |
  r2 r4 r8 ees,16 16 | c'8.(bes16) 8.(aes16) 4. r8 | r2 r4 r8 ees | % 7a
  c'8.(bes16) 8. aes16 4. c8 | 4 des8(ees) 4 des8 c | bes4(c8 des) 4 c8(ees) |
  f4 ges8 8 f4 ges | des8(ees) des(ees) 4. 8 | 4 4 r des |
  c4. 8 des4. 8 | c4. 8 8 aes a bes | c2(bes4.) ees8 | % 8a
  ees2 r | c des4. 8 | c4. 8 8 aes8 8 8 |
  c2(ees4.) des8 | c2 r4 c | 4. bes8 4 des8(c) | bes4.(aes8) 4 r |
  r2 r4 aes8(des) | c2 bes | aes2. c4 | 4(bes4. des8) c(bes) | % 9a
  bes4. aes8 2 | r2 r4 aes | 2(a | bes) b |
  c1~ | 2 r | R1 | R |
}

wordsTenor = \lyricmode {
  The Lord is my shep -- herd; I shall not, shall __ not want
  He is my shep -- herd;
  I shall not, shall not __ want.
  He lead -- eth __ me be -- side __ still __ wa -- ters,
  He mak -- eth __ me to __ rest in green pas -- tures,
  He lead -- eth __ me __ be -- side __ still __ wa -- ters.
  He giv -- eth peace un -- to my soul; __
  He lead -- eth me in paths of good -- ness for His,
  for His Name’s sake. __
  Yea, though I walk __ thro’ Death‘s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with me,
  yea though I walk __ thro’ Death’s dark vale of sha -- dows,
  no e -- vil will I fear; __
  for __ Thou art still with __ me,
  Thy staff,
  Thy rod and staff they com -- fort, com -- fort me,
  for Thy rod and staff they com -- fort __ me. __
  Thou pre -- par -- est __ here a ta -- ble for me,
%  in pre -- sence __ of mine en -- e -- mies;
  my head with __ oil Thou a -- noint -- est;
  my __ cup __ run -- neth o -- ver __ run -- neth __ run -- neth o -- ver.
  Yea, sure -- ly peace and mer -- cy all my life shall fol -- low me;
  and I will dwell with God for ev -- er, ev -- er -- more,
  yea, sure -- ly peace and __ mer -- cy % all my life __
  shall fol -- low me;
  and I will dwell with God % for __ ev -- er,
  for ev -- er -- more. __
}

wordsTenorMidi = \lyricmode {
  "The " "Lord " "is " "my " shep "herd; " "I " "shall " "not, " "shall "  "not " "want "
  "\nHe " "is " "my " shep "herd; "
  "\nI " "shall " "not, " "shall " "not "  "want. "
  "\nHe " lead "eth "  "me " be "side "  "still "  wa "ters, "
  "\nHe " mak "eth "  "me " "to "  "rest " "in " "green " pas "tures, "
  "\nHe " lead "eth "  "me "  be "side "  "still "  wa "ters. "
  "\nHe " giv "eth " "peace " un "to " "my " "soul; " 
  "\nHe " lead "eth " "me " "in " "paths " "of " good "ness " "for " "His, "
  "\nfor " "His " "Name’s " "sake. " 
  "\nYea, " "though " "I " "walk "  "thro’ " "Death‘s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with " "me, "
  "\nyea " "though " "I " "walk "  "thro’ " "Death’s " "dark " "vale " "of " sha "dows, "
  "\nno " e "vil " "will " "I " "fear; " 
  "\nfor "  "Thou " "art " "still " "with "  "me, "
  "\nThy " "staff, "
  "\nThy " "rod " "and " "staff " "they " com "fort, " com "fort " "me, "
  "\nfor " "Thy " "rod " "and " "staff " "they " com "fort "  "me. " 
  "\nThou " pre par "est "  "here " "a " ta "ble " "for " "me, "
%  in pre -- sence __ of mine en -- e -- mies;
  "\nmy " "head " "with "  "oil " "Thou " a noint "est; "
  "\nmy "  "cup "  run "neth " o "ver "  run "neth "  run "neth " o "ver. "
  "\nYea, " sure "ly " "peace " "and " mer "cy " "all " "my " "life " "shall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for " ev "er, " ev er "more, "
  "\nyea, " sure "ly " "peace " "and "  mer "cy " % all my life __
  "\nshall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " % for __ ev -- er,
  "\nfor " ev er "more. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\p | s2 s\< | s\> s\! | s1 | s1 | s2 s\< | s\> s\! |
  s2\< s\> | s s\! | s2.. s8\pp | s4\> s2.\! | s2.. s8\pp | s4\> s2.\! | s2.\< s4\> | s2.\<  s4\> | s1\ppp | % 2
  s1*2 | s2.. s8\p | s2. s4\< | s2\> s4\! s\< | s1 | s2\> s4\! s\< | s2\fz\> s\fz\! | s2\fz s\fz |
  s1\fz | s1 | s | s | s | s | s2. s4\mf\> | s1 | s2 s\! | % 4
  s1 | s | s | s | s2. s4\mf\> | s1 | s2 s\! | s2. s4\< | s2.\> s4\! |
  s1 | s2 s\< | s\> s\! | s s\< | s\> s\! | s1*4 | % 6
  s2. s4\pp | s\> s2.\! | s1 | s4\> s2.\! | s2.\< s4\> | s2.\< s4\> | s1\pp | s4\> s\! s2\pp | s2. s4\p |
  s2 s\< | s\> s\! | s\< s\> | s1\! | s2 s\< | s\> s\! | s\< s\> | s s4\! s\ppp | s1*2 | % 8
  s2\< s\> | s1\! | s-\markup\italic morendo | s1 | s | s2\< s4\> s\! | s2 s\< | s1 | s1\> | s2 s\! | s1*2 |
}

bass = \relative {
  \global
  R1*3 |
  r2 r4 aes | 2 g4. 8 | aes4 4 r8 f f bes, | ees2 2 |
  aes,2 r | aes'2 g4. 8 | ges4 4 r8 f c des |
  ees2 2 | aes r | r2 r4 r8 ees | % 2a
  aes8.(ees16) 8.(c16) 4. r8 | r2 r4 r8 ees | aes8.(ees16) 8.(c16) 4 ees8 aes |
  f4. 8 bes,4. c16(des) | ees4 8 8 aes4 8 bes16(c) | des4 4 4 4 |
  des8(c) des(c) bes(aes bes aes) | ees2 r | r r4 r8 ees | % 3a
  ees4. 8 d8. 16 8. 16 | ees2 r4 e | f4. 8 g8. 16 8. 16 |
  aes4 4 r aes | ees2 fes | ges ges |
  ces,1~ | 4 r r2 | R1 | % 4a
  R1*3 |
  r2 r4 c' | d4. 8 d,4 4 | g2 r |
  R1*3 | % 5a
  R1 | r2 r4 ees | f4. 8 4 4 |
  bes,2 r | r2 r4 f' | ges2. f4 |
  e2(d4) e | f4. 8 4 4 | 4. 8 4 4 | % 6a
  d2 ees4 f | c4. 8 4 4 | 2 des |
  ees2. r4 | R1*2 |
  r2 r4 r8 ees16 16 | aes8.(ees16) 8.(c16) 4. r8 | r2 r4 r8 ees | % 7a
  aes8.(ees16) 8. c16 4. aes'8 | f4. 8 bes4 bes,8 c16(des) | ees2 aes4 8(bes16 c) |
  des4 8 8 4 4 | 8(c) des(c) bes(aes) bes(aes) | ees4 4 r ees |
  aes4. 8 g4. 8 | aes4. 8 8 f f bes, | ees2~4. 8 | % 8a
  aes2 r | aes g4. 8 | ges4. 8 8 f c des |
  ees2~4. 8 | aes,2 r4 c | des4. 8 ees4 4 | f4. 8 4 c |
  des4(ees f) ees8(des) | ees2 2 | aes2. c,4 | des2 ees | % 9a
  f4. 8 2 | des4(ees) ges8(f) ees(des) | ees1~ | 2 2 |
  aes1~ | 2 r | R1 | R |
}

wordsBass = \lyricmode {
  The Lord is my shep -- herd; I shall not, shall __ not want
  He is my shep -- herd;
  I shall not, shall not __ want.
  He lead -- eth __ me be -- side __ still __ wa -- ters,
  He mak -- eth __ me to __ rest in green pas -- tures,
  He lead -- eth __ me __ be -- side __ still __ wa -- ters.
  He giv -- eth peace un -- to my soul; __
  He lead -- eth me in paths of good -- ness for His,
  for His Name’s sake. __
%  Yea, though I walk __ thro’ Death‘s dark vale of sha -- dows,
%  no e -- vil will I fear; __
  for __ Thou art still with me,
%  yea though I walk __ thro’ Death’s dark vale of sha -- dows,
%  no e -- vil will I fear; __
  for __ Thou art still with __ me,
  Thy rod and staff,
  Thy rod and staff they com -- fort, com -- fort me,
  for Thy rod and staff they com -- fort __ me. __
  Thou pre -- par -- est __ here a ta -- ble for me,
%  in pre -- sence __ of mine en -- e -- mies;
  my head with __ oil Thou a -- noint -- est;
  my __ cup __ run -- neth o -- ver __ run -- neth __ run -- neth o -- ver.
  Yea, sure -- ly peace and mer -- cy all my life shall fol -- low me;
  and I will dwell with God for ev -- er, ev -- er -- more,
  yea, sure -- ly peace and __ mer -- cy all my life __
  shall fol -- low me;
  and I will dwell with God for __ ev -- er,
  ev -- er -- more. __
}

wordsBassMidi = \lyricmode {
  "The " "Lord " "is " "my " shep "herd; " "I " "shall " "not, " "shall "  "not " "want "
  "\nHe " "is " "my " shep "herd; "
  "\nI " "shall " "not, " "shall " "not "  "want. "
  "\nHe " lead "eth "  "me " be "side "  "still "  wa "ters, "
  "\nHe " mak "eth "  "me " "to "  "rest " "in " "green " pas "tures, "
  "\nHe " lead "eth "  "me "  be "side "  "still "  wa "ters. "
  "\nHe " giv "eth " "peace " un "to " "my " "soul; " 
  "\nHe " lead "eth " "me " "in " "paths " "of " good "ness " "for " "His, "
  "\nfor " "His " "Name’s " "sake. " 
%  Yea, though I walk __ thro’ Death‘s dark vale of sha -- dows,
%  no e -- vil will I fear; __
  "\nfor "  "Thou " "art " "still " "with " "me, "
%  yea though I walk __ thro’ Death’s dark vale of sha -- dows,
%  no e -- vil will I fear; __
  "\nfor "  "Thou " "art " "still " "with "  "me, "
  "\nThy " "rod " "and " "staff, "
  "\nThy " "rod " "and " "staff " "they " com "fort, " com "fort " "me, "
  "\nfor " "Thy " "rod " "and " "staff " "they " com "fort "  "me. " 
  "\nThou " pre par "est "  "here " "a " ta "ble " "for " "me, "
%  in pre -- sence __ of mine en -- e -- mies;
  "\nmy " "head " "with "  "oil " "Thou " a noint "est; "
  "\nmy "  "cup "  run "neth " o "ver "  run "neth "  run "neth " o "ver. "
  "\nYea, " sure "ly " "peace " "and " mer "cy " "all " "my " "life " "shall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for " ev "er, " ev er "more, "
  "\nyea, " sure "ly " "peace " "and "  mer "cy " "all " "my " "life " 
  "\nshall " fol "low " "me; "
  "\nand " "I " "will " "dwell " "with " "God " "for "  ev "er, "
  "\nev" er "more. " 
}

pianoRHone = \relative {
  \global \vo
  \tuplet 3/2 {ees''8( c' ees} \tuplet 3/2 {ees, c' ees} \tuplet 3/2 {f, c' ees} \tuplet 3/2 {g, c ees} |
  \tuplet 3/2 {aes,8 c ees} \tuplet 3/2 {g, c ees} \tuplet 3/2 {bes c ees} \tuplet 3/2 {aes, c ees} |
  \tuplet 3/2 {g,8 des' ees} \tuplet 3/2 {f, des' ees} \tuplet 3/2 {ees, des' ees} \tuplet 3/2 {des, bes' ees} |
  \tuplet 3/2 {c,8 aes' ees'} \tuplet 3/2 {c, aes' ees'} \tuplet 3/2 {ees, aes c)} \tuplet 3/2 {c, ees aes} | % 1b
  \tuplet 3/2 {aes,8 c f} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {bes des ees} \tuplet 3/2 {bes des ees} |
  \tuplet 3/2 {aes,8 c ees} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {f, aes des} \tuplet 3/2 {<ees, f> c' <des, f bes>} |
  \tuplet 3/2 {c8 ees aes} \tuplet 3/2 {ees aes c} \tuplet 3/2 {g bes ees} \tuplet 3/2 {g, bes des} |
  \tuplet 3/2 {ees,8 aes c} \tuplet 3/2 {ees, aes c} \tuplet 3/2 {ees, bes' des} \tuplet 3/2 {ees, b' d} | % 1c
  \tuplet 3/2 {ees,8 c' ees} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {bes des ees} \tuplet 3/2 {bes des ees} |
  \tuplet 3/2 {aes,8 c aes'} \tuplet 3/2 {ees, aes c} \tuplet 3/2 {f, aes des} \tuplet 3/2 {<ges, ees'> aes~<f aes f'>} |
  \tuplet 3/2 {c8 ees aes} \tuplet 3/2 {c, ees aes} \tuplet 3/2 {ees aes c} \tuplet 3/2 {des, g bes} | % 2a
  \tuplet 3/2 {c,8 ees aes} \tuplet 3/2 {ees aes c} \tuplet 3/2 {ees c aes'} \tuplet 3/2 {ees des c} |
  \tuplet 3/2 {des8 ees f} \tuplet 3/2 {c des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {g f ees} |
  \tuplet 3/2 {c'8 des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {aes c bes} \tuplet 3/2 {aes bes c} | % 2b
  \tuplet 3/2 {des8 ees f} \tuplet 3/2 {c des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {g f ees} |
  \tuplet 3/2 {c'8 des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {aes c ees} \tuplet 3/2 {ees, aes c} |
  \tuplet 3/2 {f,8 f' f,} \tuplet 3/2 {f' f, f'} \tuplet 3/2 {f, f' f,} \tuplet 3/2 {f' f, f'} | % 2c
  \tuplet 3/2 {ees,8 ees' ees,} \tuplet 3/2 {ees'8 ees, ees'} <ees, ees'>2 |
  \tuplet 3/2 {aes8 c des} \tuplet 3/2 {beses f' ees} \tuplet 3/2 { aes, c des} \tuplet 3/2 {beses f' ees} |
  \tuplet 3/2 {r8 <f aes>~<ees aes>} \tuplet 3/2 {r <f aes>~<ees aes>} \tuplet 3/2 {r <des ees>~<c ees>} \tuplet 3/2 {r <des ees>~<c ees>} | % 3a
  bes8 ees bes ees des c \tuplet 3/2 {ees des c} |
  bes8 a \tuplet 3/2 {c bes aes} \tuplet 3/2 {aes g f} \tuplet 3/2 {ees g bes} |
  \ov \tuplet 3/2 {ees,8 g bes} \tuplet 3/2 {ees, g bes} \tuplet 3/2 {f aes bes} \tuplet 3/2 {f aes bes} | % 3b
  \tuplet 3/2 {ees,8 g c} \tuplet 3/2 {ees, g c} \tuplet 3/2 {ees, g bes} \tuplet 3/2 {ees, g bes} |
  \tuplet 3/2 {f8 aes des} \tuplet 3/2 {f, aes des} \tuplet 3/2 {bes des ees} \tuplet 3/2 {bes des ees} |
  \tuplet 3/2 {aes,8 ces fes} \tuplet 3/2 {aes, ces ees} \tuplet 3/2 {aes, ces ees} \tuplet 3/2 {aes, ces ees} | % 3c
  \tuplet 3/2 {r8 <ges, ces ees ges> q} \tuplet 3/2 {q q q} \tuplet 3/2 {r <fes aes des fes> q} \tuplet 3/2 {q q q} |
  \tuplet 3/2 {r8 <ees ges ces ees> q} \tuplet 3/2 {q q q} \tuplet 3/2 {r8 <fes ges bes des> q} \tuplet 3/2 {q q q} |
  \tuplet 3/2 {r8 <ees ges ces> q} \tuplet 3/2 {q q q} \tuplet 3/2 {q q q} \tuplet 3/2 {q q q} | % 4a
  \tuplet 3/2 {<ces ees ges ces> b-.(b-.)} \tuplet 3/2 {8-.(8-. 8-.)} \tuplet 3/2 {8-.(8-. 8-.)} \tuplet 3/2 {8-.(8-. 8-.)}
  <dis fis b>4. <fis aes b>8 4 <ees g bes> |
  <dis fis b>4 <d f b> <cis e b'> <c e ais> | % 4b
  <b dis b'>2. \tuplet 3/2 {b8 dis b'} |
  \tuplet 3/2 {c,8 e b'} \tuplet 3/2 {c, e a} \tuplet 3/2 {c, e a} \tuplet 3/2 {fis a e'} |
  \tuplet 3/2 {g,8(b e)} \tuplet 3/2 {g,(b d)} \tuplet 3/2 {g,(b d)} \tuplet 3/2 {e,(g c)} | % 4c
  \tuplet 3/2 {d,8(g b)} \tuplet 3/2 {d,(g b)} \tuplet 3/2 {d,(g b)} \tuplet 3/2 {c,(fis a)} |
  \tuplet 3/2 {<b, g'>8 d-.(8-.)} \repeat unfold 3 \tuplet 3/2 {8-.(8-.8-.)}
  <fis a d>4. <a c d>8 4 <g bes d> | % 5a
  <fis a d>4 <f aes d> <e g d'> <ees g cis> |
  <d fis d'>2. \tuplet 3/2 {d8 fis d'} |
  \tuplet 3/2 {ees,8 g d'} \tuplet 3/2 {ees, g c} \tuplet 3/2 {ees, g c} \tuplet 3/2 {a c g'} | % 5b
  \tuplet 3/2 {bes,8(d g)} \tuplet 3/2 {bes,(d f)} \tuplet 3/2 {bes,(d f)} \tuplet 3/2 {g,(bes ees)} |
  \tuplet 3/2 {f,8(bes d)} \tuplet 3/2 {f,(bes d)} \tuplet 3/2 {f,(bes d)} \tuplet 3/2 {ees,(a c)} |
  \tuplet 3/2 {d,8(f bes)} \repeat unfold 3 \tuplet 3/2 {bes8-.(8-. 8-.)} | % 5c
  \tuplet 3/2 {des,8(bes' des)} \repeat unfold 3 \tuplet 3/2 {<bes des>8-.(8-. 8-.)} |
  \tuplet 3/2 {des,8_\markup\italic simile bes' des} \tuplet 3/2 {<des, bes' des> q q} \tuplet 3/2 {<ges bes des> q q} \tuplet 3/2 {<f bes des> q q} |
  \tuplet 3/2 {<e bes' c> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<d bes' c> q q} \tuplet 3/2 {q q q} | % 6a
  \tuplet 3/2 {<f aes c>q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<f aes des>q q} \tuplet 3/2 {<f aes ees'> q q} |
  \tuplet 3/2 {<f aes f'> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<f aes des> q q} \tuplet 3/2 {<ees f aes c> q q} |
  \tuplet 3/2 {<d aes' bes> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<ees aes c> q q} \tuplet 3/2 {<f aes des> q q} | % 6b
  \tuplet 3/2 {<ees aes ees'> q q} \tuplet 3/2 {q q <ees aes des>} <ees aes c>4 <ees ges bes> |
  \tuplet 3/2 {<ees f a>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<des f a> q q} \tuplet 3/2 {<des f des'> q <des f bes>} |
  \tuplet 3/2 {<c ees aes>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<bes ees g> q q} \tuplet 3/2 {<des ees bes'> q q} | % 6c
  \tuplet 3/2 {<c ees aes>8 q q} \tuplet 3/2 {<ces ees aes> q q} \tuplet 3/2 {<bes ees g> q q} \tuplet 3/2 {<aes ces d f> q q} |
  \tuplet 3/2 {<g bes ees>8 f' d} \tuplet 3/2 {ees g aes} \tuplet 3/2 {a bes fis} \tuplet 3/2 {g bes c} |
  \tuplet 3/2 {des8 ees f} \tuplet 3/2 {c des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {g f ees} | % 7a
  \tuplet 3/2 {c'8 des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {aes c bes} \tuplet 3/2 {aes bes c} |
  \tuplet 3/2 {des8 ees f} \tuplet 3/2 {c d ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {g f ees} |
  \tuplet 3/2 {c'8 des ees} \tuplet 3/2 {bes c bes} \tuplet 3/2 {aes c ees} \tuplet 3/2 {aes c ees} | % 7b
  \tuplet 3/2 {f,,8 f' f,} \tuplet 3/2 {f' f, f'} \tuplet 3/2 {f, f' f,} \tuplet 3/2 {f' f, f'} |
  \tuplet 3/2 {ees,8 ees' ees,} \tuplet 3/2 {ees' ees, ees'} <ees, ees'>2 |
  \tuplet 3/2 {aes8 c des} \tuplet 3/2 {beses f' ees} \tuplet 3/2 {aes, c des} \tuplet 3/2 {beses f' ees} | % 7c
  \vo \repeat unfold 2 \tuplet 3/2 {r8 <f aes>~<ees aes>} \repeat unfold 2 \tuplet 3/2 {r <des ees>~<c ees>}
  bes8 ees bes ees des c \tuplet 3/2 {ees des bes} |
  \ov \tuplet 3/2 {aes8 c ees} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {bes des ees} \tuplet 3/2 {bes des ees} | % 8a
  \tuplet 3/2 {aes,8 c ees} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {f, ees' des} \tuplet 3/2 {<ees, f>~<ees c'> <des f bes>} |
  \tuplet 3/2 {c ees aes} \tuplet 3/2 {ees aes c} \tuplet 3/2 {g bes ees} \tuplet 3/2 {g, bes des} |
  \tuplet 3/2 {ees,8 aes c} \tuplet 3/2 {ees, aes c} \tuplet 3/2 {ees, bes' des} \tuplet 3/2 {ees, b' d} | % 8b
  \tuplet 3/2 {ees,8 c' ees} \tuplet 3/2 {aes, c ees} \tuplet 3/2 {bes des c} \tuplet 3/2 {bes des ees} |
  \tuplet 3/2 {aes,8 c aes'} \tuplet 3/2 {ees, aes c} \tuplet 3/2 {aes~<aes c> <aes des>} \tuplet 3/2 {<ges aes>~<ges ees'> <f aes f'> } |
  \tuplet 3/2 {c8 ees aes} \tuplet 3/2 {c, ees aes} \tuplet 3/2 {ees aes c} \tuplet 3/2 {ees, g bes} | % 8c
  \tuplet 3/2 {c,8 aes' ees} \tuplet 3/2 {c ees aes} \tuplet 3/2 {ees c' aes} \tuplet 3/2 {ees c' ees} |
  \vo \tuplet 3/2 {f,8 c' ees} \tuplet 3/2 {f, <c' ees> <bes des>} \tuplet 3/2 {g bes des} \tuplet 3/2 {g, <des' f> <c ees>} |
  \ov \tuplet 3/2 {g8 bes des} \tuplet 3/2 {f, <bes des> <aes c>} \tuplet 3/2 {f aes c} \tuplet 3/2 {ees, aes c} |
  \tuplet 3/2 {f,8 aes bes} \tuplet 3/2 {r aes c} \tuplet 3/2 {r aes des} \tuplet 3/2 {r <aes c>~<aes bes>} | % 9a
  \tuplet 3/2 {ees8 aes ees'} \tuplet 3/2 {ees, aes ees'} \tuplet 3/2 {g, des' ees} \tuplet 3/2 {g, des' ees} |
  \tuplet 3/2 {aes,8 c ees} \tuplet 3/2 {f ees c} \tuplet 3/2 {aes c ees} \vo \tuplet 3/2 {aes ees c} |
  \tuplet 3/2 {f,8 c' ees} \tuplet 3/2 {f, bes des} \tuplet 3/2 {g, des' f} \tuplet 3/2 {g, ees' des} |
  \ov \tuplet 3/2 {g,8 bes des} \tuplet 3/2 {g, des' c} \tuplet 3/2 {aes c f} \tuplet 3/2 {c f aes} | % 9b
  \vo \tuplet 3/2 {bes, aes' bes,} \tuplet 3/2 {c aes' c,} \tuplet 3/2 {ees aes des,} \tuplet 3/2 {c aes' bes,} |
  \tuplet 3/2 {r8 ees'(c} \tuplet 3/2 {aes ees c)} \tuplet 3/2 {r ees'(c} \tuplet 3/2 {a fis des)} |
  \tuplet 3/2 {r8 ees'(c} \tuplet 3/2 {bes g ees)} \tuplet 3/2 {r ees'(ees,} \tuplet 3/2 {f ees f)} |
  \tuplet 3/2 {r8 aes c} \tuplet 3/2 {ees c aes} \tuplet 3/2 {c aes ees} \tuplet 3/2 {aes ees c} | % 9c
  \tuplet 3/2 {ees8 c' ees} \tuplet 3/2 {ees, c' ees} \tuplet 3/2 {f, c' ees} \tuplet 3/2 {g, c ees} |
  \tuplet 3/2 {aes,8 c ees} \tuplet 3/2 {g, c ees} \tuplet 3/2 {bes c ees} \tuplet 3/2 {aes, c ees} |
  \ov <ees, aes c ees>1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  ees''4 4 <f, f'> <g g'> | <aes aes'> <g g'> <bes bes'> <aes aes'> | <g g'> <f f'> <ees ees'> <g des'> |
  c4 c ees c |
  s1*6 |
  s1*9 | % 2
  aes4 4 g8 aes g aes | g4 4 8 aes g aes | ees4 8 d ees d ees4 | s1*6 |
  s1*9 | % 4
  s1*9 |
  s1*9 | % 6
  s1*7 | aes4 4 g8 aes g aes | g4 4 8 aes g4 |
  s1*10 | % 8
  s1*2 | s2. <c, ees>4 | 4 <bes des>4 8 <des f> <c ees> <bes des> | % 9a
  s1 | f'4 ees c8 des ees f | <c ees aes>2 <c ees a> | <ees g bes> <ees b'> |
  <ees aes c>1 | ees'2 <f, f'>4 <g g'> | <aes aes'> <g g'> <bes bes'> <aes aes'> | s1 |
}

pianoRHthree = \relative {
  \global \vf
  c'1~ | c | des |
  <c aes'>1 | s1*79 | ees2 s | s1 | s |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\pp | s2.\< s4\> | s1 |
  s2. s4\! | s4\pp s-\markup\italic legato s2\< | s4\> s2.\! | s1 |
  s2 s\< | s1\p | s1 |
  s2\< s\> | s s\pp | s4\> s2.\! | s1*5 | s1\ppp | % 2
  s1*3 | s2. s4\< | s2\> s4\! s\< | s1 | s2\> s4\! s\< | s2\fz s\fz | s\fz s\fz |
  s1*3 | s4 s2.\> | s2. s4\! | s2 s\< | s4.\> s\! s4\mf\> | s1 | s\pp | % 4
  s1 | s4 s2.\> | s s4\! | s2 s\< | s4.\> s\! s4\mf\> | s1 | s4.\> s\! s4 | s\> s\! s2\< | s2.\> s4\! |
  s1 | s2 s\< | s\> s\! | s s\< | s\> s\! | s1 | s2 s\< | s1\! | s | % 6
  s4\> s2.\! | s4\> s2.\! | s4\> s2.\! | s1*3 | s1\ppp | s4\> s\! s2\pp | s2. s4\p |
  s4\pp s-\markup\italic legato s2\< | s4.\> s\! s4 | s1*4 | s2\< s\> | s s4\! s\ppp | s1*2 | % 8
  s2\< s\> | s1\! | s-\markup\italic morendo | s1*2 | s2\< s4\> s\! | s2 s\< | s1 | s1\> | s2 s\< | s2.\! s4\> | s1\ppp |
}

pianoLHone = \relative {
  \global
  aes1~_\markup\italic Ped. | 1 | 1~ |
  aes1 | \vo <aes c ees>2 <g bes des ees> | <<{f'4(ees)} \new Voice {\vo <aes, c>2}>> \vo <aes des>4 a8 bes | <aes c>2 bes4. ees8 |
  <aes, c>2 <bes des>4 <b d> | <aes c ees>2 <g bes des ees> | <g aes c ees>~ aes |
  aes2 <aes c>4. <g bes>8 | <ees aes>2 r8 c'~\tuplet 3/2 {c des ees} | <bes des>4 <aes c> <g bes>4. des'8 | % 2a
  <c ees>4 <des ees> <c ees> \tuplet 3/2 {c8 des ees} | <bes des>4 <aes c> <g bes>4. des'8 | <c ees>4 <des c> <c ees>~c |
  <a c>4 <bes des>8 <c ees>8 4 <bes des>8 <aes c> | <g bes>4 <aes c>8 <bes des>8 4 <aes c>8 <bes des>16 <c ees> | \clef treble f4_\markup\italic Man. ges f ges \clef bass |
  \ov <des f>8 <c ees> <des f> <c ees> \vo ees4 4 | \repeat unfold 4 \tuplet 3/2 {r8 ees4} | \tuplet 3/2 {r8 bes4} \tuplet 3/2 {r8 bes4} \tuplet 3/2 {r8 bes aes} <ees g>4 | % 3a
  <ees g bes>2 <d aes' bes> | <<{\vo c'4(bes2)} \new Voice {\vo <ees, g>2.}>> <e bes' c>4 | <f aes des>2 <g des' ees> |
  <<{\vo fes'4(ees2)} \new Voice {\vo <aes, ces>2.}>> <aes ces ees>4 | <ees ges ces ees>2 <fes aes des> | <ees ges ces> <fes ges bes> |
  <ees ges ces>2 <ees ges ces>4 4 | \tuplet 3/2 {<ees ges>8 b b} \repeat unfold 3 \tuplet 3/2 {b(b b)} | \ov \repeat unfold 11 \tuplet 3/2 {b8 8 8} r4 | r2 r4 c' | % 4a
  \vo b2. g4 | 2. <des a'>4 | d2 r4 \tuplet 3/2 {d8_\markup\italic Man. d d} |
  \ov \repeat unfold 10 \tuplet 3/2 {d8 d d} d4 r | % 5a
  \vo r2 r4 ees' | d2. bes4 | 2 <bes d>4 <a c> |
  bes2 r | \ov 2. f4 | ges2. f4 |
  \vo <e g>2 <d f>4 <e g> | <f aes>1 | 2 4~<ees aes> | % 6a
  <d aes'>2 <ees aes>4~<des aes'> | aes'2. ges4 | f1 |
  \ov ees1 | \vo ees~ | 4 r \tuplet 3/2 {r8 g d} \tuplet 3/2 {ees g a} |
  <bes des>4 <aes c> <g bes>4. des'8 | <c ees>4 <des ees> <c ees> \tuplet 3/2 {c8 des ees} | <bes des>4 <aes c> <g bes>4. des'8 | % 7a
  <aes c>4 <des ees> <c ees>2 | <aes c>4 <bes des>8 <c ees>8 4 <bes des>8 <aes c> | <g bes>4 <aes c>8 <bes des>8 4 <aes c>8 <bes des>16 <c ees> |
  \clef treble f4 ges f ges \clef bass <des f>8 <c ees> <des f> <c ees> ees4 4 | \tuplet 3/2 {r8 ees bes} \tuplet 3/2 {r ees bes} \tuplet 3/2 {r bes c} \tuplet 3/2 {r bes des} |
  <aes c ees>2 <g bes des ees> | <<{f'4.(ees8)} \new Voice {\vo <aes, c>2}>> <c ees>8(<aes des> a <g bes>) | <aes c>2 bes4. ees8 | % 8a
  c2 <bes des>4 <b d> | <aes c ees>2 <g bes des ees> | <ges c ees> <aes c ees>8 <aes des> aes4 |
  aes2. ees4 | aes2. c4 | 4. bes8 4 des8(c) | bes4. aes8 4 4 |
  aes2 4 4 | c2 ees | <c ees>2. s4 | \ov des,2 ees | % 9a
  \vo <bes' des>4. <aes c>8 4 4 | aes2 2 | \ov ees1 | ees |
  aes1 | <aes c>~_\markup\italic Man. | q | <aes c aes'>\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s1*4 | aes,1~ | 2 f'4~8 bes, | ees2 2 |
  aes,1 | 1~ | 2 f'4 c8 des |
  ees2 ees, | aes r | ees'1 | % 2a
  ees2(aes,4) r | ees'1 | ees2(aes,) |
  f'2 bes, | ees aes,4 r | \clef treble des'2 2 \clef bass |
  r2 bes8 aes bes aes | ees4 4 bes'8 aes bes aes | g fis g f ees bes s4 | % 3a
  ees,1~ | 2. e4 | f2 g |
  aes2. r4 | ees2 fes | ges1 |
  ces1 | \tuplet 3/2 {ces8 r r} r4 r2 | s1 | % 4a
  s1 | s | R1 |
  r2 r4 c_\markup\italic Ped.  | d2. d,4 | g2 r |
  s1*3 | % 5a
  R1 | r2 r4 ees'_\markup\italic Ped. | f1 |
  bes,2 \after 4 _\markup\italic Man. r | s1*2 |
  c,2_\markup\italic Ped. r | f4 r r2 | f1 | % 6a
  f2(ees4 des) | <c c'>1 | c'2(des) |
  s1 | ees,1~ | 4 r r2 |
  ees'1 | 2(aes,4) r | ees'1 | % 7a
  ees2(aes,) | ees'2 bes | ees aes,4 r |
  \clef treble des'2_\markup\italic Man. 2 \clef bass | r2 bes8 aes bes aes | <<{ees4 4 4 4} \new Voice {\vf r2 r4 ees,4_\markup\italic Ped.}>> \vt |
  aes1~ | 2 aes'8(f f bes,) | ees2 2 | % 8a
  aes2 2 | aes,1~ | 2 ges'!8 f c des |
  ees1 | aes,2. c4 | des2 ees | f2. c4 |
  des4 ees f ees8 des | ees1 | aes2. c,4 | des2 ees | % 9a
  f2 4 4 | des ees ges8 f ees des | s1 | s |
  s1 | s | s | aes1\fermata_\markup\italic Ped.
}

#(set-global-staff-size 19)

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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \teeny\dynamicsPiano
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \teeny\dynamicsPiano
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \teeny\dynamicsPiano
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
          >>
          \new Dynamics \teeny\dynamicsPiano
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
          shortInstrumentName = "Org."
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
