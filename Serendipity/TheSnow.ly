\version "2.25.12"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Snow"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Edward Elgar"
  arranger    = "Arr for SATB by John Pointer"
%  opus        = "opus"

  poet        = "C. Alice Elgar"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Andantino 4=80 % original is 4=66
  s1*15
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic rit. 4=85
  s1
  \tempo \markup\italic "Più lento." 4=75 % 3a
  s1*6
  \tempo 4=70 % 3b++
  s1*2
  \tempo "Tempo 1mo." 4=80 % 4a
  s1*7
  \tempo 4=90 % 5a
  s1*3
  \tempo 4=95 % 5b
  s1*7
  \tempo 4=96 s1 % 6a+++
  \tempo 4=97 s1 % 6b
  \tempo 4=98 s1
  \tempo 4=99 s1 % 7a
  \tempo 4=100 s1
  \tempo 4=101 s1
  \tempo 4=102 s1
  \tempo 4=103 s1 % 7b
  \tempo 4=90 s1
  \tempo 4=80
  s1*4
  \tempo 4=77 % 8a++
  s1*4
  \tempo "Tempo 1mo." 4=80 % 9a
  s1*10
  \tempo allargando 4=75 s1 % 10b+
  \tempo 4=74 s1
  \tempo "Più lento." 4=65 % 11a
  s1*6
  s2 \tempo 4=72 s2 % 12a
  s1
  \tempo 4=70
  s1*3
  s2 \tempo 4=50 s
  s1
  \tempo 4=25 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" }
  \mark \markup\bold A s1*4
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b"  }
  \mark \markup\bold B s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" }
  \mark \markup\bold C s1*4
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" }
  \mark \markup\bold D s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*2
  \mark \markup\bold E s1*2
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "9a" }
  \mark \markup\bold F s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "11a" }
  \mark \markup\bold G s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "12a" } s1*4
  \textMark \markup { \box "12b" } s1*4
}

