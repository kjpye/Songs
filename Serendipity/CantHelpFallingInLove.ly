\version "2.22.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Can't Help Falling in Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George David Weiss, Hugo Peretti and Luigi Creatore"
  arranger    = "Arr. Roger Emerson"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \tempo Moderato 4=72
  s1
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "2c" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \mark \markup { \circle "6b" } s1*4
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*4
}

ChordTrack = \chordmode {
  ees1
  s1
  s2 bes/d
  c2:m7 ees/bes % 2b
  aes2 ees/g
  f2:m7 bes
  aes2 bes % 2c
  c2:m aes
  ees2/bes bes4 bes:7
  ees1 % 3a
  ees2 bes/d
  c2:m7 ees/bes
  aes2 ees/g % 3b
  bes1
  aes2 bes
  c2:m aes % 3c
  ees2/bes bes
  ees1
  g2:m d4:7.9- d:7.9+ % 4a
  g2:m d4:7 d:7.9+
  g4:m g:m/f d:7.9- d:7.9+
  g2:m7 c:7.9- % 4b
  f2:m7 bes:9
  ees2 bes/d
  c2:m7 ees/bes % 4c
  aes2 ees/g
  f2:m7 bes
  aes2 bes % 5a
  c2:m aes:6
  ees2/bes bes4 bes:7
  ees1 % 5b
  aes2 bes
  c2:m aes:6
  ees2/bes bes % 5c
  ees1
  g2:m d4:7.9- d:7.9+
  g2:m d4:7 d:7.9- % 6a
  g4:m g:m/f d:7.9- d:7.9+
  g2:m7 c:7.9-
  f2:m7 bes:9 % 6b
  g2:m7 c:9
  f2 c/e
  d2:m7 f/c
  bes2 f/a % 6c
  g2:m7 c
  bes2 c
  d2:m bes % 7a
  f2/c c
  f2 f/a
  bes2 c % 7b
  d2:m bes
  f1/c
  bes1/c % 7c
  f1
  s1
  s1


}

soprano = \tripletFeel 8 \relative {
  \global
  R1
  R1
  ees'2^\mp bes'
  ees,2. \tuplet 3/2 {r8 f g} % 2b
  aes2 g
  f2. \tuplet 3/2 {r8 r bes,}
  c2 d % 2c
  ees4 r \tuplet 3/2 {f g aes}
  g2 f4.(ees8)
  ees2. r4 % 3a
  ees2^\mf bes'
  ees,2. \tuplet 3/2 {r8 f g}
  aes2 g4.(f8) % 3b
  g8 (f4.~4) \tuplet 3/2 {r8 r bes,^\markup Unis.}
  c2 d
  ees4 r \tuplet 3/2 {f g aes} % 3c
  g2 f
  ees2. r4
  d8 g~ \tuplet 3/2 {g bes d} c2 % 4a
  d,8 g~ \tuplet 3/2 {g bes d} c2
  d,8 g~ \tuplet 3/2 {g bes d} c2
  bes4 4~8 g bes g % 4b
  aes2. r4
  ees2^\markup Unis. bes'
  ees,2. \tuplet 3/2 {r8 f g} % 4c
  aes2 g
  f2. \tuplet 3/2 {r8 r bes,}
  c2 d % 5a
  ees4 r \tuplet 3/2 {f g aes}
  g2 f
  ees2. \tuplet 3/2 {r8 r bes} % 5b
  c2 d
  ees4 r \tuplet 3/2 {f g aes}
  g2 f % 5c
  ees2. r4
  d8^\f g~\tuplet 3/2 {g8 bes d} c2
  d,8^\f g~\tuplet 3/2 {g8 bes d} c2 % 6a
  d,8^\f g~\tuplet 3/2 {g8 bes d} c2
  bes4 4~ 8 g bes g
  aes2.^\cresc 4 % 6b
  bes2. r4^\markup Unis. \bar "||" \key f \major
  f2^\ff c'
  f,2. \tuplet 3/2 { r8 g a}
  bes2 a % 6c
  g2. \tuplet 3/2 {r8 r c,}
  d2 e
  f4 r \tuplet 3/2 {g a bes} % 7a
  a2 g
  f2. \tuplet 3/2 {r8 r c^\markup Unis. }
  d2 e % 7b
  f4 r \tuplet 3/2 {g a bes}
  a2(c)
  bes2(c) % 7c
  f1^\markup div. ~
  f1
  R1
  \bar "|."
}

