\version "2.25.13"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord Bless You and Keep You"
%  subtitle    = "subtitle"
  subsubtitle = "in memoriam Edward T. Chapman"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Rutter"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Numbers vi, 24"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ges \major
  \time 4/4
}

TempoTrack = {
  \tempo "Andante espressivo" 4=72
  s1*33
  \set Score.tempoHideNote = ##t
  \tempo 4=69 s1-\markup \bold \upright "poco rit." % 3c+
  \tempo 4=72 s1-\markup \bold \upright "a tempo"
  s1*6
  \tempo 4=59 s1-\markup \bold \upright rall. % 4b++
  \tempo 4=51 s1-\markup \bold \upright "molto rall."
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s1*4
  \mark \markup { \circle "1b" } s1*4
  \mark \markup { \circle "1c" } s1*4
  \mark \markup { \circle "2a" } s1*4
  \mark \markup { \circle "2b" } s1*4
  \mark \markup { \circle "2c" } s1*4
  \mark \markup { \circle "3a" } s1*4
  \mark \markup { \circle "3b" } s1*4
  \mark \markup { \circle "3c" } s1*4
  \mark \markup { \circle "4a" } s1*4
  \mark \markup { \circle "4b" } s1*5
}

sopranoJoint = \relative {
  \global
  \voiceOne
  R1
  r2 r4 r8 bes'^\markup SOPRANOS
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 1b
  des'4. ces8 bes aes4 aes8
  ees'4. des8 ces bes des ces
  ces4 bes2 ges8 aes
  bes4 bes2 bes8 aes % 1c
  bes2. r8 bes8
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 2a
  des'4. ces8 bes aes4 aes8
  ees'4. des8 ces bes des ces
  ces4 bes2 ges8 aes
  bes4 bes2 bes8 aes % 2b
  bes2. r8 bes
  bes4 bes c bes
  ees2. d8 c
  d4. g,8 g4 a % 2c
  b4 b2~8 r
  R1
  R1
  R1 % 3a
  R1
  r4 ees bes ees,
  des'4( c2.~
  c4) r r2 % 3b
  R1
  r4 ces ges ces,
  ces'4(bes2.~
  bes4) bes ges ees % 3c
  aes1(
  bes4~8) r r2
  R1 \break
}

sopranoSingle = \relative {
  \global
  R1*36 \break
  ees''2.^\mf( des8 ees % 4a
  des4) ces2.^\<
  aes'2.^\f(ges8 aes
  ges4) f2^\> ees8^\mf(f
  ees4) des4 ges2~^\> % 4b
  ges2^\mp des2~
  des4 des2\> ges,4
  aes2.^\p^\dim~(aes8 bes)
  bes1\fermata^\pp
}

sopranoAll = \relative {
  \global
  R1
  r2 r4 r8 bes'^\p
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 1b
  des'4. ces8 bes aes4 aes8
  ees'4. des8 ces bes des ces
  ces4 bes2 ges8 aes
  bes4 bes2 bes8 aes % 1c
  bes2. r8 bes8
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 2a
  des'4. ces8 bes aes4 aes8
  ees'4. des8 ces bes des ces
  ces4 bes2 ges8 aes
  bes4 bes2 bes8 aes % 2b
  bes2. r8 bes
  bes4 bes c bes
  ees2. d8 c
  d4. g,8 g4 a % 2c
  b4 b2~8 r
  R1
  R1
  R1 % 3a
  R1
  r4 ees bes ees,
  des'4( c2.~
  c4) r r2 % 3b
  R1
  r4 ces ges ces,
  ces'4(bes2.~
  bes4) bes ges ees % 3c
  aes1(
  bes4~8) r r2
  R1 \break
  ees2.^\mf( des8 ees % 4a
  des4) ces2.^\<
  aes'2.^\f(ges8 aes
  ges4) f2^\> ees8^\mf(f
  ees4) des4 ges2~^\> % 4b
  ges2^\mp des2~
  des4 des2\> ges,4
  aes2.^\p^\dim~(aes8 bes)
  bes1\fermata^\pp
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