soprano = \relative {
  \global \dynamicUp
  R1*4
  b'4\p^\markup\smallCaps Soprano. 4~8 8 8 c % 1b
  c4-> (b2) r4
  b4 4~8^\< c8 e c\!
  b2.^\> r4\!
  R1 % 2a
  R1
  R1
  r2 r4 r8 b^\f
  e4.^\markup\italic espress. 8 d4. 8 % 2b
  c4. 8 b2~
  b1^\dim ~
  b4 r^\markup\italic rit. r2 \bar "||" \key e \major
  \grace s8 r4 b\omit\pp^\markup{\dynamic pp \italic dolce.} 4 cis % 3a
  a4(gis8) fis8 4 gis
  e4\<( e' dis\!) e
  a,4^\>(gis8) fis\! fis2
  r4 cis'\omit\cresc^\markup\italic "poco cresc." cis dis % 3b
  b4^\< a\! gis^\> (a8) fis
  e4\omit\dim^\markup\italic "dim. e poco rit." e e' cis
  a2\pp (gis4) fis \bar "||" \key g \major
  e2 r % 4a
  R1
  b'4\p 4~8 8 8\< cis
  cis4\> (b2\>) r4\!
  b4 4~8 c8\< e c\! % 4b
  b4 a b r
  r4 d,\p\<^\markup\italic espress. e2\!
  r8^\markup\italic stringendo e fis fis g2 % 5a
  r4 ais4\cresc b2~
  b8 8 cis8 8 d4. d,8\f \bar "||"
  b'2.^\markup\italic "Più mosso." 4 % 5b
  d2. 4
  e8(fis\< g2\!) fis8(e)
  d2~8 r b4
  g2. 4 % 6a
  b2. 4
  c8(d e2) d8(c)
  b2.^\markup\italic accel. r4
  R1*3 % 6b
  r2 r4 d\mf % 7a
  d4.\cresc b8 a4 gis
  gis4(a) r a\f
  g'4.-> e8 d4 cis % 7b
  d2.^\markup\italic Allargendo. d,4\ff
  b'2.^\markup\italic "a tempo" ^\markup\italic Maestoso. 4
  d2. 4
  e8\<(fis g2\!) fis8(e) % 8a
  d2.\> b4\p
  g2.\omit\dim^\markup\italic "dim. e rit." 4
  b2. 4 % 8b
  a2. 4
  b2.\> r4 \bar "||"
  b4\p 4~8 8 8 c % 9a
  c4-> (b2) r4
  b4 4~8 c\< e c
  b2.\> r4\! % 9b
  R1
  R1
  R1 % 10a
  r2 r4 r8 b\f
  e4. 8 d4. 8
  c4. 8 b2\dim ~ % 10b
  b1~
  b4 r^\markup\italic rit.  r2 \bar "||" \key e \major
  \appoggiatura s8 r4 b\pp^\markup\italic dolce 4 cis  % 11a
  a4 gis8.(fis16) 4 gis
  e4(e'\< dis\!) e
  a,4 gis8.\>(fis16) 2\! % 11b
  r4 cis'4\omit\cresc^\markup\italic "poco cresc." 4 dis
  b4\< a gis\>(a8) fis\!
  e4 4\omit\dim^\markup\italic "dim. e rit." e'(cis) % 12a
  a2\pp gis4 fis
  e1~
  e1~
  e4 r r2 % 12b
  r2 b'4\pp^\markup\italic "molto rit." 8 8
  b1~
  b1\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  O snow, which sinks so light,
  Brown earth is hid from sight,
  Be thou as white as snow, as snow, __
  O snow, which falls so slow,
  Dear earth __ quite warm be -- low;
  O heart, O heart, so keep thy glow,
  Be -- neath the snow, __ the snow.

  O snow, in thy soft grave
  Sad flow'rs, __ sad flow'rs the win -- ter brave;
  O heart, so soothe and save,
  so soothe, __ as does the snow.
  The snow must melt, must melt, __
  must go, __
  Fast, fast, fast, fast as wa -- ter flow.

  Thy gifts to fade like snow, __
  thy gifts to fade like snow,
  Not thus, not thus,
  O sow __ not thus thy gifts
  to fade, to fade like snow.

  O snow, __ thou'rt white no more, __
  Thy spark -- ling too, is o'er;
  Be as be -- fore,
  Was bright the snow. __

  Then as the snow all __ pure,
  O heart __ be, but en -- dure;
  Through all the years full sure, __
  Not as the snow,
  not as the snow, __
  not as the snow. __
}

wordsSopMidi = \lyricmode {
  "O " "snow, " "which " "sinks " "so " "light, "
  "\nBrown " "earth " "is " "hid " "from " "sight, "
  "\nBe " "thou " "as " "white " "as " "snow, " "as " "snow, " 
  "\nO " "snow, " "which " "falls " "so " "slow, "
  "\nDear " "earth "  "quite " "warm " be "low; "
  "\nO " "heart, " "O " "heart, " "so " "keep " "thy " "glow, "
  "\nBe" "neath " "the " "snow, "  "the " "snow.\n"

  "\nO " "snow, " "in " "thy " "soft " "grave "
  "\nSad " "flow'rs, "  "sad " "flow'rs " "the " win "ter " "brave; "
  "\nO " "heart, " "so " "soothe " "and " "save, "
  "\nso " "soothe, "  "as " "does " "the " "snow. "
  "\nThe " "snow " "must " "melt, " "must " "melt, " 
  "\nmust " "go, " 
  "\nFast, " "fast, " "fast, " "fast " "as " wa "ter " "flow.\n"

  "\nThy " "gifts " "to " "fade " "like " "snow, " 
  "\nthy " "gifts " "to " "fade " "like " "snow, "
  "\nNot " "thus, " "not " "thus, "
  "\nO " "sow "  "not " "thus " "thy " "gifts "
  "\nto " "fade, " "to " "fade " "like " "snow.\n"

  "\nO " "snow, "  "thou'rt " "white " "no " "more, " 
  "\nThy " spark "ling " "too, " "is " "o'er; "
  "\nBe " "as " be "fore, "
  "\nWas " "bright " "the " "snow.\n" 

  "\nThen " "as " "the " "snow " "all "  "pure, "
  "\nO " "heart "  "be, " "but " en "dure; "
  "\nThrough " "all " "the " "years " "full " "sure, " 
  "\nNot " "as " "the " "snow, "
  "\nnot " "as " "the " "snow, " 
  "\nnot " "as " "the " "snow. " 
}

alto = \relative {
  \global \dynamicUp
  R1*4
  e'4\p^\markup\smallCaps Alto. 4~8 8 8 8 % 1b
  e2.-> r4
  e4 4~8\< 8 8 8\!
  fis4(e8\>) dis e4\!r
  R1 % 2a
  r2 r4 c'\omit\p^\markup{\dynamic p \italic esspress.}
  b2 r8 8\cresc 8 8
  c4. 8 8(b4) 8\f
  b(a4) 8 8(g4) 8 % 2b
  g8(fis4) 8 8(e) b\<(cis)
  dis8 e fis g a4\> (g8) e
  e4\p (dis2) r4 \key e \major
  \grace s8 r4 e\omit\pp^\markup{\dynamic pp \italic dolce.} e2( % 3a
  dis8) r dis4 4 4
  e2. 4
  e2. dis8.\< (fis16)
  fis2.\fp 4 % 3b
  e4\< dis\!  d\> (cis8\!) r
  r4\omit\dim^\markup\italic "dim. e poco rit." e e2~(
  e2\pp dis4) 4 \key g \major
  e2 r % 4a
  R1
  e4\p 4~8 8 8\< 8
  e2.-> \> r4\!
  e4 4~8 8\< g g\! % 4b
  g4(fis8) e d4 r
  R1
  r2^\markup\italic stringendo. r4 d\p\cresc % 5a
  g4 r8 8 8 fis e d
  d8(cis a') 8 4. d,8\f
  g2. 4 % 5b
  fis2(g4) 4
  g4\< (c2\!) g4
  g2~8 r8 d4
  g2. 4 % 6a
  fis2(f4) e
  e8(d c <b d> <c e>\< <d fis> <e g>) <fis a>\!
  <g b>2.^\markup\italic accel. b4\mf
  b4.(a8 g4) fis % 6b
  e2 r4 e
  c'4.\cresc b8 a4 g
  fis2 r % 7a
  R1
  r2 r4 a\f
  bes4.-> 8 4 4 % 7b
  a2. d,4\ff
  g2.^\markup\italic "a tempo." 4
  fis2(g4) d
  e8\<(fis g2\!) fis8(e) % 8a
  d2.\> fis4\p
  e2.\omit\dim^\markup\italic "dim. e rit." 4
  fis2. 4 % 8b
  e2. 4
  dis2.\> r4\!
  e4\p 4~8 8 8 8 % 9a
  e2.-> r4
  e4 4~8 8\< 8 8\!
  fis4\> (e8) dis e4\! r % 9b
  R1
  r2 r4 c'4\p^\markup\italic espress.
  b2 r8 b\cresc 8 8 % 10a
  c4. 8 8(b4) 8\f
  b8(a4) 8 8(g4) 8
  g8(fis4) 8 8(e) b\<(cis) % 10b
  dis8 e fis\! g a4\> (g8) e
  e4\p dis^\markup\italic rit. fis4. r8 \key e \major
  \appoggiatura s8 r4 e\pp^\markup\italic dolce. 4 4 % 11a
  dis2 4 4
  e2. 4
  e2. dis8.\< (fis16) % 11b
  fis2.\fp 4
  e4\< dis d\> (cis8\!) r
  r4 e2.\omit\dim^\markup\italic "dim. e rit." ~ % 12a
  e2\pp dis4 4
  e1~
  e1~
  e4 r4 r2 % 12b
  r2 b4\pp^\markup\italic "molto rit." 8 8
  b1~
  b1\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  O snow, which sinks so light,
  Brown earth is hid, is hid __  from sight,
  O soul, be thou as white,
  as white, be thou
  As white as snow, as snow, __
  O soul, be thou as white as snow,
  O snow, __ O snow, which falls so slow,
  O heart, so keep thy glow,
  Be -- neath __ the snow.

  O snow, in thy soft grave
  Sad flow'rs, __ sad flow'rs the win -- ter brave;
  O heart, so soothe and save,
  as does __ the snow.
  The snow must melt, __ must melt, __
  must go, __
  Fast, fast, fast, fast __ as wa -- ter flow.
  
  Not thus, __ my soul,
  not thus, my soul, O sow
  Thy gifts to fade like snow,
  Not thus, not thus, __
  O sow __ not thus thy gifts
  to fade, to fade like snow.

  O snow, __ thou'rt white no more, __
  Thy spark -- ling, spark -- ling too, __ is o'er;
  O soul, be as be -- fore,
  Was bright, be as __ be -- fore,
  Was bright the snow,
  O __ soul, be as be -- fore, __
  Was bright the snow;

  Then as the snow,
  as the snow __ all pure,
  O heart be, but en -- dure; __
  Not as the snow, __
  not as the snow. __
}

wordsAltoMidi = \lyricmode {
  "O " "snow, " "which " "sinks " "so " "light, "
  "\nBrown " "earth " "is " "hid, " "is " "hid "   "from " "sight, "
  "\nO " "soul, " "be " "thou " "as " "white, "
  "\nas " "white, " "be " "thou "
  "\nAs " "white " "as " "snow, " "as " "snow, " 
  "\nO " "soul, " "be " "thou " "as " "white " "as " "snow, "
  "\nO " "snow, "  "O " "snow, " "which " "falls " "so " "slow, "
  "\nO " "heart, " "so " "keep " "thy " "glow, "
  "\nBe" "neath "  "the " "snow.\n"

  "\nO " "snow, " "in " "thy " "soft " "grave "
  "\nSad " "flow'rs, "  "sad " "flow'rs " "the " win "ter " "brave; "
  "\nO " "heart, " "so " "soothe " "and " "save, "
  "\nas " "does "  "the " "snow. "
  "\nThe " "snow " "must " "melt, "  "must " "melt, " 
  "\nmust " "go, " 
  "\nFast, " "fast, " "fast, " "fast "  "as " wa "ter " "flow.\n"
  
  "\nNot " "thus, "  "my " "soul, "
  "\nnot " "thus, " "my " "soul, " "O " "sow "
  "\nThy " "gifts " "to " "fade " "like " "snow, "
  "\nNot " "thus, " "not " "thus, " 
  "\nO " "sow "  "not " "thus " "thy " "gifts "
  "\nto " "fade, " "to " "fade " "like " "snow.\n"

  "\nO " "snow, "  "thou'rt " "white " "no " "more, " 
  "\nThy " spark "ling, " spark "ling " "too, "  "is " "o'er; "
  "\nO " "soul, " "be " "as " be "fore, "
  "\nWas " "bright, " "be " "as "  be "fore, "
  "\nWas " "bright " "the " "snow, "
  "\nO "  "soul, " "be " "as " be "fore, " 
  "\nWas " "bright " "the " "snow;\n"

  "\nThen " "as " "the " "snow, "
  "\nas " "the " "snow "  "all " "pure, "
  "\nO " "heart " "be, " "but " en "dure; " 
  "\nNot " "as " "the " "snow, " 
  "\nnot " "as " "the " "snow. " 
}

tenor = \relative {
  \global \dynamicUp
  R1*4
  g4\p^\markup\smallCaps Tenor. 4~8 8 8 8 % 1b
  g2.-> r4
  g4 4~8\< 8 8 8
  a4\> (g8) fis g4\! r
  r4 b\p\<^\markup\italic espress. c2\! % 2a
  r8 b b b c2
  r4 dis\cresc e2\<
  r8\! dis8 8 8 e4. 8\f
  c4. 8 b4. 8 % 2b
  a4. 8 g4 b\<
  b2. e,4\>
  g4\p(fis2) r4 \key e \major
  \grace s8 R1 % 3a
  r4 b\omit\pp^\markup{\dynamic pp \italic dolce.} b a
  gis2(b4) 4
  cis2. b8.\< (dis16\!)
  dis2.\fp b4 % 3b
  e4\< (b8\!) 8 4\> (a8\!) r
  r4\omit\dim^\markup\italic "dim. e rit." e' cis a
  cis2\pp (b4) a \key g \major
  g2 r % 4a
  R1
  g4\p 4~8 8 8\< 8->
  g2.\> r4
  g4 4~8 8\< g g\! % 4b
  g4(fis8) e d4 r
  R1
  R1^\markup\italic stringendo. % 5a
  R1
  r4 e\mf a\< d\!
  d2\f (e4) b % 5b
  b2. 4
  c4\< (e2\!) c4
  b2~8 r g4
  b2. 4 % 6a
  d2. 4
  c8(b a2) d4
  d2.^\markup\italic accel. r4
  R1*3 % 6b
  R1 % 7a
  r2 r4 e\mf\cresc
  e4. c8 b4 a\f
  e'4.-> 8 4 4 % 7b
  d2. d,4\ff
  b'2.^\markup\italic "a tempo" e4
  d2. 4
  e8\< (fis g2\!) fis8(e) % 8a
  d2.\> 4\p
  b2.\omit\dim^\markup\italic "dim. e rit." 4
  b2. 4 % 8b
  c2. 4
  2.\> r4\!
  g4\p 4~8 8 8 8 % 9a
  g2.-> r4
  g4 4~8 8\< 8 8\!
  a4\> (g8) fis g4\! r % 9b
  r4 b\p\<^\markup\italic espress. c2\!
  r8 b b b c2
  r4 dis^\markup\italic cresc. \< e2\! % 10a
  r8 dis8 8 8 e4. e8\f
  c4. 8 b4. 8
  a4. 8 g4 b\< % 10b
  b2. e,4\>
  g4\p (fis2^\markup\italic rit. ) r4 \key e \major
  \appoggiatura s8 R1 % 11a
  r4 b\pp^\markup\italic dolce. b a
  gis2(b4) 4
  cis2. b8.\< (dis16) % 11b
  dis2.\fp b4
  e4\< (b8) 8\! 4\> (a8) r\!
  r4 e'\omit\dim^\markup\italic "dim. e rit." cis a % 12a
  cis2\pp b4 a
  gis1~
  gis1~
  gis4 r4 r2 % 12b
  r2 b4\pp^\markup\italic "molto rit." 8 8
  b1~
  b1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  O snow, which sinks so light,
  Brown earth is hid, is hid __  from sight,
  O soul, be thou as white,
  O soul, be thou as white,
  be thou
  As white as snow, as snow,
  as white as snow,
  O snow,  which falls __ so slow,
  O heart, so keep thy glow,
  Be -- neath the snow, __ the snow.

  O snow, in thy soft grave
  Sad flow'rs, __ sad flow'rs the win -- ter brave;
  The snow must melt, __ the snow must melt, __
  must go, __
  Fast, fast, fast, fast __ as wa -- ter flow.
  
  Thy gifts to fade,
  thy gifts to fade like snow,
  Not thus, not thus, __
  O sow __ not thus thy gifts
  to fade, to fade like snow.

  O snow, __ thou'rt white no more, __
  Thy spark -- ling, spark -- ling too, __ is o'er;
  O soul, be as be -- fore,
  O soul, be as be -- fore,
  be as be -- fore,
  Was bright the snow,
  was bright the snow;

  Then as the snow, __
  all pure,
  O __ heart be, but __ en -- dure; __
  Not as the snow. as the snow, __
  not as the snow. __
}

wordsTenorMidi = \lyricmode {
  "O " "snow, " "which " "sinks " "so " "light, "
  "\nBrown " "earth " "is " "hid, " "is " "hid "   "from " "sight, "
  "\nO " "soul, " "be " "thou " "as " "white, "
  "\nO " "soul, " "be " "thou " "as " "white, "
  "\nbe " "thou "
  "\nAs " "white " "as " "snow, " "as " "snow, "
  "\nas " "white " "as " "snow, "
  "\nO " "snow, "  "which " "falls "  "so " "slow, "
  "\nO " "heart, " "so " "keep " "thy " "glow, "
  "\nBe" "neath " "the " "snow, "  "the " "snow.\n"

  "\nO " "snow, " "in " "thy " "soft " "grave "
  "\nSad " "flow'rs, "  "sad " "flow'rs " "the " win "ter " "brave; "
  "\nThe " "snow " "must " "melt, "  "the " "snow " "must " "melt, " 
  "\nmust " "go, " 
  "\nFast, " "fast, " "fast, " "fast "  "as " wa "ter " "flow.\n"
  
  "\nThy " "gifts " "to " "fade, "
  "\nthy " "gifts " "to " "fade " "like " "snow, "
  "\nNot " "thus, " "not " "thus, " 
  "\nO " "sow "  "not " "thus " "thy " "gifts "
  "\nto " "fade, " "to " "fade " "like " "snow.\n"

  "\nO " "snow, "  "thou'rt " "white " "no " "more, " 
  "\nThy " spark "ling, " spark "ling " "too, "  "is " "o'er; "
  "\nO " "soul, " "be " "as " be "fore, "
  "\nbe " "as " be "fore, "
  "\nWas " "bright, " "be " "as "  be "fore, "
  "\nbe " "as " be "fore, "
  "\nWas " "bright " "the " "snow, "
  "\nwas " "bright " "the " "snow;\n"

  "\nThen " "as " "the " "snow, " 
  "\nall " "pure, "
  "\nO "  "heart " "be, " "but "  en "dure; " 
  "\nNot " "as " "the " "snow. " "as " "the " "snow, " 
  "\nnot " "as " "the " "snow. " 
}

bass = \relative {
  \global \dynamicUp
  R1*4
  e4\p^\markup\smallCaps Bass. 4~8 8 8 8 % 1b
  e2.-> r4
  e4 4~8\< 8 8 8\!
  dis4\> c e\! r
  R1*4 % 2a
  R1 % 2b
  r2 r4 g\mf\<
  fis8 e dis e\! fis4\> (e8) cis\!
  b2.\p r4 \key e \major
  \grace s8 r4 gis'4\omit\pp^\markup{\dynamic pp \italic dolce.} gis a % 3a
  fis4(b,2) 4
  cis2 gis
  fis2(b4) r
  r4 a'\omit\cresc^\markup\italic "poco cresc." 4 4 % 3b
  gis4\< fis\! eis\< (fis8) r
  R1^\markup\italic "poco rit."
  r4 b,2\pp 4 \key g \major
  e2 r % 4a
  R1
  e4\p 4~8 8 8\< 8
  e2.-> \> r4\!
  e4.(d8) c4\< a % 4b
  d4\! 4 g, r
  R1
  R1 % 5a
  r2 r4 d'\mf
  g2\< (fis4\!) d
  g2\f e % 5b
  b2 g
  c4\< (c'2\!) c,4
  g'2~8 r fis4
  e2. 4 % 6a
  b2(a4) gis
  a2 d
  g,2.^\markup\italic accel. r4
  r2 r4 b'\mf % 6b
  b4.(g8 fis4) e
  e2 r4 c'
  c4.\cresc a8 g4 fis % 7a
  g4 d b'2~(
  b4 a) r c,\f
  cis4-> e g4. 8 % 7b
  f2. d4\ff
  g2.^\markup\italic "a tempo" 4
  b2. 4
  c4 e, g c % 8a
  b2.\> b,4\p
  e2^\markup\italic "dim. e rit." r4 g
  fis2. 4 % 8b
  a2. 4
  fis4\> (b,2) r4\!
  e4\p 4~8 8 8 8 % 9a
  e2.-> r4
  e4 4~8 8\< 8 8
  dis4\> b e\! r % 9b
  R1
  R1
  R1*3 % 10a
  r2 r4 g\mf\< % 10b
  fis8(e) dis\! (e) fis4\> (e8) cis\!
  b2.\p^\markup\italic rit. r4 \key e \major
  \appoggiatura s8 r4 g'\pp^\markup\italic dolce. 4 a % 11a
  fis4(b,2) 4
  c2 g
  fis2(b4) r % 11b
  r4 a'\omit\cresc^\markup\italic "poco cresc." 4 4
  g4\< fis eis\> (fis8) r\!
  R1 % 12a
  r4 b,2 4
  e1~
  e1~
  e4 r4 r2 % 12b
  r2 b4\pp^\markup\italic "molto rit." 8 8
  b1~
  b1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  O snow, which sinks so light,
  Brown earth is hid, is hid from sight,
  O soul, be thou as white as snow,
  O snow,  which falls, __ which falls so slow, __
  O heart, so keep thy glow,
  'Neath the snow.

  O snow, in thy soft grave
  Sad __ flow'rs the win -- ter brave;
  The snow must melt, the snow must melt, __
  must go, __
  Fast, fast, fast, fast __ as wa -- ter flow.
  
  Not thus, __ my soul,
  not thus, my soul,
  O sow Thy gifts, __ thy gifts
  to fade like snow.

  Not thus, not thus, not thus,
  O sow not thus thy gifts
  to fade, to fade like snow. __

  O snow, __ thou'rt white no more,
  Thy spark -- ling, spark -- ling too, is o'er;
  Was bright, was bright __ the snow;

  Then as the snow, __
  the snow all pure, __
  O heart be, but en -- dure; __
  Not as snow, __
  not as the snow. __
}

wordsBassMidi = \lyricmode {
  "O " "snow, " "which " "sinks " "so " "light, "
  "\nBrown " "earth " "is " "hid, " "is " "hid " "from " "sight, "
  "\nO " "soul, " "be " "thou " "as " "white " "as " "snow, "
  "\nO " "snow, "  "which " "falls, "  "which " "falls " "so " "slow, " 
  "\nO " "heart, " "so " "keep " "thy " "glow, "
  "\n'Neath " "the " "snow.\n"

  "\nO " "snow, " "in " "thy " "soft " "grave "
  "\nSad "  "flow'rs " "the " win "ter " "brave; "
  "\nThe " "snow " "must " "melt, " "the " "snow " "must " "melt, " 
  "\nmust " "go, " 
  "\nFast, " "fast, " "fast, " "fast "  "as " wa "ter " "flow.\n"
  
  "\nNot " "thus, "  "my " "soul, "
  "\nnot " "thus, " "my " "soul, "
  "\nO " "sow " "Thy " "gifts, "  "thy " "gifts "
  "\nto " "fade " "like " "snow.\n"

  "\nNot " "thus, " "not " "thus, " "not " "thus, "
  "\nO " "sow " "not " "thus " "thy " "gifts "
  "\nto " "fade, " "to " "fade " "like " "snow.\n" 

  "\nO " "snow, "  "thou'rt " "white " "no " "more, "
  "\nThy " spark "ling, " spark "ling " "too, " "is " "o'er; "
  "\nWas " "bright, " "was " "bright "  "the " "snow;\n"

  "\nThen " "as " "the " "snow, " 
  "\nthe " "snow " "all " "pure, " 
  "\nO " "heart " "be, " "but " en "dure; " 
  "\nNot " "as " "snow, " 
  "\nnot " "as " "the " "snow. " 
}

violinOne = \relative {
  \global \dynamicUp
  <g' b>4(<g' b>^\markup\italic ten. )~8~8--(8-- <e c'>--)
  \voiceOne c'4->(b4)~8. a16(g d b \appoggiatura d8 c16)
  <b, b'>1~b1~
  b4 r r2 % 1b
  r4 \appoggiatura b'8 (b'16 g e fis g e b \appoggiatura d8 c16 b g e c)
  b2 r2
  r2 r8^\markup{\halign #RIGHT \italic espress.} e'(fis g)
  a4-> (b,) c8--(e fis g) % 2a
  \oneVoice <a, a'>4->(<b, b'>) <c c'>8 e'8(fis g)
  b4(dis,) e8(<g, g'> <a a'> <b b'>)
  <c c'>4(<dis, dis'>) <e e'>8 <b' g'>\f(<g e'>) <e b'>--
  \voiceOne b'8->(a) e(fis a-> g) d(e % 2b
  g8 fis) dis(fis) fis(e) b'4(
  b'1~)
  b1~ \key e \major
  \grace s8 b2. r4 % 3a
  r2 r4 gis,4(
  e e') dis-- e--
  a,4\> (gis8. fis16) fis2\!
  r4 cis'' cis dis % 3b
  b4(a) gis(a8 fis)
  e4 (e,2^\markup\italic "poco rit." ) r4
  \oneVoice r2 r4 <b b'>4( \key g \major
  <g' b>4) \voiceOne b'~ ^\markup\italic ten. b8 8--( 8-- c--) % 4a
  c4-> (b8.) a16( g e b \appoggiatura d8 c16 b g e \appoggiatura d8 fis16)
  b,2.\> r4\!
  r4 \appoggiatura b'8 b'16(g e fis g e b \appoggiatura d8 c16 b g e \appoggiatura d8 c16->)
  b2 r % 4b
  r2 r8 g''(a b)
  c4(d,4) e8 g( a b)
  \oneVoice <e, e'>4(<fis, fis'>) <g g'>8 b(c d) % 5a
  g4(ais,) b8 <d, d'>(<e e'> <fis fis'>)
  <b b'>8-- <b, b'>(<cis cis'>) q(<d d'>) <d' fis>(<e g>) <fis a>--
  <g b>2. r4 % 5b
  R1
  r2 r4 <g, g'>4
  <g, d' b' d'>8-> (<g' b'>) <d' b>-> (<b g'>) \tuplet 3/2 {q-- <g b> <d d'>} \tuplet 3/2 {<b g'>(<d b'>) <g d'>--}
  <b g'>2-^ r % 6a
  R1
  r2 r4 <d, d'>
  <g, d' d' g'>8->(<b' g'>) q->^\markup\italic accel. (<g b>) \tuplet 3/2 {<g d'>-- <d b'>(<g d'>)} <b, g''>16 (<d b'>) <g d'>-- <b g'>--
  <d b'>2 r4 b,16 (dis fis) b % 6b
  b16(g e b) <g b'>(e'' g b g e b g) b(e g b)
  c2 r4 c,,16(e g c)
  c16(a fis c) <a c'>(fis'' a c a fis c a) c( fis a d) % 7a
  d2 r4 e,,16(gis b e)
  e16(b gis e) <e e'>(<a a'> <c c'> <e e'> <c c'> <a a'> <e e'> <c c'>) <a a'>(<c c'> <e e'> <g g'>)
  \voiceOne g'8 4 e8 <bes d>4-- <bes cis>-- % 7b
  d4 2-> d,4
  \oneVoice d4.->^\markup\italic "a tempo" (b8) a(g) b(g')
  fis4.-- (d8) c(b) d(g)
  g4.-> (e8) d(c) e(g) % 8a
  d'4.(b8) a(g b fis)
  \voiceOne g4(g'2) \oneVoice <g, g'>4(
  <b b'>4) 2 4 % 8b
  <c c'>8-- (<d d'>--) <e e'>2(<d d'>8 <c c'>)
  \voiceOne b'1~ \oneVoice
  <b, b'>16 (<g g'> <fis fis'> <e e'> \repeat unfold 2 {<b' b'>16 <g g'> <fis fis'> <e e'>} <b' b'>16 <g g'> <fis fis'> <e e'>) % 9a
  <c' c'>16( <g g'> <fis fis'> <e e'> \repeat unfold 2 {<b' b'> <g g'> <fis fis'> <e e'>} <b' b'> <g g'> <fis fis'> <e e'>)
  <b' b'>16(<g g'> <fis fis'> <e e'> \repeat unfold 2 {<b' b'> <g g'> <fis fis'> <e e'>} <c' c'> <g g'> <fis fis'> <e e'>)
  <b' b'>16(<fis fis'> <e e'> <dis dis'> <e e'> <c c'> <b b'> <a a'>) <g g'>( <a a'> <ais ais'> <b b'> <dis dis'> <e e'> <fis fis'> <g g'>) % 9b
  <a a'>4-> (<b, b'>) <c c'>8 <e e'>(<fis fis'> <g g'>)
  <a a'>4-> (<b, b'>) <c c'>8 <e e'>(<fis fis'> <g g'>)
  <b b'>4-> (<dis, dis'>) <e e'>8 <g g'>(<a a'> <b b'>) % 10a
  <c c'>4(<dis, dis'>) <e e'>8-- <b' g'>(<g e'>) <e b'>--
  \voiceOne b'8(a) e(fis a g) d( e
  g8 fis) dis(fis) f\dim (e) \oneVoice <b b'>4( % 10b
  <b' b'>1) ~
  q1~ ^\markup\italic "dim. e rit." \key e \major
  \appoggiatura s8 q2. r4 % 11a
  r2 r4 \oneVoice gis4
  e4(e') dis-- e--
  a,4(gis8. fis16) 2 % 11b
  r4 cis'' cis dis
  b4(a) gis(a8 fis)
  e4(e,2) r4 % 12a
  R1
  \oneVoice <gis b>4(<gis' b>) ~ q8 q--(q-- <e cis>--)
  \voiceOne cis'4(b4) ~8 \oneVoice <gis, b>8--( q-- <e cis'>--)
  \voiceOne cis'4(b) ~8 \oneVoice <gis, b>8--( q-- <gis cis>--\<) % 12b
  <gis e'>4( \voiceOne fis'\> gis fis)
  \oneVoice <gis, e'>1\! ~
  q1\fermata
}

