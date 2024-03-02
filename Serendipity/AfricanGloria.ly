\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "African Gloria"
  subtitle    = "Based on an African Folksong"
% subsubtitle = "subsubtitle"
% instrument  = "instrument"
  
% arrangement of following lines:

%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Benjamin Harlan"
% arranger    = "arranger"
% opus        = "opus"

% poet        = "poet"
% meter       = "meter"
% piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
}

drumPitchNames.mr = #'maracas
drumPitchNames.fc = #'cymbal

#(define shk-style
  '((cymbal        default  #f       -1)
    (maracas       cross    #f        1)))

midiDrumPitches.cymbal    = b
midiDrumPitches.maracas   = bes'
midiDrumPitches.lowbongo  = cis'
midiDrumPitches.highbongo = c'

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup{Rhythmically ( \rhythm { 2 } = \italic ca. 88)} 2=88
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*4
  \repeat volta 3 {
    \textMark \markup { \box "2c" } s1*4
    \textMark \markup { \box "3a" } s1*4
  }
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "4c" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "5c" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*4
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*4
  \textMark \markup { \box "9c" } s1*4
  \textMark \markup { \box "10a" } s1*4
  \textMark \markup { \box "10b" } s1*4
  \textMark \markup { \box "10c" } s1*4
  \textMark \markup { \box "11a" } s1*4
  \textMark \markup { \box "11b" } s1*4
  \textMark \markup { \box "11c" } s1*5
  \textMark \markup { \box "12a" } s1*6
}

soprano = \relative c'' {
  \global
  r1*8
  \repeat volta 3 {
    a2^\markup{3rd time: Add Alto, Tenor}^\markup{2nd time: Add Bass}^\markup{1st time: Soprano only} a4 bes % 2c
    r1
    g2 c4 a
    r4 f d c
    a'2 4 bes
    r1
    g2 c4 f,
    r1
  }
  r1 % 3b
  r4 d2 4
  c2 r
  r1
  r1 % 4a
  r4 d2 d4
  c2 r
  r1
  a'2 4 bes % 4b
  r1
  g2 c4 a
  r4 f d c
  a'2 4 bes % 4c
  r1
  g2 c4 f,
  r1
  a2 4 bes % 5a
  r1
  g2 c4 a
  r4 f d c
  a'2 4 bes % 5b
  r1
  g2 c4 f,
  r1
  a2 4 bes % 5c
  r1
  g2 c4 a
  r4 f d c
  a'2 4 bes % 6a
  r2 r4 bes
  g2 c4 f, \bar "||" \key g \major
  r1
  b2 4 c % 6b
  r1
  a2 d4 b
  r4 g e d
  b'2 4 c % 6c
  r2 r4 c
  a2 d4 g,
  r1
  r1 % 7a
  e'2 4 4
  r2 b
  a2 4 b
  r1 % 7b
  e4 e e d~
  d4 d b2
  a2. b4~
  b2 r % 7c
  e2 4 d
  r2 b
  a2 4 b
  r1 % 8a
  e4 e e d~
  d4 d b2
  d2. d4~
  d1~ % 8b
  d1~
  d1 \bar "||" \key aes \major
  r1
  r1 % 9a
  c2 4 des
  r1
  bes2 ees4 c
  r4 aes f ees % 9b
  c'2 4 des
  r1
  bes2 ees4 aes,
  r1 % 9c
  c2 4 des
  r1
  bes2 ees4 c
  r4 aes f ees % 10a
  c'2 c4 des
  r2 r4 des
  bes2 ees4 aes,
  r1 % 10b
  r1
  f'2 4 ees
  r2 c
  bes2 4 c % 10c
  r1
  f4 f f ees~
  ees4 ees c2
  bes2. aes4~ % 11a
  aes2 r
  f'2 4 ees
  r2 c
  bes2 4 c % 11b
  r1
  des4 4 4 c~
  c4 c aes2
  g2. aes4 % 11c
  r1
  r1
  r1
  r1
  r1 % 12a
  des4 4 4 c~
  c4 c aes2
  g1~
  g1
  aes4 r r2
  \bar "|."
}

wordsAll = \lyricmode {
  \repeat volta 3 {
    Glo- ri- a, in ex- cel- sis de- o! % 2c
    Glo- ri- a, Christ is born! % 3a
  }
  Glo- ri- a. % 3b+
  Glo- ri- a, % 4a+
  Glo- ri- a, in ex- cel- sis de- o! % 4b
  Glo- ri- a, Christ is born! % 4c
  Glo- ri- a, in ex- cel- sis de- o! % 5a
  Glo- ri- a, Christ is born! % 5b
  an- gels sing, % 5c
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  an- gels sing, % 6b
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 7a+
  Glo- ry to God __ in the high- est! __ % 7b
  Peace on earth, good- will to men, % 7c
  Glo- ry to God __ in the high- est! __ % 8a+
  Glo- ri- a, in ex- cel- sis de- o! % 9a
  Glo- ri- a, Christ is born! % 9b+
  an- gels sing, % 9c+
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 10b++
  Glo- ry to God __ in the high- est! % 10c++
  Peace on earth, good- will to men, % 11a++
  Glo- ry to God __ in the high- est! % 11b++
  Glo- ry to God __ in the high- __ est! % 12a+
}


