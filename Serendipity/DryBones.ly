\version "2.25.16"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dry Bones"
  subtitle    = "based on Ezekiel 37:1-10"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Spiritual"
  arranger    = "Arr. Mark Hayes (with additional music)"
%  opus        = "opus"

  poet        = "Additional lyrics by Mark Hayes"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

ht = {
  \set Score.tempoHideNote = ##t
}

st = {
  \unset Score.tempoHideNote
}

TempoTrack = {
  \tempo Spirited 4=138
  s1*3
  \ht \tempo 4=130 \st
  s1^\markup\bold\italic rit.
  \tempo "Moderately, with freedom" 4=112
  s1*7
  \ht \tempo 4=105 s1 % 3a++
  \tempo 4=112
  s1*3
  \tempo 4=105 s1 % 3c
  \st \tempo Slower 4=88
  s1*5
  \ht s2 \tempo 4=30 s4 \tempo 4=88 s % 4b
  \st \tempo Slower 4=72 s1
  \tempo Faster 4=144
  s1*21
  \tempo Moderately 4=120 % 7a
  s1*12
  \ht \tempo 4=110 \st s1*3
  \tempo Slower 4=88
  s1*2
  \tempo Faster 4=152
  s1*29 \ht \tempo 4=140
  s1
  s1
  \tempo 4=112 % ????
  s1*23
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
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
  \textMark \markup { \box "6b" } s1*2
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*2
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "9a" } s1*2
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*3
  \textMark \markup { \box "13a" } s1*2
  \textMark \markup { \box "13b" } s1*2
  \textMark \markup { \box "14a" } s1*3
  \textMark \markup { \box "14b" } s1*3
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } s1*3
  \textMark \markup { \box "16a" } s1*3
  \textMark \markup { \box "16b" } s1*3
}

sopranoJoint = \relative {
  \global
  s1*3
  R1^\markup\smallCaps soprano _\markup\smallCaps alto % 2b
  e'4\omit\mp^\markup\italic {\dynamic mp unis.} 8 8 4 8 fis
  g8 fis e2 r8 fis
  g4 e8 e g4 a % 2c
  b2 r4 b8^\< b
  c4^\mf c8 b a4 c8 c
  b8 b b a g4 e8 fis % 3a
  g8 fis e d c4 e
  b2^\markup\italic rit. ^\> r4\! b8^\mp b
  e4^\markup\bold\italic "a tempo" 8 8 4 8 fis % 3b
  g4 fis e e8 fis
  g4 e8 e g4^\< a
  b2^\markup\bold\italic rit. r\! % 3c
  R1
  R1
  R1 % 4a
  r2 r4 a8^\mf b
  c8 8 16 16 8 8 a4 8
  b8^\markup\bold\italic rit. ^\< b b a\! g4\fermata^\f r8 a % 4b
  b4. b,8 g'4^\> fis8^\markup\bold\italic rit. fis
  e1^\mp~
  e1 % 4c
  R1
  r2 r4 e
  e4 e e e % 5a
  r8 g4. e4 e
  fis4 fis fis fis
  r8 g4. e4 e % 5b
  e4 e e e
  r8 g4. e4 e
  g4. 8 fis4 8 8 % 5c
  e2 r4 e^\mf
  e4 8 8 8 8 4
  r8 g4. e4 e % 6a
  fis4 8 8 8 8 4
  r8 g4. e4 e
  e4 8 8 8 8 4 % 6b
  r8 g4. e4 e
  g4. 8 fis4 8 8 % 6c
  e1~^\cresc
  e2 r4 c8\omit\f^\markup\italic {\dynamic f unis.} c \bar "||" \key aes \major
  f4 8 8 8 8 8 g % 7a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 bes % 7b
  c2 r4 c8 c
  des4 des8 c bes4 des8 8
  c4 bes aes f8 g % 7c
  aes4 f8 g aes4 f
  g2^\> r4\! c,8^\mf c
  f4 f f f8 g % 8a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 bes
  c2 r4 8 8 % 8b
  des4 bes^\cresc e c
  f4 f <f aes>2^\ff ~
  q2 r4 aes,8\omit\f^\markup\italic { \dynamic f unis.} bes
  c4 c c c
  c8(des c bes c) r c4 \glissando ^\markup\italic slide
  f,4^\mf 8 8 8 8 4 % 9a
  r8 aes4. f4 f
  g4 8 8 8 8 4 % 9b
  r8 aes4. f4 f
  f4 8 8 8 8 4
  r8 aes4. f4 f % 9c
  a4. 8 g4 8 8
  f2 r4 f^\mp \bar "||" \key f \major
  f4 8 8 8 8 8 8 % 10a
  r8 a4. f4 r8 f
  ges4 8 8 8 8 8 8
  r8 bes4 8 ges4 r8 ges % 10b
  g8\omit\cresc^\markup\italic "cresc poco a poco through m. 89" 8 8 8 8 8 8 8
  r8 b4. g4 r8 g
  aes4 8 8 8 8 8 8 % 10c
  r8 c4. aes4 r8 aes
  a4 8 8 8 8 8 8
  r8 cis4. a4 r8 8 % 11a
  bes4 8 8 8 8 8 8
  r8 d4. bes4 r8 bes
  b4 8 8 8 8 8 8 % 11b
  r8 dis4. b4 r8 b
  c4 8 8 8 8 8 8
  r8 e4 8 c4 r8 c % 11c
  des8 8 8 8 8 8 8 8
  r8 f4. des4 r8 des
  d4 8 8 8 8 8 8 % 12a
  r8 fis4. d4 d
  fis4.^\ff 8 e4 8 8 \break
}

sopranoSingle = \relative {
  d''2^\markup\smallCaps soprano r \bar "||" \key d \major % 12b
  r8 d4^\f b8 d4 r
  d8 8 8 8 4 fis
  r8 e4 cis8 e4 r % 13a
  d8 8 8 8 b4 a
  r8 d4 b8 d4 r % 13b
  d8 8 8 8 4 fis
  r8 a,4 8 b4 cis8 8 % 14a
  d2 r4 d
  d4 4 4 8 8
  r8 fis4 8 d4 d % 14b
  e4 4 4 8 8
  r8 fis4 8 d4 d
  d4 4 4 8 8 % 15a
  r8 fis4 8 d4 d
  fis4. 8 e4 8 8
  d2 r4 d % 15b
  fis4. 8 e4 8 8
  d2 r4 d^\<
  fis2.^\ff 4 % 16a
  e2 4 4
  d1~
  d2 r4 d % 16b
  d4^\< d d d\!
  r8^\fff fis4.-> d4 r
  \bar "|."
}

