\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jerusalem"
  subtitle    = "(And did those feet in ancient time)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "C. Hubert H. Parry"
  arranger    = "Arr. Maurice Jacobson"
%  opus        = "opus"

  poet        = "William Blake"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
  s2.*17
  s4. \tempo 4=57 s % 5a++
  s2.
  s4. \tempo 4=60 s % 5b
  s2.*10
  \tempo 4=57 s4. \tempo 4=60 s %6b++
  s2.*3
  s4. \tempo 4=58 s \tempo 4=56 %7a++
  s4. \tempo 4=54 s \tempo 4=52
  s2. % 7b
  s2.
  s4. \tempo 4=60 s
  s2.
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "3a" } s2.*3
  \mark \markup { \circle "3b" } s2.*4
  \mark \markup { \circle "4a" } s2.*4
  \mark \markup { \circle "4b" } s2.*4
  \mark \markup { \circle "5a" } s2.*4
  \mark \markup { \circle "5b" } s2.*5
  \mark \markup { \circle "6a" } s2.*4
  \mark \markup { \circle "6b" } s2.*4
  \mark \markup { \circle "7a" } s2.*4
  \mark \markup { \circle "7b" } s2.*5
}

soprano = \relative {
  \global
  R2.*3
  r4 r8 f'^\omit\mf a c % 3b
  d4.^\omit\< f8\! d^\omit\> c16(bes)
  c2^\omit\< d8\! c16 bes
  c8 a g4 f^\omit\>
  d4.\! f8^\omit\p^\omit\< a c % 4a
  d4. f8\! e^\omit\> d16(c)
  d4.^\omit\< 8 e\! a,
  c8^\omit\dim b a4 g
  c4. g8^\omit\mp g a % 4b
  bes4.\omit\cresc d8 c8. g16
  bes4. g8 bes c
  d4. f8^\omit\< ees c
  d4.\! bes8^\omit\f^\omit\< d f % 5a
  g8.\! f16 e4 8. d16
  c4. 8 f d
  c8. d16 a4 g
  f2 r4 % 5b
  R2.
  R2.
  r4 f4^>^\omit\mf^\omit\< a8 c
  d4. f8^>\! d-> c16(bes)
  c2 d8^> c16 bes % 6a
  c8 a g4 f
  d4. f8^\omit\mf^\omit\< a c
  d4\! f^>^\omit\f e8^> d16(c)
  d4. 8 e a, % 6b
  c8.^\omit\> b16 a4 g^\omit\<
  c4.\! r8 r4
  R2.
  r4 r8 g^\omit\mf^\omit\< bes c % 7a
  d4 f^>\! ees8 c
  d4.^\omit\cresc bes8 d f
  g4.^\omit\ff f8 e8. d16
  c4. c8^\omit\< f d % 7b
  c8^>\! d a4^- g^-
  f2.~
  f4 r r
  R2.
  \bar "|."
}

dynamicsSoprano = {
  s2.*3
  s4. s\mf % 3b
  s4. \< s8\! s4\>
  s2\< s4\!
  s2 s4\>
  s4.\! s\p\< % 4a
  s4. s8\! s4\>
  s2\< s8 s\!
  s2.\dim
  s4. s\mp % 4b
  s2.-\markup\italic "poco cresc."
  s2.
  s4. s\<
  s4.\! s\f\< % 5a
  s2.\!
  s4. s-\markup "poco rit."
  s2.
  s4. s-\markup "a tempo" % 5b
  s2.
  s2.
  s4 s2\mf\<
  s4. s\!
  s2. % 6a
  s2.
  s4. s\mf\<
  s4\! s2\f
  s2. % 6b
  s2\> s4\<
  s4.\!-\markup "poco rit." s-\markup "a tempo"
  s2.
  s4. s\f\< % 7a
  s4 s2\!
  s4.\cresc s-\markup Allarg.
  s2.\ff
  s4.-\markup rit. s\<
  s2.\!
  s2.
  s2.
  s2.
}