wordsSopSingle = \lyricmode {
  \repeat volta 3 {
    Glo- ri- a, in ex- cel- sis de- o! % 2c
    Glo- ri- a, Christ is born! % 3a
  }
  Glo- ri- a. % 3b+
  Glo- ri- a, % 4a+
  Glo- ri- a, in ex- cel- sis de- o! % 4b
  Glo- ri- a, Christ is born! % 4c
  Glo- ri- a, in ex- cel- sis de- o! % 5a
  Glo- ri- a, Christ is born! % 5b
  an- gels sing, % 5c
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  an- gels sing, % 6b
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 7a+
  Glo- ry to God __ in the high- est! __ % 7b
  Peace on earth, good- will to men, % 7c
  Glo- ry to God __ in the high- est! __ % 8a+
  Glo- ri- a, in ex- cel- sis de- o! % 9a
  Glo- ri- a, Christ is born! % 9b+
  an- gels sing, % 9c+
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 10b++
  Glo- ry to God __ in the high- est! % 10c++
  Peace on earth, good- will to men, % 11a++
  Glo- ry to God __ in the high- est! % 11b++
  Glo- ry to God __ in the high- __ est! % 12a+
}


wordsSopMidi = \lyricmode {
  "Glo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a. " % 3b+
  "\nGlo" ri "a, " % 4a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 4b
  "\nGlo" ri "a, " "Christ " "is " "born! " % 4c
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 5a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 5b
  "\nan" "gels " "sing, " % 5c
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nan" "gels " "sing, " % 6b
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7a+
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! "  % 7b
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7c
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! "  % 8a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 9a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 9b+
  "\nan" "gels " "sing, " % 9c+
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 10b++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 10c++
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 11a++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11b++
  "\nGlo" "ry " "to " "God "  "in " "the " high  "est! " % 12a+
}

alto = \relative c' {
  \global
  r1*8
  \repeat volta 3 {
    c2 c4 d % 2c
    r1
    c2 4 4
    r4 d bes c
    c2 4 d % 3a
    r1
    c2 4 4
    r1
  }
  r1 % 3b
  r4 d2 4
  c2 r
  r1
  r1 % 4a
  r4 d2 4
  c2 r
  r1
  f2 4 4 % 4b
  r1
  e2 g4 f
  r4 d bes c
  f2 4 4 % 4c
  r1
  e2 c4 c
  r1
  a'2 4 bes % 5a
  r1
  g2 c4 a
  r4 f d c
  a'2 4 bes % 5b
  r1
  g2 c4 f,
  r1
  c2 4 d % 5c
  r1
  c2 4 4
  r4 d bes c
  c2 4 d % 6a
  r2 r4 d
  c2 4 4 \bar "||" \key g \major
  r1
  d2 4 e % 6b
  r1
  d2 4 4
  r4 e c d
  d2 4 e % 6c
  r2 r4 e
  d2 4 4
  r1
  r1 % 7a
  g2 4 4
  r2 g
  fis2 4 g
  r1 % 7b
  g4 g g g~
  g4 4 2
  fis2. g4~
  g2 r % 7c
  g2 4 4
  r2 g
  fis2 4 g
  r1 % 8a
  g4 g g g~
  g4 g4 2
  d2. d4~
  d1~ % 8b
  d1~
  d1 \bar "||" \key aes \major
  r1
  r1 % 9a
  ees2 ees4 f
  r1
  ees2 4 4
  r4 f des ees % 9b
  ees2 4 f
  r1
  ees2 4 4
  r1 % 9c
  ees2 4 f
  r1
  ees2 4 4
  r4 f des ees % 10a
  ees2 4 f
  r2 r4 f
  ees2 4 4
  r1 % 10b
  r1
  aes2 4 4
  r2 aes
  g2 4 aes % 10c
  r1
  aes4 4 4 4~
  aes4 4 2
  g2. aes4~ % 11a
  aes2 r
  aes2 4 4
  r2 aes
  g2 4 aes % 11b
  r1
  f4 f f aes~
  aes4 aes c,2
  ees2. aes,4 % 11c
  r1
  r1
  r1
  r1
  r1 % 12a
  f'4 f f ees~
  ees4 ees ees2
  ees1~
  ees1
  ees4 r r2
  \bar "|."
}