altoJoint = \relative {
  \global
  s1*3
  R1_\markup\smallCaps alto % 2b
  e'4\omit\mp 8 8 4 8 fis
  g8 fis e2 r8 fis
  g4 e8 e g4 a % 2c
  b2 r4 b8^\< b
  c4^\mf c8 b a4 c8 c
  b8 b b a g4 e8 fis % 3a
  g8 fis e d c4 e
  b2^\markup\italic rit. ^\> r4\! b8^\mp b
  e4^\markup\bold\italic "a tempo" 8 8 4 8 fis % 3b
  g4 fis e e8 fis
  g4 e8 e g4^\< a
  b2^\markup\bold\italic rit. r\! % 3c
  R1
  R1
  R1 % 4a
  r2 r4 a8^\mf b
  c8 8 16 16 8 8 a4 8
  b8^\markup\bold\italic rit. ^\< b b a\! g4\fermata^\f r8 e % 4b
  g4. b,8 e4^\> dis8 dis
  b1^\mp ~
  b1 % 4c
  R1
  r2 r4 b
  b4 b b b % 5a
  r8 e4. b4 b
  dis4 4 4 4
  r8 e4. b4 b % 5b
  b4 4 4 4
  r8 e4. b4 4
  e4. 8 dis4 8 8 % 5c
  b2 r4 b^\mf
  b4 8 8 8 8 4
  r8 e4. b4 4 % 6a
  dis4 8 8 8 8 4
  r8 e4. b4 4
  b4 8 8 8 8 4 % 6b
  r8 e4. b4 4
  e4. 8 dis4 8 8 % 6c
  b1(^\cresc
  c2) r4 c8\omit\f^\markup\italic {\dynamic f unis.} c \bar "||" \key aes \major
  f4 8 8 8 8 8 g % 7a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 bes % 7b
  c2 r4 c8 c
  des4 des8 c bes4 des8 8
  c4 bes aes f8 g % 7c
  aes4 f8 g aes4 f
  g2^\> r4\! c,8^\mf c
  f4 f f f8 g % 8a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 8
  c2 r4 8 8 % 8b
  f,4 f^\cresc g g
  aes4 4 c2~\ff
  c2 r4 aes8\omit\f^\markup\italic {\dynamic f unis.} bes % 8c
  c4 4 4 4
  c8(des c bes c) r c4\glissando ^\markup\italic slide
  f,4^\mf f8 8 8 8 4  % 9a
  r8 aes4. f4 4
  g4 8 8 8 8 4 % 9b
  r8 aes4. f4 4
  f4 8 8 8 8 4
  r8 aes4. f4 f % 9c
  f4. 8 e4 8 8
  c2 r4 c^\mp \bar "||" \key f \major
  c4 8 8 8 8 8 8 % 10a
  r8 f4. c4 r8 c
  des4 8 8 8 8 8 8
  r8 ges4 8 des4 r8 des % 10b
  d8\omit\cresc 8 8 8 8 8 8 8
  r8 g4. d4 r8 d
  ees4 8 8 8 8 8 8
  r8 aes4. ees4 r8 ees
  e4 8 8 8 8 8 8
  r8 a4. e4 r8 e % 11a
  f4 8 8 8 8 8 8
  r8 bes4. f4 r8 d
  dis4 8 8 8 8 8 8 % 11b
  r8 fis4. dis4 r8 dis
  e4 8 8 8 8 8 8
  r8 g4 8 e4 r8 e % 11c
  f8 8 8 8 8 8 8 8
  r8 aes4. f4 r8 f
  fis4 8 8 8 8 8 8 % 12a
  r8 a4. fis4 4
  a4.^\ff 8 g4 8 8
  % rest on separate system
}

altoSingle = \relative {
  fis'2^\markup\smallCaps alto r4 d^\f \bar "||" \key d \major % 12b
  d4 4 4 8 8
  r8 fis4 8 d4 d
  e4 4 4 8 8 % 13a
  r8 fis4 8 d4 d
  d4 4 4 8 8 % 13b
  r8 fis4 8 d4 4
  fis4. 8 e4 8 8 % 14a
  d2 r4 fis
  fis4 4 4 8 8
  r8 a4 8 fis4 4 % 14b
  a4 4 4 8 8
  r a4 8 fis4 4
  fis4 4 4 8 8 % 15a
  r8 a4 8 fis4 4
  a4. 8 g4 8 8
  fis2 r4 fis % 15b
  a4. 8 g4 8 8
  fis2 r4 g^\<
  a2.^\ff 4 % 16a
  g2 4 4
  fis1(
  f2) r4 f % 16b
  fis4^\< 4 4 4
  r8^\fff a4.-> fis4 r
}

tenorJoint = \relative {
  \global
  s1*3
  R1^\markup\smallCaps tenor _\markup\smallCaps bass
  e4\omit\mp^\markup\italic {\dynamic mp unis.} 8 8 4 8 fis
  g8 fis e2 r8 fis
  g4 e8 e g4 a % 2c
  b2 r4 b8^\< b
  c4^\mf c8 b a4 c8 c
  b8 b b a g4 e8 fis % 3a
  g8 fis e d c4 e
  b2^\> r2\!
  R1*3 % 3b
  r2 r4 a'8^\mf b % 3c
  c8 c c c c a4.
  b8 b b a g4.^\> r8\!
  b8^\mp 4 a8 g4 fis % 4a
  e2. r4
  R1
  r2 r4\fermata r8 c'^\f % 4b
  e4. b8 4^\> a8 a
  g1^\mp~
  g1 % 4c
  R1
  r2 r4 g
  g4 g g g % 5a
  r8 b4. g4 g
  a4 a a a
  r8 b4. g4 g % 5b
  a4 a a a
  r8 b4. a4 a
  b4. 8 a4 8 8 % 5c
  g2 r4 g^\mf
  g4 8 8 8 8 4
  r8 b4. g4 g % 6a
  a4 8 8 8 8 4
  r8 b4. a4 a
  a4 8 8 8 8 4 % 6b
  r8 b4. a4 a
  b4. 8 a4 8 8 % 6c
  g1^\cresc (
  bes2) r4 c,8\omit\f^\markup\italic { \dynamic f unis. } c \bar "||" \key aes \major
  f4 8 8 8 8 8 g % 7a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 bes % 7b
  c2 r4 8 8
  bes4 8 aes g4 bes8 bes
  aes4 g f f8 ees % 7c
  des4 8 ees  f4 aes
  c2^\> r4\! c,8^\mf c
  f4 4 4 8 g % 8a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 8
  c2 r4 8 8 % 8b
  des4 des^\cresc c e
  c4 4 <c f>2^\ff ~
  q2 r4 aes8\omit\f^\markup\italic {\dynamic f unis.} bes % 8c
  c4 4 4 4
  c8(des c bes c) r c4\glissando ^\markup\italic slide
  f,4^\mf f c c % 9a
  f4. c8~4 4
  g'4. c,8~4 4 % 9b
  f4. c8~4 4
  g4 8 8 c c c4
  f4. c8~4 4
  c'4. 8 bes4 8 8
  a2 r4 a^\mp \bar "||" \key f \major
  a4 8 8 8 8 8 8 % 10a
  r8 c4. a4 r8 a
  bes4 8 8 8 8 8 8
  r8 des4 8 b4 r8 b % 10b
  b8\omit\cresc^\markup\italic "cresc. poco a poco through m. 89" 8 8 8 8 8 8 8
  r8 d4. b4 r8 b
  c4 8 8 8 8 8 8 % 10c
  r8 ees4. c4 r8 c
  cis4 8 8 8 8 8 8
  r8 e4. cis4 r8 cis % 11a
  d4 8 8 8 8 8 8
  r8 f4. d4 r8 f,
  fis4 8 8 8 8 8 8 % 11b
  r8 b4. fis4 r8 fis
  g4 8 8 8 8 8 8
  r8 c4 8 g4 r8 g % 11c
  aes8 8 8 8 8 8 8 8
  r8 des4. aes4 r8 a
  a4 8 8 8 8 8 8 % 12a
  r8 d4. a4 a
  d4.^\ff 8 cis4 8 8 \break
  % rest on separate systems
}

