\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Shepherd's Farewell"
  subtitle    = "(from 'L'enfance du Christ' Op 25)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Hector Berlioz"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Paul England"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key e \major
  \time 3/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Allegretto 4=112
  s4.*27
  \tempo 4=56 s4. \tempo 4=112
  s4.*7
  \tempo 4=110
  s4.*5
  \tempo 4=112
  s4.*27
  \tempo 4=56 s4. \tempo 4=112
  s4.*7
  s4 \tempo 4=110 s8
  s4.*4
  \tempo 4=112
  s4.*27
  \tempo 4=56 s4. \tempo 4=112
  s4.*7
  \tempo 4=110
  s4.*10
  \tempo 4=56
  s4.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "142a" } s4.*8
  \mark \markup { \box "142b" } s4.*8
  \mark \markup { \box "143a" } s4.*8
  \mark \markup { \box "143b" } s4.*8
  \mark \markup { \box "144a" } s4.*8
  \mark \markup { \box "144b" } s4.*8
  \mark \markup { \box "145a" } s4.*8
  \mark \markup { \box "145b" } s4.*8
  \mark \markup { \box "146a" } s4.*8
  \mark \markup { \box "146b" } s4.*8
  \mark \markup { \box "147a" } s4.*9
  \mark \markup { \box "147b" } s4.*7
  \mark \markup { \box "148a" } s4.*7
  \mark \markup { \box "148b" } s4.*7
  \mark \markup { \box "149a" } s4.*7
  \mark \markup { \box "149b" } s4.*9
}

soprano = \relative {
  \global
  \acciaccatura s8 R4.
  R4.
  R4.
  R4.
  gis'4^\p b8
  a4 cis8
  b8(a) gis
  fis8 e eis
  fis4 fisis8 % 142b
  gis4 e8
  a8(b) cis
  fis,4 r8
  gis4 e8
  a4 cis8
  fis,8(a) gis
  fis8 e e'\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  dis4^\> cis8\! % 143a
  b4 dis8
  cis8(b) ais
  gis4 r8
  a4^\p fis8
  a4 fis8
  a8(fis) gis
  gis8(fis) e
  e'4 cis8 % 143b
  dis4 bis8
  cis8(dis) e
  fis4\fermata^\> r8\!
  fis8^\f(g8) e
  d8(b) g
  b8^\mf (c) a
  g8^\dim (e) c
  b4 e8 % 144a
  g4 fis8
  e8(a) g
  fis4^\markup\italic "poco rit." r8
  b4^\p cis8
  b8(gis) e
  gis8(fis8.) e16
  e4.
  R4.^\markup\bold "Tempo I" % 144b
  R4.
  R4.
  R4.
  gis4^\p b8
  a4 cis8
  b8(a) gis
  fis8 e eis
  fis4 fisis8 % 145a
  gis8 e4
  a8(b) cis
  fis,4 r8
  gis4 e8
  a4 cis8
  fis,8(a) gis
  fis8 e e'\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  dis4 cis8 % 145b
  b4 dis8
  cis8(b) ais
  gis4 r8
  a4^\p fis8
  ais4 fis8
  ais8(fis) gis
  gis8(fis) e
  e'4 cis8 % 146a
  dis4 bis8
  cis8(dis) e
  fis4.\fermata^\>
  fis8^\f(g) e
  d8(b) g
  b8^\mf(c) a
  g8^\dim(e) c
  b4 e8  % 146b
  g4 fis8
  e8(a) g
  fis4 r8^\markup\italic "poco rit"
  b4^\p cis8
  b8(gis) e
  gis8(fis8.) e16
  e4.
  R4.^\markup\bold "Tempo I" % 147a
  R4.
  R4.
  R4.
  gis4^\pppp^\markup\italic "Un poco più lento" b8
  a4 cis8
  b8(a) gis
  fis8 e eis
  fis4 fisis8
  gis4 e8 % 147b
  a8(b) cis
  fis,4 r8
  gis4 e8
  a4 cis8
  fis,8(a) gis
  fis8 e e'
  dis4 cis8 % 148a
  b4 dis8
  cis8(b) ais
  gis4 r8
  a4 fis8
  a4 fis8
  a8(fis) gis
  gis8(fis) e % 148b
  e'4 cis8
  dis4 bis8
  cis8(dis) e
  fis4.\fermata^\<
  fis8^\> (g8\!) e
  d8(b) g
  b8(c) a % 149a
  g8(e) c
  b4 e8
  g4 fis8
  e8(a) g
  fis4^\markup\italic "un poco rit." r8
  b4 cis8
  b8(gis) e % 149b
  gis8(fis8.) e16
  e4.^\> ~
  e4.~e4.\!
  R4.
  R4.
  R4.
  R4.\fermata
  \bar "|."
}