wordsSop = \lyricmode {
  And did those feet in an -- cient time
  walk up -- on Eng -- land's moun -- tains green?
  And was the Ho -- ly Lamb of God
  On Eng -- land's plea -- sant pas -- tures seen?
  And did the Coun -- ten -- ance Di -- vine
  Shine forth up -- on our cloud -- ed hills?
  And was Je -- ru -- sa -- lem build -- ed here
  A -- mong these dark Sa -- tan -- ic mills?

  Bring me my bow of burn -- ing gold!
  Bring me my ar -- rows of de -- sire!
  Bring me my spear! O clouds un -- fold!
  Bring me my Char -- i -- ot of Fire!
  Nor shall my sword sleep in my hand
  Till we have built Je -- ru -- sa -- lem
  In Eng -- land's green and plea -- sant land. __
}

wordsSopMidi = \lyricmode {
  "And " "did " "those " "feet " "in " an "cient " "time "
  "\nwalk " up "on " Eng "land's " moun "tains " "green? "
  "\nAnd " "was " "the " Ho "ly " "Lamb " "of " "God "
  "\nOn " Eng "land's " plea "sant " pas "tures " "seen? "
  "\nAnd " "did " "the " Coun ten "ance " Di "vine "
  "\nShine " "forth " up "on " "our " cloud "ed " "hills? "
  "\nAnd " "was " Je ru sa "lem " build "ed " "here "
  "\nA" "mong " "these " "dark " Sa tan "ic " "mills? "

  "\nBring " "me " "my " "bow " "of " burn "ing " "gold! "
  "\nBring " "me " "my " ar "rows " "of " de "sire! "
  "\nBring " "me " "my " "spear! " "O " "clouds " un "fold! "
  "\nBring " "me " "my " Char i "ot " "of " "Fire! "
  "\nNor " "shall " "my " "sword " "sleep " "in " "my " "hand "
  "\nTill " "we " "have " "built " Je ru sa "lem "
  "\nIn " Eng "land's " "green " "and " plea "sant " "land. " 
}

alto = \relative {
  \global
  R2.*3
  r4 r8 f'^\omit\mf f g % 3b
  f4.^\omit\< d8\! bes'\omit\> g
  a4(^\omit\<g8 f)\! d d16 d
  c8 c d4 a^\omit\>
  d4.\! d8^\omit\p^\omit\< f a % 4a
  f8(e g)\! f8 a8.^\omit\> a16
  a4.\omit\<a8 4~\!
  a8 d, c4 e8(d)
  f8(e d) c^\omit\mp d fis % 4b
  g4.\omit\cresc f8 ees8. 16
  d4 d g8 e
  f4. 8^\omit\< g a
  f4.\! bes8^\omit\f^\omit\< bes f % 5a
  bes8\! a g4 e8 g
  c,4. d16(e) f8 f
  f8. 16 d4 e
  f2 r4 % 5b
  R2.
  R2.
  r4 f^>^\omit\mf^\omit\< a8 c
  d4. f,8^>\! bes^> a16(g)
  a8 c,4^> f8 4 % 6a
  a8 f e4 d8(a)
  c4(bes8) d^\omit\mf^\omit\< f a
  f4\! a8^>^\omit\f(b) c^> a
  f8 g a b c8. e,16 % 6b
  f4^\omit\> c4.(b8)^\omit\<
  c4. r8\! r4
  R2.
  r4 r8 g'^\omit\mf^\omit\< g e % 7a
  f2 g8\!(a)
  c8^\omit\cresc bes f bes bes f
  bes8^\omit\ff d g,4. 8
  c8(bes a) g^\omit\< f f % 7b
  f8^>\! g d4^- e^-
  f2.~
  f4 r r
  R2.
  \bar "|."
}

dynamicsAlto = {
  s2.*3
  s4. s\mf % 3b
  s4. \< s8\! s4\>
  s2\< s4\!
  s2 s4\>
  s4.\! s\p\< % 4a
  s4. s8\! s4\>
  s2\< s8 s\!
  s2.
  s4. s\mp % 4b
  s2.-\markup\italic "poco cresc."
  s2.
  s4. s\<
  s4.\! s\f\< % 5a
  s2.\!
  s2.
  s2.
  s2. % 5b
  s2.
  s2.
  s4 s2\mf\<
  s4. s\!
  s2. % 6a
  s2.
  s4. s\mf\<
  s4\! s2\f
  s2. % 6b
  s2\> s8\! s\<
  s2.\!
  s2.
  s4. s\f\< % 7a
  s4 s2\!
  s2.\cresc
  s2.\ff
  s4. s\<
  s2.\!
  s2.
  s2.
  s2.
}