tenorSingle = \relative {
  d'2\omit\ff^\markup\smallCaps tenor r4 d^\f \bar "||" \key d \major % 12b
  d4 4 4 8 8
  r8 d4 8 a4 a
  e'4 4 4 8 8 % 13a
  r8 d4 8 a4 4
  d4 4 4 8 8 % 13b
  r8 d4 8 a4 4
  d4. 8 cis4 8 8 % 14a
  a2 r
  r8 d4 a8 b4(d8) 8
  r8 d4 a8 b4(d) % 14b
  r8 e4 a,8 b4(cis)
  r8 fis4 e8 d4(b)
  r8 d4 a8 b4(d8) d % 15a
  r8 d4 a8 b4(d)
  d4. 8 cis4 8 8
  d2 r4 d % 15b
  d4. 8 cis4 8 8
  d2 r4 e^\<
  d2.^\ff 4 % 16a
  cis2 4 4
  c1(
  <b d>2) r4 q % 16b
  <a d>4^\< 4 4 4\!
  r8^\fff <d fis>4.-> <a d>4 r
  \bar "|."
}

bassJoint = \relative {
  \global
  s1*3
  R1^\markup\smallCaps tenor
  e4\omit\mp^\markup\italic {\dynamic mp unis.} 8 8 4 8 fis
  g8 fis e2 r8 fis
  g4 e8 e g4 a % 2c
  b2 r4 b8^\< b
  c4^\mf c8 b a4 c8 c
  b8 b b a g4 e8 fis % 3a
  g8 fis e d c4 e
  b2^\> r2\!
  R1*3 % 3b
  r2 r4 a'8^\mf b % 3c
  c8 c c c c a4.
  b8 b b a g4.^\> r8\!
  b8^\mp 4 a8 g4 fis % 4a
  e2. r4
  R1
  r2 r4\fermata r8 c^\f % 4b
  b4. 8 4^\> 8 8
  e1^\mp ~
  e1 % 4c
  R1
  r2 r4 e
  e4 e e e % 5a
  r8 e4. 4 4
  b4 4 4 4
  r8 e4. 4 4 % 5b
  e4 4 4 4
  r8 e4. 4 4
  b4. 8 4 8 8 % 5c
  e2 r4 e^\mf
  e4 8 8 8 8 4
  r8 e4. 4 4 % 6a
  b4 8 8 8 8 4
  r8 e4. 4 4
  e4 8 8 8 8 4 % 6b
  r8 e4. 4 4
  b4. 8 4 8 8 % 6c
  e1^\cresc(
  c2) r4 c8\omit\f c \bar "||" \key aes \major
  f4 8 8 8 8 8 g % 7a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 bes % 7b
  c2 r4 8 8
  bes4 8 aes g4 bes8 bes
  aes4 g f f8 ees % 7c
  des4 8 ees  f4 aes
  c2^\> r4\! c,8^\mf c
  f4 4 4 8 g % 8a
  aes8 g f ees f4 8 g
  aes4 f aes bes8 8
  c2 r4 8 8 % 8b
  bes4 4^\cresc c bes
  aes8(g) f(ees) d2~
  d2 r4 aes'8\omit\f^\markup\italic {\dynamic f unis.} bes % 8c
  c4 4 4 4
  c8(des c bes c) r c4\glissando ^\markup\italic slide
  f,4^\mf f c c % 9a
  f4. c8~4 4
  g'4. c,8~4 4 % 9b
  f4. c8~4 4
  g4 8 8 c c c4
  f4. c8~4 4 % 9c
  c4. 8 4 8 8
  f2 r4 f^\mp \bar "||" \key f \major
  f4 8 8 8 8 8 8 % 10a
  r8 f4. 4 r8 f
  ges4 8 8 8 8 8 8
  r8 ges4 8 4 r8 ges % 10b
  g8 8 8 8 8 8 8 8
  r8 g4. 4 r8 g
  aes4 8 8 8 8 8 8 % 10c
  r8 aes4. 4 r8 aes
  a4 8 8 8 8 8 8
  r8 a4. 4 r8 a % 11a
  bes4 8 8 8 8 8 8
  r8 bes4. 4 r8 bes,
  b4 8 8 8 8 8 8 % 11b
  r8 b4. 4 r8 8
  c4 8 8 8 8 8 8
  r8 c4 8 4 r8 c % 11c
  des8 8 8 8 8 8 8 8
  r8 des4. 4 r8 des
  d4 8 8 8 8 8 8 % 12a
  r8 d4. 4 4
  d4.\ff 8 a4 8 8
}

bassSingle = \relative {
  d2\omit\ff r2 \bar "||" \key d \major % 12b
  d4^\f b a b
  d4 b a b
  e4 a,8 8 b4 cis % 13a
  d8 8 b4 a(b)
  d4 b a b % 13b
  d4 b a(b)
  a4 b cis a8 8 % 14a
  d2 r
  d4 b a b
  d4 b a b % 14b
  e4 a,8 8 b4 cis
  d8 8 b4 a(b)
  d4 b a b % 15a
  d4 b a(b)
  a4 b cis a8 8
  d2 r4 b % 15b
  a4 b cis a8 8
  d2 r4 bes'^\<
  a2.^\ff a4 % 16a
  a2 4 4
  fis1(
  f2) r4 4 % 16b
  fis4^\< 4 4 4
  r8^\fff a4.-> fis4 r
}