words = \lyricmode {
  \set stanza = "1."
  Thou must leave thy low -- ly dwell -- ing,
  The hum -- ble crib, the sta -- ble bare,
  Babe, all mor -- tal babes ex -- cel -- ling,
  Con -- tent our earth -- ly lot __ to share,
  Lov -- ing fa -- ther, lov -- ing mo -- ther.
  Shel -- ter thee with ten -- der care!
  Lov -- ing fa -- ther, lov -- ing mo -- ther,
  Shel -- ter thee with ten -- der care,
  shel -- ter thee with ten -- der care!
  
  \set stanza = "2."
  Bless -- ed Je -- sus, we __ im -- plore thee
  With hum -- ble love and ho -- ly fear,
  In the land that lies __ be -- fore thee,
  For -- get not us who lin -- ger here!
  May the shep -- herd's low -- ly call -- ing,
  Ev -- er to thy heart be dear!
  May the shep -- herd's low -- ly call -- ing,
  Ev -- er to thy heart be dear,
  ev -- er to thy heart be dear!

  \set stanza = "3."
  Blest are ye be -- yond all mea -- sure,
  Thou hap -- py fa -- ther, mo -- ther mild!
  Guard ye well your heav'n -- ly trea -- sure,
  The Prince of Peace, the Ho -- ly Child!
  God go with you, God __ pro -- tect __ you,
  Guide you safe -- ly through the wild!
  God go with you, God __ pro -- tect __ you,
  Guide you safe -- ly through the wild,
  guide you safe -- ly through the wild!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "must " "leave " "thy " low "ly " dwell "ing, "
  "\nThe " hum "ble " "crib, " "the " sta "ble " "bare, "
  "\nBabe, " "all " mor "tal " "babes " ex cel "ling, "
  "\nCon" "tent " "our " earth "ly " "lot "  "to " "share, "
  "\nLov" "ing " fa "ther, " lov "ing " mo "ther. "
  "\nShel" "ter " "thee " "with " ten "der " "care! "
  "\nLov" "ing " fa "ther, " lov "ing " mo "ther, "
  "\nShel" "ter " "thee " "with " ten "der " "care, "
  "\nshel" "ter " "thee " "with " ten "der " "care!\n"
  
  \set stanza = "2."
  "\nBless" "ed " Je "sus, " "we "  im "plore " "thee "
  "\nWith " hum "ble " "love " "and " ho "ly " "fear, "
  "\nIn " "the " "land " "that " "lies "  be "fore " "thee, "
  "\nFor" "get " "not " "us " "who " lin "ger " "here! "
  "\nMay " "the " shep "herd's " low "ly " call "ing, "
  "\nEv" "er " "to " "thy " "heart " "be " "dear! "
  "\nMay " "the " shep "herd's " low "ly " call "ing, "
  "\nEv" "er " "to " "thy " "heart " "be " "dear, "
  "\nev" "er " "to " "thy " "heart " "be " "dear!\n"

  \set stanza = "3."
  "\nBlest " "are " "ye " be "yond " "all " mea "sure, "
  "\nThou " hap "py " fa "ther, " mo "ther " "mild! "
  "\nGuard " "ye " "well " "your " heav'n "ly " trea "sure, "
  "\nThe " "Prince " "of " "Peace, " "the " Ho "ly " "Child! "
  "\nGod " "go " "with " "you, " "God "  pro "tect "  "you, "
  "\nGuide " "you " safe "ly " "through " "the " "wild! "
  "\nGod " "go " "with " "you, " "God "  pro "tect "  "you, "
  "\nGuide " "you " safe "ly " "through " "the " "wild, "
  "\nguide " "you " safe "ly " "through " "the " "wild! "
}