wordsAltoSingle = \lyricmode {
  \repeat volta 3 {
    Glo- ri- a, in ex- cel- sis de- o! % 2c
    Glo- ri- a, Christ is born! % 3a
  }
  Glo- ri- a. % 3b+
  Glo- ri- a, % 4a+
  Glo- ri- a, in ex- cel- sis de- o! % 4b
  Glo- ri- a, Christ is born! % 4c
  Glo- ri- a, in ex- cel- sis de- o! % 5a
  Glo- ri- a, Christ is born! % 5b
  an- gels sing, % 5c
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  an- gels sing, % 6b
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 7a+
  Glo- ry to God __ in the high- est! __ % 7b
  Peace on earth, good- will to men, % 7c
  Glo- ry to God __ in the high- est! __ % 8a+
  Glo- ri- a, in ex- cel- sis de- o! % 9a
  Glo- ri- a, Christ is born! % 9b+
  an- gels sing, % 9c+
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 10b++
  Glo- ry to God __ in the high- est! % 10c++
  Peace on earth, good- will to men, % 11a++
  Glo- ry to God __ in the high- est! % 11b++
  Glo- ry to God __ in the high- __ est! % 12a+
}

wordsAltoMidi = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  "Glo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a. " % 3b+
  "\nGlo" ri "a, " % 4a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 4b
  "\nGlo" ri "a, " "Christ " "is " "born! " % 4c
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 5a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 5b
  "\nan" "gels " "sing, " % 5c
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nan" "gels " "sing, " % 6b
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7a+
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! "  % 7b
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7c
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! "  % 8a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 9a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 9b+
  "\nan" "gels " "sing, " % 9c+
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 10b++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 10c++
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 11a++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11b++
  "\nGlo" "ry " "to " "God "  "in " "the " high  "est! " % 12a+
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*8
  \repeat volta 3 {
    s1\mp % 2c
    s1
    s1
    s1
    s1*4 % 3a
  }
  s1*32
  s1\mf % 6b
  s1*8
  s1\f % 7a+
  s1*19
  s1\mf % 9a+
  s1*16
  s1\f % 10b++
  s1*11
  s1\mf % 11c++
  s1*7
  s1\mp % 12a+
  s1*4
}

tenor = \relative c {
  \global
  r1*8
  \repeat volta 3 {
    f2 f4 f % 2c
    r1
    e2 g4 f
    r4 bes f g
    f2 4 4 % 3a
    r1
    e2 g4 a
    r1
  }
  a2 4 bes % 3b
  r1
  g2 c4 a
  r4 f d' c
  a2 4 bes % 4a
  r1
  g2 c4 f,
  r1
  c'2 4 d % 4b
  r1
  c2 e4 c
  r4 bes f g
  c2 4 d % 4c
  r1
  c2 g4 a
  r1
  f2 4 bes, % 5a
  r1
  c2 e4 f
  r4 d bes c
  f2 4 bes, % 5b
  r1
  c2 e4 f
  r1
  f2 4 4 % 5c
  r1
  e2 g4 f
  r4 bes f g
  f2 4 4 % 6a
  r2 r4 f
  e2 g4 a \bar "||" \key g \major
  r1
  g2 4 4 % 6b
  r1
  fis2 a4 g
  r4 c g a
  g2 4 4 % 6c
  r2 r4 g
  fis2 a4 b
  r1
  r1 % 7a
  c2 4 d
  r2 d
  d2 4 4
  r2 b4 b % 7b
  c4 c c b~
  b4 b d2
  d2. 4~
  d2 r % 7c
  c2 4 d
  r2 d
  d2 4 4
  r2 b4 b % 8a
  c4 c c b~
  b4 b d2
  d2. d4~
  d1~ % 8b
  d1~
  d1 \bar "||" \key aes \major
  r1
  r1 % 9a
  aes2 4 4
  r1
  g2 bes4 aes
  r4 des aes bes % 9b
  aes2 4 4
  r1
  g2 bes4 c
  r1 % 9c
  aes2 4 4
  r1
  g2 bes4 aes
  r4 des aes bes % 10a
  aes2 4 4
  r2 r4 aes
  g2 bes4 c
  r1 % 10b
  r1
  des2 des4 ees
  r2 ees
  ees2 4 4 % 10c
  r2 c4 c
  des4 4 4 c~
  c4 c ees2
  ees2. ees4~ % 11a
  ees2 r
  des2 4 ees
  r2 ees
  ees2 4 4 % 11b
  r1
  r1
  r1
  r1 % 11c
  r1
  des4 des des c~
  c4 c aes2
  g2. aes4
  r1 % 12a
  aes4 4 4 4~
  aes4 4 c2
  bes1~
  bes1
  c4 r r2
  \bar "|."
}