wordsJoint = \lyricmode {
  There was a man named E -- ze -- ki -- el
  who lived man -- y years a -- go.
  He was car -- ried a -- way
  by the Spir -- it of the Lord
  to a val -- ley full of old, dry bones.
  Then E -- ze -- kiel was asked by the Lord Most High,
  “Can these bones ev -- er be re -- vived?”
%  Af -- ter pon -- der -- ing this ques -- tion,
%  this is what he said,
%  “On -- ly the Lord God knows.”
  So the Lord com -- mand -- ed E -- ze -- kiel
  to speak un -- to these bones,
  “Now hear the word of the Lord!” __

  E -- ze -- kiel cried, “Dem dry bones.”
  E -- ze -- kiel cried, “Dem dry bones.”
  E -- ze -- kiel cried, “Dem dry bones.
  Now hear the word of the Lord!”

  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  Now hear the word of the Lord. __

  So the bones were con -- nect -- ed by the pow -- er of the Lord
  when E -- ze -- kiel spoke the com -- mand.
  But the bones had no breath,
  so the Lord God said,
  “Call the winds from a -- cross the lands.”

  Then E -- ze -- kiel called to the spir -- it of the winds
  to re -- vive those bones on the ground.
  With a might -- y sound those bones rose up __
  and be -- gan to walk a -- round! __

  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  Now hear the word of the Lord.

  The toe bone con -- nec -- ted to the foot bone.
  The foot bone con -- nec -- ted to the an -- kle bone.
  The an -- kle bone con -- nec -- ted to the leg bone.
  The leg bone con -- nec -- ted to the knee bone.
  The knee bone con -- nec -- ted to the thigh bone.
  The thigh bone con -- nec -- ted to the hip bone.
  The hip bone con -- nec -- ted to the back bone.
  The back bone con -- nec -- ted to the shoul -- der bone.
  The shoul -- der bone con -- nec -- ted to the neck bone.
  The neck bone con -- nec -- ted to the head bone.
  Now hear the word of the
}

wordsMenJoint = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Af -- ter pon -- der -- ing this ques -- tion,
  this is what he said,
  “On -- ly the Lord God knows.”
}

wordsMenSepJoint = \lyricmode {
  There was a man named E -- ze -- ki -- el
  who lived man -- y years a -- go.
  He was car -- ried a -- way
  by the Spir -- it of the Lord
  to a val -- ley full of old, dry bones.
  Af -- ter pon -- der -- ing this ques -- tion,
  this is what he said,
  “On -- ly the Lord God knows.”
  
  “Now hear the word of the Lord!” __

  E -- ze -- kiel cried, “Dem dry bones.”
  E -- ze -- kiel cried, “Dem dry bones.”
  E -- ze -- kiel cried, “Dem dry bones.
  Now hear the word of the Lord!”

  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  Now hear the word of the Lord. __

  So the bones were con -- nect -- ed by the pow -- er of the Lord
  when E -- ze -- kiel spoke the com -- mand.
  But the bones had no breath,
  so the Lord God said,
  “Call the winds from a -- cross the lands.”

  Then E -- ze -- kiel called to the spir -- it of the winds
  to re -- vive those bones on the ground.
  With a might -- y sound those bones rose up __
  and be -- gan to walk a -- round! __

  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  E -- ze -- kiel con -- nect -- ed dem dry bones.
  Now hear the word of the Lord.

  The toe bone con -- nec -- ted to the foot bone.
  The foot bone con -- nec -- ted to the an -- kle bone.
  The an -- kle bone con -- nec -- ted to the leg bone.
  The leg bone con -- nec -- ted to the knee bone.
  The knee bone con -- nec -- ted to the thigh bone.
  The thigh bone con -- nec -- ted to the hip bone.
  The hip bone con -- nec -- ted to the back bone.
  The back bone con -- nec -- ted to the shoul -- der bone.
  The shoul -- der bone con -- nec -- ted to the neck bone.
  The neck bone con -- nec -- ted to the head bone.
  Now hear the word of the
}

wordsSop = \lyricmode {
  Lord.
  Hal -- le -- lu, Glo -- ry Hal -- le -- lu -- jah!
  Hal -- le -- lu, Glo -- ry Hal -- le -- lu -- jah!
  Hal -- le -- lu, Glo -- ry Hal -- le -- lu -- jah!
  Hear the word of the Lord!

  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Now hear the word of the Lord!
  Now hear the word of the Lord!
  Now hear the word of the Lord! __

  Dem bones, dem bones, dem dry bones!
  
}

wordsSopMidi = \lyricmode {
  "There " "was " "a " "man " "named " E ze ki "el "
  "\nwho " "lived " man "y " "years " a "go. "
  "\nHe " "was " car "ried " a "way "
  "\nby " "the " Spir "it " "of " "the " "Lord "
  "\nto " "a " val "ley " "full " "of " "old, " "dry " "bones. "
  "\nThen " E ze "kiel " "was " "asked " "by " "the " "Lord " "Most " "High, "
  "\n“Can " "these " "bones " ev "er " "be " re "vived?” "

  "\nSo " "the " "Lord " com mand "ed " E ze "kiel "
  "\nto " "speak " un "to " "these " "bones, "
  "\n“Now " "hear " "the " "word " "of " "the " "Lord!” " 

  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord!” "

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. " 

  "\nSo " "the " "bones " "were " con nect "ed " "by " "the " pow "er " "of " "the " "Lord "
  "\nwhen " E ze "kiel " "spoke " "the " com "mand. "
  "\nBut " "the " "bones " "had " "no " "breath, "
  "\nso " "the " "Lord " "God " "said, "
  "\n“Call " "the " "winds " "from " a "cross " "the " "lands.” "

  "\nThen " E ze "kiel " "called " "to " "the " spir "it " "of " "the " "winds "
  "\nto " re "vive " "those " "bones " "on " "the " "ground. "
  "\nWith " "a " might "y " "sound " "those " "bones " "rose " "up " 
  "\nand " be "gan " "to " "walk " a "round! " 

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. "

  "\nThe " "toe " "bone " con nec "ted " "to " "the " "foot " "bone. "
  "\nThe " "foot " "bone " con nec "ted " "to " "the " an "kle " "bone. "
  "\nThe " an "kle " "bone " con nec "ted " "to " "the " "leg " "bone. "
  "\nThe " "leg " "bone " con nec "ted " "to " "the " "knee " "bone. "
  "\nThe " "knee " "bone " con nec "ted " "to " "the " "thigh " "bone. "
  "\nThe " "thigh " "bone " con nec "ted " "to " "the " "hip " "bone. "
  "\nThe " "hip " "bone " con nec "ted " "to " "the " "back " "bone. "
  "\nThe " "back " "bone " con nec "ted " "to " "the " shoul "der " "bone. "
  "\nThe " shoul "der " "bone " con nec "ted " "to " "the " "neck " "bone. "
  "\nThe " "neck " "bone " con nec "ted " "to " "the " "head " "bone. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. "
  
  "\nHal" le "lu, " Glo "ry " Hal le lu "jah! "
  "\nHal" le "lu, " Glo "ry " Hal le lu "jah! "
  "\nHal" le "lu, " Glo "ry " Hal le lu "jah! "
  "\nHear " "the " "word " "of " "the " "Lord! "

  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! " 

  "\nDem " "bones, " "dem " "bones, " "dem " "dry " "bones! "
  
}

wordsAlto = \lyricmode {
  Lord!
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Now hear the word of the Lord!

  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Now hear the word of the Lord!
  
  Now hear the word of the Lord!
  Now hear the word of the Lord!
  Dem bones, dem bones, dem dry bones!
}