wordsAlto = \lyricmode {
  And did those feet in an -- cient time
  walk up -- on Eng -- land's moun -- tains green?
  And was the Ho -- ly Lamb of God
  On Eng -- land's pas -- tures seen?
  And did the Coun -- ten -- ance Di -- vine
  Shine forth up -- on our cloud -- ed hills?
  And was Je -- ru -- sa -- lem build -- ed here
  A -- mong these dark Sa -- tan -- ic mills?

  Bring me my bow of burn -- ing gold!
  Bring me my ar -- rows of de -- sire!
  Bring me my spear! O clouds un -- fold!
  Bring me my Char -- i -- ot of Fire!
  Nor shall my sword sleep in my hand
  Till we have built Je -- ru -- sa -- lem
  In Eng -- land's green and plea -- sant land. __
}

wordsAltoMidi = \lyricmode {
  "And " "did " "those " "feet " "in " an "cient " "time "
  "\nwalk " up "on " Eng "land's " moun "tains " "green? "
  "\nAnd " "was " "the " Ho "ly " "Lamb " "of " "God "
  "\nOn " Eng "land's " pas "tures " "seen? "
  "\nAnd " "did " "the " Coun ten "ance " Di "vine "
  "\nShine " "forth " up "on " "our " cloud "ed " "hills? "
  "\nAnd " "was " Je ru sa "lem " build "ed " "here "
  "\nA" "mong " "these " "dark " Sa tan "ic " "mills? "

  "\nBring " "me " "my " "bow " "of " burn "ing " "gold! "
  "\nBring " "me " "my " ar "rows " "of " de "sire! "
  "\nBring " "me " "my " "spear! " "O " "clouds " un "fold! "
  "\nBring " "me " "my " Char i "ot " "of " "Fire! "
  "\nNor " "shall " "my " "sword " "sleep " "in " "my " "hand "
  "\nTill " "we " "have " "built " Je ru sa "lem "
  "\nIn " Eng "land's " "green " "and " plea "sant " "land. " 
}

tenor = \relative {
  \global
  R2.*3
  r4 r8 f^\omit\mf c' c % 3b
  a8^\omit\<f d'4.\! f8
  c4^\omit\<(bes8 a)\! bes f16 f
  f8 f a4 f8(^\omit\>a)
  bes4.\! d8^\omit\p^\omit\< c a % 4a
  a8(g bes)\! a c^\omit\> e
  f4.^\omit\< 8 e\! d16(c)
  f4(e8 c) b4
  a8(g f e) r d^\omit\mp % 4b
  d8\omit\cresc d g bes g4~
  g8 g^- d'4.^- c16(bes)
  bes8 f f'4.^\omit\< 8
  f4.\! bes,8^\omit\f^\omit\<bes c % 5a
  d8\! c16(d) e8 c4^> 8
  c8(bes a) g a bes
  c8 f f4 c
  a2 r4 % 5b
  R2.
  R2.
  r4 f^>^\omit\mf^\omit\< a8 c
  d4. f8^>\! d^> c16(bes)
  c2 d8^> c16 bes % 6a
  c8 a g4 f
  d4. f8^\omit\mf^\omit\< a c
  d4\! f4^>^\omit\f e8^> d16(c)
  d4. d8 e a, % 6b
  c8.^\omit\> b16 a4 g^\omit\<
  c4.^\omit\> g8^\omit\p g a
  c4.\omit\cresc d8 c8. g16
  bes4. g8^\omit\mf^\omit\< g bes % 7a
  bes4 d8^>\!(c) b f
  f4.^\omit\cresc bes8 bes c
  d8^\omit\ff(f e) d c8. 16
  c4. g8^\omit\< a bes % 7b
  c8^>\! a f4^- bes^-
  c2~8 r8
  R2.
  R2.
  \bar "|."
}