alto = \relative {
  \global
  \acciaccatura s8 R4.
  R4.
  R4.
  R4.
  b8^\p(e) gis
  e4 16(dis)
  e4 dis8
  cis8 8 8
  cis4 8 % 142b
  b4 8
  fis'4 e8
  dis4 r8
  r8 e b
  r8 e a
  r8 fis e
  dis8 cis cis'~\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  cis8^\> b ais\! ~ % 143a
  ais8 gis b
  ais8(gis) fisis
  gis4 r8
  fis4^\p 8
  fis4 8
  fis4 e8
  cis4 b8
  r8 a' gis % 143b
  a4 gis8
  gis8(bis) cis
  dis4\fermata^\> r8\!
  d4^\f c8
  b8(g) d
  g4^\mf f8
  e8^\dim (c) g
  b4 c8 % 144a
  d8(e) c
  b8(dis) e
  e4.^\< ^\markup\italic "poco rit."
  dis4^\p a'8
  gis8(e) e
  e8(dis8.) b16
  b4.
  R4.*4 % 144b
  b8^\p(e) gis
  e4 16(dis)
  e4 dis8
  cis8 8 8
  cis4 8 % 145a
  b8 4
  fis'4 e8
  dis4 r8
  r8 e b
  r8 e a~
  a8 fis e
  d8 cis cis'\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f} ~
  cis8 b ais~ % 145b
  ais8 gis b
  ais8(gis) fisis
  gis4 r8
  fis4^\p 8
  fis4 8
  fis4 e8
  cis4 b8
  r8 a' gis % 146a
  a4 gis8
  gis8(bis) cis
  dis4.^\fermata^\>
  d4^\f c8
  b8(g) d
  g4^\mf f8
  e8^\dim (c) g
  b4 c8 % 146b
  d8(e) c
  b8(dis) e
  e4.^\<^\markup\italic "poco rit."
  dis4^\p a'8
  gis8(e) e
  e8(dis8.) b16
  b4.
  R4.*4 % 147a
  b8^\pppp (e) gis
  e4 16(dis)
  e4 dis8
  cis8 8 8
  cis4 8
  b4 8 % 147b
  fis'4 e8
  dis4 r8
  r8 e b
  e4 a8
  fis4 e8
  dis8 cis cis'~
  cis8 b ais % 148a
  ais8(gis) b
  ais8(g) fisis
  gis4 r8
  fis4 8
  fis4 8
  fis4 e8
  cis4 8 % 148b
  r8 a' gis
  a4 gis8
  gis8(bis) cis
  dis4.^\fermata^\<
  d4^\> c8\!
  b8(g) d
  g4 f8 % 149a
  e8(c) g
  b4 c8
  d8(e) c
  b8(dis) e
  e4.^\markup\italic "un poco rit."
  dis4 a'8
  gis8(e) e % 149b
  e8(dis8.) b16
  b4.^\> ~
  b4.~
  b4.\!
  R4.
  R4.
  R4.
  R4.\fermata
  \bar "|."
}