wordsAltoMidi = \lyricmode {
  "There " "was " "a " "man " "named " E ze ki "el "
  "\nwho " "lived " man "y " "years " a "go. "
  "\nHe " "was " car "ried " a "way "
  "\nby " "the " Spir "it " "of " "the " "Lord "
  "\nto " "a " val "ley " "full " "of " "old, " "dry " "bones. "
  "\nThen " E ze "kiel " "was " "asked " "by " "the " "Lord " "Most " "High, "
  "\n“Can " "these " "bones " ev "er " "be " re "vived?” "

  "\nSo " "the " "Lord " com mand "ed " E ze "kiel "
  "\nto " "speak " un "to " "these " "bones, "
  "\n“Now " "hear " "the " "word " "of " "the " "Lord!” " 

  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord!” "

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. " 

  "\nSo " "the " "bones " "were " con nect "ed " "by " "the " pow "er " "of " "the " "Lord "
  "\nwhen " E ze "kiel " "spoke " "the " com "mand. "
  "\nBut " "the " "bones " "had " "no " "breath, "
  "\nso " "the " "Lord " "God " "said, "
  "\n“Call " "the " "winds " "from " a "cross " "the " "lands.” "

  "\nThen " E ze "kiel " "called " "to " "the " spir "it " "of " "the " "winds "
  "\nto " re "vive " "those " "bones " "on " "the " "ground. "
  "\nWith " "a " might "y " "sound " "those " "bones " "rose " "up " 
  "\nand " be "gan " "to " "walk " a "round! " 

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. "

  "\nThe " "toe " "bone " con nec "ted " "to " "the " "foot " "bone. "
  "\nThe " "foot " "bone " con nec "ted " "to " "the " an "kle " "bone. "
  "\nThe " an "kle " "bone " con nec "ted " "to " "the " "leg " "bone. "
  "\nThe " "leg " "bone " con nec "ted " "to " "the " "knee " "bone. "
  "\nThe " "knee " "bone " con nec "ted " "to " "the " "thigh " "bone. "
  "\nThe " "thigh " "bone " con nec "ted " "to " "the " "hip " "bone. "
  "\nThe " "hip " "bone " con nec "ted " "to " "the " "back " "bone. "
  "\nThe " "back " "bone " con nec "ted " "to " "the " shoul "der " "bone. "
  "\nThe " shoul "der " "bone " con nec "ted " "to " "the " "neck " "bone. "
  "\nThe " "neck " "bone " con nec "ted " "to " "the " "head " "bone. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "

  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nDem " "bones, " "dem " "bones, " "dem " "dry " "bones! "
}

wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  E -- ze -- kiel turned dem dry bones __ to live bones, __
  to live bones. __
  E -- ze -- kiel con -- nect -- ed dem dry bones. __
  Now hear the word of the Lord.
}

wordsTenor = \lyricmode {
  Lord!
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Dem bones, dem bones gon -- na walk a -- round.
  Now hear the word of the Lord!

  Walk a -- round, __ walk, walk a -- round. __
  Walk a -- round, __ walk a -- round. __
  Walk a -- round, __ walk, walk a -- round. __
  Hear the word of the Lord!

  Now hear the word of the Lord!
  Now hear the word of the Lord!
  Dem bones, dem bones, dem dry bones!
}

wordsTenorMidi = \lyricmode {
  "There " "was " "a " "man " "named " E ze ki "el "
  "\nwho " "lived " man "y " "years " a "go. "
  "\nHe " "was " car "ried " a "way "
  "\nby " "the " Spir "it " "of " "the " "Lord "
  "\nto " "a " val "ley " "full " "of " "old, " "dry " "bones. "

  "\nAf" "ter " pon der "ing " "this " ques "tion, "
  "\nthis " "is " "what " "he " "said, "
  "\n“On" "ly " "the " "Lord " "God " "knows.” "

  "\n“Now " "hear " "the " "word " "of " "the " "Lord!” " 

  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord!” "

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. " 

  "\nSo " "the " "bones " "were " con nect "ed " "by " "the " pow "er " "of " "the " "Lord "
  "\nwhen " E ze "kiel " "spoke " "the " com "mand. "
  "\nBut " "the " "bones " "had " "no " "breath, "
  "\nso " "the " "Lord " "God " "said, "
  "\n“Call " "the " "winds " "from " a "cross " "the " "lands.” "

  "\nThen " E ze "kiel " "called " "to " "the " spir "it " "of " "the " "winds "
  "\nto " re "vive " "those " "bones " "on " "the " "ground. "
  "\nWith " "a " might "y " "sound " "those " "bones " "rose " "up " 
  "\nand " be "gan " "to " "walk " a "round! " 

  "\nE" ze "kiel " "turned " "dem " "dry " "bones "  "to " "live " "bones, " 
  "\nto " "live " "bones. " 
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. " 
  "\nNow " "hear " "the " "word " "of " "the " "Lord. "

  "\nThe " "toe " "bone " con nec "ted " "to " "the " "foot " "bone. "
  "\nThe " "foot " "bone " con nec "ted " "to " "the " an "kle " "bone. "
  "\nThe " an "kle " "bone " con nec "ted " "to " "the " "leg " "bone. "
  "\nThe " "leg " "bone " con nec "ted " "to " "the " "knee " "bone. "
  "\nThe " "knee " "bone " con nec "ted " "to " "the " "thigh " "bone. "
  "\nThe " "thigh " "bone " con nec "ted " "to " "the " "hip " "bone. "
  "\nThe " "hip " "bone " con nec "ted " "to " "the " "back " "bone. "
  "\nThe " "back " "bone " con nec "ted " "to " "the " shoul "der " "bone. "
  "\nThe " shoul "der " "bone " con nec "ted " "to " "the " "neck " "bone. "
  "\nThe " "neck " "bone " con nec "ted " "to " "the " "head " "bone. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nDem " "bones, " "dem " "bones " gon "na " "walk " a "round. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "

  "\nWalk " a "round, "  "walk, " "walk " a "round. " 
  "\nWalk " a "round, "  "walk " a "round. " 
  "\nWalk " a "round, "  "walk, " "walk " a "round. " 
  "\nHear " "the " "word " "of " "the " "Lord! "

  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nDem " "bones, " "dem " "bones, " "dem " "dry " "bones! "
}

wordsBass = \lyricmode {
  Lord!
  Round and round and round and round,
  dem bones gon -- na walk all o -- ver God’s ground. __
  Round and round and round and round,
  hear the word of the Lord!

  Round and round and round and round,
  dem bones gon -- na walk all o -- ver God’s ground. __
  Round and round and round and round,
  hear the word of the Lord!

  Now hear the word of the Lord!
  Now hear the word of the Lord!
  Dem bones, dem bones, dem dry bones!
}