wordsSopJoint = \lyricmode {
  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be \set associatedVoice = "altojoint" gra -- cious \set associatedVoice = "sopranojoint"
  and be gra -- cious un -- to you.

  The Lord lift up the light
  of his coun -- te -- nance up -- on you, __

  and give you peace, __
  and give you peace, __
  and give you peace, __
}

wordsSopSingle = \lyricmode {
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men, __
  a -- men,
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  gra -- cious
}

wordsSopSep = \lyricmode {
  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord lift up the light
  of his coun -- te -- nance up -- on you, __

  and give you peace, __
  and give you peace, __
  and give you peace, __
  \wordsSopSingle
}

wordsSopMidi = \lyricmode {
  "The " "Lord " "bless " "you " "and " "keep " "you: " 
  "\nThe " "Lord " "make " "his " "face " "to " "shine " up "on " "you, "
  "\nto " "shine " up "on " "you " "and " "be " gra "cious "
  "\nand " "be " gra "cious " un "to " "you. "

  "\nThe " "Lord " "bless " "you " "and " "keep " "you: " 
  "\nThe " "Lord " "make " "his " "face " "to " "shine " up "on " "you, "
  "\nto " "shine " up "on " "you " "and " "be " gra "cious "
  "\nand " "be " gra "cious " un "to " "you. "

  "\nThe " "Lord " "lift " "up " "the " "light "
  "\nof " "his " coun te "nance " up "on " "you, " 

  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 

  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men, " 
  "\na" "men. "
}

altoJoint = \relative {
  \global
  \voiceTwo
  s1*8
  R1 % 1c
  r2 r4 r8 bes'
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 2a
  aes4. ees8 ees ees4 aes8
  aes4. aes8 ges8 ges ges ges
  ges4.(f8)ees4 ees8 ees
  ees4 ees2 ees8 ees % 2b
  d2. r8 bes'
  bes4 bes bes aes
  g2. g8 g
  g4. fis8 e4 fis8(e) % 2c
  e4 dis2~8 r
  R1
  R1
  R1 % 3a
  R1
  R1
  R1
  R1 % 3b
  R1
  r4 ces' ges ces,
  ces'4(bes2.~
  bes4) bes ges ees % 3c
  ees2.(f4
  g4~8) r8 r2
  R1
  s1*9
  \bar "|."
}

altoSingle = \relative {
  \global
  R1*36
  ees'2.^\mf ees4~ % 4a
  ees4 ees4.^\<(f8 ges4)
  aes2^\f des4 ges,~
  ges8 ees(f ges) aes2~^\>
  aes4^\mf bes8^\>(aes ges4 aes) % 4b
  bes4^\mp ges(aes bes
  ces4 bes aes^\>) ges~
  ges4 ees^\p^\dim(f2)
  ges1\fermata^\pp
}

altoAll = \relative {
  \global
  \voiceTwo
  s1*8
  R1 % 1c
  r2 r4 r8 bes'
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ges4 f8 ges aes4 ges % 2a
  aes4. ees8 ees ees4 aes8
  aes4. aes8 ges8 ges ges ges
  ges4.(f8)ees4 ees8 ees
  ees4 ees2 ees8 ees % 2b
  d2. r8 bes'
  bes4 bes bes aes
  g2. g8 g
  g4. fis8 e4 fis8(ees) % 2c
  e4 dis2~8 r
  R1
  R1
  R1 % 3a
  R1
  R1
  R1
  R1 % 3b
  R1
  r4 ces' ges ces,
  ces'4(bes2.~
  bes4) bes ges ees % 3c
  ees2.(f4
  g4~8) r8 r2
  R1
  ees'2.^\mf ees4~ % 4a
  ees4 ees4.^\<(f8 ges4)
  aes2^\f des4 ges,~
  ges8 ees(f ges) aes2~^\>
  aes4^\mf bes8^\>(aes ges4 aes) % 4b
  bes4^\mp ges(aes bes
  ces4 bes aes^\>) ges~
  ges4 ees^\p^\dim(f2)
  ges1\fermata^\pp
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