words = \lyricmode {
  Wise men say on -- ly fools rush in,
  but I can't help fall -- ing in love with __ you.
  Shall I stay? __ Would it be a __ sin? __
  If I can't help fall -- ing in love with you.

  Like a __ riv -- er flows __
  on -- ly __ to the sea, __
  dar -- ling, __ so it goes __
  some -- things __ are meant to be, __
  Take my hand, take my whole life too
  For I can't help fall -- ing in love with you.
  For I can't help fall -- ing in love with you.

  Like a __ riv -- er flows __
  on -- ly __ to the sea, __
  dar -- ling, __ so it goes __
  some -- things __ are meant to be, __ to be. __
  Take my hand, take my whole life too
  For I can't help fall -- ing in love with you.
  For I can't help fall -- ing in love __ with __ you. __
}

wordsMidi = \lyricmode {
  "Wise " "men " "say " on "ly " "fools " "rush " "in, "
  "\nbut " "I " "can't " "help " fall "ing " "in " "love " "with "  "you. "
  "\nShall " "I " "stay? "  "Would " "it " "be " "a "  "sin? " 
  "\nIf " "I " "can't " "help " fall "ing " "in " "love " "with " "you. "

  "\nLike " "a "  riv "er " "flows " 
  "\non" "ly "  "to " "the " "sea, " 
  "\ndar" "ling, "  "so " "it " "goes " 
  "\nsome" "things "  "are " "meant " "to " "be, " 
  "\nTake " "my " "hand, " "take " "my " "whole " "life " "too "
  "\nFor " "I " "can't " "help " fall "ing " "in " "love " "with " "you. "
  "\nFor " "I " "can't " "help " fall "ing " "in " "love " "with " "you. "

  "\nLike " "a "  riv "er " "flows " 
  "\non" "ly "  "to " "the " "sea, " 
  "\ndar" "ling, "  "so " "it " "goes " 
  "\nsome" "things "  "are " "meant " "to " "be, "  "to " "be. " 
  "\nTake " "my " "hand, " "take " "my " "whole " "life " "too "
  "\nFor " "I " "can't " "help " fall "ing " "in " "love " "with " "you. "
  "\nFor " "I " "can't " "help " fall "ing " "in " "love "  "with "  "you. " 
}

alto = \tripletFeel 8 \relative {
  \global
  R1
  R1
  ees'2^\mp bes'
  ees,2. \tuplet 3/2 {r8 f g} % 2b
  aes2 g
  f2. \tuplet 3/2 {r8 r bes,}
  c2 d % 2c
  ees4 r \tuplet 3/2 {f g aes}
  g2 f4.(ees8)
  ees2. r4 % 3a
  ees2^\mf f
  ees2. \tuplet 3/2 {r8 f ees}
  ees2 2 % 3b
  ees8 (d4.~4) \tuplet 3/2 {r8 r bes^\markup Unis.}
  c2 d
  ees4 r \tuplet 3/2 {c ees ees} % 3c
  ees2 d
  bes2. r4
  d8 g~ \tuplet 3/2 {g g g} a2 % 4a
  d,8 g~ \tuplet 3/2 {g g g} a2
  d,8 8~ \tuplet 3/2 {8 8 8} ees4(f)
  d4 f(e8) e e e
  ees2(d4) r
  ees2^\markup Unis. bes'
  ees,2. \tuplet 3/2 {r8 f g} % 4c
  aes2 g
  f2. \tuplet 3/2 {r8 r bes,}
  c2 d % 5a
  ees4 r \tuplet 3/2 {c ees ees}
  ees2 d
  bes2. \tuplet 3/2 {r8 r bes} % 5b
  c2 d
  ees4 r \tuplet 3/2 {c ees ees}
  ees2 d % 5c
  bes2. r4
  d8^\f g~ \tuplet 3/2 {g g g} a2
  d,8^\f g~ \tuplet 3/2 {g g g} a2 % 6a
  d,8^\f 8~ \tuplet 3/2 {8 8 8} ees4(f)
  d4 f(e8) e e e
  ees2(d4) d % 6b
  f2(e4) r \bar "||" \key f \major
  f2^\ff c'
  f,2. \tuplet 3/2 {r8 g a}
  bes2 a % 6c
  g2. \tuplet 3/2 {r8 r c,}
  d2 e
  f4 r \tuplet 3/2 {d4 f f} % 7a
  f2 e
  c2. \tuplet 3/2 {r8 r c^\markup Unis. }
  d2 e % 7b
  f4 r \tuplet 3/2 {d f f}
  f2(a)
  f2(g) % 7c
  <a c>1~
  q1
  R1
  \bar "|."
}