wordsBassMidi = \lyricmode {
  "There " "was " "a " "man " "named " E ze ki "el "
  "\nwho " "lived " man "y " "years " a "go. "
  "\nHe " "was " car "ried " a "way "
  "\nby " "the " Spir "it " "of " "the " "Lord "
  "\nto " "a " val "ley " "full " "of " "old, " "dry " "bones. "

  "\nAf" "ter " pon der "ing " "this " ques "tion, "
  "\nthis " "is " "what " "he " "said, "
  "\n“On" "ly " "the " "Lord " "God " "knows.” "

  "\n“Now " "hear " "the " "word " "of " "the " "Lord!” " 

  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones.” "
  "\nE" ze "kiel " "cried, " "“Dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord!” "

  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord. " 

  "\nSo " "the " "bones " "were " con nect "ed " "by " "the " pow "er " "of " "the " "Lord "
  "\nwhen " E ze "kiel " "spoke " "the " com "mand. "
  "\nBut " "the " "bones " "had " "no " "breath, "
  "\nso " "the " "Lord " "God " "said, "
  "\n“Call " "the " "winds " "from " a "cross " "the " "lands.” "

  "\nThen " E ze "kiel " "called " "to " "the " spir "it " "of " "the " "winds "
  "\nto " re "vive " "those " "bones " "on " "the " "ground. "
  "\nWith " "a " might "y " "sound " "those " "bones " "rose " "up " 
  "\nand " be "gan " "to " "walk " a "round! " 

  "\nE" ze "kiel " "turned " "dem " "dry " "bones "  "to " "live " "bones, " 
  "\nto " "live " "bones. " 
  "\nE" ze "kiel " con nect "ed " "dem " "dry " "bones. " 
  "\nNow " "hear " "the " "word " "of " "the " "Lord. "

  "\nThe " "toe " "bone " con nec "ted " "to " "the " "foot " "bone. "
  "\nThe " "foot " "bone " con nec "ted " "to " "the " an "kle " "bone. "
  "\nThe " an "kle " "bone " con nec "ted " "to " "the " "leg " "bone. "
  "\nThe " "leg " "bone " con nec "ted " "to " "the " "knee " "bone. "
  "\nThe " "knee " "bone " con nec "ted " "to " "the " "thigh " "bone. "
  "\nThe " "thigh " "bone " con nec "ted " "to " "the " "hip " "bone. "
  "\nThe " "hip " "bone " con nec "ted " "to " "the " "back " "bone. "
  "\nThe " "back " "bone " con nec "ted " "to " "the " shoul "der " "bone. "
  "\nThe " shoul "der " "bone " con nec "ted " "to " "the " "neck " "bone. "
  "\nThe " "neck " "bone " con nec "ted " "to " "the " "head " "bone. "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  
  "\nRound " "and " "round " "and " "round " "and " "round, "
  "\ndem " "bones " gon "na " "walk " "all " o "ver " "God’s " "ground. " 
  "\nRound " "and " "round " "and " "round " "and " "round, "
  "\nhear " "the " "word " "of " "the " "Lord! "

  "\nRound " "and " "round " "and " "round " "and " "round, "
  "\ndem " "bones " gon "na " "walk " "all " o "ver " "God’s " "ground. " 
  "\nRound " "and " "round " "and " "round " "and " "round, "
  "\nhear " "the " "word " "of " "the " "Lord! "

  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nNow " "hear " "the " "word " "of " "the " "Lord! "
  "\nDem " "bones, " "dem " "bones, " "dem " "dry " "bones! "
}