dynamicsTenor = {
  s2.*3
  s4. s\mf % 3b
  s4. \< s8\! s4\>
  s2\< s4\!
  s2 s4\>
  s4.\! s\p\< % 4a
  s4. s8\! s4\>
  s2\< s8 s\!
  s2.
  s2 s8 s\mp % 4b
  s2.-\markup\italic "poco cresc."
  s2.
  s4. s\<
  s4.\! s\f\< % 5a
  s2.\!
  s2.
  s2.
  s2. % 5b
  s2.
  s2.
  s4 s2\mf\<
  s4. s\!
  s2. % 6a
  s2.
  s4. s\mf\<
  s4\! s2\f
  s2. % 6b
  s2\> s4\<
  s4.\> s\p
  s2.-\markup\italic "poco cresc"
  s4. s\f\< % 7a
  s4 s2\!
  s2.\cresc
  s2.\ff
  s4. s\<
  s2.\!
  s2.
  s2.
  s2.
}

wordsTenor = \lyricmode {
  And did those feet in an -- cient time
  walk up -- on Eng -- land's moun -- tains green?
  And was the Ho -- ly Lamb of God
  On Eng -- land's pas -- tures seen?
  And did the Coun -- ten -- ance
  Shine forth up -- on our cloud -- ed hills?
  And was Je -- ru -- sa -- lem build -- ed here
  A -- mong these dark Sa -- tan -- ic mills?

  Bring me my bow of burn -- ing gold!
  Bring me my ar -- rows of de -- sire!
  Bring me my spear! O clouds un -- fold!
  Bring me my Char -- i -- ot of Fire!
  I will not cease from men -- tal fight;
  Nor shall my sword sleep in my hand
  Till we have built Je -- ru -- sa -- lem
  In Eng -- land's green and plea -- sant land. __
}

wordsTenorMidi = \lyricmode {
  "And " "did " "those " "feet " "in " an "cient " "time "
  "\nwalk " up "on " Eng "land's " moun "tains " "green? "
  "\nAnd " "was " "the " Ho "ly " "Lamb " "of " "God "
  "\nOn " Eng "land's " pas "tures " "seen? "
  "\nAnd " "did " "the " Coun ten "ance "
  "\nShine " "forth " up "on " "our " cloud "ed " "hills? "
  "\nAnd " "was " Je ru sa "lem " build "ed " "here "
  "\nA" "mong " "these " "dark " Sa tan "ic " "mills? "

  "\nBring " "me " "my " "bow " "of " burn "ing " "gold! "
  "\nBring " "me " "my " ar "rows " "of " de "sire! "
  "\nBring " "me " "my " "spear! " "O " "clouds " un "fold! "
  "\nBring " "me " "my " Char i "ot " "of " "Fire! "
  "\nI " "will " "not " "cease " "from " men "tal " "fight; "
  "\nNor " "shall " "my " "sword " "sleep " "in " "my " "hand "
  "\nTill " "we " "have " "built " Je ru sa "lem "
  "\nIn " Eng "land's " "green " "and " plea "sant " "land. " 
}

bass = \relative {
  \global
  R2.*3
  r4 r8 f^\omit\mf f f % 3b
  d8^\omit\<c bes4. d8\!
  f2^\omit\< bes,8\! 16 16
  a8 a d4 d8^\omit\>(f)
  bes4.\! bes8^\omit\p^\omit\< a f % 4a
  d4. 8\! a'^\omit\> a
  d4^\omit\< b c8\! a
  d,8 d e(f) g4
  c,4. c8^\omit\mp bes a % 4b
  g4.\omit\cresc g8 c8. 16
  g'2 4
  f2.
  r8 bes,^\omit\f bes'4.^\omit\< a8 % 5a
  g8.\! 16 c4 bes8. 16
  a8(g f) e d bes'
  a8. 16 bes4 c
  f,2 r4 % 5b
  R2.
  R2.
  r4 f^>^\omit\mf^\omit\< a8 c
  d4. f,8\!^> bes^> a16(g)
  a8 c,4^> f8 4 % 6a
  a8 f d4 d8(c)
  bes4. bes'8^\omit\mf^\omit\< a f
  d4\! d'^>^\omit\f a8.^> 16
  d,8(e f) d c c % 6b
  d8.^\omit\> 16 e8(f) g4^\omit\<
  c,4.^\omit\> g'8^\omit\p g a
  bes4.\omit\cresc d8 c8. g16
  bes4. g8^\omit\mf^\omit\< g g % 7a
  f8 f bes\!^> a g f
  bes,4.^\omit\cresc 8 bes' a
  g8.^\omit\ff 16 c4.^> bes8
  a8(g f) e^\omit\< d bes % 7b
  a8^>\! a bes4^- c^-
  f2.~
  f4 r r
  R2.
  \bar "|."
}