wordsTenorSingle = \lyricmode {
  \repeat volta 3 {
    Glo- ri- a, in ex- cel- sis de- o! % 2c
    Glo- ri- a, Christ is born! % 3a
  }
  Glo- ri- a in ex -- cel -- sis de -- o! % 3b+
  Glo- ri- a, Christ is born! % 4a+
  Glo- ri- a, in ex -- cel -- sis de- o! % 4b
  Glo- ri- a, Christ is born! % 4c
  Glo- ri- a, in ex- cel- sis de- o! % 5a
  Glo- ri- a, Christ is born! % 5b
  an- gels sing, % 5c
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  an- gels sing, % 6b
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 7a+
  Sing -- ing, Glo- ry to God __ in the high- est! __ % 7b
  Peace on earth, good- will to men, % 7c
  Sing -- ing Glo- ry to God __ in the high- est! __ % 8a+
  Glo- ri- a, in ex- cel- sis de- o! % 9a
  Glo- ri- a, Christ is born! % 9b+
  an- gels sing, % 9c+
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 10b++
  Sing -- ing Glo- ry to God __ in the high- est! % 10c++
  Peace on earth, good- will to men, % 11a++
  Glo- ry to God __ in the high- est! % 11c++
  Glo- ry to God __ in the high- __ est! % 12a+
}