wordsAltoSingle = \lyricmode {
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men.
}

wordsAltoSep = \lyricmode {
  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord lift up the light
  of his coun -- te -- nance up -- on you, __

%  and give you peace, __
  and give you peace, __
  and give you peace, __
  \wordsAltoSingle
}

wordsAltoMidi = \lyricmode {
  "The " "Lord " "bless " "you " "and " "keep " "you: " 
  "\nThe " "Lord " "make " "his " "face " "to " "shine " up "on " "you, "
  "\nto " "shine " up "on " "you " "and " "be " gra "cious "
  "\nand " "be " gra "cious " un "to " "you. "

  "\nThe " "Lord " "lift " "up " "the " "light "
  "\nof " "his " coun te "nance " up "on " "you, " 

  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men. "
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1
  s2. s8 s^\markup \bold \italic {\dynamic p dolce e legato}
  s1
  s1
  s2 s\< % 1b
  s4.\! s4\> s4.\<
  s4.\! s4\> s4.\!
  s1
  s1 % 1c
  s2. s8 s-\markup \bold \italic {\dynamic p dolce sempre}
  s1
  s1
  s2 s\< % 2a
  s2.\! s8 s\mp\<
  s4. s8\! s2
  s4 s2\> s4\!
  s1 % 2b
  s2. s8 s\mp\cresc
  s1
  s1\mf
  s1 % 2c
  s4 s2\> s8 s\!
  s1
  s1
  s1 % 3a
  s1
  s4 s2.\mp
  s2 s\dim
  s1 % 3b
  s1
  s4 s2.\pp
  s4 s2.\<
  s4 s2.\p % 3c
  s1-\markup \bold \italic {poco rit.}
  s1-\markup \bold {a tempo}
  s1
}

tenorJoint = \relative {
  \global
  \voiceOne
  R1*9
  r2 r4 r8 bes % 1c+
  bes2 bes4 aes8 bes
  aes4 ges2~8 bes
  ees4 ees8 ees des4 des % 2a
  ees4. ees8 ces8 ces4 ces8
  aes4. aes8 ces ces g g
  g8(aes) bes2 bes8 bes
  bes4 bes2 g8 ees % 2b
  f2. r4
  R1
  R1
  R1 % 2c
  r2 r4 r8 b
  b4 b cis cis
  e2. ees8 des
  ees4. aes,8 aes4 ees'8(f) % 3a
  ees4 d2.~
  d4 r r2
  R1
  r4 des aes des, % 3b
  ces'4(bes2.~
  bes4) ces ges ces,
  ces'4(bes2.~
  bes4) des, ees ges % 3c
  ces1
  bes2.(aes8 bes
  aes4) ges2.~
  \change Staff = tenor
  ges4\repeatTie s2.
  s1*8
  \bar "|."
}

tenorSingle = \relative {
  \global
  R1*36
  s4 r r2
  r2 ees'^\mf^\cresc~(
  ees4^\f des4. ges,8) ces4~
  ces8 aes(des2\>) aes4^\mf~
  aes8 f(ges^\> aes bes4 ces) % 4b
  des4^\mp bes(ces des
  ces4 des ces^\>) bes
  des4^\p^\dim(ces aes des)
  <bes des>1\fermata^\pp
  \bar "|."
}

