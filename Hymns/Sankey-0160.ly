\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When the King Comes!"
  subtitle    = "Sankey No. 160"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. S. Elliott."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key c \major
  \time 4/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*16
  \mark \markup { \box "B" } s2*17
  \mark \markup { \box "C" } s2*15 s4
  \mark \markup { \box "D" } s4 s2*16
  \mark \markup { \box "E" } s2*16
  \mark \markup { \box "F" } s2*15
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \autoBeamOff
  g'2
  c2 c b e,
  a2 a g e
  e2 e f \slurDashed e4(4)
  d2 d c \bar "|" \break g'2
  c2 4(4) b2 e, % B
  a2 a g e4(4)
  e4(4) 2 fis g
  g2 fis g1
  e2 e4(4) 2 4(4) % C
  g2 g e1
  g2 4(4) 2 4(4)
  c2 c b2~4 \bar "|" \break g8(8)
  e'2 4(4) d2 b4(4) % D
  c2 gis \slurSolid b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c \bar "||" \break
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
}

sopranoSingle = \relative {
  g'2
  c2 c b e,
  a2 a g e
  e2 e f e2
  d2 d c \bar "|" \break g'2
  c2 4 4 b2 e, % B
  a2 a g e4 4
  e4 4 2 fis g
  g2 fis g1
  e2 4 4 2 4 4 % C
  g2 g e1
  g2 4 4 2 2
  c2 c b2~4 \bar "|" \break g
  e'2 2 d2 b % D
  c2 gis b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
% verse 2
  \partial 2 g'2
  c2 c b e,
  a2 a g e
  e2 e f e4 4
  d2 d c \bar "|" \break g'2
  c2 2 b e, % B
  a2 a g e
  e2 2 fis g
  g2 fis g1
  e2 e4 4 2 2 % C
  g2 g e1
  g2 4 4 2 2
  c2 c b2~4 \bar "|" \break g
  e'2 2 d b % D
  c2 gis b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
% verse 3
  \partial 2 g'2
  c2 c b e,
  a2 a g e
  e2 e f e
  d2 d c \bar "|" \break g'2
  c2 2 b2 e, % B
  a2 a g e
  e2 2 fis g
  g2 fis g1
  e2 2 2 4 4 % C
  g2 g e1
  g2 2 2 4 4
  c2 c b2~4 \bar "|" \break g
  e'2 4 4 d2 b2 % D
  c2 gis \slurSolid b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
% verse 4
  \partial 2 g'2
  c2 c b e,
  a2 a g e
  e2 e f e
  d2 d c \bar "|" \break g'2
  c2 2 b2 e, % B
  a2 a g e
  e2 2 fis g
  g2 fis g1
  e2 e4 4 2 2 % C
  g2 g e1
  g2 4 4 2 2
  c2 c b2~4 \bar "|" \break g
  e'2 2 d2 b % D
  c2 gis \slurSolid b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
% verse 5
  \partial 2 g'2
  c2 c b e,
  a2 a g e
  e2 e f e
  d2 d c \bar "|" \break g'2
  c2 2 b2 e, % B
  a2 a g e
  e2 2 fis g
  g2 fis g1
  e2 e4 4 2 2 % C
  g2 g e1
  g2 4 4 2 2
  c2 c b2~4 \bar "|" \break g8 8
  e'2 2 d2 b4 4 % D
  c2 gis b2(a)
  g2 f4. d8 c2 d4. e8
  d1 c
  e2^\markup {\smallCaps Refrain. \italic "a tempo"} 4. 8 2 4. 8 % E
  g1^> e
  g2 4. 8 2 4. 8
  c1^> g
  c2^\markup\italic accel. f4. 8 e2 d4. 8 % F
  c1~2 r
  c2 b4. a8^\markup\italic Slower. g2 f4 e
  d1 c2\fermata
}

alto = \relative {
  \autoBeamOff
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f \slurDashed e4(4)
  d2 d c g'
  c2 4(4) b2 e, % B
  a2 a g e4(4)
  c4(4) 2 2 b
  d2 c b1
  c2 4(4) 2 4(4) % C
  d2 2 c1
  e2 4(4) 2 4(4)
  e2 e d2~4 g8(8)
  g2 4(4) 2 f4(4) % D
  e2 d \slurSolid d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata
}

