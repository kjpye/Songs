\version "2.25.9"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "An Irish Blessing"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Michael Patrick Murphy"
  arranger    = "Arr. Jeffry Lowden"
%  opus        = "opus"

  poet        = "Traditional"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
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
  \key d \major
  \time 4/4
  \tempo 4=96
  \partial 2
}

TempoTrack = {
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
%  \mark \markup { \circle "1a" }
  \mark \markup { \circle "2a" } s2 s1*2
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "2c" } s1*3
  \mark \markup { \box "1" \circle "3a" } s1*4
  \mark \markup { \circle "3b" } s1*4
  \mark \markup { \box "2" \circle "4a" } s1*4
  \mark \markup { \circle "4b" } s1*4
  \mark \markup { \box "3" \circle "5a" } s1*4
  \mark \markup { \circle "5b" } s1*4
  \mark \markup { \box "4" \circle "6a" } s1*4
  \mark \markup { \circle "6b" } s1*4
  \mark \markup { \circle "7a" } s1
  \mark \markup { \box "5" } s1*4
  \mark \markup { \circle "7b" } s1*4
  \mark \markup { \circle "8a" } s1*4
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \box "6"     } s1
  \mark \markup { \circle "9a" } s1*5
  \mark \markup { \circle "9b" } s1*2
  \mark \markup { \box "7"      } s1*2
  \mark \markup { \circle "10a" } s1*4
  \mark \markup { \circle "10b" } s1*4
}

soprano = \relative c' {
  \global
  r2
  R1*7
  r2 r4\fermata fis8 g % 2b++
  a2. fis8 g % 3a
  a2. b4
  fis4.(e8) d2~
  d4 r fis a
  g2. fis4 % 3b
  g4. fis8 g(a) b4
  a1~
  a4 r r fis8 g
  a2. fis8 g % 4a
  a2. b4
  fis4.(e8 d2~
  d4) d fis a
  g2. fis4 % 4b
  e2. d8(cis)
  d1~
  d4 r d d
  b'1
  cis2.(b4) % 5a
  a1~
  a2
  d,4 d
  g2.(fis4) % 5b
  g4.(a8) b2
  a1~
  a2 d,4 d
  b'1 % 6a
  cis2.(d4)
  d1~
  d2 d,4 d
  g2.(fis4) % 6b
  e2. d4
  d'1(
  c1~ \bar "||" \key f \major
  c1) % 7a
  R1*14
  r2 f,4 f % 8b++
  d'1
  e2.(d4) % 9a
  c1~
  c2 f,4 f
  bes2.(a4)
  bes4.(c8) d4.(c8)
  c1~ % 9b
  c2 f,4 f
  <bes d>1^\markup \italic div.
  <c e>1
  <c f>1~ % 10a
  q2
  f,4^\markup \italic unis. f
  bes2.(a4)
  g2. f4
  f'1~ % 10b
  f1~
  f1~
  f1\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2
  s1*6
  s2 s8 s4._\markup \upright {poco rit.} % 2c+
  s2. s4\mp
  s1-\markup \upright {a tempo} % 3a
  s1
  s1
  s1
  s1 % 3b
  s1
  s1
  s1
  s1*7 % 4a
  s2 s\< % 4b+++
  s1\! % 5a
  s1*12
  s1\> % 6b+
  s4\! s2.-\markup \upright {poco rit.}
  s1\>
  s16^\markup \upright {a tempo} s\! s8 s2. % 7a
  s1*14
  s2 s\f % 8b++
  s1*8
  s2 s\cresc % 9b++
  s2 s\<
  s2\ff s\> % 10a
  s2\! s\mf
  s1
  s2 s\<
  s1\! % 10b
  s2 s-\markup rit.
  s1
  s1
}

wordsSop = \lyricmode {
  May the road, may it rise to meet __ you. __
  May the wind be al- ways at __ your back. __
  May the rain, may it soft- ly fall, __
  up- on your fields, up- on your fields, __
  And may God hold __ you __ in the palm __ of __ His hand, __
  and may God __ hold you in the palm __ of His hand, __
  And may God hold __ you __ in the palm __ of __ His __ hand, __
  And may God hold you __ in the palm __ of His hand. __
}