tenorAll = \relative {
  \global
  \voiceOne
  R1*9
  r2 r4 r8 bes % 1c+
  bes2 bes4 aes8 bes
  aes4 ges2~8 bes
  ees4 ees8 ees des4 des % 2a
  ees4. ees8 ces8 ces4 ces8
  aes4. aes8 ces ces g g
  g8(aes) bes2 bes8 bes
  bes4 bes2 g8 ees % 2b
  f2. r4
  R1
  R1
  R1 % 2c
  r2 r4 r8 b
  b4 b cis cis
  e2. ees8 des
  ees4. aes,8 aes4 ees'8(f) % 3a
  ees4 d2.~
  d4 r r2
  R1
  r4 des aes des, % 3b
  ces'4(bes2.~
  bes4) ces ges ces,
  ces'4(bes2.~
  bes4) des, ees ges % 3c
  ces1
  bes2.(aes8 bes
  aes4) ges2.~
  ges4 r r2 % 4a
  r2 ees'^\mf^\cresc~(
  ees4^\f des4. ges,8) ces4~
  ces8 aes(des2\>) aes4^\mf~
  aes8 f(ges^\> aes bes4 ces) % 4b
  des4^\mp bes(ces des
  ces4 des ces^\>) bes
  des4^\p^\dim(ces aes des)
  <bes des>1\fermata^\pp
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

wordsTenorAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  gra -- cious
  _ _ _ _ _ _ _
  The Lord lift up the light of his coun -- te -- nance up -- on you __
  and give you peace, __
  "" _ _ _ _ _ _
  peace. __
  A -- men, __
}

wordsTenor = \lyricmode {
  a -- men, __
  a -- men, __
  a -- men,
  a -- men,
  a -- men.
}

wordsTenorSep = \lyricmode {
  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord lift up the light of his coun -- te -- nance up -- on you __

  and give you peace, __
  and give you peace, __
  and give you peace.
  A -- men, __
  a -- men, __
  a -- men, __
  a -- men,
  a -- men,
  a -- men.
}

wordsTenorMidi = \lyricmode {
  "The " "Lord " "bless " "you " "and " "keep " "you: " 
  "\nThe " "Lord " "make " "his " "face " "to " "shine " up "on " "you, "
  "\nto " "shine " up "on " "you " "and " "be " gra "cious "
  "\nand " "be " gra "cious " un "to " "you. "

  "\nThe " "Lord " "lift " "up " "the " "light "
  "\nof " "his " coun te "nance " up "on " "you, " 

  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 
  "\na" "men, " 
  "\na" "men, " 
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men. "
}

bassJoint = \relative {
  \global
  \voiceTwo
  R1*9
  r2 r4 r8 bes % 1c+
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ces4 ces8 ces bes4 bes % 2a
  aes4. aes8 ges ges4 ges8
  f4. f8 ees8 ees ees ees
  d2 des4 des8 des
  c2 ces4 ces8 ces % 2b
  bes2. r4
  R1
  R1
  R1 % 2c
  r2 r4 r8 b'
  b4 b b g
  gis2. gis8 gis_\markup \bold \right-align {\with-color #red "SAME"}
  aes4._\markup \bold \left-align \with-color #red "NOTE" aes8 aes4 aes % 3a
  aes4 bes2.~
  bes4 r r2
  R1
  R1 % 3b
  R1
  r4 ces ges ces,
  ces'4(bes2.~
  bes4) des, ees ges % 3c
  ges4(f ees des)
  bes'2.(aes8 bes
  aes4) ges2.~ \change Staff = bass
  ges4\repeatTie s2.
  s1*8
  \bar "|."
}

bassSingle = \relative {
  \global
  R1*36
  s4 ges2^\cresc ges4~ % 4a
  ges4 aes2^\mf^\< ges4
  f2^\f( ees
  des2 ces^\>)
  bes2^\mf ees^\> % 4b
  des1^\mp
  ees1(
  des1^\p^\dim)
  <ges, des'>1\fermata^\pp
  \bar "|."
}