wordsTenorMidi = \lyricmode {
  "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "Glo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 3b
  "\nGlo" ri "a, " "Christ " "is " "born! " % 4a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 4b
  "\nGlo" ri "a, " "Christ " "is " "born! " % 4c
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 5a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 5b
  "\nan" "gels " "sing, " % 5c
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nan " "gels " "sing, " % 6a
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7a+
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! "  % 7b
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7c
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! "  % 8a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 9a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 9b+
  "\nan " "gels " "sing, " % 9c+
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 10b++
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! " % 10c++
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 11a++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11b++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11c++
  "\nGlo" "ry " "to " "God "  "in " "the " high  "est! " % 12a+
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  r1*8
  \repeat volta 3 {
    f2 f4 bes, % 2c
    r1
    c2 e4 f
    r4 bes, f' e
    f2 4 bes, % 3a
    r1
    c2 e4 f
    r1
  }
  f2 4 bes, % 3b
  r1
  e2 c4 f
  r4 d bes c
  f2 4 bes, % 4a
  r1
  e2 c4 f
  r1
  r1 % 4b
  r4 bes,2 bes4
  c2 r
  r4 bes f' e
  r1 % 4c
  r4 bes2 4
  c2 e4 f
  r1
  f2 4 bes, % 5a
  r1
  c2 e4 f
  r4 d bes c
  f2 4 bes, % 5b
  r1
  c2 e4 f
  r4 d c d
  f2 4 bes, % 5c
  r1
  c2 e4 f
  r4 bes, f' e
  f2 4 bes, % 6a
  r2 r4 bes
  c2 e4 f \bar "||" \key g \major
  r4 d e d
  g2 4 c, % 6b
  r1
  d2 fis4 g
  r4 c, g' fis
  g2 4 c, % 6c
  r2 r4 c
  d2 fis4 g
  r1
  r1 % 7a
  c2 4 b
  r2 g2
  d2 4 g
  r2 g4 g % 7b
  c,4 c c g'~
  g4 g g2
  d2. g4~
  g2 r % 7c
  c2 4 b
  r2 g
  d2 4 g
  r2 g4 g % 8a
  c,4 c c g'~
  g4 g4 2
  d2. d4~
  d1~ % 8b
  d1~
  d1 \bar "||" \key aes \major
  r1
  r1 % 9a
  aes'2 4 des,
  r1
  ees2 g4 aes
  r4 des, aes' g % 9b
  aes2 4 des,
  r1
  ees2 g4 aes
  r4 f ees f % 9c
  aes2 4 des,
  r1
  ees2 g4 aes
  r4 des, aes' g % 10a
  aes2 4 des,
  r2 r4 des
  ees2 g4 aes
  r1 % 10b
  r1
  des2 4 c
  r2 aes
  ees2 4 aes % 10c
  r2 aes4 aes
  des4 4 4 aes~
  aes4 4 2
  ees2. aes4~ % 11a
  aes2 r
  des2 4 c
  r2 aes
  ees2 4 aes % 11b
  r1
  r1
  r1
  r1 % 11c
  r1
  f4 f f aes~
  aes4 4 c,2
  ees2. aes,4
  r1 % 12a
  des4 4 4 ees~
  ees4 4 2
  ees1~
  ees1
  aes,4 r r2
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

wordsBass = \lyricmode {
  \repeat volta 3 { \repeat unfold 15 \skip 1 }
  Glo- ri- a, in ex- cel- sis de- o!
  Glo- ri- a, Christ is born!
  Glo- ri- a,
  sis de- o!
  Glo- ri- a, is born!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  O hear the
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  O hear the
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  Sing- ing,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Sing- ing,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  O hear the
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  Sing- ing,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Glo- ry to God __ in the high- est!
}



wordsBassSingle = \lyricmode {
  \repeat volta 3 {
    Glo- ri- a, in ex- cel- sis de- o! % 2c
    Glo- ri- a, Christ is born! % 3a
  }
  Glo- ri- a in ex -- cel -- sis de -- o! % 3b+
  Glo- ri- a, Christ is born! % 4a+
  Glo- ri- a, sis de- o! % 4b
  Glo- ri- a, is born! % 4c
  Glo- ri- a, in ex- cel- sis de- o! % 5a
  Glo- ri- a, Christ is born! % 5b
  O hear the an- gels sing, % 5c
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  O hear the an- gels sing, % 6b
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 7a+
  Sing -- ing, Glo- ry to God __ in the high- est! __ % 7b
  Peace on earth, good- will to men, % 7c
  Sing -- ing Glo- ry to God __ in the high- est! __ % 8a+
  Glo- ri- a, in ex- cel- sis de- o! % 9a
  Glo- ri- a, Christ is born! % 9b+
  O hear the an- gels sing, % 9c+
  “Hal- le- lu! for Christ is born this day in Beth- le- hem.”
  Peace on earth, good- will to men, % 10b++
  Sing -- ing Glo- ry to God __ in the high- est! % 10c++
  Peace on earth, good- will to men, % 11a++
  Glo- ry to God __ in the high- est! % 11c++
  Glo- ry to God __ in the high- __ est! % 12a+
}

wordsBassMidi = \lyricmode {
  "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "Glo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 2c
  "\nGlo" ri "a, " "Christ " "is " "born! " % 3a
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 3b
  "\nGlo" ri "a, " "Christ " "is " "born! " % 4a
  "\nGlo" ri "a, " "sis " de "o! " % 4b
  "\nGlo" ri "a, " "is " "born! " % 4c
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 5a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 5b
  "\nO " "hear " "the " an "gels " "sing, " % 5c
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nO " "hear " "the " an "gels " "sing, " % 6a
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7a+
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! "  % 7b
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 7c
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! "  % 8a+
  "\nGlo" ri "a, " "in " ex cel "sis " de "o! " % 9a
  "\nGlo" ri "a, " "Christ " "is " "born! " % 9b+
  "\nO " "hear " "the " an "gels " "sing, " % 9c+
  "\n“Hal" le "lu! " "for " "Christ " "is " "born " "this " "day " "in " Beth le "hem.” "
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 10b++
  "\nSing" "ing, " Glo "ry " "to " "God "  "in " "the " high "est! " % 10c++
  "\nPeace " "on " "earth, " good "will " "to " "men, " % 11a++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11b++
  "\nGlo" "ry " "to " "God "  "in " "the " high "est! " % 11c++
  "\nGlo" "ry " "to " "God "  "in " "the " high  "est! " % 12a+
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*8
  \repeat volta 3 {
    s1\mp
    s1
    s1
    s1
    s1*4 % 3a
  }
  s1*31
  s4 s2.\mf % 6a+++
  s1*9
  s1\f % 7a+
  s1*19
  s1\mf % 9a+
  s1*16
  s1\f % 10b++
  s1*15
  s1\mf % 11c++
  s1*3
  s1\mp % 12a+
  s1*4
}

pianoRH = \relative c' {
  \global
  r1
  r1
  r1
  r1
  r1 % 2b
  r1
  r1
  r1
  \repeat volta 3 {
    <c f a>4 r q <d f bes> % 2c
    r1
    <c e g>4 r <c g' c> <c f a>
    r4 <bes d f> <f bes d> <e g c>
    <c' f a>4 r q <d f bes> % 3a
    r1
    <c e g>2 <c g' c>4 <a c f>
    r1
  }
  <c f a>4 r q <d f bes> % 3b
  r1
  <c e g>4 r <c g' c> <c f a>
  r4 <bes d f> <f bes d> <e g c>
  <c' f a>4 r q <d f bes> % 4a
  r1
  <c e g>2 <c g' c>4 <a c f>
  r1
  <c f a>4 r q <d f bes> % 4b
  r1
  <c e g>4 r <c g' c> <c f a>
  r4 <bes d f> <f bes d> <e g c>
  <c' f a>4 r q <d f bes> % 4c
  r1
  <c e g>2 <c g' c>4 <a c f>
  r1
  <c f a>4 r q <d f bes> % 5a
  r1
  <c e g>4 r <c g' c> <c f a>
  r4 <bes d f> <f bes d> <e g c>
  <c' f a>4 r q <d f bes> % 5b
  r1
  <c e g>2 <c g' c>4 <a c f>
  r1
  <c f a>4 r q <d f bes> % 5c
  r1
  <c e g>4 r <c g' c> <c f a>
  r4 <bes d f> <f bes d> <e g c>
  <c' f a>4 r q <d f bes> % 6a
  r1
  <c e g>2 <c g' c>4 <a c f> \bar "||" \key g \major
  r1
  <d g b>4 r q <e g c> % 6b
  r1
  <d fis a>4 r <d a' d> <d g b>
  r4 <c e g> <g c e> <fis a d>
  <d' g b>4 r q <e g c> % 6c
  r1
  <d fis a>2 <d a' d>4 <b d g>
  r1
  r1 % 7a
  <g c e>2 q4 <g d' g>
  r4 <g c d> <b d g>2
  <d fis a>2 q4 <d g b>
  r4 <d g c> <d g d'>2 % 7b
  <g, c e>4 q q <g d' g>4~
  q2 q
  <d' fis a>2 q4 <d g b>~
  q4 d e d % 7c
  <g, c e>2 q4 <g d' g>
  r4 <g c d> <b d g>2
  <d fis a>2 q4 <d g b>
  r4 <d g c> <d g d'>2 % 8a
  <g, c e>4 q q <g d' g>~
  q2 q
  <a c e>2 <b d fis>4 <c e g>
  r4 <a c e>4 <b d fis>2 % 8b
  <c e g>4 <b d fis> <a c e> <c e g>~
  q4 <a c e> <b d fis>2 \bar "||" \key aes \major
  <bes des ees g>2 r
  r1 % 9a
  <ees aes c>4 r q <f aes des>
  r1
  <ees g bes>4 r <ees bes' ees> <ees aes c>
  r4 <des f aes> <aes des f> <g bes ees> % 9b
  <ees' aes c>4 r q <f aes des>
  r1
  <ees g bes>2 <ees bes' ees>4 <c ees aes>
  r1 % 9c
  <ees aes c>4 r q <f aes des>
  r1
  <ees g bes>4 r <ees bes' ees> <ees aes c>
  r4 <des f aes> <aes des f> <g bes ees> % 10a
  <ees' aes c> r q <f aes des>
  r1
  <ees g bes>2 <ees bes' ees>4 <c ees aes>
  r1 % 10b
  r1
  <aes des f>2 q4 <aes ees' aes>
  r4 <aes des ees> <c ees aes>2
  <ees g bes>2 q4 <ees aes c> % 10c
  r4 <ees aes des> <ees aes ees'>2
  <aes, des f>4 q q <aes ees' aes>~
  q2 q
  <ees' g bes>2 q4 <ees aes c>~ % 11a
  q4 ees f ees
  <aes, des f>2 q4 <aes ees' aes>
  r4 <aes des ees> <c ees aes>2
  <ees g bes>2 q4 <ees aes c> % 11b
  r4 <ees aes des> <ees aes ees'>2
  <f aes des>2 q4 <ees aes c>~
  q4 q <c ees aes>2
  <bes ees g>2. <c ees aes>4 % 11c
  r1
  <f aes des>2 q4 <ees aes c>~
  q4 q <c ees aes>2 <bes ees g>2. <c ees aes>4
  r1 % 12a
  <f aes des>2 q4 <ees aes c>~
  q4 q <c ees aes>2
  <bes ees g>1~
  q1
  <aes c ees aes>4 r r2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1
  s1
  s1
  s1 % 2b
  s1
  s1
  s1
  \repeat volta 3 {
    s1\mp % 2c
    s1
    s1
    s1
    s1*4 % 3a
  }
  s1*31
  s4 s2.\mf % 6a+++
  s1*8
  s1\< % 7a
  s1\f
  s1*19
  s1\mf % 9a+
  s1*15
  s1\< % 10b+
  s1\f
  s1*11
  s1\mf % 11b++
  s1*7
  s1\mp % 12a+
  s1
  s1
  s1
  s1
}