dynamicsBass = {
  s2.*3
  s4. s\mf % 3b
  s4. \< s8\! s4\>
  s2\< s4\!
  s2 s4\>
  s4.\! s\p\< % 4a
  s4. s8\! s4\>
  s2\< s8 s\!
  s2.
  s2 s4\mp % 4b
  s2.-\markup\italic "poco cresc."
  s2.
  s4. s\<
  s8\f s4 s4.\< % 5a
  s2.\!
  s2.
  s2.
  s2. % 5b
  s2.
  s2.
  s4 s2\mf\<
  s4. s\!
  s2. % 6a
  s2.
  s4. s\mf\<
  s4\! s2\f
  s2. % 6b
  s2\> s4\<
  s4.\> s\p
  s2.-\markup\italic "poco cresc"
  s4. s\f\< % 7a
  s4 s2\!
  s2.\cresc
  s2.\ff
  s4. s\<
  s2.\!
  s2.
  s2.
  s2.
}

wordsBass = \lyricmode {
  And did those feet in an -- cient time
  walk up -- on Eng -- land's moun -- tains green?
  And was the Ho -- ly Lamb of God
  On Eng -- land's plea -- sant pas -- tures seen?
  And did the Coun -- ten -- ance Di -- vine
  Shine forth?
  And was Je -- ru -- sa -- lem build -- ed here
  A -- mong these dark Sa -- tan -- ic mills?

  Bring me my bow of burn -- ing gold!
  Bring me my ar -- rows of de -- sire!
  Bring me my spear! O clouds un -- fold!
  Bring me my Char -- i -- ot of Fire!
  I will not cease from men -- tal fight;
  Nor shall my sword, my sword sleep in my hand
  Till we have built Je -- ru -- sa -- lem
  In Eng -- land's green and plea -- sant land. __
}

wordsBassMidi = \lyricmode {
  "And " "did " "those " "feet " "in " an "cient " "time "
  "\nwalk " up "on " Eng "land's " moun "tains " "green? "
  "\nAnd " "was " "the " Ho "ly " "Lamb " "of " "God "
  "\nOn " Eng "land's " plea "sant " pas "tures " "seen? "
  "\nAnd " "did " "the " Coun ten "ance " Di "vine "
  "\nShine " "forth? "
  "\nAnd " "was " Je ru sa "lem " build "ed " "here "
  "\nA" "mong " "these " "dark " Sa tan "ic " "mills? "

  "\nBring " "me " "my " "bow " "of " burn "ing " "gold! "
  "\nBring " "me " "my " ar "rows " "of " de "sire! "
  "\nBring " "me " "my " "spear! " "O " "clouds " un "fold! "
  "\nBring " "me " "my " Char i "ot " "of " "Fire! "
  "\nI " "will " "not " "cease " "from " men "tal " "fight; "
  "\nNor " "shall " "my " "sword, " "my " "sword " "sleep " "in " "my " "hand "
  "\nTill " "we " "have " "built " Je ru sa "lem "
  "\nIn " Eng "land's " "green " "and " plea "sant " "land. " 
}