tenor = \relative {
  \global
  \acciaccatura s8 R4.
  R4.
  R4.
  R4.
  e4^\p 8
  e4 fis8
  b4 8
  a8 8 gis
  a4 e8 % 142b
  e4 8
  cis'4 8
  b4 r8
  r8 b gis
  r8 e e
  b'4 8
  bis8 c fis,\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  fis4^\> fisis8\! % 143a
  gis4 8
  gis4 ais8
  b4 r8
  cis4^\p 8
  c4 8
  b4 8
  a4 e8
  r8 e' e % 143b
  fis4 d8 e8(fis) e
  a,4\fermata^\> r8\!
  b4^\f a8 b8(d) b
  e4^\mf c8
  c8^\dim (g) g
  fis8 g4 % 144a
  g4 a8
  b4 8
  a8^\markup\italic "poco rit." (fis4^\<)
  fis4^\p 8
  g4 8
  b8(a8.) gis16
  gis4.
  R4.*4 % 144b
  e4^\p 8
  e4 fis8
  b4 8
  a8 8 gis
  a4 e8 % 145a
  e8 4
  cis'4 8
  b4 r8
  r8 b gis
  r8 e e
  b'4 8
  bis8 cis fis,\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  fis4 fisis8 % 145b
  gis4 8
  gis4 ais8
  b4 r8
  cis4.^\p
  c4.
  b16 16 8 8
  a4 e8
  r8 e' e % 146a
  fis4 dis8
  e8(<fis, fis'>) <g e'>
  a4.\fermata^\>
  b4^\f g8
  b8(d) b
  e4^\mf c8
  c8^\dim(g) g
  fis8 g4 % 146b
  g4 a8
  b4 8
  a8(fis4)^\<^\markup\italic "poco rit."
  fis4^\p 8
  gis4 8
  b8(a8.) gis16
  gis4.
  R4.*4 % 147a
  e4^\pppp 8
  e4 fis8
  b4 8
  a8 8 gis
  a4 e8
  e4 8 % 147b
  cis'4 8
  b4 r8
  r8 b gis
  e4 8
  b'4 8
  bis8 cis fis,
  fis4 fisis8 % 148a
  gis4 8
  gis4 ais8
  b4 r8
  cis4 8
  c4 8
  b4 8
  a4 e8 % 148b
  r8 e' e
  fis4 d8
  e8(<fis, fis'>) <gis e'>
  a4.\fermata^\<
  b4^\> g8\!
  b8(d) b
  e4 c8 % 149a
  c8(g) g
  fis8 g4
  g4 a8
  b4 8
  a8^\markup\italic "un poco rit." (fis4)
  fis4 8
  gis4 8 % 149b
  b8(a8.) gis16
  gis4.^\> ~
  gis4.~
  gis4.\!
  R4.
  R4.
  R4.
  R4.\fermata
  \bar "|."
}

bass = \relative {
  \global
  \acciaccatura s8 R4.
  R4.
  R4.
  R4.
  \voiceOne <e, b'>4^\p 8
  \oneVoice cis'4 a8
  gis8(a) b
  cis8 8 b
  a4 8 % 142b
  gis4 8
  fis8(gis) a
  b4 r8
  d4.
  cis4.
  dis4 e8
  a,8 8 ais^\markup{\halign #RIGHT \italic poco \dynamic f}
  b16^\> (cis dis8) e\! % 143a
  dis8(b) gis
  cis8(dis8.) 16
  gis,4 r8
  fis'4.^\p
  e4.
  dis4 e8
  a,4 gis8
  cis4 8 % 143b
  fis4 8
  e8(dis) cis
  bis4\fermata^\> r8\!
  b4^\f c8
  g'4 8
  e4^\mf f8
  c4\dim e8
  dis8(e) c % 144a
  b8 (c) a
  <g g'>8 (<fis fis'>) <e e'>
  a8^\<^\markup\italic "poco rit." (b c)
  b4^\p a8
  e'4 cis8
  b4~16 <e, e'>
  q4.
  R4.*4 % 144b
  <e b'>4^\p 8
  cis'4 a8
  gis8(a) b
  cis8 8 b
  a4 8 % 145a
  gis8 4
  fis8(gis) a
  b4 r8
  d4 8
  cis4 8
  dis4 e8
  a,8 8 ais\omit\f^\markup{\halign #RIGHT \italic poco \dynamic f}
  b16(cis dis8) e % 145b
  dis8(b) gis
  cis8 dis4
  gis,4 r8
  fis'4.^\p
  e4.
  dis16 16 8 e
  a,4 gis8
  cis4 8 % 146a
  fis4 8
  e8(dis) cis
  bis4.\fermata^\>
  b4^\f c8
  g'4 8
  e4^\mf f8
  c4^\dim e8
  dis8(e) c % 146b
  b8(c) a
  g8(fis) e
  a8(b^\< c^\markup\italic "poco rit." )
  b4^\p a8
  e'4 cis8
  b4~16 e,
  e4.
  R4.*4 % 147a
  <e b'>4^\pppp 8
  cis'4 a8
  gis8(a) b
  cis8 8 b
  a4 8
  gis4 8 % 147b
  fis8(gis) a
  b4 r8
  d4 8
  cis4 8
  dis4 e8
  a,8 8 ais
  b16(cis dis8) e % 148a
  dis8(b) gis
  cis8 dis4
  gis,4 r8
  fis'4 8
  e4 8
  dis4 e8
  a,4 gis8 % 148b
  cis4 8
  fis4 8
  e8(dis) cis
  bis4.\fermata^\<
  b4^\> c8\!
  g'4 8
  e4 f8 % 149a
  c4 e8
  dis8(e) c
  b8(c) a
  g8(fis) e
  a8^\markup\italic "un poco rit." (b c)
  b4 a8
  e'4 cis8 % 149b
  b4~16 e,
  <e b'>4.^\> ~
  q4.~
  q4.\!
  R4.*3
  R4.\fermata
  \bar "|."
}

bassAlternate = \relative {
  \tiny \voiceTwo
  \acciaccatura s8 R4.
  s4.
  s4.
  s4.
  e4\omit\p 8
  s4.*39
  e4\omit\p 8 % 144b+4
  s4.*29
  \voiceThree g8(fis) e % 146b++
  s4.*9
  \voiceTwo e4\omit\pppp 8 % 147a+4
  s4.*29
  \voiceThree g8(fis) e % 149a+4
  s4.*3
  s4 s16 e
  e4.\omit\> ~
  e4.~
  e4.\!
  s4.*4
}

wordsBass = \lyricmode {
  \set stanza = "1."
  Thou must leave thy low -- ly dwell -- ing,
  The hum -- ble crib, the sta -- ble bare,
  Babe, all babes ex -- cel -- ling,
  Con -- tent our earth -- ly lot __ to share,
  Fa -- ther, lov -- ing mo -- ther.
  Shel -- ter thee with ten -- der care!
  Lov -- ing fa -- ther, lov -- ing mo -- ther,
  Shel -- ter thee with ten -- der care,
  shel -- ter thee with ten -- der care!
  
  \set stanza = "2."
  Bless -- ed Je -- sus, we __ im -- plore thee
  With hum -- ble love and ho -- ly fear,
  In the land that lies __ be -- fore thee,
  For -- get __ not us __ who lin -- ger here!
  May the shep -- herd's low -- ly call -- ing,
  Ev -- er to thy heart be dear!
  May the shep -- herd's low -- ly call -- ing,
  Ev -- er to thy heart be dear,
  ev -- er to thy heart be dear!

  \set stanza = "3."
  Blest are ye be -- yond all mea -- sure,
  Thou hap -- py fa -- ther, mo -- ther mild!
  Guard ye well your heav'n -- ly trea -- sure,
  The Prince of Peace, the Ho -- ly Child!
  God go with you, God __ pro -- tect __ you,
  Guide you safe -- ly through the wild!
  God go with you, God __ pro -- tect __ you,
  Guide you safe -- ly through the wild,
  guide you safe -- ly through the wild!
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "must " "leave " "thy " low "ly " dwell "ing, "
  "\nThe " hum "ble " "crib, " "the " sta "ble " "bare, "
  "\nBabe, " "all " "babes " ex cel "ling, "
  "\nCon" "tent " "our " earth "ly " "lot "  "to " "share, "
  "\nFa" "ther, " lov "ing " mo "ther. "
  "\nShel" "ter " "thee " "with " ten "der " "care! "
  "\nLov" "ing " fa "ther, " lov "ing " mo "ther, "
  "\nShel" "ter " "thee " "with " ten "der " "care, "
  "\nshel" "ter " "thee " "with " ten "der " "care!\n"
  
  \set stanza = "2."
  "\nBless" "ed " Je "sus, " "we "  im "plore " "thee "
  "\nWith " hum "ble " "love " "and " ho "ly " "fear, "
  "\nIn " "the " "land " "that " "lies "  be "fore " "thee, "
  "\nFor" "get "  "not " "us "  "who " lin "ger " "here! "
  "\nMay " "the " shep "herd's " low "ly " call "ing, "
  "\nEv" "er " "to " "thy " "heart " "be " "dear! "
  "\nMay " "the " shep "herd's " low "ly " call "ing, "
  "\nEv" "er " "to " "thy " "heart " "be " "dear, "
  "\nev" "er " "to " "thy " "heart " "be " "dear!\n"

  \set stanza = "3."
  "\nBlest " "are " "ye " be "yond " "all " mea "sure, "
  "\nThou " hap "py " fa "ther, " mo "ther " "mild! "
  "\nGuard " "ye " "well " "your " heav'n "ly " trea "sure, "
  "\nThe " "Prince " "of " "Peace, " "the " Ho "ly " "Child! "
  "\nGod " "go " "with " "you, " "God "  pro "tect "  "you, "
  "\nGuide " "you " safe "ly " "through " "the " "wild! "
  "\nGod " "go " "with " "you, " "God "  pro "tect "  "you, "
  "\nGuide " "you " safe "ly " "through " "the " "wild, "
  "\nguide " "you " safe "ly " "through " "the " "wild! "
}

pianoRHone = \relative {
  \global \oneVoice
  \acciaccatura <fisis' ais>8 <gis b>4.->
  \acciaccatura <fisis ais>8 <gis b>4.->
  <fis a>8-> (<cis e>) <dis fis>
  <e gis>4.
  \voiceOne gis4 b8
  a4 cis8
  b8 a gis
  \oneVoice <a, cis fis>8 <a cis e> <gis cis eis>
  <a cis fis>4 \voiceOne fisis'8 % 142b
  gis4 e8
  a8 b cis
  \oneVoice <b, dis fis>4 r8
  \voiceOne gis'4 e8
  a4 <a cis>8
  \oneVoice <b, fis'>8 <b fis' a> <b e gis>
  <bis dis fis>8 [ <cis e> ] \voiceOne e'
  d4 cis8 % 143a
  b4 dis8
  \oneVoice <ais cis>8 <gis b> <fisis ais>
  gis4 r8
  <cis, fis a>4 <cis fis>8
  <c fis a>4 <c fis>8
  \voiceOne a'8 fis gis
  gis8 fis e
  e'4 cis8 % 143b
  \oneVoice <fis, a dis>4 <dis gis bis>8
  <e gis cis>8 <fis bis dis> <gis cis e>
  <a dis fis>4.->\fermata
  \voiceOne fis'8 g e \oneVoice
  <b d>8 <d, g b> <b d g>
  \voiceOne b'8 c a \oneVoice
  <c, e g>8 <g c e> <g c>
  \voiceOne b4 <c e>8 % 144a
  <g g'>4 fis'8
  \oneVoice <b, e>8 <b dis a'> <b e g> \voiceOne
  fis'4 r8
  \oneVoice <dis b'>4 <a' cis>8
  <gis b>8 <e gis> e
  <b e gis> <a dis fis>8. <gis b e>16
  q4.
  \acciaccatura <fisis' ais>8 <gis b>4.-> % 144b
  \acciaccatura <fisis ais>8 <gis b>4.->
  <fis a>8-> (<cis e>) <dis fis>
  <e gis>4.
  \voiceOne gis4 b8
  a4 cis8
  b8 a gis
  \oneVoice <a, cis fis>8 <a cis e> <gis cis eis>
  <a cis fis>4 \voiceOne fisis'8 % 145a
  gis4 e8->
  a8 b cis
  \oneVoice <b, dis fis>4 r8
  \voiceOne gis'4 e8
  a4 cis8
  \oneVoice <b, fis'>8 <b fis' a> <b e gis>
  <bis dis fis>8 [ <cis e> ] \voiceOne e'
  d4 cis8 % 145b
  b4 dis8
  \oneVoice <ais cis>8 <gis b> <fisis ais>
  gis4 r8
  <cis, fis a>4 <cis fis>8
  <c fis a>4 <c fis>8
  <b fis' a>8 <b fis'> <b e gis>
  \voiceOne gis'8 fis e
  e'4 cis8 % 146a
  \oneVoice <fis, a dis>4 <dis gis bis>8
  <e gis cis>8 <fis bis dis> <gis cis e>
  <a dis fis>4.\fermata
  \voiceOne fis'8 g e \oneVoice
  <b d>8 <d, g b> <b d g>
  \voiceOne b'8 c a \oneVoice
  <c, e g>8 <g c e> <g c>
  \voiceOne b4 <c e>8 % 146b
  <g g'>4 fis'8
  \oneVoice <b, e>8 <b dis a'> <b e g> \voiceOne
  fis'4 r8
  \oneVoice <dis b'>4 <a' cis>8
  <gis b>8 <e gis> e
  <b e gis> <a dis fis>8. <gis b e>16
  q4.
  \acciaccatura <fisis' ais>8 <gis b>4.-> % 147a
  \acciaccatura <fisis ais>8 <gis b>4.->
  <fis a>8-> (<cis e>) <dis fis>
  <e gis>4.
  \voiceOne gis4 b8
  a4 cis8
  b8 a gis
  \oneVoice <a, cis fis>8 <a cis e> <gis cis eis>
  <a cis fis>4 <cis e fisis>8
  <b e gis>4 <b e>8 % 147b
  \voiceOne a'8 b cis
  \oneVoice <b, dis fis>4 r8
  \voiceOne gis'4 e8
  \oneVoice <e a>4 <e a cis>8
  \voiceOne fis8(<fis a>) <e gis>
  \oneVoice <bis dis fis>8 [ <cis e> ] \voiceOne e'
  d4 cis8 % 148a
  b4 dis8
  \oneVoice <ais cis>8 <gis b> <fisis ais>
  gis4 r8
  <cis, fis a>4 <cis fis>8
  <c fis a>4 <c fis>8
  \voiceOne a'8 fis gis
  gis8 fis <b, e> % 148b
  e'4 cis8
  \oneVoice <fis, a dis>4 <dis gis bis>8
  <e gis cis>8 <fis bis dis> <gis cis e>
  \voiceOne fis'4.\fermata ~
  fis8 g e
  d4.
  b8 c a \oneVoice % 149a
  <c, e g>8 <g c e> <g c>
  \voiceOne b4 <c e>8
  <g g'>4 fis'8
  e8 <dis a'> <e g>
  fis4 r8
  b4 \oneVoice <a cis>8
  <gis b>8 <e gis> e % 149b
  <b e gis> <a dis fis>8. <gis b e>16
  q4.
  \acciaccatura <fisis' ais>8 <gis b>4.->
  \acciaccatura <fisis ais>8 <gis b>4.->
  <fis a>8-> (<cis e>) <dis fis>
  <e gis>4.~
  q4.~
  q4.\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \acciaccatura s8 s4. % 142a
  s4.*3
  b8 e gis
  e4 16 dis
  <b e>4 <b dis>8
  s4.
  s4 cis8 % 142b
  b4 8
  <cis fis>4 <cis e>8
  s4.
  r8 <b e> <gis b>
  r8 e' e
  s4.
  s4 cis'8~
  cis8 b ais~ % 143a
  ais8 gis b
  s4.*4
  <b, fis'>4 <b e>8
  <a cis>4 b8
  r8 <e a> <e gis> % 143b
  s4.
  s4.
  s4.
  <b' d>4 <g c>8
  s4.
  <e g>4 <c f>8
  s4.
  fis,8 g4 % 144a
  d'8 e <a, c>
  s4.
  <<{a8 fis4} \new Voice {\voiceFour e'4.}>>
  s4.*4
  \acciaccatura s8 s4. % 144b
  s4.*3
  b8 e gis
  e4 16 dis
  <b e>4 <b dis>8
  s4.
  s4 cis8 % 145a
  b4 8->
  <cis fis>4 <cis e>8
  s4.
  r8 <b e> <gis b>
  r8 e' <e a>
  s4.
  s4 cis'8~
  cis8 b ais~ % 145b
  ais8 gis b
  s4.*5
  <a, cis>4 b8
  r8 <e a> <e gis> % 146a
  s4.
  s4.
  s4.
  <b' d>4 <g c>8
  s4.
  <e g>4 <c f>8
  s4.
  fis,8 g4 % 146b
  d'8 e <a, c>
  s4.
  <<{a8 fis4} \new Voice {\voiceFour e'4.}>>
  s4.*4
  \acciaccatura s8 s4. % 147a
  s4.*3
  b8 e gis
  e4 16 dis
  <b e>4 <b dis>8
  s4.
  s4 cis8
  s4. % 147b
  <cis fis>4 <cis e>8
  s4.
  r8 <b e> <gis b>
  s4.
  b4 8
  s4 cis'8~
  cis8 b ais~ % 148a
  ais8 gis b
  s4.*4
  <b, fis'>4 <b e>8
  <a cis>4 s8 % 148b
  r8 <e' a> <e gis>
  s4.
  s4.
  <a dis>4.\fermata
  <b d>4 <g c>8
  b8 <d, g b> <d g>
  <e g>4 <c f>8 % 149a
  s4.
  fis,8 g4
  d'8 e <a, c>
  b4 8
  <a e'>8~<f e'>4
  dis'4 s8
  s4.*9 % 149b
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\f
  s4.*3
  s4.\p
  s4.*10
  s4 s8\omit\p-\markup{\halign #RIGHT \italic poco \dynamic f} % 142b+7
  s4.\> % 143a
  s4.\!
  s4.*2
  s4.\p
  s4.*6
  s4.\< % 143b+++
  s4.\f
  s4.
  s4.\mf
  s4.\dim
  s4.*3
  s8-\markup\italic "poco rit." s4\< % 144a+++
  s4.\p
  s4.*3
  s4.\f % 144b
  s4.*3
  s4.\p
  s4.*10
  s4 s8\omit\p-\markup{\halign #RIGHT \italic poco \dynamic f} % 144a+7
  s4.*4
  s4.\p % 145b++++
  s4.*6
  s4.\< % 146a+++
  s4.\f
  s4.
  s4.\mf
  s4.\dim
  s4.*3 % 147a
  s8 s\< s-\markup\italic "poco rit."
  s4.\p
  s4.*3
  s4.\f % 147a
  s4.*3
  s4.\pppp
  s4.*22
  s4.\< % 148b+4
  s8\> s4\!
  s4.*6
  s4.-\markup\italic "un poco rit." % 1439a+5
  s4.*4
  s4.\pp
  s4.*4
}

pianoLHone = \relative {
  \global
  \acciaccatura s8 <e b'>4.-> % 142a
  q4.->
  <a cis>4.->
  <e b'>4.
  <e, b' e>4 8
  <cis' e>4 <a fis'>8
  gis8 a b
  cis8 8 b
  a4 \voiceOne e'8 % 142b
  e4 8
  \oneVoice fis,8 gis a
  b4 r8
  d4.
  cis4.
  dis4 e8
  a,4 <ais fis'>8
  \voiceOne fis'4 fisis8 % 143a
  gis4 8
  gis4 ais8 \once\showStaffSwitch\change Staff = pianorh b4 s8 \change Staff = pianolh
  fis4.
  e4.
  dis4 e8
  a,4 gis8
  cis4 8 % 143b
  fis4 8
  e8 dis cis
  bis4.->\fermata
  b4 c8
  g'4 8
  e4 f8
  c4 e8
  dis8 e c % 144a
  b8(c) a
  g8(fis) e
  a8 b c
  <b fis'>4 <a fis'>8
  <e' gis>4 <cis gis'>8
  b4~16 e,
  e4.
  \acciaccatura s8 <e' b'>4.-> % 144b
  q4.->
  <a cis>4.->
  <e b'>4.
  <e, b' e>4 8
  <cis' e>4 <a fis'>8
  gis8 a b
  cis8 8 b
  a4 \voiceOne e'8 % 145a
  e4 8
  \oneVoice fis,8 gis a
  b4 r8
  d4 8
  cis4 8
  dis4 e8
  a,4 <ais fis'>8
  \voiceOne fis'4 fisis8 % 145b
  gis4 8
  gis4 ais8 \once\showStaffSwitch\change Staff = pianorh b4 s8 \change Staff = pianolh
  fis4.
  e4.
  dis8 8(e)
  a,4 gis8
  cis4 8 % 146a
  fis4 8
  e8 dis cis
  bis4.->\fermata
  b4 c8
  g'4 8
  e4 f8
  c4 e8
  dis8 e c % 146b
  b8(c) a
  g8(fis) e
  a8 b c
  <b fis'>4 <a fis'>8
  <e' gis>4 <cis gis'>8
  b4~16 e,
  e4.
  \acciaccatura s8 <e' b'>4.-> % 147a
  q4.->
  <a cis>4.->
  <e b'>4.
  <e, b' e>4 8
  <cis' e>4 <a fis'>8
  gis8 a b
  cis8 8 b
  a4 8
  gis4 8 % 147b
  \oneVoice fis8 gis a
  b4 r8
  d4 8
  cis4 8
  dis4 e8
  a,4 \voiceOne fis'8
  fis4 fisis8 % 148a
  gis4 8
  gis4 ais8 \once\showStaffSwitch\change Staff = pianorh b4 \change Staff = pianolh \oneVoice r8
  fis4 8
  e4.
  dis8 dis(e)
  a,4 gis8 % 148b
  cis4 8
  fis4 8
  e8 dis cis
  bis4.\fermata
  b4 c8
  g'4 <g b>8
  e4 f8 % 149a
  c4 e8
  dis8 e c
  b8(c) a
  g8(fis) e
  a8 b c
  <b fis'>4 <a fis'>8
  <e' gis>4 <cis gis'>8 % 149b
  b8 4
  e,4.
  <e' b'>4.->
  q4.->
  <a cis>4.->
  <e b'>4.~
  q4.~
  q4.\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  \acciaccatura s8 s4. % 142a
  s4.*7
  s4 a,8
  gis4 8
  s4.*6
  b16 cis dis8 e % 143a
  dis8 b gis
  cis8 dis8. 16
  gis,4 \once\oneVoice r8
  s4.*20
  \acciaccatura s8 s4. % 144b
  s4.*7
  s4 a8
  gis4 8
  s4.*6
  b16 cis dis8 e % 145b
  dis8 b gis
  cis8 dis4
  gis,4 \once\oneVoice r8
  s4.*20
  \acciaccatura s8 s4. % 147a
  s4.*14
  s4 ais8 % 147b+6
  b16 cis d8 e % 148a
  dis8 b gis
  cis8 dis4
  gis,4 s8
  s4.*26
%  \bar "|."
}

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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice {\voiceTwo \pianoRHtwo}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice {\voiceTwo \pianoRHtwo}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice << \dynamicsPiano \pianoRHone >>
            \new Voice << \dynamicsPiano \pianoRHtwo >>
            \new Voice << \dynamicsPiano \pianoLHone >>
            \new Voice << \dynamicsPiano \pianoLHtwo >>
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice << \dynamicsPiano \pianoRHone >>
            \new Voice << \dynamicsPiano \pianoRHtwo >>
            \new Voice << \dynamicsPiano \pianoLHone >>
            \new Voice << \dynamicsPiano \pianoLHtwo >>
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice << \dynamicsPiano \pianoRHone >>
            \new Voice << \dynamicsPiano \pianoRHtwo >>
            \new Voice << \dynamicsPiano \pianoLHone >>
            \new Voice << \dynamicsPiano \pianoLHtwo >>
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassAlternate
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice << \dynamicsPiano \pianoRHone >>
            \new Voice << \dynamicsPiano \pianoRHtwo >>
            \new Voice << \dynamicsPiano \pianoLHone >>
            \new Voice << \dynamicsPiano \pianoLHtwo >>
          >>
        >>
      >>
    >>
    \midi {}
  }
}