pianoLH = \relative c, {
  \global
  \oneVoice
  f4-. r f'-. bes,-.
  r4 bes-. bes,2
  c4-. r e-. f-.
  r2 bes4-. c-.
  f,4-. r f'-. bes,-. % 2b
  r4 bes-. bes,2
  c4-. r e-. f-.
  r4 d c d
  \repeat volta 3 {
    f4 r f' bes, % 2c
    r4 bes bes,2
    c4 r e f
    r2 bes4 c
    f,4 r f' bes, % 3a
    r4 bes bes,2
    c4 r e f
    r4 d c d
  }
  f4 r f' bes, % 3b
  r4 bes bes,2
  c4 r e f
  r2 bes4 c
  f,4 r f' bes, % 4a
  r4 bes bes,2
  c4 r e f
  r4 d c d
  f4 r f' bes, % 4b
  r4 bes bes,2
  c4 r e f
  r2 bes4 c
  f,4 r f' bes, % 4c
  r4 bes bes,2
  c4 r e f
  r4 d c d
  f4 e f' bes, % 5a
  r4 bes bes,2
  c4 r e f
  r2 bes4 c
  f,4 e f' bes, % 5b
  r4 bes bes,2
  c4 r e f
  r4 d c d
  f4 e f' bes, % 5c
  r4 bes bes,2
  c4 r e f
  r2 bes4 c
  f,4 r f' bes, % 6a
  r4 bes bes,2
  c4 r e f \bar "||" \key g \major
  r4 d e d
  g4 r g' c, % 6b
  r4 c c,2
  d4 r fis g
  r2 c4 d
  g,4 r g' c, % 6c
  r4 c c,2
  d4 r fis g
  r4 d' g d
  e4 d b g % 7a  
  <c, c'>2 q4 <b b'>
  r4 <a a'> <g g'>2
  <d' d'>2 q4 <g, g'>
  r4 <a a'> <b b'>2 % 7b
  <c c'>4 q q <b b'>~
  q2 q
  <d d'>2 q4 <g g'>~
  q4 <d d'> <e e'> <d d'> % 7c
  <c c'>2 q4 <b b'>
  r4 <a a'> <g g'>2
  <d' d'>2 q4 <g g,>
  r4 <a, a'> <b b'>2 % 8a
  <c c'>4 q q <b b'>4~
  q2 q
  <d d'>2 q4 q
  r4 q q2 % 8b
  q4 q q q
  q2. q4 \bar "||" \key aes \major
  <ees ees'>2 q4 <c c'>
  <f f'>4 <ees ees'> <c c'> <bes bes'> % 9a
  <aes aes'>4 r aes'' des,
  r4 des des,2
  ees4 r g aes
  r2 des,4 ees % 9b
  <aes, aes'>4 r aes'' des,
  r4 des des,2
  ees4 r g aes
  r4 f ees f % 9c
  <aes, aes'>4 r aes'' des,
  r4 des des,2
  ees4 r g aes
  r2 des,4 ees % 10a
  <aes, aes'>4 r aes'' des,
  r4 des des,2
  ees4 r g aes
  r4 ees' aes ees % 10b
  f4 ees c aes
  <des, des'>2 q4 <c c'>
  r4 <bes bes'> <aes aes'>2
  <ees' ees'>2 q4 <aes, aes'> % 10c
  r4 <bes bes'> <c c'>2
  <aes aes'>4 q q <c c'>~
  q2 q
  <ees ees'>2 q4 <aes aes'>~ % 11a
  q4 <ees ees'> <f f'> <ees ees'>
  <des des'>2 q4 <c c'>
  r4 <bes bes'> <aes aes'>2
  <ees' ees'>2 q4 <aes, aes'> % 11b
  r4 <bes bes'> <c c'>2
  <des des'>2 q4 <ees ees'>~
  q4 q2 q4
  q2. <aes, aes'>4 % 11c
  r4 <bes bes'> <c c'>2
  <des des'>2 4 <ees ees'>~
  q4 q2 q4
  q2. <aes, aes'>4
  r4 <bes bes'> <c c'>2 % 12a
  <des des'>2 q4 <ees ees'>~
  q4 q2 q4
  q2 q4 q~
  q4 q2 <ees, ees'>4
  <aes aes'>4 r r2
  \bar "|."
}