bassAll = \relative {
  \global
  \voiceTwo
  R1*9
  r2 r4 r8 bes % 1c+
  bes2 bes4 aes8 bes
  aes4 ges2~8 ges
  ces4 ces8 ces bes4 bes % 2a
  aes4. aes8 ges ges4 ges8
  f4. f8 ees8 ees ees ees
  d2 des4 des8 des
  c2 ces4 ces8 ces % 2b
  bes2. r4
  R1
  R1
  R1 % 2c
  r2 r4 r8 b'
  b4 b b g
  gis2. gis8 gis
  aes4. aes8 aes4 aes % 3a
  aes4 bes2.~
  bes4 r r2
  R1
  R1 % 3b
  R1
  r4 ces ges ces,
  ces'4(bes2.~
  bes4) des, ees ges % 3c
  ges4(f ees des)
  bes'2.(aes8 bes
  aes4) aes2.~
  aes4 ges2^\cresc ges4~ % 4a
  ges4 aes2^\mf^\< ges4
  f2^\f( ees
  des2 ces^\>)
  bes2^\mf ees^\> % 4b
  des1^\mp
  ees1(
  des1^\p^\dim)
  <ges, des'>1\fermata^\pp
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  gra -- cious
  _ _
  gra -- cious
  _ _ _
}

wordsBassSingle = \lyricmode {
  a -- men, __
  a -- men,
  a -- men,
  a -- men,
  a -- men.
}

wordsBassSep = \lyricmode {
  The Lord bless you and keep you: __
  The Lord make his face to shine up -- on you,
  to shine up -- on you and be gra -- cious
  and be gra -- cious un -- to you.

  The Lord lift up the light of his coun -- te -- nance up -- on you __

%  and give you peace, __
  and give you peace, __
  and give you peace.
  A -- men, __
  a -- men, __
  a -- men, __
  a -- men,
  a -- men,
  a -- men.
}

wordsBassMidi = \lyricmode {
  "The " "Lord " "bless " "you " "and " "keep " "you: " 
  "\nThe " "Lord " "make " "his " "face " "to " "shine " up "on " "you, "
  "\nto " "shine " up "on " "you " "and " "be " gra "cious "
  "\nand " "be " gra "cious " un "to " "you. "

  "\nThe " "Lord " "lift " "up " "the " "light "
  "\nof " "his " coun te "nance " up "on " "you, " 

  "\nand " "give " "you " "peace, " 
  "\nand " "give " "you " "peace, " 
  "\na" "men, " 
  "\na" "men, " 
  "\na" "men, "
  "\na" "men, "
  "\na" "men, "
  "\na" "men. "
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*9
  s2. s8 s-\markup \bold \italic {\dynamic p dolce sempre} % 1c+
  s1
  s1
  s2 s\< % 2a
  s2.\! s8 s\mp\<
  s4. s8\! s2
  s4 s2\> s4\!
  s1 % 2b
  s1
  s1
  s1
  s1 % 2c
  s2. s8 s\mp\cresc
  s1
  s1\mf
  s1 % 3a
  s1
  s1
  s1
  s1 % 3b
  s1
  s4 s2.\pp
  s4 s2.\<
  s4 s2.\p % 3c
  s1-\markup \bold \italic {poco rit.}
  s1\mp-\markup \bold {a tempo}
  s1
}