violinTwo = \relative {
  \global \voiceTwo
  s1
  e''8.(f16) g e b \appoggiatura d8 c16 b g e fis e b g a
  s1*3
  s4 <g e' b' e>8 b' b g e b % 1b+
  g8 e' b' e, <g, e' b' e>4 r
  r4 b~2~
  b4 r r8 e(fis g) % 2a
  s1*3
  c,8 4 8(b) b4 8( % 2b
  a8) 4 8(g4) b(
  b'1)~
  b1~
  \grace s8 b2. s4 % 3a
  s2. <a, dis>4(
  <gis e'>2) r
  r2 r4 dis'8.(fis16)
  fis2.~ (8 b,) % 3b
  b4 4(d) cis8(a)
  gis4 r4 r2
  s1
  s4 g''~8 8-- 8-- 8-- % 4a
  e8.(fis16) g (e b c b g e fis g e b c)
  b2. s4
  s4 <g e' b' e>8 b' b g e b
  g8 e' b' e, <g, e' b' e>4\arpeggio r4 % 4b
  R1
  r2 r8 g'(a b)
  s1*17
  bes4 <e, bes'> e e % 7b
  <d a'>2. d4
  s1*4
  g2. s4 % 8a++
  s1 % 8b
  s1
  fis'16 (dis cis b fis' dis cis b fis' dis cis b fis' dis cis b)
  s1*8
  c,8 4 8(b) 4 8( % 10a++
  a8) 4 8 g4 s % 10b
  s1*3
  \appoggiatura s8 s2. <a dis>4( % 11a+
  <gis e'>2) r
  r2 r4 d'8.(fis16) % 11b
  fis2.~(fis8 b,)
  b4 4(dis) cis8(a)
  gis4 r r2 % 12a
  s1*2
  e''8.(fis16) gis4~8 s4.
  e,8.(fis16) gis4~8 s4. % 12b
  s4 a,~<a dis>2
  s1
  s1
}

dynamicsViolin = {
  \dynamicUp
  s2\p s\< |
  s8\! s4\> s16\! s16 s2 |
  s2 s\dim |
  s1 |
  s1 | % 1b
  s1\pp_\markup\italic pizz.
  s1
  s4_\markup\italic arco. s\< s2\>
  s1\pp % 2a
}

pianoRHone = \relative {
  \global \oneVoice
  r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio
  r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio
  r4 <e g>-. <dis g>-. <dis fis>-.
  R1
  r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio % 1b
  r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio
  r4 q-.\arpeggio <e g b>-.\arpeggio <e g c>-.\arpeggio
  <fis a>4^(<e g>8 <dis fis> <e g>4) <b e g b>\arpeggio
%  \change Staff = pianolh \voiceOne
  r8 fis^(b fis) r g^(c g) % 2a
  r8 fis^(b fis) r g^(c g)
  r8 a^(dis a) r b^(e b)
%  \change Staff = pianorh \oneVoice
  r8 a(<cis d> a) r b e( b
  <c e>4) r r2 % 2b
  r2 r4 b8(cis
  <a b dis>8 <g b e> <fis b fis'> <g b g'> <a b a'>4-^ <g b g'>8 <g ais e'>)
  <g b e>4~ (<fis b dis> <a dis fis>2) \key e \major
  \grace s8 r4 <b e b'>4--\arpeggio (q--\arpeggio <cis e cis'>--\arpeggio) % 3a
  <b dis a'>4( \voiceOne gis'8 fis8 4) \oneVoice <b, dis gis>4(
  <cis e>8) e,8 (<gis cis e> e~) e8 8 (<b' e> e,)
  r8 fis(<a cis> fis) ~ 8 8(<a dis> fis)
  r4 <cis' dis fis cis'>4--\arpeggio q--\arpeggio <dis fis dis'>--\arpeggio % 3b
  <b e b'>4( ~<b dis a'> ~ <b d gis> \voiceOne a'8 fis \oneVoice
  <gis, b e>8) gis(<b e> gis) r a(<cis e> a)
  <cis e a>4\arpeggio r4 r2 \key g \major
  r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio % 4a
  \repeat unfold 3 {r4 q-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio}
  r4 <b e g>4-.\arpeggio <c e g>-.\arpeggio <c e g c>-.\arpeggio % 4b
  <d g b>4(\voiceOne <c a'> \oneVoice <b d b'>2)
  r4 <a c d>~(<b d e>2)
  r8 e(<c d fis>4~<g d' g>2) % 5a
  r8 <ais e' g>8 8 8 r <fis b fis'>8 8 8
  r8 <b cis g' b> <a cis g' a> q <a d a'> q <c d a'> q
  <b d b'>8 8 8 8 <b e g b>8 8 8 8 % 5b
  <d fis d'>8 8 8 8 <d g d'> <d g b> q <b d g>
  <g e' g>8 8 8 8 8 8 <c e g c> q
  <b g' b>8 8 8 8 8 8 8 8
  <b e g>8 8 8 8 8 8 8 8 % 6a
  <b d fis b>8 8 8 8 <b d f b> q <b d e b'> q
  <c e c'>8(<b d> <c e> <b d> <c a> <d fis> <e g> <fis a>)
  <g b>8 <b, g' b>8 8 8 8 8 8 8
  <b d b'>8 8 8 <b d a'> <b d g> q <b fis' b> q % 6b
  <b e b'>8 8 8 <b g' b> <b fis' b> q <b e b'> q
  <c e c'>8 8 8 <c e b'> <c e a> q <c g' c> q
  <c fis c'>8 8 8 <c a' c> <c g c'> q <c fis c'> q % 7a
  <d g d'>8 8 8 <d b' d> <d a d'> q <e gis e'> q
  q8 8 <e a e'> q <e b' e> q <e a e'> q
  <g bes g'>8 8 8 <g bes e> <d b' d> q <cis b' cis> q % 7b
  <d a' d>8^\markup\italic Allargado. 8 8 8 8 8 <d fis d'> q
  <b d b'>16^\markup\italic Maestoso. (g' d b) b'(g d b) b'(g e b) b'(g e b)
  d'(b fis d) d'(b fis d) d'(b g d) d'(b g d)
  e'16(c g e) e'(c g e) g'(e c g) e'(c g e) % 8a
  \repeat unfold 3 {d'16(b g d) } b'(fis d b)
  g'16(e \repeat unfold 3 {b e g16 e} b e)
  b'16(fis \repeat unfold 3 {b, fis' b fis} b, fis') % 8b
  a16(e \repeat unfold 3 {c e a e} c e
  <b dis>4) r4 r2
  \repeat unfold 2 {r4 <b e g>4-.\arpeggio <b e g b>-.\arpeggio <b e g>-.\arpeggio} % 9a
  r4 <b e g>4-.\arpeggio <e g b>-.\arpeggio <e g c>-.\arpeggio % 9a++
  <fis a>4(<e g>8 <dis fis> <e g>4) <b e g b>-.\arpeggio % 9b
  r16 \change Staff = pianolh fis(a \change Staff = pianorh dis fis dis \change Staff = pianolh b fis \voiceOne g c b g e b g e) \oneVoice
  \change Staff = pianorh r16 \change Staff = pianolh fis'(b \change Staff = pianorh dis fis dis \change Staff = pianolh b fis \voiceOne g c b g e b g e) \oneVoice
  \change Staff = pianorh r16 \change Staff = pianolh a'( \change Staff = pianorh dis fis a fis dis \change Staff = pianolh a b e c dis g e b g) % 10a
  \change Staff = pianorh r16 \change Staff = pianolh a( \change Staff = pianorh dis fis a fis dis \change Staff = pianolh a ais c b g e b g e) \change Staff = pianorh
  R1
  r2 r4 b''8(cis % 10b
  <a b dis>8 <g b e> <fis b fis'> <g b g'> <a b a'>4-^ <g b g'>8 <gis a e'>)
  <g b e>4~(<fis b dis> <a d fis>2) \key e \major
  \appoggiatura s8 r4 <b e b'>--\arpeggio(q--\arpeggio <cis e cis'>--\arpeggio) % 11a
  <b dis a'>4(gis'8. fis16 4) <b, dis gis>(
  <cis e>8) \change Staff = pianolh e,(\change Staff = pianorh <gis cis e> \change Staff = pianolh e)~e e( \change Staff = pianorh <b' e> \change Staff = pianolh e,)
  \change Staff = pianorh r8 \change Staff = pianolh fis( \change Staff = pianorh <a cis e> \change Staff = pianolh fis)~8( 8 \change Staff = pianorh <a dis> \change Staff = pianolh fis) % 11b
  \change Staff = pianorh r4 <cis' dis fis cis'>--\arpeggio q--\arpeggio <dis fis dis'>--\arpeggio
  <b e b'>4(~<b dis a'>~<b d gis> a'8 fis
  <gis, b e>2) <a cis e> % 12a
  <cis e a>4-.\arpeggio r r2
  r4^\markup\italic "Tempo, più lento." <gis b e>-.\arpeggio <b e gis>-.\arpeggio <gis b e>-.\arpeggio
  r4 q-.\arpeggio <b e gis>-.\arpeggio <gis b e>-.\arpeggio
  r4 \change Staff = pianolh <e gis b>-.\arpeggio <gis b e>-.\arpeggio <e gis b>-.\arpeggio \change Staff = pianorh % 12b
  <gis e'>4(<a e' fis> gis' fis)
  <gis, e'>4~8 r <gis b gis'>4~8 r
  q1\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1*4
  s1*3
  b2~4 s % 1b+3
  s1*8
  \grace s8 s1 % 3a
  s4 dis~4 s
  s1*3
  s2. <a cis>4 % 3b+
  s1*7
  s4 fis'8 e s2 % 4b+
  s1
  s1*7 % 5
  s1*7 % 6
  s1*7 % 7
  s1*6 % 8
  s1*3 % 9a
  b2. s4 % 9b
  s1
  s1
  s1*6 % 10
  \appoggiatura s8 s1 % 11a
  s4 dis~4 s
  s1
  s1 % 11b
  s1
  s2. <a cis>4
  s1*5 % 12a
  s2 <a dis> %12b+
  s1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1\dim
  s1
  s1 % 1b
  s1
  s2 s\<
  s2.\> s4\!
  s1 | s1 | s1\cresc | s1 % 2
  s1 | s2. s4\p\< s2-\markup\italic allargando. s4\! s\> | s1\omit\dim-\markup \italic "dim. e rit."
  s1\pp | s1 | s1 | s1 % 3
  s1\omit\cresc-\markup\italic "poco cresc." | s1 | s1\omit\dim-\markup\italic "dim. e poco rit." | s1
  s1\omit\p | s1 | s1 | s1 % 4
  s1 | s1 | s1
  s1\omit\cresc-\markup\italic "stringendo. cres." | s1 | s4 s2\< s4\! % 5
  s1\f | s1 | s1 | s1
  s1 | s1 | s2 s\< | s4\! s2\>-\markup\italic accel. s4\! % 6
  s1\p | s1 | s4 s2.\cresc
  s1 | s1 | s1 % 7
  s2\f\< s\! | s1\< | s1\omit\ff-\markup{\dynamic ff \italic "a tempo."} | s1
  s1 | s4 s2.\> | s8\p\omit\dim s2..-\markup\italic "dim. e rit." % 8
  s1 | s1 | s1
  s1\p | s1 | s2 s8 s4.\< % 9a
  s2\> s\! | s1 | s1
  s1\cresc | s1 | s1\f % 10a
  s2. s4\p | s2-\markup\italic allargando. s8 s4.\> | s1\omit\dim-\markup\italic "dim. e rit."
  s1\omit\pp-\markup{\dynamic p \italic dolce.} | s1 | s4. s2\< s8\! % 11a
  s4. s2\> s8\! | s1\omit\cresc-\markup\italic "poco cres." | s2\< s4.\> s8\!
  s1\omit\dim-\markup\italic "dim. e rit." | s1 | s1\pp | s1 % 12a
  s1 | s2\< s\>-\markup\italic "molto rit."
  s1\!
  s1
}