tenor = \tripletFeel 8 \relative {
  \global
  R1
  R1
  ees2^\mp bes'
  ees,2. \tuplet 3/2 {r8 f g} % 2b
  aes2 g
  f2. \tuplet 3/2 {r8 r bes}
  aes2 bes % 2c
  g4 r \tuplet 3/2 {aes bes c}
  bes2 4.(aes8)
  g2. r4^\markup\italic "Tenors only" % 3a
  ees'2^\mf d
  c2(bes4) \tuplet 3/2 {r8 bes bes}
  c2 bes % 3b
  bes2. \tuplet 3/2 {r8 r bes^\markup Unis. }
  aes2 bes
  c4 r \tuplet 3/2 {aes bes c} % 3c
  bes2 bes
  g2. r4
  d'8 8~ \tuplet 3/2 {8 8 8} ees4(d) % 4a
  d8 8~ \tuplet 3/2 {8 8 8} ees4(d)
  bes8 8~ \tuplet 3/2 {8 8 8} c2
  bes4 4(des8) 8 8 8 % 4b
  c2. r4
  ees,2^\markup Unis. bes'
  ees,2. \tuplet 3/2 {r8 f g} % 4c
  aes2 g
  f2. \tuplet 3/2 {r8 r bes}
  aes2 bes % 5a
  c4 r \tuplet 3/2 {aes bes c}
  bes2 2
  g2. \tuplet 3/2 {r8 r bes} % 5b
  aes2 bes
  c4 r \tuplet 3/2 {aes bes c}
  bes2 2 % 5c
  g2. r4
  d'8^\f 8~ \tuplet 3/2 {8 8 8} e4(d)
  d8 8~ \tuplet 3/2 {8 8 8} d4(c) % 6a
  d8 8~ \tuplet 3/2 {8 8 8} c2
  bes4 4(des8) 8 8 8
  c2. 4 % 6b
  d2. r4^\markup Unis. \bar "||" \key f \major
  f,2^\ff c'
  f,2. \tuplet 3/2 {r8 g a}
  bes2 a % 6c
  g2. \tuplet 3/2 {r8 r c}
  bes2 c
  d4 r \tuplet 3/2 {bes c d} % 7a
  c2 2
  a2. \tuplet 3/2 {r8 r c}
  bes2 c % 7b
  d4 r \tuplet 3/2 {bes d c}
  c2(f)
  d2(e) % 7c
  f1~
  f1
  R1
  \bar "|."
}