pianoRHone = \relative {
  \global
  \ov
  r8\p b-. e-. b-. fis'-. b,-. g'-. b,-.
  r8 c-.\omit\cresc e-. c-. fis-. c-. g'-. c,-.
  r8 cis-. e-. cis-. fis-. cis-. g'-. cis,-. \break
  r4\omit\f <c ees fis a>\omit\>(<b e g> <a c ees fis>) % 2b
  \vo e'2.\omit\mp 8 fis \ov
  <c e g>8 fis e c c'2
  \vo
  <cis, g'>4 e8 e g4 a % 2c
  b2. 8\omit\< 8
  c4\omit\mf 8 b a4 c8 c
  b8 b b a g4 e8 fis % 3a
  g8 fis e d c4 <ais cis e>
  \ov b4\omit\> <ees fis c e> <e g b> <c ees fis a>
  r4\omit\mp r8 g-. <b e>2 % 3b
  r4 r8 g-. <c e>2
  r4 r8 g-. <b cis e>2
  b8\omit\<( c e fis) <b, dis fis b>2\omit\mf % 3c
  \vo c'8 c c c c a4.
  b8\omit\> b b a <b, e g>2\!
  <b e g b>8\omit\mp q4 <c fis a>8 <b e g>4 <a dis fis> % 4a
  e'1
  <c e g c>2\omit\mf c'8 a4 8
  <b, e g b>4\omit\< b'8 a <bes, d e g>4:32\fermata\omit\f r8 <c e a> % 4b
  <b e g b>4. b8 <b e g>4\omit\> <a dis fis> \clef bass
  r8\omit\mp <b e>(<a d>) r <g a>(<fis a>) r <e g>-.
  r8 <e g>(<fis a>) r <g b>4 <fis a>8-. r % 4c
  r8 <b e>(<a d>) r <g a>(<fis a>) r <e g>-.
  r8 q(<fis a>4) <g b>8-> r r4
  r8 <b e>(<a d>) r <g b>(<fis a>) r <e g> % 5a
  r8 <e' g>(<d fis>) r <b e>4 q8 r
  r8 <dis fis>(<c e>) r <b dis>(<a c>) r <g b>
  r8 q(<fis a>) r <g b>4 <a d>8 r % 5b
  r8 <b e>(<a d>) r <g b>(<fis a>) e <e g>
  r8 <e' g>(<d fis>) r <a e>4 q8 r \clef treble
  r8 <e' g b>4-> q8 <dis fis a>4-. q-. % 5c
  <b e g>2. r4
  r8\omit\mf <b' e> <a d> r <g b> <fis a> r <e g>
  r8 q <d fis> r <b e> <d fis> <b e> <d fis> % 6a
  r8 <dis' fis> <c e> r <b d> <a c> r <g b>
  r8 q <fis a> r <e g> <d fis> <b e> <d fis>
  r8 <b' e> <a d> r <g b> <fis a> r <e g> % 6b
  r8 <e g> <d fis> r <b e> <d fis> <b e> <d fis>
  r8 <b e g>4 8 <b dis fis>4-. q-. % 6c
  r8 <g' b> <fis a> r <e g> <d fis> r <bes c e>~
  q2\omit\<~8 <c c'>8 8 8 \bar "||" \key aes \major
  <c f aes c>1\omit\f % 7a
  <des f aes des>1
  <d f aes d>1 % 7b
  <e g bes c e>1
  <e g bes des>2 <des e g bes>
  <c f aes c>4 <c ees g bes> <c f aes>2 % 7c
  <ees aes>4 f8 g aes4 f
  <bes, c g'>2.\omit\> c4\omit\mf
  f4. g,8 aes c aes g % 8a
  r4 r8 g aes des aes g
  r4 r8 aes c d f4
  <c e g>2 r8 e g c % 8b
  <f, bes des>4 <des f bes>\omit\cresc <g c e> <e g c>
  <f aes c f>4 q <aes c f aes>2->\omit\ff
  \ottava #1 c'8-> d f aes c4 \ottava #0 aes,,8\omit\f bes % 8c
  <c, f aes c>2-> <d ges bes c>->
  <d f aes c>2-> <e g bes c>->
  r8\omit\mf <c f>(<bes ees>) r <aes c>(<g bes>) r <f aes> % 9a
  r8 <f' aes>(<ees g>) r <c f>4 q8 r
  r8 <e g>(<des f>) r <c e>(<bes des>) r <aes c> % 9b
  r8 q(<g bes>) r <aes c>4 <bes ees>8 r
  r8 <c f>(<bes ees>) r <aes c>(<g bes>) r <f aes>
  r8 <f' aes>(<ees g>) r <c f>4 q8 r % 9c
  r8 <f a c>4-> q8 <e g bes>4-. q-.
  <c f a>2. r4 \bar "||" \key f \major
  <a c f>4\omit\mp r r2 % 10a
  r2 r4 q
  <bes des ges>4 r r2
  r2 r4 q % 10b
  <b d g>4\omit\cresc r r2
  r2 r4 q
  <c ees aes>4 r r2 % 10c
  r2 r4 q
  <cis e a>4 r r2
  r2 r4 <cis e a> % 11a
  <d f bes>4 r r2
  r2 r4 q
  <dis fis b>4 r r2 % 11b
  r2 r4 q
  <e g c>4 r r2
  r2 r4 <e g c> % 11c
  <f aes des>4 r r2
  r2 r4 <f aes des>
  <fis a d>4 r r2 % 12a
  r2 r4 q
  r8\omit\ff <a d fis>4 q8 <g cis e>4 8 8
  <fis a d>4. <d d'>8~8 8 8 8\bar "||" \key d \major % 12b
  <d fis a d>8->\omit\f r8 r4 r2
  r2 r8 <d d'>4-> b'8
  <e, a cis e>8-> r r4 r2 % 13a
  r2 r8 <d d'>4-> b'8
  <d, fis a d>8-> r r4 r2 % 13b
  R1
  r8 <a' d fis>4-> q8 <g cis e>4-. q-. % 14a
  r8 a(b d f e d b)
  r4 <d fis a d> r q
  r8 q4 8 4 4 % 14b
  r4 <e g cis e> r q
  r8 <d fis a d>4 8 4 4
  r4 q r q % 15a
  r8 q4 8 4 4
  r8 <a' d fis>4 8 <g cis e>4 4
  r8 <d fis a d>4 8 4 4 % 15b
  r8 <a' d fis>4 8 <g cis e>4 4
  r8 <d fis a d>4\omit\< 8 <e g bes d>2
  r8\omit\ff <d fis a d>4 b'8 q4 4 % 16a
  r8 <e, g a cis>4 a8 q4 4
  r4 <d,, fis a d>8 r r q r4
  <f g b d>4.\omit\< q8~8 4 8\! % 16b
  <d fis a d>8-> r r4 r2
  r2 r4 <d' d'>8\omit\fff-> r
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \vt
  s1*4
  <g b>4.\omit\mp g8 b2 % 2b+
  s1
  b1 % 2c
  r4 <e fis> ~ <dis fis>2
  <e a>2\omit\mf <ees fis>
  <e g>2 s % 3a
  c2 s
  s1*5
  <c g'>2\omit\mf <c fis> % 3c+
  <b fis'>2\omit\> s\!
  s1 % 4a
  r8 c-. b-. a-. g2
  s2\omit\mf <c fis>
  s1*23
  \key aes \major
  s1*7
  f2\omit\f\omit\> e4 s\omit\mf % 7c++
% nothing more
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1\omit\cresc-\markup{\bold accel. \italic cresc.}
  s1
  s4-\markup\italic {\dynamic f rit.} s2.\> % 2b
  s1\mp
  s1
  s1 % 2c
  s2. s4\<
  s1\mf
  s1 % 3a
  s1
  s1\>-\markup\italic rit.
  s1\mp % 3b
  s1
  s1
  s2\<-\markup\italic rit. s\mf % 3c
  s1
  s2\> s\!
  s1\mp % 4a
  s1
  s1\mf
  s2\<-\markup\italic rit. s\f % 4b
  s2 s4\> s-\markup\italic rit.
  s1\mp
  s1*11 % 4c
  s1\mf % 5c++
  s1*7
  s1\< % 6c++
  s1\f % 7a
  s1*6
  s2\> s4\! s\mf % 7c++
  s1*4
  s4-\markup\italic rit. s2.\cresc % 8b+
  s2 s\ff
  s2. s4\f % 8c
  s1
  s2 s-\markup\bold\italic rit.
  s1\mf % 9a
  s1*7
  s1\mp % 10a
  s1
  s1
  s1 % 10b
  s1-\markup\italic "cresc. poco a poco through m. 89"
  s1*15
  s1\ff % 12a++
  s1 % 12b
  s1\f
  s1*16
  s4 s2.\< % 15b++
  s1\ff % 16a
  s1
  s1
  s8 s\< s2. % 16b
  s1\!
  s2. s4\fff
}