pianoRH = \relative {
  \global
  r8 bes <des bes'> ces r bes q bes
  r8 ces q ces r ces q4
  r8 bes q bes r bes q bes
  r8 bes <ees bes'> bes r bes q bes
  r8 ces <ees ces'> ces r des <ges des'> des % 1b
  r8 ees <aes des> ees r ees <aes ces> ees
  r8 f <aes ees'> f r ees <ges des'> ees
  r8 d <ges bes> f ees bes <ges' bes> f
  ees8 bes <ges' bes> bes, r ees q ees % 1c
  r8 bes <d bes'> bes r bes q bes
  e8 bes <des bes'> bes r bes q bes
  r8 bes <ees bes'> bes r bes q bes
  r8 ces <ees ces'> ces r des <ges des'> des % 2a
  r8 ees <aes des> ees r ees <aes ces> ees
  r8 f <aes ees'> f r ees <ges des'> ees
  r8 d <ges bes> f ees bes q f'
  ees8 bes q bes r ees q ees % 2b
  r8 bes <d bes'> bes r bes q bes
  r8 bes <ees bes'> bes r c <ees c'> c
  r8 ees <g ees'> ees r ees q ees
  r8 d <g d'> d r e <gis a> e % 2c
  r8 e <dis b'> b r b q b
  r8 b <e b'> b r cis <e a> cis
  r8 cis <d gis> c r c q c
  r8 c <ees aes> c r ces q ces % 3a
  r8 bes <d bes'> bes r bes q bes
  r bes <ees bes'> bes r bes q bes
  s1
  s2 r8 aes <des aes'> aes % 3b
  s1
  s2 r8 ges <ces ges'> ges
  s1
  s4. r8 r2 % 3c
  R1
  r8 bes <des bes'> bes r bes q bes
  r8 bes <ees bes> bes r bes q bes
  r8 ees <ges ees'> ees r ees <ges des'> ees % 4a
  r8 ees <ges ces> ees r ees q ees
  <aes ees'>8 f <aes des> f <ges des'> ees <ges ces> ees
  <ges ces>8 ees <f aes> des <f des'> des <f aes> des
  s1 % 4b
  s4. r8 r2
  r2 r4 s
  s1
  <ges bes>1\fermata
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1*24
  s1 % 3a
  s1
  s1
  r4 ees'( aes ees
  aes4) s2. % 3b
  r4 des,(ges des
  ges4) s2.
  r4 des(ges ees
  <ges bes>4~q8) s8 s2
  s1*3
  s1*4
  aes4 bes8 aes ges4 aes % 4b
  s1
  s2. ges4
  aes1
  s1
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1*24
  s1 % 3a
  s1
  s1
  r8 aes c aes c aes c aes
  c8 aes c aes s2 % 3b
  r8 ges bes ges bes ges bes ges
  aes ges aes ges s2
  r8 ges bes ges ees' bes ees bes
  s1*4
  s1*4
  aes'8 des,~4 ges2~ % 4b
  <ges bes>4~8 s8 s2
  s2. ges4~
  ges4 ees f2
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\p s-\markup \italic \bold "legato sempre" s2.
  s1*12
  s2 s8 s4.\< % 2a+
  s1\mp
  s1*7
  s4 s2.\cresc % 2c++
  s1\mf
  s1 % 3a
  s4. s8\dim s2
  s1\mp
  s2 s\dim
  s1\p % 3b
  s2 s\dim
  s1\pp
  s1
  s1 % 3c
  s1\cresc
  s1\mp
  s1
  s1\cresc % 4a
  s1\mf\cresc
  s1\f
  s2 s\>
  s1\mf\dim % 4b
  s1\p
  s1
  s1\dim
  s1\pp
}