bass = \tripletFeel 8 \relative {
  \global
  R1
  R1
  ees2^\mp bes'
  ees,2. \tuplet 3/2 {r8 f g} % 2b
  aes2 g
  f2. \tuplet 3/2 {r8 r bes}
  aes2 bes % 2c
  g4 r \tuplet 3/2 {aes bes c}
  bes2 4.(aes8)
  g2. r4 % 3a
  R1
  R1
  R1 % 3b
  r2. \tuplet 3/2 {r8 r bes^\markup Unis. }
  aes2 f
  g4 r \tuplet 3/2 {f g aes} % 3b
  g2 f
  ees2. r4
  g8 8~ \tuplet 3/2 {g f f} fis2 % 4a
  g8 8~ \tuplet 3/2 {g f f} fis2
  g8 8~ \tuplet 3/2 {g f f} fis4(d)
  g4 4(8) 8 bes bes % 4b
  f2(bes,4) r
  ees2^\markup Unis. bes'
  ees,2. \tuplet 3/2 {r8 f g} % 4c
  aes2 g
  f2. \tuplet 3/2 {r8 r bes}
  aes2 f % 5a
  g4 r \tuplet 3/2 {f g aes}
  g2 f
  g2. \tuplet 3/2 {r8 r bes} % 5b
  aes2 f
  g4 r \tuplet 3/2 {f g aes}
  g2 f % 5c
  ees2. r4
  g8^\f 8~ \tuplet 3/2 {g f f} fis2
  g8^\f 8~ \tuplet 3/2 {g f f} fis2 % 6a
  g8^\f 8~ \tuplet 3/2 {g f f} fis4(d)
  g4 4~8 8 bes bes
  f2(bes,4) bes % 6b
  g'2(c,4) r^\markup Unis. \bar "||" \key f \major
  f2^\ff c'
  f,2. \tuplet 3/2 {r8 g a}
  bes2 a % 6c
  g2. \tuplet 3/2 {r8 r c}
  bes2 g
  a4 r \tuplet 3/2 {g a bes} % 7a
  a2 g
  f2. \tuplet 3/2 {r8 r c'}
  bes2 g % 7b
  a4 r \tuplet 3/2 {g a bes}
  a2(c)
  bes2(c) % 7c
  c1~
  c1
  R1
  \bar "|."
}

bdf = { \tuplet 3/2 {r8 bes d} \tuplet 3/2 {f d bes} }
beg = { \tuplet 3/2 {r8 bes ees} \tuplet 3/2 {g ees bes} }
beb = { \tuplet 3/2 {r8 bes ees} \tuplet 3/2 {bes' ees, bes} }
bfb = { \tuplet 3/2 {r8 bes f'} \tuplet 3/2 {bes f bes,} }
cea = { \tuplet 3/2 {r8 c ees} \tuplet 3/2 {aes ees c} }
cfa = { \tuplet 3/2 {r8 c f} \tuplet 3/2 {aes f c} }
dfb = { \tuplet 3/2 {r8 d f} \tuplet 3/2 {bes f d} }
egc = { \tuplet 3/2 {r8 ees g} \tuplet 3/2 {c g ees} }
geb = { \tuplet 3/2 {r8 g bes} \tuplet 3/2 {ees bes g} }
gbe = { \tuplet 3/2 {r8 g bes} \tuplet 3/2 {ees bes g} }

pianoRH = \tripletFeel 8 \relative {
  \global
  \beg \beg
  \geb \geb
  \beg \bfb
  \beg \beg % 2b
  \cea \beb
  \cea \dfb
  \cea \dfb % 2c
  \egc \cea
  \beg \bdf
  \gbe \gbe % 3a
  \beg \bfb
  \beg \beg
  \cea \beb % 3b
  \dfb \bdf
  \cea \dfb
  \egc \cfa % 3c
  \beg \bdf
  \gbe \beg
  <bes d g>4 <d g bes> <fis, c' ees> <fis c' f> % 4a
  <g bes d>4 <bes d g> <c fis a> <ees fis a>
  <bes d g>4 q << <c a'>2 \new Voice {ees4 f} >>
  <d f bes>4 <f bes> <des e bes'> <des e g> % 4b
  <c ees aes>4 <aes c ees> << {\voiceOne r4 <bes' bes'>} \new Voice {\voiceTwo <aes, c d>2} >>
  \beg \bfb

  \beg \beg % 4c
  \cea \beb
  \cea \dfb
  \cea \dfb % 5a
  \egc \cfa
  \beg \bdf
  \gbe \beg % 5b
  \cea \dfb
  \egc \cfa
  \beg \bdf % 5c
  \gbe \beg
  <bes d g>4 <d g bes> <fis, c' ees> <fis c' f>
  <g bes d>4 <bes d g> <c fis a> <ees fis a> % 6a
  <es d g>4 q << <c a'>2 \new Voice {ees4 f} >>
  <d f bes>4 <f bes> <des e bes'> <des e g>
  <c ees aes>4 <aes c ees> <aes c d> <aes c d f> % 6b
  <bes d f bes>4 <bes d f> << {\voiceOne r4 <c' c'>} \new Voice {\voiceTwo <bes, d e>2} >> \bar "||" \key f \major
  \tuplet 3/2 {<a c f>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<c g' c> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<c f>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<c f a> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<d f bes> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<c f c'> q q} \tuplet 3/2 {q q q} % 6c
  \tuplet 3/2 {<d f bes> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<e g c> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<d f bes> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<e g c> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<d f a d>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<d f bes d> q q} \tuplet 3/2 {q q q} % 7a
  \tuplet 3/2 {<c f a c> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<c e g c> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<c f a> q q} \tuplet 3/2 {q q q} \tuplet  3/2 {<c f c'> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<d f bes>8 q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<e g c> q q} \tuplet 3/2 {q q q} % 7b
  \tuplet 3/2 {<d f a d> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<d f bes d> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<c f a c> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<c f a> q q} \tuplet 3/2 {q q q}
  \tuplet 3/2 {<d f bes d> q q} \tuplet 3/2 {q q q} \tuplet 3/2 {<e g c e> q q} \tuplet 3/2 {q q q} % 7c
  <f a c f>2-> q->
  \repeat tremolo 16 {<f a>32-> <c' f>->}
  <f, a c f>8-^ r r4 r2
  
  \bar "|."
}

dynamicsPiano = \tripletFeel 8 {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*8
  s1 % 3a
  s1\mf
  s1*6
  s2 \tuplet 3/2 { s8 s4\<} s4
  s1\omit\f % 4a
  s1*8
  s1*7
  s2 s8 s\< s4 % 5c+
  s1\f
  s1*3 % 6a
  s1\cresc % 6b
  s1
  s1\f
  s1
  s1*3 % 6c
  s1*9 % 7
}

pianoLH = \relative {
  \global
  \tripletFeel 8 {
    ees2\mp bes
    ees,2 bes'
    ees2 d
    c2 bes % 2b
    aes2 g
    f2 bes
    aes2 bes % 2c
    c4. bes8 aes2
    bes2 bes,
    ees2 bes4 bes' % 3a
    ees2 d
    c2 bes
    aes2 g % 3b
    bes2 bes,
    aes'2 bes
    c4. bes8 aes2
    bes2 bes,
    ees2 ees'
    g,4. 8 d4 d' % 4a
    g,4. 8 d4 d'
    g4 f fis d
    g4. 8 c,4. 8 % 4b
    f,4. 8 bes4 bes,
    ees'2 d
    c2 bes % 4c
    aes g
    f2 bes
    aes2 bes % 5a
    c4. bes8 aes2
    bes2 bes,
    ees2 ees' % 5b
    aes,2 bes
    c4. bes8 aes2
    bes2 bes, % 5c
    ees2 ees'
    g,4. 8 d4 d'
    g,4. 8 d4 d' % 6a
    g4 f fis d
    g4. 8 c,4. 8
    f,4. 8 bes4 bes, % 6b
    g'4. 8 c4 c, \key f \major
    f4. 8 e4. 8
    d4. 8 c4. 8
    bes'4. 8 a4. 8 % 6c
    g4~ \tuplet 3/2 {g8 a bes} c4 c,
    bes'4. f8 c'4. g8
    d'4~ \tuplet 3/2 {d8 d c} bes4. 8 % 7a
    c4 ~ \tuplet 3/2 {c8 a f} c4 c'
    f,4~ \tuplet 3/2 {f8 f g} a4 a
    bes4. f8 c'4. g8 % 7b
    d'4 ~ \tuplet 3/2 {d8 d c} bes4. 8
    c2 c,
    c'2 c, % 7c
  }
  <f f'>4->_\markup { \teeny "one bar straight eighths" } q8-^ <c c'>-> <f f'>4-> q8-^ <c c'>->
  \tripletFeel 8 {
    \repeat tremolo 16 {f,32-> f'->}
    <f, f'>8-^ r r4 r2
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff = rh
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLH
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
                                % Joint soprano/alto staff
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff = rh
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice << \pianoRH \dynamicsPiano >>
            \new Voice << \pianoLH \dynamicsPiano >>
          >>
        >>
      >>
    >>
    \midi {}
  }
}