pianoLHone = \relative {
  \global
  \ov
  e,8-.\p r b'-. r e-. r b-. r
  e,8-.\omit\cresc r c'-. r e-. r c-. r
  e,8-. r cis'-. r e-. r cis-. r
  <b, b'>1\omit\f % 2b
  e8\omit\mp b' e2.
  e,8 c' g'2.
  e,8 cis' g'2. % 2c
  r4 <fis c'>~<fis b>2
  s1\omit\mf
  b2 s % 3a
  <a, g'>8 b c d e4 s
  r4\omit\> c' b a \ov
  e,8-.\omit\mp b'-. e-. r r2 % 3b
  e,8-. c'-. e-. r r2
  e,8-. cis'-. e-. r r2
  <b a'>1\omit\< % 3c
  <a g'>2\omit\mf <d a'>
  <g, d'>2\omit\> <c g'>\!
  <b, b'>1\omit\mp % 4a
  r8 <a' e'>-. <g e'>-. <fis e'>-. <e b'>2
  <a g'>2\omit\mf <d a'>
  <e, e'>4\omit\< <d d'> <c c'>4:32\omit\f\fermata r8 q % 4b
  <b b'>2 q\omit\>
  e4.\omit\mp^\markup\italic "rhythmically, not too much pedal" g8~4 b8 r
  e,4. g8~4 b8 r % 4c
  e,4. g8~4 b8 r
  e,4. a8 b-> r r4
  e,4. g8~4 b8 r % 5a
  e,4. g8~4 b8 r
  b,4. dis8~4 fis8 r
  e4. g8~4 b8 r % 5b
  e,4. g8~4 b8 r
  e,4. g8~4 b8 r
  b2 b, % 5c
  r8 \ottava #-1 c b e,~4 \ottava #0 r4
  e'4.\omit\mf g8~4 b8 r
  e,4. g8~4 b8 r % 6a
  b,4. dis8~4 fis8 r
  e4. g8~4 b8 r
  e,4. g8~4 b8 r % 6b
  e,4. g8~4 b8 r
  b,2 dis4-- fis-. % 6c
  e4. g8~4 b8 r
  c,4.\omit\< e8~4 g8 r \bar "||" \key aes \major
  <f f'>2\omit\f <f, f'> % 7a
  <f' f'>2 <f, f'>
  <f' f'>2 <f, f'> % 7b
  c'8 g' ees' g c2
  <bes des>2 <g bes>
  <f, f'>4 <ees ees'> <d d'>2 % 7c
  <des' f ces'>2 des,
  c'4\omit\> g c,2\omit\mf
  f8 c' f2. % 8a
  f,8 des' f2.
  f,8 d' f2.
  c,8 g' e' g c2 % 8b
  <bes, bes'>2 <c c'>4\omit\cresc <bes bes'>
  <aes aes'>8-> <g g'>-> <f f'>-> <ees ees'>-> <d d'>2->\omit\ff \clef treble
  c'''8-> d-> f-> aes-> c4-> r\omit\f \clef bass % 8c
  r4 <c,,,, c'>2-> q4->
  r4 q2-> q4
  f4.\omit\mf aes8~4 c8 r % 9a
  f,4. aes8~4 c8 r
  c,4. e8~4 g8 r % 9b
  f4. aes8~4 c8 r
  f,4. aes8~4 c8 r
  f,4. aes8~4 c8 r % 9c
  c2 c,
  r8 d c f,8~4 r4 \bar "||" \key f \major
  <f' f'>4\omit\mp r r2 % 10a
  r2 r4 q
  <ges ges'>4 r r2
  r2 r4 q % 10b
  <g g'>4\omit\cresc r r2
  r2 r4 q
  <aes aes'>4 r r2 % 10c
  r2 r4 q
  <a a'>4 r r2
  r2 r4 q % 11a
  <bes bes'>4 r r2
  r2 r4 q
  <b b'>4 r r2 % 11b
  r2 r4 q
  <c c'>4 r r2
  r2 r4 <c, c'> % 11c
  <des des'>4 r r2
  r2 r4 q
  <d d'>4 r r2 % 12a
  r2 r4 q
  q2\omit\ff <a a'>
  <d d'>2.~8 a' \bar "||" \key d \major % 12b
  <d, d'>8->\omit\f r r4 r2
  r2 r8 q4-> b'8
  <a, a'>8-> r r4 r2 % 13a
  <d d'>4 <b b'> <a a'> <b b'>
  <d d'>8-> r r4 r2 % 13b
  R1
  <a a'>4 <b b'> <cis cis'> <a a'> % 14a
  r8 a'(b d f e d b)
  <d, d'>4 <b b'> <a a'> <b b'>
  <d d'>4 <b b'> <a a'> <b b'> % 14b
  <e e'>4 <a, a'> <b b'> <cis cis'>
  <d d'> <b b'> <a a'> <b b'>
  <d d'>4 <b b'> <a a'> <b b'> % 15a
  <d d'> <b b'> <a a'> <b b'>
  <a a'> <b b'> <cis cis'> <a a'>
  <d d'> <b b'> <a a'> <b b'> % 15b
  <a a'> <b b'> <cis cis'> <a a'>
  <d d'>4\omit\< <b b'> <bes bes'>2
  <a a'>4\omit\ff <b b'> <d d'> <b b'> % 16a
  <a a'> <b b'> <c c'> <cis cis'>
  d8 d' e, e' f, f' fis, fis'
  g,8 g'\omit\< f, f' d, d' b, b' % 16b
  <a, a'>8\!-> r r4 r2
  r2 r4 \ottava #-1 <d, d'>8->\omit\fff r
                                %  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \vt
  s1*3
%  \bar "|."
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { s1*90 \sopranoSingle }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice { s1*90 \altoSingle }
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice { s1*90 \tenorSingle }
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice { s1*90 \bassSingle }
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = "Soprano/Alto"
            shortInstrumentName = "SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
            \addlyrics \wordsJoint
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = "Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenorJoint \bassJoint
            \new NullVoice \tenorJoint
            \addlyrics \with {alignAboveContext = men} \wordsMenJoint
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { s1*90 \sopranoSingle }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice { s1*90 \altoSingle }
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice { s1*90 \tenorSingle }
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice { s1*90 \bassSingle }
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = "Soprano/Alto"
            shortInstrumentName = "SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
            \addlyrics \wordsJoint
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = "Tenor/Bass"
            shortInstrumentName = "TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenorJoint \bassJoint
            \new NullVoice \tenorJoint
            \addlyrics \with {alignAboveContext = men} \wordsMenJoint
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-sep
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics { \wordsJoint \wordsSop }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice { \altoJoint \altoSingle }
            \addlyrics { \wordsJoint \wordsAlto }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics { \wordsMenSepJoint \wordsTenor }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice { \bassJoint \bassSingle }
            \addlyrics { \wordsMenSepJoint \wordsBass }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics { \wordsJoint \wordsSop }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice { \altoJoint \altoSingle }
            \addlyrics { \tiny \wordsJoint \wordsAlto }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsTenor }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \bassJoint \bassSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsBass }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics { \tiny \wordsJoint \wordsSop }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice { \altoJoint \altoSingle }
            \addlyrics { \wordsJoint \wordsAlto }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsTenor }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \bassJoint \bassSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsBass }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics { \tiny \wordsJoint \wordsSop }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice { \altoJoint \altoSingle }
            \addlyrics { \tiny \wordsJoint \wordsAlto }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics { \wordsMenSepJoint \wordsTenor }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \bassJoint \bassSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsBass }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics { \tiny \wordsJoint \wordsSop }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice { \altoJoint \altoSingle }
            \addlyrics { \tiny \wordsJoint \wordsAlto }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics { \tiny \wordsMenSepJoint \wordsTenor }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice { \bassJoint \bassSingle }
            \addlyrics { \wordsMenSepJoint \wordsBass }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \altoJoint \altoSingle }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \tenorJoint \tenorSingle }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \bassJoint \bassSingle }
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \altoJoint \altoSingle }
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \tenorJoint \tenorSingle }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \bassJoint \bassSingle }
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \altoJoint \altoSingle }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \tenorJoint \tenorSingle }
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \bassJoint \bassSingle }
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoJoint \sopranoSingle }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \altoJoint \altoSingle }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \tenorJoint \tenorSingle }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \bassJoint \bassSingle }
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
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