maracas = \drummode {
  \voiceOne
  R1*8
  \repeat volta 3 {
    mr8^\markup{Shaker \italic "add 3rd time"} 8 8 8 8 8 4
    r2 mr8 8 8 8
    mr8 8 8 8 8 8 4
    r2 mr8 8 8 8
    mr8 8 8 8 8 8 4
    r2 mr8 8 8 8
    mr8 8 8 8 8 8 4
    r2 mr8 8 8 8
  }
  \repeat unfold 27 {
    mr8 mr mr mr mr mr mr4
    r2 mr8 mr mr mr
  }
  mr8 mr mr mr mr mr mr4 % 8a++
  r1
  r2 \repeat tremolo 16 { mr32 } % 8b
  r1
  r2 \repeat tremolo 16 { mr32 }
  r1
  \repeat tremolo 32 { mr32 }
  mr8 8 8 8 8 8 4
  \repeat unfold 18 {
    r2 mr8 8 8 8
    mr8 8 8 8 8 8 4
  }
%  mr8 8 8 8 8 8 4 % 12a
  r2 mr8 8 8 8 % 12a+
  mr8 8 8 8 8 8 4
  mr8 8 8 8 8 8 8 8
  \repeat tremolo 32 { mr32 }
  mr4 r r2
}

cymbals = \drummode {
  \stemDown \voiceTwo
  s1*8
  \repeat volta 3 {
    R1_\markup{Finger Cymbals \italic "add 2nd time"}
    R1
    R1
    r2 fc
    R1
    r2 fc
    R1
    r2 fc
  }
  \repeat unfold 27 {
    R1
    r2 fc
  }
  R1 % 8a++
  R1
  R1
  r4 fc fc r
  R1
  r4 fc fc r
  R1
  r2 fc % 9a
  r2 r
  \repeat unfold 17 {
    r2 fc
    r2 r
  }
  r2 r2 % 12a
  r2 fc % 12a+
  r2 r
  r2 r
  r2 fc4 fc
  fc4 r r2
  \bar "|."
}