altoSingle = \relative {
  \autoBeamOff
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f e
  d2 d c g'
  c2 4 4 b2 e, % B
  a2 a g e4 4
  c4 4 2 2 b
  d2 c b1
  c2 4 4 2 4 4 % C
  d2 2 c1
  e2 4 4 2 2
  e2 e d2~4 g
  g2 2 2 f % D
  e2 d d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata \nl
% verse 2
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f e4 4
  d2 d c g'
  c2 2 b2 e, % B
  a2 a g e
  c2 2 2 b
  d2 c b1
  c2 4 4 2 2 % C
  d2 2 c1
  e2 4 4 2 2
  e2 e d2~4 g
  g2 2 2 f % D
  e2 d d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata \nl
% verse 3
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f e
  d2 d c g'
  c2 2 b2 e, % B
  a2 a g e
  c2 2 2 b
  d2 c b1
  c2 2 2 4 4 % C
  d2 2 c1
  e2 2 2 4 4
  e2 e d2~4 g
  g2 4 4 2 f % D
  e2 d \slurSolid d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata \nl
% verse 4
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f e
  d2 d c g'
  c2 2 b2 e, % B
  a2 a g e
  c2 2 2 b
  d2 c b1
  c2 4 4 2 2 % C
  d2 2 c1
  e2 4 4 2 2
  e2 e d2~4 g
  g2 2 2 f % D
  e2 d \slurSolid d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata \nl
% verse 5
  g'2
  c2 2 b e,
  a2 2 g e
  e2 2 f e
  d2 d c g'
  c2 2 b2 e, % B
  a2 a g e
  c2 2 2 b
  d2 c b1
  c2 4 4 2 2 % C
  d2 2 c1
  e2 4 4 2 2
  e2 e d2~4 g8 8
  g2 2 2 f4 4 % D
  e2 d \slurSolid d(c)
  cis2 a4. 8 c2 b4. c8
  c2(b) g1
  c2 4. 8 2 4. 8 % E
  e1^> c
  e2 4. 8 2 4. 8
  e1^> e
  e2 a4. 8 g2 f4. 8 % F
  e2 <f a>4 q <e g>2(<d f>)
  d2 f4. 8 c2 4 4
  c2(b) g\fermata
}

tenor = \relative {
  \autoBeamOff
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a \slurDashed g4(4)
  g2 f e g
  c2 4(4) b2 e, % B
  a2 2 g e4(4)
  a4(4) 2 2 g
  a2 2 g1
  g2 4(4) 2 c4(4) % C
  c2 b g1
  c2 4(4) 2 4(4)
  c2 \slurSolid g4(a) b2~4 \slurDashed g8(8)
  c2 4(4) d2 4(4) % D
  c2 b \slurSolid gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
}

tenorSingle = \relative {
  \autoBeamOff
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a g
  g2 f e g
  c2 4 4 b2 e, % B
  a2 2 g e4 4
  a4 4 2 2 g
  a2 2 g1
  g2 4 4 2 c4 4 % C
  c2 b g1
  c2 4 4 2 2
  c2 g4(a) b2~4 g
  c2 2 d2 2 % D
  c2 b gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
% verse 2
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a g4 4
  g2 f e g
  c2 2 b2 e, % B
  a2 2 g e
  a2 2 2 g
  a2 2 g1
  g2 4 4 2 c2 % C
  c2 b g1
  c2 4 4 2 2
  c2 g4(a) b2~4 g
  c2 2 d2 2 % D
  c2 b gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
% verse3
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a g
  g2 f e g
  c2 2 b2 e, % B
  a2 2 g e
  a2 2 2 g
  a2 2 g1
  g2 2 2 c4 4 % C
  c2 b g1
  c2 2 2 2
  c2 g4(a) b2~4 g
  c2 4 4 d2 2 % D
  c2 b gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
% verse 4
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a g
  g2 f e g
  c2 2 b2 e, % B
  a2 2 g e
  a2 2 2 g
  a2 2 g1
  g2 4 4 2 c % C
  c2 b g1
  c2 4 4 2 2
  c2 g4(a) b2~4 g
  c2 2 d2 2 % D
  c2 b gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
% verse 5
  g2
  c2 2 b e,
  a2 2 g c
  c2 b a g
  g2 f e g
  c2 2 b2 e, % B
  a2 2 g e
  a2 2 2 g
  a2 2 g1
  g2 4 4 2 c % C
  c2 b g1
  c2 4 4 2 2
  c2 g4(a) b2~4 g8 8
  c2 2 d2 4 4 % D
  c2 b gis(a)
  a2 4. 8 g2 4. 8
  g2(f) e1
  g2 4. 8 2 4. 8 % E
  g1 1
  g2 4. 8 2 4. 8
  g1 1
  c2 4. 8 2 4. 8 % F
  c2 4 4 2~2
  c2 d4. 8 g,2 a4 4
  d,2(f) e\fermata
}