wordsWomenMidi = \lyricmode {
  "May " "the " "road, " "may " "it " "rise " "to " "meet "  "you. " 
  "\nMay " "the " "wind " "be " al "ways " "at "  "your " "back. " 
  "\nMay " "the " "rain, " "may " "it " soft "ly " "fall, " 
  "\nup" "on " "your " "fields, " up "on " "your " "fields, " 
  "\nAnd " "may " "God " "hold "  "you "  "in " "the " "palm "  "of "  "His " "hand, " 
  "\nand " "may " "God "  "hold " "you " "in " "the " "palm "  "of " "His " "hand, " 
  "\nAnd " "may " "God " "hold "  "you "  "in " "the " "palm "  "of "  "His "  "hand, " 
  "\nAnd " "may " "God " "hold " "you "  "in " "the " "palm "  "of " "His " "hand. " 
}

alto = \relative c' {
  \global
  r2
  R1*7
  r2 r4\fermata fis8 g % 2c++
  a2. fis8 g % 3a
  a2. b4
  fis4.(e8) d2~
  d4 r fis a
  g2. fis4 % 3b
  g4. fis8 g(a) b4
  a1~
  a4 r r fis8 g
  a2. fis8 g % 4a
  a2. b4
  fis4.(e8 d2~
  d4) d fis a
  g2. fis4 % 4b
  e2. d8(cis)
  d1~
  d4 r d d
  g1 % 5a
  a2.(g4)
  fis1~
  fis2 a,4 a
  b1 % 5b
  d2 cis
  d1(
  c2) c4 c
  b4(g'2.) % 6a
  a1
  a1
  a2 a,4 a
  d1 % 6b
  d4(b cis a)
  d1(
  e1 \bar "||" \key f \major
  f1) % 7a
  R1*14
  r2 ees4 ees % 8b++
  f1
  g2.(f4) % 9a
  f4(bes a g
  a4 g) f e
  f2.(d4)
  f2 bes
  a1~ % 9b
  a2 c,4 c
  f1
  g1
  f1~ % 10a
  f2 c4 c
  f1
  f2(e)
  f1( % 10b
  aes1
  a1~
  a1\fermata)
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2
  s1*7
  s2. s4\mp % 2c++
  s1-\markup \upright {a tempo} % 3a
  s1
  s1
  s1
  s1 % 3b
  s1
  s1
  s1
}

wordsAlto = \lyricmode {
  May the road, may it rise to meet __ you. __
  May the wind be al- ways at __ your back. __
  May the rain, may it soft- ly fall, __
  up- on your fields, up- on your fields, __
  And may God hold __ you __ in the palm __ of __ His hand, __
  and may God __ hold you in the palm __ of His hand, __
  And may God hold __ you __ in the palm __ of __ His __ hand, __
  And may God hold you __ in the palm __ of __ hand. __
}