pianoRHone = \relative {
  \global
  \voiceOne
  <c'' f a c>4.^\markup "Slow, but with animation"\omit\f <f, a c>8\omit\mf\omit\cresc ~( <f bes>8. a16
  <d, d'>4.) d'8\omit\<~(<d e> <cis g'>)\!
  <g g'>8\omit\ff(<f f'>) e'\omit\>(d) c8.(bes16
  <c, f a c>4.)\omit\mf <a c f>8\(<c f a> <c g' c> % 3b
  <f d'>4. s8 <bes d> e16 d
  c2\) d8\( c16 bes
  c8^- a^- g4(f)
  <f, bes d>4.\) <d' f>8^\omit\p\(\omit\< <c f a> <f a c> % 4a
  d'2  e8\omit\> d16 c
  <f, d'>4.\)\omit\< q8\( <c' e>8\! a
  c8\omit\dim b <c, e a>4 <b g'>
  <c c'>4.\) g'8\(\omit\mp <d g> <c fis a> % 4b
  <bes bes'>2\omit\cresc c'4
  <d, g bes>4.\) <b d g>8\( <d g bes> <e bes' c>
  <f bes d>4. <a c f>8 <g bes ees> <f a c>
  d'4.\) bes8^-\omit\f\omit\< <f bes d>^- <f c' f>^- % 5a
  <g bes g'>8.\!(<f f'>16 <e c' e>4) q8.(<d d'>16)
  c'4. c8^- <a f'>^- <bes d>^-
  <c, f c'>8^- f\( <d f a>4 <bes e g>
  <a c f>4\) <c' f a c>4.^>^\markup "a tempo" <f, a c>8(~ % 5b
  <f bes>8 a <d, d'>4) <e e'>8.(<g g'>16)
  q8\omit\ff(<f f'>) <e e'>(<d d'>) c'8.^>(bes16
  <c, f a c>4) <a c f>^>\omit\mf\omit\<\( <c f a>8 <e g c>
  d'4. f8\! <bes, d>^> c16 bes
  c4.\) f8 d^>( c16 bes) % 6a
  c8^- a^- <e g>4( <a, d f>
  <f d'>4.) <bes d f>8\omit\mf\omit\<(<c f a> <f a b>
  <d f a d>4\!) <f d' f>\omit\f e'8^>(d16 c)
  d4. <f, b d>8\( <e c' e>4 % 6b
  <f f'>4 <e a c> g
  c4.\omit\>\) <c, e g>8\omit\p^\markup "a tempo" \( <d g> <c fis a>
  bes'4.\omit\cresc d8 c8. g16\)
  <d g bes>4.<bes d g>8\omit\mf^-\omit\< <d g bes>^- <e bes' d>^- % 7a
  <f bes d>4^- <f f'>^>\!( ees'8 c
  <f, d'>4.)\omit\cresc <d f bes>8^-^\markup Allarg. <f bes d>^- <f c' f>^-
  g'4.^-\omit\ff <f, d' f>8^- <e g e'>8.^- d'16^-
  c4.^-^\markup rit. c8\omit\<( <a f'> <bes d> % 7b
  <c, f c'>8\!) <d f a d> <d f a>4^- <bes e g>^-
  <a c f>4. <a c f>8^>^\markup "a tempo" <c f a>^> <c g' c>^>
  <f d'>4. <f f'>8^- <bes bes'>^-\omit\< ( <a a'>16^. <g g'>^.)
  <a c f a>2.\omit\ff
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  \autoBeamOff
  s4.\omit\f s\omit\mf\omit\cresc
  <fis' a>8 [ g] ~ <g c>\omit\< [ <fis c'> ] <f bes> [ bes]
  <a d>4\omit\ff <f a>\omit\> <d f>8 g                                    
  s2.\omit\mf % 3b
  a4(bes8) f~f f
  a8 a(<e g> f) <d f> f
  <c f>4 <a d>2
  s4 s2\omit\p\omit\< % 4a
  <f' a>8 [ <e g> <g bes> <f a>\omit\> ] <a c> [ <e a> ]
  a4\omit\< b e,\!
  <c f>4\omit\dim s4 e8 <d f>
  <f a>8 [ <e g> <d f> <c e>\omit\mp ] s4 % 4b
  g'8\omit\cresc [ d ] \omit\cresc g4 <ees g>
  s2.
  s2.
  <f c'>8( [ bes ] f4)\omit\f\omit\< s4 % 5a
  s2\! c'8 [ g ]
  c,8 [ e f g ] f4
  s2.
  s2. % 5b
  s4 <f a>8( [ g) ] <bes d>4
  <a d>4\omit\ff a <d, f>
  s2.\omit\mf\omit\<
  <d f>8 [ <e g> <f a> a\! ] f [ <f f'> ]
  f8\omit\<( [ g\omit\> ] bes [ a\! ] ) f [ <f f'> ] % 6a
  <c f>4 c8 [ bes ] s4
  c4(8)\omit\mf\omit\< s4.
  s4\! a'8\omit\f [ b ] <e, a c> [ <e a> ]
  <f a>8( [ g a) ] s4. % 6b
  c8. [ b16 ] s4 <c, d>8 [ <b f'> ]
  <f' a>\omit\>( [ <e g> <d f>) ] s4.\omit\p
  \once\partCombineApart r4\omit\cresc g8( [ f ] ees4)
  s4 s2\omit\mf\omit\< % 7a
  s4 <b' d>8\! [ <a c> ] <g bes> [ <f a> ]
  c'8\omit\cresc( [ bes f) ] s4.
  <g bes>8\omit\ff( [ <f d'> ] \oneVoice <e c'>) [ \change Staff = "lh" d ] c [ \change Staff = "rh" <e g> ] \voiceOne
  <f a>8-- [ <e bes'>-- <f a>-- g--\omit\< ] f4-- % 7b
  s2.\!
  s2.
  a4(g8) s8 <d f>4\omit\<
  s2.\omit\ff
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\f s\mf\cresc
  s4 s2\<
  s4\ff s2\>
  s2.\mf % 3b
  s2.
  s2.
  s2.
  s4 s2\p\< % 4a
  s2 s4\>
  s2\< s4\!
  s2.\dim
  s4. s\mp % 4b
  s2.-\markup\italic "poco cresc."
  s2.
  s2.
  s4. s\f\< % 5a
  s2.\!
  s2.
  s2.
  s2. % 5b
  s2.
  s2.\ff
  s2.\mf\<
  s4. s\!
  s2. % 6a
  s2.
  s4. s\mf\<
  s4\! s2\f
  s2. % 6b
  s2.
  s4.\> s\p
  s2.-\markup\italic "poco cresc."
  s4 s2\mf\< % 7a
  s4 s2\!
  s2.\cresc
  s2.\ff
  s4. s\< % 7b
  s2.\!
  s2.
  s4. s\<
  s2.\ff
}

pianoLHone = \relative {
  \global
  \autoBeamOff
  \voiceOne
  <a c f>4.\omit\f \oneVoice <f a>8\omit\mf\omit\cresc ~ <f bes> [ \change Staff = "rh" <e' fis> ] \change Staff = "lh" \voiceOne
  r8 <d, g> r\omit\< <d fis d'> r <b' cis g'>
  r8\omit\ff << {a~\voiceTwo <f a>4\omit\> \voiceThree f8 [ g ] } \new Voice {\voiceOne s8 e'8( [ d) ] c8. [ bes16 ] } >> \voiceOne
  s2\omit\mf f8 e % 3b
  d8 [ c ] \once\partCombineApart r d'(f,4)
  \once\partCombineApart r8 c'( [ bes a) ] bes8 [ d ]
  <a, f'>4 <d, d'>4.( <c c'>8
  <bes bes'>4) s2\omit\p\omit\< % 4a
  d'8 [ g( <g bes> <f a>) ] s4\omit\>
  <a d>4\omit\< b-- s4\!
  <d,, d'>4\omit\dim <e e'>8 [ <f f'> ] <g g'>4
  <c, c'>4. s\omit\mp % 4b
  \once\partCombineApart r8\omit\cresc d'\omit\<( [ g bes)\! ] s4
  <g, g'>4 <g, g'>_> <g' g'>
  f'4 <bes d>8 [ <a c> ] <g bes> [ <a c> ]
  <bes,, bes'>4 s2\omit\f\omit\< % 5a
  <g' g'>4\! s2
   <a a'>8_- [ <g g'>_- <f f'>_- <e e'>_- <d d'>_- <bes bes'>_- ]
  <a a'>4_- <bes bes'> <c c'>
  <f f'>4 <a' c f>4.^> <f a c>8 % 5b
  \oneVoice <bes d>8 [ \change Staff = "rh" <e fis> ] s4 \voiceOne \change Staff = "lh" g,8^> [ <bes d f> ]
  <d,, d'>4\omit\ff s c''8.->( [ bes16 ]
  <f, c a'>4)\omit\mf\omit\< \once\partCombineApart r <f' a>8 [ <e g> ]
  <f, d' f>4 \once\partCombineApart r8 d''\! d [ d ]
  a8\omit\<( [ bes ] d\omit\> [ c\!) ] bes [ d ] % 6a
  <a, f'>4 <d, d'>4.( <c c'>8
  <bes bes'>4.) f''8\omit\mf\omit\< 4
  s4\! d'4\omit\f s
  s4. <d,, d'>8 <c c'>4 % 6b
  <d d'>4 <e e'>8 [ <f f'> ] <g g'>4
  s4.\omit\> s8\omit\p <bes g'>8 [ <a d> ]
  \once\partCombineApart r8\omit\cresc d8(bes'4) g4
  <g, g'>4 <g, g'>_>\omit\mf\omit\< <g' g'> % 7a
  \once\partCombineApart r8 f'\! <bes d>8^> [ <a c> ] ees'4
  c8\omit\cresc( [ bes f) ] <bes,, bes'>_- s4
  <g' g'>4\omit\ff s2
  <a a'>8_- [ <g g'>_- <f f'>_- <e e'>_-\omit\< <d d'>_- <bes bes'>_-\! ] % 7b
  <a a'>4 <bes bes'> <c c'>
  \once\partCombineApart r4 f'4.^> e8^>
  d8( [ f ] <d bes'>4) <d' f>\omit\<
  <f,,, c' f>2.\omit\ff
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \autoBeamOff
  \voiceTwo
  \once\partCombineApart r8\omit\f <a,, a'>8 <d d'>4.\omit\mf\omit\cresc <c c'>8
  <bes bes'>4 <a a'>\omit\< <g g'>
  <d' d'>2\omit\ff <bes' f'>4\omit\>(
  <f c' a'>4)\omit\mf <f, f'>^> f'~ % 3b
  f4 <bes, bes'>4. <d d'>8
  <g g'>4 g' <bes, g' bes>
  s2.
  s4 <bes bes'>4(\omit\p\omit\< s % 4a
  d,4) d' <a e' c'>\omit\>
  d2\omit\< <c e c'>4\!
  s2.\omit\dim
  s4. <c g'>8\omit\mp( s4 % 4b
  <g, g'>2\omit\cresc) <c' g' c>4
  s2.
  f,4 f' f
  s4 <bes d>\omit\f\omit\< <d, d'>8^- [ <a a'>^- ] % 5a
  s4\! <c c'> <bes bes'>
  s2.
  s2.
  s4 \once\partCombineApart r8 <a, a'>8 <d d'>4_>~ % 5b
  q8 [ <c c'> ] <bes bes'>4 <g' g'>
  s4\omit\ff <f' a> <bes, f'>
  s4 <f, f'>2\omit\mf\omit\<
  s4 q <f'' bes>\!
  <f, c'>4 f' <bes, f'>_> % 6a -- Fixed length of first note
  s2.
  s4. bes8\omit\mf\omit\<( a [ f ]
  <d d'>4\!) a''8\f_> [ b ] <a, e' c'>4^>
  <d a' d>4. s % 6b
  s2.
  <c c'>4.\omit\> <c g'>8\omit\p( s4
  g2)\omit\cresc c4
  s4 s2\omit\mf\omit\< % 7a
  g4 s\! <g' bes>8 [ <f c'> ]
  <bes, f'>4.\omit\cresc s8 <bes bes'>^- [ <a a'>^- ]
  s4\omit\ff <c c'>4._>( <bes bes'>8_-)
  s4. s\omit\< % 7b
  s2.\!
  <g, g'>2.
  g'4 \once\partCombineApart r8 f'8_>\omit\< f_> [ f_> ]
  s2.\omit\ff
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Dynamics \with {alignAboveContext = "soprano" } \dynamicsSoprano
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = "alto" \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = "alto" } \dynamicsAlto
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = "tenor" \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \new Dynamics \with {alignAboveContext = "tenor" } \dynamicsTenor
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff = "bass" \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \new Dynamics \with {alignAboveContext = "bass" } \dynamicsBass
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 200\mm
    paper-height = 2000\mm
    ragged-bottom = false
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Dynamics \with {alignAboveContext = "soprano" } \dynamicsSoprano
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff = "alto" \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Dynamics \with {alignAboveContext = "alto" } \dynamicsAlto
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = "tenor" \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \new Dynamics \with {alignAboveContext = "tenor" } \dynamicsTenor
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff = "bass" \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \new Dynamics \with {alignAboveContext = "bass" } \dynamicsBass
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 20\mm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = "rh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice { \voiceOne \pianoRHone }
            \new Voice { \voiceTwo \pianoRHtwo }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = "lh" \with {
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice { \voiceOne \pianoLHone }
            \new Voice { \voiceTwo \pianoLHtwo }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