bass = \relative {
  \autoBeamOff
  g2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f \slurDashed c4(4)
  g'2 g, c g'
  c2 4(4) b2 e, % B
  a2 a g e4(4)
  a4(4) 2 d, e
  d2 d g,1
  c2 4(4) 2 4(4) % C
  g'2 2 c,1
  c2 4(4) 2 4(4)
  \slurSolid c4(d) e(f) g2~4 8(8)
  c2 4(4) b2 gis4(4) % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
}

bassSingle = \relative {
  \autoBeamOff
  g2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f c
  g'2 g, c g'
  c2 4 4 b2 e, % B
  a2 a g e4 4
  a4 4 2 d, e
  d2 d g,1
  c2 4 4 2 4 4 % C
  g'2 2 c,1
  c2 4 4 2 2
  c4(d) e(f) g2~4 4
  c2 2 b2 gis % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
% verse 2
  g'2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f c4 4
  g'2 g, c g'
  c2 2 b2 e, % B
  a2 a g e
  a2 2 d, e
  d2 d g,1
  c2 4 4 2 2 % C
  g'2 2 c,1
  c2 4 4 2 2
  c4(d) e(f) g2~4 4
  c2 2 b2 gis % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
% verse 3
  g'2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f c
  g'2 g, c g'
  c2 2 b2 e, % B
  a2 a g e
  a2 2 d, e
  d2 d g,1
  c2 2 2 4 4 % C
  g'2 2 c,1
  c2 2 2 4 4
  c4(d) e(f) g2~4 4
  c2 4 4 b2 gis % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
% verse 4
  g'2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f c
  g'2 g, c g'
  c2 2 b2 e, % B
  a2 a g e
  a2 2 d, e
  d2 d g,1
  c2 4 4 2 2 % C
  g'2 2 c,1
  c2 4 4 2 2
  c4(d) e(f) g2~4 4
  c2 2 b2 gis % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
% verse 5
  g'2
  c2 2 b e,
  a2 2 g c4(b)
  a2 g f c
  g'2 g, c g'
  c2 2 b2 e, % B
  a2 a g e
  a2 2 d, e
  d2 d g,1
  c2 4 4 2 2 % C
  g'2 2 c,1
  c2 4 4 2 2
  \slurSolid c4(d) e(f) g2~4 8 8
  c2 2 b2 gis4 4 % D
  a2 e f1
  e2 d4. f8 e2 d4. c8
  g1 c
  c2 4. 8 2 4. 8 % E
  c1 1
  c2 4. 8 2 4. 8
  c1 1
  c1 1 % F
  c1~1
  a'2 d,4. 8 e2 f4 4
  g,1 c2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  when He comes!
  _ _ _ _ _ _ _ _
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  When He comes! __
  "" _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  They come and go, the sea -- sons fair,
  And bring their spoil to vale and hills;
  But oh, \nom there is wait -- ing in the air,
  And a pas -- sion -- ate hope the spi -- rit fills.
  Why doth He tar -- ry, the ab -- sent Lord?
  When shall the King -- \yesm dom be res -- tored,
  And earth and heav'n, with one ac -- cord,
  Ring out the cry that the King comes?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The floods have lift -- ed up their voice:
  The King hath come \nom to His \yesm own— His own!
  The lit -- tle hills and vales re -- joice,
  His right it is to take the crown.
  Sleep -- \nom ers, a \yesm -- wake, and meet Him first!
  \nom Now let \yesm the mar -- riage hymn out -- burst!
  And powers of dark -- ness flee, dis -- perst—
  What will it be when the King comes?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A ran -- somed earth breaks forth in song,
  Her sin- -- stained a -- ges o -- ver -- past;
  Her yearn -- ing, "\"Lord," how long, how "long?\""
  Ex -- changed for joy at last— at last!
  An -- gels car -- \nom ry the \yesm royal com -- mands;
  Peace beams forth \nom thro' -- out \yesm all the lands;
  The trees \nom of the \yesm field shall clap their hands—
  What will it be when the King comes?
 }
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Now Zi -- on's hill, with glo -- ry crowned,
  Up -- lifts her head with joy once more;
  And Zi -- on's King, once scorned, dis -- owned,
  Ex -- tends her rule from shore to shore.
  Sing, \nom for the \yesm land her Lord re -- gains!
  Sing, \nom for the \yesm Son of Da -- vid reigns!
  And liv -- ing streams o'er -- flow her plains—
  What will it be when the King comes?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O bro -- thers, stand as men that wait,
  The dawn is pur -- pling in the east,
  And ban -- ners wave from heav'n's high gate;
  The con -- flict now— but soon the feast.
  Mer -- \nom cy and \yesm truth shall meet a -- gain;
  Wor -- \nom thy the \yesm Lamb that once was slain!
  \nom We can \yesm suf -- fer now, \nom He will \yesm know us then—
  What will it be when the King comes?
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  They come and go, the sea -- sons fair,
  And bring their spoil to vale and hills;
  But oh, there is wait -- ing in the air,
  And a pas -- sion -- ate hope the spi -- rit fills.
  Why doth He tar -- ry, the ab -- sent Lord?
  When shall the King -- dom be res -- tored,
  And earth and heav'n, with one ac -- cord,
  Ring out the cry that the King comes?
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!

  \set stanza = "2."
  The floods have lift -- ed up their voice:
  The King hath come to His own— His own!
  The lit -- tle hills and vales re -- joice,
  His right it is to take the crown.
  Sleep -- ers, a -- wake, and meet Him first!
  Now let the mar -- riage hymn out -- burst!
  And powers of dark -- ness flee, dis -- perst—
  What will it be when the King comes?
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!

  \set stanza = "3."
  A ran -- somed earth breaks forth in song,
  Her sin- -- stained a -- ges o -- ver -- past;
  Her yearn -- ing, "\"Lord," how long, how "long?\""
  Ex -- changed for joy at last— at last!
  An -- gels car -- ry the royal com -- mands;
  Peace beams forth thro' -- out all the lands;
  The trees of the field shall clap their hands—
  What will it be when the King comes?
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!

  \set stanza = "4."
  Now Zi -- on's hill, with glo -- ry crowned,
  Up -- lifts her head with joy once more;
  And Zi -- on's King, once scorned, dis -- owned,
  Ex -- tends her rule from shore to shore.
  Sing, for the land her Lord re -- gains!
  Sing, for the Son of Da -- vid reigns!
  And liv -- ing streams o'er -- flow her plains—
  What will it be when the King comes?
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!

  \set stanza = "5."
  O bro -- thers, stand as men that wait,
  The dawn is pur -- pling in the east,
  And ban -- ners wave from heav'n's high gate;
  The con -- flict now— but soon the feast.
  Mer -- cy and truth shall meet a -- gain;
  Wor -- thy the Lamb that once was slain!
  We can suf -- fer now, He will know us then—
  What will it be when the King comes?
  What will it be when the King comes!
  What will it be when the King comes!
  What will it be when He comes!
  What will it be when the King comes!
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "They " "come " "and " "go, " "the " sea "sons " "fair, "
  "\nAnd " "bring " "their " "spoil " "to " "vale " "and " "hills; "
  "\nBut " "oh, " "there " "is " wait "ing " "in " "the " "air, "
  "\nAnd " "a " pas sion "ate " "hope " "the " spi "rit " "fills. "
  "\nWhy " "doth " "He " tar "ry, " "the " ab "sent " "Lord? "
  "\nWhen " "shall " "the " King "dom " "be " res "tored, "
  "\nAnd " "earth " "and " "heav'n, " "with " "one " ac "cord, "
  "\nRing " "out " "the " "cry " "that " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "2."
  "\nThe " "floods " "have " lift "ed " "up " "their " "voice: "
  "\nThe " "King " "hath " "come " "to " "His " "own— " "His " "own! "
  "\nThe " lit "tle " "hills " "and " "vales " re "joice, "
  "\nHis " "right " "it " "is " "to " "take " "the " "crown. "
  "\nSleep" "ers, " a "wake, " "and " "meet " "Him " "first! "
  "\nNow " "let " "the " mar "riage " "hymn " out "burst! "
  "\nAnd " "powers " "of " dark "ness " "flee, " dis "perst— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "3."
  "\nA " ran "somed " "earth " "breaks " "forth " "in " "song, "
  "\nHer " sin- "stained " a "ges " o ver "past; "
  "\nHer " yearn "ing, " "\"Lord, " "how " "long, " "how " "long?\" "
  "\nEx" "changed " "for " "joy " "at " "last— " "at " "last! "
  "\nAn" "gels " car "ry " "the " "royal " com "mands; "
  "\nPeace " "beams " "forth " thro' "out " "all " "the " "lands; "
  "\nThe " "trees " "of " "the " "field " "shall " "clap " "their " "hands— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "4."
  "\nNow " Zi "on's " "hill, " "with " glo "ry " "crowned, "
  "\nUp" "lifts " "her " "head " "with " "joy " "once " "more; "
  "\nAnd " Zi "on's " "King, " "once " "scorned, " dis "owned, "
  "\nEx" "tends " "her " "rule " "from " "shore " "to " "shore. "
  "\nSing, " "for " "the " "land " "her " "Lord " re "gains! "
  "\nSing, " "for " "the " "Son " "of " Da "vid " "reigns! "
  "\nAnd " liv "ing " "streams " o'er "flow " "her " "plains— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "5."
  "\nO " bro "thers, " "stand " "as " "men " "that " "wait, "
  "\nThe " "dawn " "is " pur "pling " "in " "the " "east, "
  "\nAnd " ban "ners " "wave " "from " "heav'n's " "high " "gate; "
  "\nThe " con "flict " "now— " "but " "soon " "the " "feast. "
  "\nMer" "cy " "and " "truth " "shall " "meet " a "gain; "
  "\nWor" "thy " "the " "Lamb " "that " "once " "was " "slain! "
  "\nWe " "can " suf "fer " "now, " "He " "will " "know " "us " "then— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "They " "come " "and " "go, " "the " sea "sons " "fair, "
  "\nAnd " "bring " "their " "spoil " "to " "vale " "and " "hills; "
  "\nBut " "oh, " "there " "is " wait "ing " "in " "the " "air, "
  "\nAnd " "a " pas sion "ate " "hope " "the " spi "rit " "fills. "
  "\nWhy " "doth " "He " tar "ry, " "the " ab "sent " "Lord? "
  "\nWhen " "shall " "the " King "dom " "be " res "tored, "
  "\nAnd " "earth " "and " "heav'n, " "with " "one " ac "cord, "
  "\nRing " "out " "the " "cry " "that " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "2."
  "\nThe " "floods " "have " lift "ed " "up " "their " "voice: "
  "\nThe " "King " "hath " "come " "to " "His " "own— " "His " "own! "
  "\nThe " lit "tle " "hills " "and " "vales " re "joice, "
  "\nHis " "right " "it " "is " "to " "take " "the " "crown. "
  "\nSleep" "ers, " a "wake, " "and " "meet " "Him " "first! "
  "\nNow " "let " "the " mar "riage " "hymn " out "burst! "
  "\nAnd " "powers " "of " dark "ness " "flee, " dis "perst— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "3."
  "\nA " ran "somed " "earth " "breaks " "forth " "in " "song, "
  "\nHer " sin- "stained " a "ges " o ver "past; "
  "\nHer " yearn "ing, " "\"Lord, " "how " "long, " "how " "long?\" "
  "\nEx" "changed " "for " "joy " "at " "last— " "at " "last! "
  "\nAn" "gels " car "ry " "the " "royal " com "mands; "
  "\nPeace " "beams " "forth " thro' "out " "all " "the " "lands; "
  "\nThe " "trees " "of " "the " "field " "shall " "clap " "their " "hands— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "4."
  "\nNow " Zi "on's " "hill, " "with " glo "ry " "crowned, "
  "\nUp" "lifts " "her " "head " "with " "joy " "once " "more; "
  "\nAnd " Zi "on's " "King, " "once " "scorned, " dis "owned, "
  "\nEx" "tends " "her " "rule " "from " "shore " "to " "shore. "
  "\nSing, " "for " "the " "land " "her " "Lord " re "gains! "
  "\nSing, " "for " "the " "Son " "of " Da "vid " "reigns! "
  "\nAnd " liv "ing " "streams " o'er "flow " "her " "plains— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "5."
  "\nO " bro "thers, " "stand " "as " "men " "that " "wait, "
  "\nThe " "dawn " "is " pur "pling " "in " "the " "east, "
  "\nAnd " ban "ners " "wave " "from " "heav'n's " "high " "gate; "
  "\nThe " con "flict " "now— " "but " "soon " "the " "feast. "
  "\nMer" "cy " "and " "truth " "shall " "meet " a "gain; "
  "\nWor" "thy " "the " "Lamb " "that " "once " "was " "slain! "
  "\nWe " "can " suf "fer " "now, " "He " "will " "know " "us " "then— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "He " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "They " "come " "and " "go, " "the " sea "sons " "fair, "
  "\nAnd " "bring " "their " "spoil " "to " "vale " "and " "hills; "
  "\nBut " "oh, " "there " "is " wait "ing " "in " "the " "air, "
  "\nAnd " "a " pas sion "ate " "hope " "the " spi "rit " "fills. "
  "\nWhy " "doth " "He " tar "ry, " "the " ab "sent " "Lord? "
  "\nWhen " "shall " "the " King "dom " "be " res "tored, "
  "\nAnd " "earth " "and " "heav'n, " "with " "one " ac "cord, "
  "\nRing " "out " "the " "cry " "that " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "2."
  "\nThe " "floods " "have " lift "ed " "up " "their " "voice: "
  "\nThe " "King " "hath " "come " "to " "His " "own— " "His " "own! "
  "\nThe " lit "tle " "hills " "and " "vales " re "joice, "
  "\nHis " "right " "it " "is " "to " "take " "the " "crown. "
  "\nSleep" "ers, " a "wake, " "and " "meet " "Him " "first! "
  "\nNow " "let " "the " mar "riage " "hymn " out "burst! "
  "\nAnd " "powers " "of " dark "ness " "flee, " dis "perst— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "3."
  "\nA " ran "somed " "earth " "breaks " "forth " "in " "song, "
  "\nHer " sin- "stained " a "ges " o ver "past; "
  "\nHer " yearn "ing, " "\"Lord, " "how " "long, " "how " "long?\" "
  "\nEx" "changed " "for " "joy " "at " "last— " "at " "last! "
  "\nAn" "gels " car "ry " "the " "royal " com "mands; "
  "\nPeace " "beams " "forth " thro' "out " "all " "the " "lands; "
  "\nThe " "trees " "of " "the " "field " "shall " "clap " "their " "hands— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "4."
  "\nNow " Zi "on's " "hill, " "with " glo "ry " "crowned, "
  "\nUp" "lifts " "her " "head " "with " "joy " "once " "more; "
  "\nAnd " Zi "on's " "King, " "once " "scorned, " dis "owned, "
  "\nEx" "tends " "her " "rule " "from " "shore " "to " "shore. "
  "\nSing, " "for " "the " "land " "her " "Lord " re "gains! "
  "\nSing, " "for " "the " "Son " "of " Da "vid " "reigns! "
  "\nAnd " liv "ing " "streams " o'er "flow " "her " "plains— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "

  \set stanza = "5."
  "\nO " bro "thers, " "stand " "as " "men " "that " "wait, "
  "\nThe " "dawn " "is " pur "pling " "in " "the " "east, "
  "\nAnd " ban "ners " "wave " "from " "heav'n's " "high " "gate; "
  "\nThe " con "flict " "now— " "but " "soon " "the " "feast. "
  "\nMer" "cy " "and " "truth " "shall " "meet " a "gain; "
  "\nWor" "thy " "the " "Lamb " "that " "once " "was " "slain! "
  "\nWe " "can " suf "fer " "now, " "He " "will " "know " "us " "then— "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes? "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
  "\nWhen " "He " "comes! "
  "\nWhat " "will " "it " "be " "when " "the " "King " "comes! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new NullVoice \alto
            \addlyrics \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \bass
            \addlyrics \chorusBass
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
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                               { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new NullVoice {\repeat unfold 5 \alto}
            \addlyrics {\repeat unfold 5 \chorusAlto}
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle }
            \new NullVoice {\repeat unfold 5 \bass}
            \addlyrics {\repeat unfold 5 \chorusBass}
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
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                               { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new NullVoice {\repeat unfold 5 \alto}
            \addlyrics { \repeat unfold 5 \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle }
            \new NullVoice {\repeat unfold 5 \bass}
            \addlyrics { \repeat unfold 5 \chorusBass }
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-altotenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
            \addlyrics \wordsAltoMidi
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
            \addlyrics \wordsBassMidi
          >>
        >>
    \midi {}
  }
}