bongos = \drummode {
  R1^\markup "Bongos (or Congas)" | R | R | r8 boh8 boh4 r2 |
  R1 | R | R | r8 boh8 boh4 r2 |
  \repeat volta 3 {
    bol8 bol r bol boh bol r bol
    r8 bol boh4 bol r
    bol8 bol r bol boh bol r bol
    r8 bol boh4 bol r
    bol8 bol r bol boh bol r bol
    r8 bol boh4 bol r
    bol8 bol r bol boh bol r bol
    r8 bol boh4 bol r
  }
  \repeat unfold 27 {
    bol8 bol r bol boh bol r bol
    r8 bol boh4 bol r
  }
  bol8 bol r bol boh bol r bol % 8a++
  <bol boh>4-> q-> q-> q->
  q4 q-> q-> q-> % 8b
  q4-> q q-> q->
  q4 q-> q-> q
  q4-> q q-> q->
  \repeat tremolo 16 { boh32 bol } % 9a %%% FIX
  bol8 bol r bol boh bol r bol
  \repeat unfold 18 {
    r8 bol boh4 bol r
    bol8 bol r bol boh bol r bol
  }
%  bol8 bol r bol boh bol r bol % 12a
  r8 bol boh4 bol r % 12a+
  bol8 bol r bol boh bol r bol
  bol8 bol r bol boh bol r bol
  \repeat tremolo 32 { boh32 }
  q4 r r2
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice { \vo \soprano }
            \addlyrics \wordsAll
            \new Voice { \vt \alto    }
          >>
                                % Joint tenor/bass staff
%          \new Lyrics = "tenor"
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice { \vo \tenor }
            \new Voice { \vt \bass  }
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice { \vo \soprano }
            \addlyrics \wordsAll
            \new Voice { \vt \alto    }
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice { \vo \soprano }
            \addlyrics \wordsAll
            \new Voice { \vt \alto    }
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice { \vo \tenor }
            \new Voice { \vt \bass  }
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"    
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff  #4/7
            \clef "treble_8"    
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \magnifyStaff #4/7
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } <<
          \magnifyStaff #4/7
          \bongos
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff  #4/7
            \clef "treble_8"    
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \magnifyStaff #4/7
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } <<
          \magnifyStaff #4/7
          \bongos
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"    
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \magnifyStaff #4/7
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } <<
          \magnifyStaff #4/7
          \bongos
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
    \unfoldRepeats
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff  #4/7
            \clef "treble_8"    
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"    
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \magnifyStaff #4/7
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } <<
          \magnifyStaff #4/7
          \bongos
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
    \unfoldRepeats
%    \articulate
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
 <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
}
<<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
        <<
          \new DrumVoice \maracas
          \new DrumVoice \cymbals
        >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
%    \articulate
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
 <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice = "soprano" \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
}
<<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
            <<
              \new DrumVoice \maracas
              \new DrumVoice \cymbals
            >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
%    \articulate
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
 <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice = "soprano" \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto

          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
}
<<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
            <<
              \new DrumVoice \maracas
              \new DrumVoice \cymbals
            >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
    \unfoldRepeats
%    \articulate
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
 <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice = "soprano" \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
            }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
}
<<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
        \new DrumStaff \with {
          \override StaffSymbol.line-count = #1
          instrumentName = "Maracas/FingerCymbals"
          drumStyleTable = #(alist->hash-table shk-style)
          drumPitchTable = #(alist->hash-table midiDrumPitches)
        }
            <<
              \new DrumVoice \maracas
              \new DrumVoice \cymbals
            >>
        \new DrumStaff \with {
          instrumentName = "Bongos"
          shortInstrumentName = "Bng"
          \override StaffSymbol.line-count = #2
          drumStyleTable = #bongos-style
          \remove Time_signature_engraver
          \hide Stem
          \override Stem.Y-extent = ##f
        } { \bongos }
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