pianoLHone = \relative {
  \global
  <e, e'>4 r r2
  q4 r r2
  r4 <b' b'>-. <b a'>-. q-.
  R1
  <e, e'>4 r4 r2 % 1b
  q4 r r2
  q4 r r2
  <dis dis'>4 <b b'> <e e'> r
  r8 fis'4 r8 r g4 r8 % 2a
  r8 fis4 r8 r g4 r8
  r8 a4 r8 r b4 r8
  \oneVoice <fis, fis'>2 (<g g'>)
  c4 r r2 % 2b
  r2 r4 <g b g'>4
  b2 \oneVoice <fis fis'>4-^ <e e'>8 <cis cis'>
  <b b'>2. 4 \key e \major
  \voiceOne \grace s8 e8 b' gis' b, gis' b, gis' b, % 3a
  fis'4 b a a
  \oneVoice <cis,, cis'>2 (<gis gis'>
  <fis fis'>2) <b b'>4 r
  \voiceOne a'8(fis' a fis a fis a fis) % 3b
  gis4 fis eis8 d cis fis
  \oneVoice <b,, b'>2 q2~
  q8 r q2 4 \key g \major
  <e e'>4 r r2 % 4a
  q4 r r2
  q4 r r2
  q4 r r2
  <e e'>4. <d d'>8 <c c'>4 <a a'> % 4b
  \voiceOne <d d'>4 r r8 d'4 8
  r8 d4 8 r d4 8
  r8 d4 8 r d4 8 % 5a
  \oneVoice <cis, cis'>2 <d d'>
  <e e>2 <fis fis'>4 <d d'>
  <g g'>2 <e e'> % 5b
  <b b'>2 <g g'>
  <c c'>2. 4
  <g g'>4-^ <g' g'>-^ <fis fis'>-^ <fis, fis'>-^
  <e e'>2. <e' e'>4  % 6a
  <b b'>2 <a a'>4 <gis gis'>
  <a a'>2 <d d'>
  <g d'>8 8 8 8 8 8 8 8
  q8 8 8 8 8 8 <g dis'> q % 6b
  <g e'>8 8 8 8 8 8 8 8
  <a e'>8 8 8 8 8 8 8 8
  <a fis'>8 8 8 8 <a g'> q <a fis'> q % 7a
  <b g' b>8 8 8 8 8 8 <b gis' b> q
  <c gis' b> q <c a' c> q q q q q
  <cis, cis'>4 <e e'> <g g'>2 % 7b
  <fis fis'>4.-> <d d'>8 <c c'>4-> <a a'>->
  <g g'>4 <d'' g b>4-.\arpeggio <e, e'>4 <b' e g b>4-.\arpeggio
  <b, b'>4-> <fis'' b d>4-.\arpeggio <g,, g'> <d'' g b d>4-.\arpeggio
  \voiceOne r4 <e g c>\arpeggio <g c e>\arpeggio <e g c>\arpeggio % 8a
  <g,, g'>4 <d'' g b>\arpeggio ~ g4(fis) \oneVoice
  <e, e'>4.( <g g'>8 <fis fis'>4 <e e'>~
  q4. <d d'>8 <c c'>4 <b b'>~ % 8b
  q4. <a a'>8 <g g'>4 <fis fis'>
  \ottava #-1 b,1) \ottava #0
  \repeat unfold 3 {<e' e'>4 r r2} % 9a
  <dis dis'>4 <b b'> <e e'> r % 9b
  \voiceTwo dis2(e4) s
  dis2(e4) s
  fis2(g4) s % 10a
  fis2(g4) s
  \oneVoice c4 r r2
  r2 r4 <g b g'> % 10b
  b2 <fis fis'>4 <e e'>8 <cis cis'>
  <b b'>2. q4-. \key e \major
  \voiceOne \appoggiatura s8 e8 b' gis' b, gis' b, a' b, % 11a
  fis'4 b a a
  s1
  s1 % 11b
  a,8 fis' a fis a fis a fis
  gis4 fis eis8 d cis fis
  <b,, b'>1~ % 12a
  q8 r q2 4
  <e b'>1
  q1
  q2 s % 12b
  <cis cis'>4 <c c'> <b b'>2
  <e b'>4~8 r q4~8 r
  q1\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*8
  dis,2(e) % 2a
  dis2(e)
  <fis fis'>2(<g g'>)
  s1*3
  <fis fis'>8 <e e'> <dis dis'> <e e'> s2 % 2b++
  s1
  \appoggiatura e,8 e'2. r4 % 3a
  s1*3
  \appoggiatura a,8 a'1 % 3b
  gis8 b fis b eis,4 fis
  s1*7
  s2 g % 4b+
  fis2(g
  a2 b) % 5a
  s1*6
  s1*7 % 6
  s1*7 % 7
  <c, c'>1 % 8a
  s2 b'
  s1*4
  s1*6 % 9a
  s1*4
  <fis fis'>8 <e e'> <dis dis'> <e e'> s2 % 10b+
  s1
  \appoggiatura e,8 e'2. r4 % 11a
  fis'8 b, b' b, a' b, a' b,
  <cis, cis'>2(<gis gis'>
  <fis fis'>2 <b b'>4) r % 11b
  \appoggiatura a8 a'1
  gis8 b fis b eis,4 fis
  s1*8 % 12
  \bar "|."
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Dynamics \with {alignAboveContext = violins} \dynamicsViolin
          \new Voice \violinOne
          \new Voice \violinTwo
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Piano"
          shortInstrumentName = ""
          }
          <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics \dynamicsViolin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics {\teeny \dynamicsViolin}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
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
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics {\teeny \dynamicsViolin}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
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
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics {\teeny \dynamicsViolin}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
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
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics {\teeny \dynamicsViolin}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
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
            \new Voice \bass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics \dynamicsViolin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsAltoMidi
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
            \new Voice \bass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics \dynamicsViolin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics \dynamicsViolin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
            \new Voice \RehearsalTrack
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
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new Staff = violins \with {
          instrumentName = "Violins"
          shortInstrumentName = "Vn"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violinOne
          \new Voice \violinTwo
          \new Dynamics \dynamicsViolin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
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