tenor = \relative c {
  \global
  r2
  R1*7
  R1\fermata
  R1*7
  r2 r4 fis8 g % 3b+++
  a2. fis8 g % 4a
  a2. b4
  fis4.(e8 d2~
  d4) fis a d
  b2. a4 % 4b
  g2. g4
  fis2(g4 e
  fis4) r d d
  d'1 % 5a
  e2.(d4)
  d1~
  d2 fis,4 fis
  g1 % 5b
  g2 g
  g2(fis
  e2) fis4 fis
  g4(d'2.) % 6a
  e1
  d1~
  d2 fis,4 fis
  b1 % 6b
  g2. g4
  f2(bes~
  bes2) \breathe a4 bes \bar "||" \key f \major
  c2. f8 e % 7a
  \acciaccatura d8 c2. d4
  a4.(g8) f2~
  f4 r a c
  \acciaccatura c8 bes2. a4 %%% FIX
  bes4. c8 d4 f % 7b
  e2(d
  c2) r4 a8 bes
  c2. f8 e
  d4 c2 d8 c % 8a
  a4.(g8 f2~
  f4) f a c
  bes2. a4
  g2. f8(e) % 8b
  f1~
  f2 bes4 c
  d1
  c1 % 9a
  c1~
  c2 c4 c
  d2.(bes4)
  d4.(e8) f4.(e8)
  f1~ % 9b
  f2 a,4 a
  bes1
  bes1
  a1~ % 10a
  a2 a4 a
  d1
  d2(c4 bes)
  aes1( % 10b
  des1
  c1~
  c1\fermata)
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2
  s1*15
  s2. s4\mp % 3b+++
  s1*7 % 4a
  s2 s\< % 4b+++
  s1\! % 5a
  s1*12
  s1\> % 6b+
  s1
  s2 s\mf
  s1*15
  s2 s\f % 8b++
  s1*8
  s2 s\cresc % 9b__
  s2 s\<
  s2\ff s\> % 10a
  s2\! s\mf
  s1
  s2 s\<
  s1\! % 10b
  s1
  s1
  s1
}

wordsTenor = \lyricmode {
  May the rain, may it soft- ly fall, __
  up- on your fields, up- on your fields, __
  And may God hold __ you __ in the palm __ of __ His hand, __
  and may God __ hold you in the palm __ of His hand, __
  May the road, may it rise to meet __ you. __
  May the wind be al- ways at __ your back. __
  May the rain, may it soft- ly, soft- ly fall __
  up- on your fields, up- on your fields. __
  And may God hold __ you __ in the palm __ of __ His __ hand, __
  And may God hold you __ in the palm __ of __ hand. __
}

bass= \relative c {
  \global
  r2
  R1*7
  R1\fermata
  R1*7
  r2 r4 fis8 g % 3b+++
  a2. fis8 g % 4a
  a2. b4
  fis4.(e8 d2~
  d4) fis a d
  b2. a4 % 4b
  g2. g4
  fis2(g4 e
  fis4) r d d
  g1 % 5a
  a1
  d,2(cis
  b2) a4 a
  g1 % 5b
  a2 a
  d1~
  d2 d4 d
  g1 % 6a
  g1
  fis1(
  b,2) b4 b
  e1 % 6b
  a,2. a4
  bes2(f'
  g2) \breathe a4 g \bar "||" \key f \major
  a2. f8 g % 7a
  a2. e4
  f4.(e8) d2~
  d4 r f e
  d2. c4
  d4. f8 bes4 d % 7b
  c2(g
  e2) r4 a8 g
  a2. f8 g
  a4 a2 f8 e % 8a
  f4.(e8 d2~
  d4) d f e
  d2. f4
  e2. f8(e) % 8b
  f1~
  f2 f4 f
  bes1
  bes1 % 9a
  a4(g f e
  f4 e) d c
  <bes f'>1^\markup div.
  <c g'>2 <c c'>
  << {\voiceOne c'1~c2} || \new Voice {\voiceTwo f,2(e d)} >> \oneVoice c4 c % 2 bars
  bes1
  bes1
  a1( % 10a
  d2) d4 d
  g1
  <c, bes'>2. q4
  <des aes'>1( % 10b
  bes1
  <f f'>1~
  q1\fermata)
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2
  s1*15
  s2. s4\mp % 3b+++
  s1*7 % 4a
  s2 s\< % 4b+++
  s1\! % 5a
  s1*12
  s1\> % 6b+
  s1
  s2 s\mf
  s1*15
  s2 s\f % 8b++
  s1*8
  s2 s\cresc % 9b__
  s2 s\<
  s2\ff s\> % 10a
  s2\! s\mf
  s1
  s2 s\<
  s1\! % 10b
  s1
  s1
  s1
}

wordsBass = \lyricmode {
  May the rain, may it soft- ly fall, __
  up- on your fields, up- on your fields, __
  And may God hold __ you __ in the palm __ of __ His hand, __
  and may God __ hold you in the palm __ of His hand, __
  May the road, may it rise to meet __ you. __
  May the wind be al- ways at __ your back. __
  May the rain, may it soft- ly, soft- ly fall __
  up- on your fields, up- on your fields. __
  And may God hold __ you __ in the palm __ of __ His __ hand, __
  And may God hold you __ in the palm __ of His hand. __
}

wordsMenMidi = \lyricmode {
  "May " "the " "rain, " "may " "it " soft "ly " "fall, " 
  "\nup" "on " "your " "fields, " up "on " "your " "fields, " 
  "\nAnd " "may " "God " "hold "  "you "  "in " "the " "palm "  "of "  "His " "hand, " 
  "\nand " "may " "God "  "hold " "you " "in " "the " "palm "  "of " "His " "hand, " 
  "\nMay " "the " "road, " "may " "it " "rise " "to " "meet "  "you. " 
  "\nMay " "the " "wind " "be " al "ways " "at "  "your " "back. " 
  "\nMay " "the " "rain, " "may " "it " soft "ly, " soft "ly " "fall " 
  "\nup" "on " "your " "fields, " up "on " "your " "fields. " 
  "\nAnd " "may " "God " "hold "  "you "  "in " "the " "palm "  "of "  "His "  "hand, " 
  "\nAnd " "may " "God " "hold " "you "  "in " "the " "palm "  "of " "His " "hand. " 
}

pianoRH = \relative c' {
  \global
  d4^\markup \upright {With great feeling} d
  s1
  s1
  s1 % 2b
  s2. d8-- d--
  s1
  e2.~e8 d % 2c
  d4. e,8 s2
  s1
  <d' fis a>2. fis8 g % 3a
  <cis, fis a>2. b'4
  <b, d fis>4. e8 d2~
  d4 r <d fis> <b d fis a>
  s1 % 3b
  <b e g>4. fis'8 g a b4
  a8 e d e a e d e
  s1
  <d fis a>2. fis8 g % 4a
  s1
  <b, d fis>4. e8 d2~
  d4 <fis, b d> <a d fis> <a d fis a>
  <b d g>2. <a fis'>4 % 4b
  <g b e>2. s4
  s1
  s2 <a c d>4 q
  <d g b>1 % 5a
  <e a cis>2. <g b>4
  <fis a>1~
  q2 <a, d>4 q
  <c d g>2. <b d fis>4 % 5b
  s2 <cis e b'>2
  a'1~
  a2 <fis, c' d>4 <a c d>
  <d g b>1 % 6a
  s1
  <d a' d>1~
  q2 <fis, a d>4 q
  s1 % 6b
  s1
  <d' f bes d>2 f8 bes d f
  <g, c e>2 g8 c e g \bar "||" \key f \major
  f8 a, c f, a c, f c' % 7a
  e8 a, c e, a c, e c'
  d8 f, a d, f a, d e
  <d f>4 <e g> <f a>2
  f'8 bes, d f, bes d, f bes,
  d8 g bes d g, bes d f % 7b
  <c e>2 <g d'>
  <e c'>2. r4
  f'8 a, c f, a c, f a
  e'8 a, c e, a c, e c' % 8a
  d8 f, a d, f a, d f,
  s1
  d''8 f, bes d, f a, d f
  <c e>2. d8 c % 8b
  <a c f>1~
  q8 f a c <f, bes ees f>4 q
  <d' f bes d>1
  <g c e>2. <f bes d>4 % 9a
  s1
  s2 <a, c f>4 <a c e f>
  <d f bes>2. <d f a>4
  <d f bes>4. <e c'>8 <f bes d>4. <e c'>8
  <c f a c>1~ % 9b
  q2 <a c f>4 q
  <d f bes d>2 d8 f bes d
  <e, g c e>2 e8 g c e
  <f, c' f>2~ q8 <f a c> <c f a> <a c f> % 10a
  <f a c>2\arpeggio  <a c f>4 q
  s1
  s1
  s1 % 10b
  s1
  <a' f'>1~
  <a c f>\fermata
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s2
  b2. a8 b
  cis2. cis8 e
  d2~d8 cis4 d8 % 2b
  <a d a'>2\arpeggio ~ q4\fermata s
  g2. fis4
  s1 % 2c
  s1
  r2 <d' fis a d>2\arpeggio\fermata
  s1*4 % 3a
  g,2. fis4 % 3b
  s1
  s1
  a8 e cis d e2
  s1 % 4a
  a2. b4
  s1
  s1
  s1 % 4b
  s2. d,8 cis
  <a d>1~
  q2 s
  s1*5 % 5a
  g'4. a8 s2 %5b+
  s1*2
  s1 % 6a
  cis2.(d4)
  s1
  s1
  g,2.(fis4) % 6b
  e2 cis
  s1
  s1
  s1*9 % 7a
  s1 % 8a
  s1
  << {r2. a'4} || \new Voice {r2 f} >>
  s1
  s1*4 % 8b
  s1 % 9a
  <c c'>1~
  q2 s
  s1*6
  s1 % 10a
  s1
  bes'2. a4
  g2. f4
  f'1 % 10b
  f1
  s1
  s1
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s2
  d2 d8 g4.
  e2 e8 a4.
  <d, a'>2 a' % 2b
  r2 fis4\fermata s
  <b d>1
  s1 % 2c
  \set tieWaitForNote = ##t
  s2 a,8 d~ g, a~
  <fis a d>1\fermata
  s1*4 % 3a
  <b d>1 % 3b
  s1
  s1
  r4 cis2.
  s1 % 4a
  <cis fis>1
  s1
  s1
  s1 % 4b
  s2. g4
  fis2 r
  fis2 s
  s1*5 % 5a
  <b d>2 s %5b+
  s1*2
  s1 % 6a
  <e a>1
  s1
  s1
  <b d>1 % 6b
  q4 <g b> a <g d'>
  s1
  s1
  s1*9 % 7a
  s1 % 8a
  s1
  << {r4 d'2.} || \new Voice {a1} >>
  s1
  s1*4 % 8b
  s1 % 9a
  f'4 bes a g
  a4 g s2
  s1*6
  s1\f
  s1 % 10a
  <d f>1
  f2 <g, bes e>
  r8 ees' f aes des aes f ees % 10b
  r8 des f aes bes c des ees
  s1
  s1
  \set tieWaitForNote = ##f
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mp
  s1
  s1
  s2 s2\cresc % 2b
  s1
  s1
  s2. s8 s\dim % 2c
  s2 s8 s4.-\markup \upright {poco rit.}
  s1
  s1-\markup {\dynamic mp legato} ^\markup \upright {a tempo} % 3a
  s1
  s1
  s1
  s1*4 % 3b
  s1*7 % 4a
  s2 s\< % 4b+++
  s1\! % 5a
  s1*7
  s1*5 % 6a
  s1\>
  s2\! s\<
  s1
  s1\mf % 7a
  s1*8
  s1*5 % 8a
  s2 s\cresc %8b+
  s2 s\<
  s1\f
  s1*7 % 9a
  s2 s\cresc % 9b++
  s2 s\<
  s2\ff s\> % 10a
  s2\! s\mf
  s1
  s2 s\<
  s2\< s\> % 10b
  s1\!
  s1
  s1
}

pianoLH = \relative c {
  \global
  \oneVoice
  r2
  \set tieWaitForNote = ##t
  g8~ d'~ g~ b~ <g, d' g b>2
  g8~ e'~ a~ cis~ <g, e' a cis>2
  fis8~ d'~ a'~ d~ <fis,, d' a' d>2 % 2b
  b8~ fis'~ a~ d~ <b, fis' a d>2\fermata
  e,8~ b'~ e~ g~ <e, b' e g>2
  a8 e' g b d b g a,% 2c
  d,8~ a'~ d4~ <d, a' d>2~
  q1\fermata
  d8 a' d e fis a d e % 3a
  cis,,8 a' cis fis a b cis fis
  b,,,8 fis' b cis d e fis b
  a,,8 a' d fis b fis d a
  g8 d' g a b a g d % 3b
  e,8 b' e g b cis d b
  s1
  s1
  d,,8 a' d e fis a d e % 4a
  cis,, a' cis fis a b cis fis
  b,,,8 fis' b cis d cis d fis
  b4 b,2 a4
  g8 d' g a b g d g, % 4b
  a8 d e g b a g e
  d,8 a' d fis g d e a,
  d,8 a' d e g e fis d
  s1*3 % 5a
  s2 a8 fis' d a % 5a+++
  g8 d' g a b g d g, % 5b
  a8 e' g fis g b a a,
  s1
  s1
  g8 d' g a b a g d % 6a
  g,8 e' a b cis b a e
  fis,8 d' a' d a' d a d,
  b,,8 fis' b \voiceTwo \change Staff = "PianoRH" fis' b,4 \oneVoice \change Staff = "PianoLH" b %%% FIX
  e,8 b' e fis g fis g a % 6b
  s1
  bes,,8 f' bes c d f bes d
  c,,8 g' c d e g bes e \bar "||" \key f \major
  <f,, c' a'>1\arpeggio % 7a
  <a e' c'>1\arpeggio
  <d, a' f'>1\arpeggio ~
  q2 <a a' f'>\arpeggio
  <bes f' d'>1\arpeggio
  <g' d' bes'>1\arpeggio % 7b
  c,8 g' e' g c e c g
  c,,8 g' c d e g a bes
  <f, c' a'>1\arpeggio
  <a e' c'>1\arpeggio % 8a
  <d, a' f'>1\arpeggio
  q1\arpeggio
  <g d' bes'>1\arpeggio
  c,8 g' c d e g f e % 8b
  f,8 c' f g a c, f a
  c8 a, c f <g,, g'>4 <a a'>
  bes8 f' bes d f a d f
  bes,,,8 bes' c e g c g bes, % 9a
  <a a'>4 <g g'> <f f'> <e e'>
  <f f'>4 <e e'> <d d'> <c c'>
  bes8 f' bes c d f bes d
  s1
  f,,8 c' f a e, c' f a % 9b
  d,,8 a' d f
  c, a' c f
  bes,,8 f' bes d f bes d f
  bes,,,8 bes' c e g c e g
  a,,,8~ f'~ a~ c~ <a, f' a c f>2 % 10a
  <d a' d>2\arpeggio <d d'>4 q
  g8 d' g a bes a g d
  c8 g' bes d <c,, c'>2
  s1 % 10b
  s1
  f8~ c'~ f~ g~ a~ c~ f~ g~
  <f,,, f' c' f g a c f g>1\fermata
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s2
  s1*4
  s2 a8 d4 a8 % 2b++
  s1*3
  s1*6 % 3a
  r4 g2 g4~ % 3b++
  g4 g2.
  s1*8 % 4a
  r8 d g b d, g b d % 5a
  r8 e, a cis e, a b d
  r8 a d a r a d a
  r8 a d a s2
  s1 % 5b
  s1
  r8 g a d r fis, a d
  r8 e, a c d,, a' d fis
  s1*5 % 6a
  r8 g4 e8~4 r %6b+
  s1
  s1
  s1*9 % 7a
  s1*8 % 8a
  s1*4 % 9a
  r4 c2 c4
  s1*4 % 9b
  s1*4 % 10a
  r8 aes' des ees f ees des aes % 10b
  r8 f bes c des ees f g
  s1
  s1
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  s2
  s1*8
  s1*6 % 3a
  a,1 % 3b++
  a2. a,4
  s1*8 % 4a
  g'1 % 5a
  a1
  d2 cis
  b2 s
  s1 % 5b
  s1
  d2 d
  d2 s
  s1*5 % 6a
  a2. fis,4 %6b+y
  s1
  s1
  s1*9 % 7a
  s1*8 % 8a
  s1*4 % 9a
  c'1
  s1*4 % 9b
  s1*4 % 10a
  des1
  bes1
  s1
  s1
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = PianoLH <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = PianoLH <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics {\teeny \dynamicsPiano}
        \new Staff = PianoLH <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics {\teeny \dynamicsPiano}
        \new Staff = PianoLH <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics {\teeny \dynamicsPiano}
        \new Staff = PianoLH <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \addlyrics \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics {\teeny \dynamicsPiano}
        \new Staff = PianoLH <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
  \bookOutputSuffix "midi-women"
  \score {
                                %   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \TempoTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsWomenMidi
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = PianoLH <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \midi {}
  }
}
\book {
  \bookOutputSuffix "midi-men"
  \score {
                                %   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \TempoTrack
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsMenMidi
        >>
      >>
      \new PianoStaff <<
        \new Staff = PianoRH <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = PianoLH <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \midi {}
  }
}