pianoLHone = \relative {
  \global
  \voiceOne
  <ges bes des>2~ <f bes des>
  <ees ces' des>2~<des ces' des>
  <bes' des>1
  <bes ees>1
  <ges bes ees>2 <aes des>4(<ges des>) % 1b
  <ges ces>2~<ges ces ees>
  <aes f'>2 <ces ges'>
  <ges ges'>4. <aes f'>8 <bes ees>2
  q2~<ges ees'> % 1c
  <f bes d>1
  <ges bes des>2~<f bes des>
  <ees bes' ees>1
  <ges ces ees>2 <aes des>4~<ges des'> % 2a
  <ges ces>2~<ges ces ees>
  <f aes f'>2 <ges ces ges'>
  << {ges'4. f8} \new Voice {\voiceThree ges,8 aes bes4} >> <bes ees>2~
  q2~<ges ees'> % 2b
  <bes d>1
  <bes ees>2~<c ees>
  <ees g>1
  <d g>2~<e g>4~ e % 2c
  <b e fis>4~<b dis fis>~q2
  <gis b e>2~<a cis e>
  <gis cis e>1
  <aes ees'>1 % 3a
  << {<aes f'>1 s1} \new Voice {\voiceThree ees'4 d2.~ <g, bes d>4~<g bes ees>~<ges bes ees>2} >> % 2 bars
  <ges aes ees'>1
  <f aes c>4~<f aes des>~<fes aes des>2 % 3b
  <fes ges des'>1
  <ees ges bes>4~<ees ges ces>~<eeses ges ces>2
  <des ges des'>2 <c ees ges bes>
  <des ges bes des>1 % 3c
  <aes' ces ees>2.~<aes ces f>4
  <ges bes des ges>2 <f bes des>
  <ees bes' ees>1
  <ges ees'>1~ % 4a
  q4~<aes ees'>~<aes ces ees>2~
  <aes ees'>4 des~des ces
  <aes ces>1~
  aes8 f ges aes bes4 ces % 4b
  des4~8 r r2
  r2 r4 bes
  des4 ces aes des~
  <des, bes' des>1\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  ges,1~
  ges2 des'
  ges2 f
  ees2 des
  ces2 bes % 1b
  aes2 ges4 ges'
  f2 ees
  d2 des
  c2 ces % 1c
  bes2 aes
  ges2 f
  ees2 des4 des'
  ces2 bes % 2a
  aes2 ges
  f2 ees4 ees'
  d2 des
  c2 ces % 2b
  bes2 bes'4 aes
  g2 aes4. f8
  c'2 a
  b2 c % 2c
  b2 b,4 a
  gis2 a4. fis8
  cis'2 ais
  c2 ces % 3a
  bes2 aes
  g2 ges
  ges'2 ges,
  f2 fes % 3b
  fes'2 fes,
  ees2 eeses
  des2 c
  des1~ % 3c
  des1
  ges2 f
  ees2 des4 des'
  ces2 bes % 4a
  aes2 ges
  f4 f' ees2
  des2 ces
  bes2 % 4b
  ees
  des1
  ees1
  des2 des,
  ges1\fermata
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop 
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bassSingle
            \new Lyrics \lyricsto "bass" \wordsBassSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = sopranojoint \sopranoJoint
            \new Voice = altojoint    \altoJoint
            \new Lyrics \with {alignAboveContext = women} \lyricsto sopranojoint \wordsSopAbove
            \new Lyrics \with {alignBelowContext = women} \lyricsto sopranojoint \wordsSopJoint
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = "tenorjoint" \tenorJoint
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenorjoint \wordsTenorAbove
            \new Voice = "bassjoint" \bassJoint
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice = "sopranojoint" \sopranoJoint
            \new Voice = "altojoint"    \altoJoint
            \new Lyrics \lyricsto "sopranojoint" \wordsSopJoint
            \new Lyrics \with {alignAboveContext = women} \lyricsto "sopranojoint" \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = "tenorjoint" \tenorJoint
            \new Voice = "bassjoint" \bassJoint
            \new Lyrics \lyricsto bassjoint \wordsBass
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenorjoint \wordsTenorAbove
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
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
  \bookOutputSuffix "singlepage-sep"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoAll
            \addlyrics \wordsSopSep
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoAll
            \addlyrics \wordsAltoSep
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorAll
            \addlyrics \wordsTenorSep
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassAll
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoAll
            \addlyrics \wordsSopSep
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoAll
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorAll
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bassAll
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoAll
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoAll
            \addlyrics \wordsAltoSep
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorAll
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bassAll
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoAll
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoAll
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorAll
            \addlyrics \wordsTenorSep
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bassAll
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoAll
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoAll
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorAll
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassAll
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
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
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoAll
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice = "alto" \altoAll
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice = "tenor" \tenorAll
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice = "bass" \bassAll
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {midiInstrumentName = "acoustic grand piano"} <<
            \new Voice \pianoRH
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
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsSop
            \new Voice = soprano \sopranoAll
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoAll
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice = "tenor" \tenorAll
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice = "bass" \bassAll
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {midiInstrument = "acoustic grand piano"} <<
            \new Voice \pianoRH
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
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \sopranoAll
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice = "alto" \altoAll
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice \tenorAll
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice = "bass" \bassAll
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {midiInstrument = "acoustic grand piano"} <<
            \new Voice \pianoRH
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
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoAll
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrumentName = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoAll
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice = "tenor" \tenorAll
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice = "bass" \bassAll
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {midiInstrument = "acoustic grand piano"} <<
            \new Voice \pianoRH
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
