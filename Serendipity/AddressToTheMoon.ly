\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Address to the Moon"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Purifoy"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Nathaniel Hawthorne (1804-1864)"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

 #(set-global-staff-size 18)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo 4=88
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle 5 }
  \mark \markup { \box "2a" } s1*3
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "2c" } s1*3
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*3
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*3
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*3
  \mark \markup { \box "7c" } s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "8c" } s1*3
}

TempoTrack = {
  s1*24
  s1\tempo 4=80
  s1
  s1
  s1\tempo 4=88
  s1*20
  s1\tempo 4=80
  s1
  s1
  s1\tempo 4=88
  s1*3
  s1\tempo 4=80
  s1
  s1
  s1\tempo 4=88
  s1
  s1\tempo 4=80
  s1
  s1
}

soprano = \relative c' {
  \global
  s1*4
  r8 d a'4~a8 g f e % 2b+
  d4. bes'8 bes2~(
  bes1 % 2c
  f1)
  r8 bes, g'4~8 f e d
  d4. e8 2 % 3a
  r8 cis cis d e4. g8
  g4. a8 2
  r8 d, d'4~8 c bes a % 3b
  g4. c8 c2~
  c8 c, c'4~8 bes a g
  f4. a8 2 % 3c
  bes4-- bes-- r8 a g f
  f4. g8 e2
  r8 d d e f4 g % 4a
  g4. a8 2
  bes4. r8 bes a bes c
  d4. c8 bes2 % 4b
  r4 r8 c, a' g a bes
  c4. bes8 a2
  r4 r8 bes, g' f g a % 4c
  bes4. a8 g4. f8
  e4. a8 a2~
  a4 r8 a8 4 4 % 5a
  <a d>1~(
  <bes d>1~
  <bes c>1~ % 5b
  <a c>1)
  r4 d, e f
  g2 a % 5c
  bes2 a
  a1
  r8 g g a bes4. d8 % 6a
  d4. e8 c2~
  c8 a a bes c4. a8
  c4. d8 bes2 % 6b
  r1
  r1
  r8 a a g f4 g % 6c
  g4. a8 a2
  bes4. r8 bes a bes c
  d4. c8 bes2 % 7a
  r4 r8 c,8 a' g a bes
  c4. bes8 a2
  r4 r8 bes, g' f g a % 7b
  bes4. a8 g4. f8
  e4. a8 a2~
  a4 r8 a8 a4 a % 7c
  <a d>1~(
  <bes d>1~
  <bes c>1~ % 8a
  <a c>1)
  r4 d, e f
  g2 a % 8b
  bes2 q4. r8
  d1~
  d1~ % 8c
  d1~
  d1\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*4
  s1\mp % 2b+
  s1
  s1*5 % 2c
  s1\< % 3a++
  s8\! s\mf s2. % 3b
  s1*2
  s1 % 3c
  s2 s8 s\> s4
  s1
  s8\! s\mp s2.% 4a
  s2 s\<
  s4. s8\! s2\mf
  s1*3 % 4b
  s4. s8\> s2 % 4c
  s4.\!-\markup rall. s8\mp s2
  s1
  s1 % 5a
  s1-\markup {a tempo}
  s1
  s1*3 % 5b
  s1*3 % 5c
  s8 s\< s2. % 6a
  s1\mf
  s1
  s1*3 % 6b
  s8 s\mp s2. % 6c
  s1\<
  s1\mf
  s1*3 % 7a
  s4. s8\> s2 % 7b
  s1\mp-\markup rall.
  s1
  s1 % 7c
  s1-\markup {a tempo}
  s1
  s1 % 8a
  s1
  s4-\markup rit. s2.\>
  s1 % 8b
  s1\p
  s1-\markup {a tempo}
  s1\> % 8c
  s1-\markup rit.
  s1\pp
}

wordsSop = \lyricmode {
  How sweet __ the sil- ver Moon's pale ray, __
  O'er which the breez- es sigh no more,
  Nor bil- lows lash the sound- ing shore.
  Say, do __ the eyes of those I love, __
  Be- hold __ thee as thou soar'st a- bove,
  Lone- ly, ma- jes- tic and se- rene,
  The calm and plac- id eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest.
  For who would wish a fair- er home
  Than in that bright __ re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray.
  Say, do the eyes of those I love, __
  Be hold thee as thou soar'st a- bove,
%  Lone- ly, __ maj- es- tic and se- rene,
  The calm and pla- cid eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest,
  For who would wish a fair- er home
  Than in that bright re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray. __
}

wordsWomenMidi = \lyricmode {
  "\nHow " "sweet "  "the " sil "ver " "Moon's " "pale " "ray, " 
  "\nO'er " "which " "the " breez "es " "sigh " "no " "more, "
  "\nNor " bil "lows " "lash " "the " sound "ing " "shore. "
  "\nSay, " "do "  "the " "eyes " "of " "those " "I " "love, " 
  "\nBe" "hold "  "thee " "as " "thou " "soar'st " a "bove, "
  "\nLone" "ly, " ma jes "tic " "and " se "rene, "
  "\nThe " "calm " "and " plac "id " eve "ning's " "Queen? "
  "\nSay, " "if " up "on " "thy " peace "ful " "breast, "
  "\nDe" part "ed " spir "its " "find " "their " "rest. "
  "\nFor " "who " "would " "wish " "a " fair "er " "home "
  "\nThan " "in " "that " "bright "  re ful "gent " "dome? " 
  "\nHow " "sweet " "the " sil "ver " "Moon's " "pale " "ray. "
  "\nSay, " "do " "the " "eyes " "of " "those " "I " "love, " 
  "\nBe " "hold " "thee " "as " "thou " "soar'st " a "bove, "
  "\nThe " "calm " "and " pla "cid " eve "ning's " "Queen? "
  "\nSay, " "if " up "on " "thy " peace "ful " "breast, "
  "\nDe" part "ed " spir "its " "find " "their " "rest, "
  "\nFor " "who " "would " "wish " "a " fair "er " "home "
  "\nThan " "in " "that " "bright " re ful "gent " "dome? " 
  "\nHow " "sweet " "the " sil "ver " "Moon's " "pale " "ray. " 
}

alto = \relative c' {
  \global
  s1*4
  r8 d a'4~a8 g f e % 2b+
  d4. bes'8 bes2~(
  bes1 % 2c
  f1)
  r8 bes, g'4~8 f e d
  d4. e8 2 % 3a
  r8 cis cis d e4. e8
  e4. f8 2
  r8 d bes'4~8 a g f % 3b
  d4. f8 e2~
  e8 c a'4~8 g f e
  d4. 8 2 % 3c
  d4-- d-- r8 d d d
  d4. e8 cis2
  r8 d d e f4 g % 4a
  c,4. 8 2
  d4. r8 g8 f g f
  f4. f8 d2 % 4b
  r4 r8 c f e f g
  a4. g8 f2
  r4 r8 bes,8 g' f g a % 4c
  d,4. d8 d4. d8
  d4. d8 d2(
  cis4) r8 a'8 4 4 % 5a
  f1~(
  f1
  d2 e~ % 5b
  e1)
  r4 d e f
  g2 f % 5c
  d2 cis
  d1
  r8 bes bes c d4. f8 % 6a
  f4. g8 e2~
  e8 c c d e4. c8
  e4. f8 d2 % 6b
  r1
  r1
  r8 f8 f e d4 e % 6c
  e4. fis8 fis2
  g4.-- r8 g f g f
  f4. f8 d2 % 7a
  r4 r8 c8 f e f g
  a4. g8 f2
  r4 r8 bes,8 g' f g a % 7b
  d,4. 8 4. 8
  d4. 8 2(
  cis4) r8 a'8 4 4 % 7c
  f1~(
  f1
  d2 e~ % 8a
  e1)
  r4 d e f
  g2 f % 8b
  d2 cis4. r8
  d1~
  d1~ % 8c
  d1~
  d1\fermata
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*4
  s1\mp % 2b+
  s1
  s1*5 % 2c
  s1\< % 3a++
  s8\! s\mf s2. % 3b
  s1
  s1
  s1 % 3c
  s2 s8 s\> s4
  s1
  s8\! s\mp s2.% 4a
  s2 s\<
  s4. s8\! s2\mf
  s1*3 % 4b
  s4. s8\> s2 % 4c
  s4.\!-\markup rall. s8\mp s2
  s1
  s1 % 5a
  s1-\markup{a tempo}
  s1
  s1*3 % 5b
  s1*3 % 5c
  s8 s\< s2. % 6a
  s1\mf
  s1
  s1*3 % 6b
  s8 s\mp s2. % 6c
  s1\<
  s1\mf
  s1*3 % 7a
  s4. s8\> s2 % 7b
  s1\mp-\markup rall.
  s1
  s1 % 7c
  s1-\markup {a tempo}
  s1
  s1 % 8a
  s1
  s4-\markup rit. s2.\>
  s1 % 8b
  s1\p
  s1-\markup {a tempo}
  s1\> % 8c
  s1-\markup rit.
  s1\pp
}

wordsAlto = \lyricmode {
  How sweet __ the sil- ver Moon's pale ray, __
  O'er which the breez- es sigh no more,
  Nor bil- lows lash the sound- ing shore.
  Say, do __ the eyes of those I love, __
  Be- hold __ thee as thou soar'st a- bove,
  Lone- ly, ma- jes- tic and se- rene,
  The calm and plac- id eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest.
  For who would wish a fair- er home
  Than in that bright __ re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray.
  Say, do the eyes of those I love, __
  Be hold thee as thou soar'st a- bove,
%  Lone- ly, __ maj- es- tic and se- rene,
  The calm and pla- cid eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest,
  For who would wish a fair- er home
  Than in that bright re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray. __
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative c {
  \global
  s1*6
  r8 c g'4~8 f e d % 2c
  c4. a'8 a2(
  bes1
  g1)
  r8 e e f g4. bes8
  bes4. a8 2
  r8 d, d'4~8 c bes a % 3c
  bes4. 8 c2~
  c8 c, c'4~8 bes a g
  f4. a8 a2 % 3c
  g4-- g-- r8 f e d
  g4. 8 a2
  r8 f f g a4 g % 4a
  g4. fis8 f2
  g4. r8 g f g a
  bes4. a8 bes2 % 4b
  r4 r8 c,8 a' g a bes
  c4. bes8 a2
  r4 r8 bes bes a g f % 4c
  g4. f8 e4. d8
  e4. 8 e2~
  e4 r8 a8 4 4 % 5a
  a1(
  f1~
  f2 e % 5b
  <c f>1)
  r4 d e f
  g2 a % 5c
  g2 a
  f1
  r1 % 6a
  r1
  r1
  r1 % 6b
  d'4 d~8 c bes a
  g4. f8 e2
  r1 % 6c
  r1
  d'4. r8 d c bes a
  bes4. a8 bes2 % 7a
  r4 r8 c,8 a' g a bes
  c4. bes8 a2
  r4 r8 bes8 bes a g f % 7b
  g4. f8 e4. d8
  e4. 8 2~
  e4 r8 a8 4 4 % 7c
  a1(
  f1~
  f2 a % 8a
  f1)
  r4 d e f
  g2 a % 8b
  g2 a4. r8
  d1~
  d1~ % 8c
  d1~
  d1\fermata
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*6
  s1\mp % 2c
  s1*4
  s1\< % 3a++
  s8\! s\mf s2. % 3b
  s1
  s1
  s1 % 3c
  s2 s8 s\> s4
  s1
  s8\! s\mp s2. % 4a
  s2 s\<
  s4. s8\! s2\mf
  s1*3 % 4b
  s4. s8\> s2 % 4c
  s4.\!-\markup rall. s8\mp s2
  s1
  s1 % 5a
  s1-\markup {a tempo}
  s1
  s1*3 % 5b
  s1*3 % 5c
  s1*3 % 6a
  s1 % 6b
  s1\mp
  s1
  s1 % 6c
  s1
  s1\mf
  s1*3 % 7a
  s4. s8\> s2 % 7b
  s1\mp-\markup rall.
  s1
  s1 % 7c
  s1-\markup {a tempo}
  s1
  s1 % 8a
  s1
  s4-\markup rit. s2.\>
  s1 % 8b
  s1\p
  s1-\markup {a tempo}
  s1\> % 8c
  s1-\markup rit.
  s1\pp
}

wordsTenor = \lyricmode {
  Falls trem- bling on the dis- tant bay, __
  Nor bil- lows lash the sound- ing shore.
  Say, do __ the eyes of those I love, __
  Be- hold __ thee as thou soar'st a- bove,
  Lone- ly, ma- jes- tic and se- rene,
  The calm and plac- id eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest.
  For who would wish a fair- er home
  Than in that bright __ re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray.
%  Say, do the eyes of those I love, __
%  Be hold thee as thou soar'st a- bove,
  Lone- ly, __ maj- es- tic and se- rene,
%  The calm and pla- cid eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest,
  For who would wish a fair- er home
  Than in that bright re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray. __
}

wordsMenMidi = \lyricmode {
  "\nFalls " trem "bling " "on " "the " dis "tant " "bay, " 
  "\nNor " bil "lows " "lash " "the " sound "ing " "shore. "
  "\nSay, " "do "  "the " "eyes " "of " "those " "I " "love, " 
  "\nBe" "hold "  "thee " "as " "thou " "soar'st " a "bove, "
  "\nLone" "ly, " ma jes "tic " "and " se "rene, "
  "\nThe " "calm " "and " plac "id " eve "ning's " "Queen? "
  "\nSay, " "if " up "on " "thy " peace "ful " "breast, "
  "\nDe" part "ed " spir "its " "find " "their " "rest. "
  "\nFor " "who " "would " "wish " "a " fair "er " "home "
  "\nThan " "in " "that " "bright "  re ful "gent " "dome? " 
  "\nHow " "sweet " "the " sil "ver " "Moon's " "pale " "ray. "
  "\nLone" "ly, "  maj es "tic " "and " se "rene, "
  "\nSay, " "if " up "on " "thy " peace "ful " "breast, "
  "\nDe" part "ed " spir "its " "find " "their " "rest, "
  "\nFor " "who " "would " "wish " "a " fair "er " "home "
  "\nThan " "in " "that " "bright " re ful "gent " "dome? " 
  "\nHow " "sweet " "the " sil "ver " "Moon's " "pale " "ray. " 
}

bass= \relative c {
  \global
  s1*6
  r8 c g'4~8 f e d % 2c
  c4. a'8 a2(
  bes1
  g1) % 3a
  r8 e e f g4. bes8
  bes4. a8 2
  r8 d, bes'4~8 a g f % 3b
  f4. c8 c2~
  c8 c a'4~8 g f e
  d4. f8 2 % 3c
  g4-- g-- r8 f e d
  a4. 8 2
  r8 f' f g a4 g % 4a
  d4. 8 2
  g,4. r8 g' f g f
  c4. 8 2 % 4b
  r4 r8 c f e f g
  a4. g8 f2
  r4 r8 bes bes a g f % 4c
  g4. f8 e4. d8
  a4. 8 2~
  a4 r8 a'8 4 4 % 5a
  d,1(
  g,1
  c1 % 5b
  f,1)
  r4 d' e f
  g2 f % 5c
  e2 a,
  d1
  r1 % 6a
  r1
  r1
  r1 % 6b
  bes'4 bes4~8 a g f
  e4. d8 cis2
  r1 % 6c
  r1
  bes'4. r8 bes a g f
  c4. 8 2 % 7a
  r4 r8 c f e f g
  a4. g8 f2
  r4 r8 bes bes a g f % 7b
  g4. f8 e4. d8
  a4. 8 2~
  a4 r8 a'8 4 4 % 7c
  d,1(
  g,1
  c1 % 8a
  <f, c'>1)
  r4 d' e f
  g2 f % 8b
  e2 a,4. r8
  d1~
  d1~ % 8c
  d1~
  d1\fermata
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*6
  s1\mp % 2c
  s1*4
  s1\< % 3a++
  s8\! s\mf s2. % 3b
  s1
  s1
  s1 % 3c
  s2 s8 s4.\>
  s1
  s8\! s\mp s2. % 4a
  s2 s\<
  s4. s8\! s2\mf
  s1*3 % 4b
  s4. s8\> s2 % 4c
  s4.\!-\markup rall. s8\mp s2
  s1
  s1 % 5a
  s1-\markup {a tempo}
  s1
  s1*3 % 5b
  s1*3 % 5c
  s1*3 % 6a
  s1 % 6b
  s1\mp
  s1
  s1 % 6c
  s1
  s1\mf
  s1*3 % 7a
  s4. s8\> s2 % 7b
  s1\mp-\markup rall.
  s1
  s1 % 7c
  s1-\markup {a tempo}
  s1
  s1 % 8a
  s1
  s4-\markup rit. s2.\>
  s1 % 8b
  s1\p
  s1-\markup {a tempo}
  s1\> % 8c
  s1-\markup rit.
  s1\pp
}

wordsBass = \lyricmode {
  Falls trem- bling on the dis- tant bay, __
  Nor bil- lows lash the sound- ing shore.
  Say, do __ the eyes of those I love, __
  Be- hold __ thee as thou soar'st a- bove,
  Lone- ly, ma- jes- tic and se- rene,
  The calm and plac- id eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest.
  For who would wish a fair- er home
  Than in that bright __ re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray.
%  Say, do the eyes of those I love, __
%  Be hold thee as thou soar'st a- bove,
  Lone- ly, __ maj- es- tic and se- rene,
%  The calm and pla- cid eve- ning's Queen?
  Say, if up- on thy peace- ful breast,
  De- part- ed spir- its find their rest,
  For who would wish a fair- er home
  Than in that bright re- ful- gent dome? __
  How sweet the sil- ver Moon's pale ray. __
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

pianoRH = \relative c' {
  \global
  r8 d a'4~8 g f e
  d8 f d' c bes a g f
  g8 bes, bes' a g f e d
  bes'8 a e' d cis bes a g % 2b
  f8 d a'2.
  d,2 s
  s1*4 % 2c
  <cis e>4 q8 <d f> <e g>4. <e g bes>8 % 3a+
  q4. <f a>8 q2
  <d f bes d>4 s2. % 3b
  <f g bes d>2 <e g c>
  <c e a>4 s2.
  s1 % 3c
  s1
  <d f>4. <e g>8 <cis e>2
  r4 <f, d'>8 <g e'> <a f'>4 <e' g> % 4a
  s1
  <f bes d>2 <bes g'>8 <a f'> <bes g'> <c a'>
  <d f bes>4. <c a'>8 <bes d g>2 % 4b
  <e, a c>2 <a f'>8 <g e'> <a f'> <bes g'>
  <c a'>4. <bes g'>8 <a f'>2
  <d, g bes>4. s8 s2 % 4c
  s1
  s1
  <cis e>1 % 5a
  <d f a d>1
  <f bes d f>1
  s1 % 5b
  <c e a c>1
  <bes d>1
  s1 % 5c
  <d bes'>2 <cis a'>
  <d f a>1
  r8 <bes g'> q <c a'> <d bes'>4. <f d'>8 % 6a
  q4. <g e'>8 <e c'>2~
  q8 <c a'> q <d bes'> <e c'>4. <c a'>8
  <e c'>4. <f d'>8 <d bes'>2 % 6b
  s1
  <e g>4. <d f>8 <cis e>2
  r8 <f a> q <e g> <d f>4 <e g> % 6c
  <c e g c>4. <d fis a d>8 q2
  <d f bes d>2 <bes' g'>8 <a f'> <bes g'> <c a'>
  <d f bes>4. <c a'>8 <c g>2 % 7a
  <e, a c>2 <a f'>8 <g e'> <a f'> <bes a'>
  <c a'>4. <bes g'>8 <a f'>2
  <d, g bes>4. s8 s2 % 7b
  s1
  s1
  <cis e>1 % 7c
  <d f a d>1
  <f bes d f>1
  s1 % 8a
  <c e a c>1
  <bes d>1
  s1 % 8b
  <d bes'>2 <cis a'>
  r8 d' a'4~8 g f e
  d8 f d' c bes a g f % 8c
  g8 bes, bes' c d4 e
  <f, a d f>1\fermata\arpeggio
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*5
  s2 <bes d>~ % 2b++
  q1 % 2c
  c1~
  c2 bes~
  bes2~8 a g f % 3a
  s1*2
  s4 f'2. % 3b
  s1
  s4 e2.
  <d, d'>1 % 3c
  bes'2~8 a g f
  s1
  s1 % 4a
  g4. a8 a fis g16 a bes c
  s1
  s1 % 4b
  s1
  s1
  s2 g8 f g a % 4c
  bes4. a8 g4. f8
  r2 \ottava #1 <a' d e a>2 \ottava #0
  s1*3 % 5a
  <bes, c>1 % 5b
  s1
  s1
  g2 <f a> % 5c
  s1
  s1
  s1*3 % 6a
  s1 % 6b
  <bes d>2~8 <a c> <g bes> <f a>
  s1
  s1*3 % 6c
  s1*3 % 7a
  s2 g8 f g a % 7b
  bes4. a8 g4. f8
  r2 \ottava #1 <a' d e a> \ottava #0
  s1*3 % 7c
  <bes, c>1 % 8a
  s1
  s1
  g2 <f a> % 8b
  s1
  s1
  s1*3 % 8c
  \bar "|."
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  s1*5
  s2 bes8 a g f
  e1 % 2c
  <e a>2 a8 g f e
  d4 g~8 f e d
  d4. e8 e2 % 3a
  s1*2
  s4 <bes' d>4~8 <a c> <g bes> <f a> % 3b
  s1
  s4 <a c>4~8 <g bes> <f a> <e g>
  f4. a8 2 % 3c
  d,1
  s1
  s1 % 4a
  c1
  s1
  s1 % 4b
  s1
  s1
  s4. bes8~2 % 4c
  d1
  <d e>1
  s1*3 % 5a
  <d f>2 <e g> % 5b
  s1
  s1
  bes1 % 5c
  s1
  s1
  s1*3 % 6a
  s1 % 6b
  d1
  s1
  s1*3 % 6c
  s1*3 % 7a
  s4. bes8~2 % 7b
  d1
  <d e>1
  s1*3 % 7c
  <d f>2 <e g> % 8a
  s1
  s1
  bes1 % 8b
  s1
  s1
  s1*3 % 8c
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp s1*10
  s1\< % 3a++
  s1\mf % 3b
  s1*3
  s2 s8 s\> s4
  s1
  s8\! s\mp s2. % 4a
  s2 s\<
  s4. s8\! s2\mf
  s1*3 % 4b
  s4. s8\> s2 % 4c
  s4.\!-\markup rall. s8\mp s2
  s1
  s1 % 5a
  s1-\markup {a tempo}
  s1
  s1*3 % 5b
  s1*3 % 5c
  s1\< % 6a
  s1\mf
  s1
  s1\> % 6b
  s1\mp
  s1
  s1 % 6c
  s1\<
  s1\mf
  s1*3 % 7a
  s4. s8\> s2 % 7b
  s1\mp-\markup rall.
  s1
  s1 % 7c
  s1-\markup {a tempo}
  s1
  s1 % 8a
  s1
  s4-\markup rit. s2.\>
  s1 % 8b
  s1\p
  s1-\markup {a tempo}
  s1\> % 8c
  s1-\markup rit.
  s1\pp
}

pianoLH = \relative c, {
  \global
  \oneVoice
  d8 a' d e f2
  bes,,8 f' d' f bes2
  e,,8 d' g bes~2
  a,8 e' g bes~2 % 2b
  d,,8 a' d e f g a4
  g,8 d' f bes~2
  c,,8 g' c e g2 % 2c
  f,8 c' f a~2
  bes,,8 f' d'2.
  e,8 e' g2. % 3a
  a,,8 a' e' g~g e a,4
  d,8 a' d e f g a c
  g,8 d' f a d2 % 3b
  c,8 f g a c4 c,
  f,8 c' f a c2
  bes,,8 f' d' e f g a c % 3c
  s1
  <a, g'>1
  d,8 a' d2. % 4a
  d,8 a' d fis a4 d,
  g,8 d' f g bes2
  c,,8 c' f g bes4 c, % 4b
  f,8 c' f g a2
  bes,,8 f' d'2 f8 d
  e,8 e' g2. % 4c
  g4. f8 e4. d8
  a8 e' bes'2.
  a,,1 % 5a
  d8 a' d e f g a f
  f,8 d' f g bes a g f
  c,8 c' f g e4 c % 5b
  f,8 c' f g a g f e
  bes,8 f' bes d e4 f
  g,8 d' g d f, d' f a % 5b
  e,8 e' g e a,4 a,
  d8 a' d e f g a4
  g,8 d' g4~8 d g,4 % 6a
  c,8 g' c e g4 c,
  f,8 c' f4~8 c f,4
  bes,8 f' d'2. % 6b
  e,8 e' g a bes2
  a,,8 a' e' f g2
  d,8 a' d f a2 % 6c
  <d, g>4. d,8 d a' d fis
  g,8 d' f g bes2
  c,,8 c' f g a4 c, % 7a
  f,8 c' f g a2
  bes,,8 f' d'2 f8 d
  e,8 e' g2. % 7b
  g4. f8 e4. d8
  a8 e' a2.
  a,,1 % 7c
  d8 a' d e f g a f
  f,8 d' f g bes a g f
  c, c' f g e4 c % 8a
  f,8 c' f g a g f e
  bes, f' bes d e4 f
  g,8 d' g d f, d' f d % 8b
  e,8 e' g e a,2
  d,8 a' d e f2
  bes,,8 f' d' f a2 % 8c
  e,8 d' g a <a d e>2
  \clef treble <d e f g a>1\fermata\arpeggio
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s1*16
  g2~8 f e d % 3c+
  s1
  s1*9 % 4a
  s1*9 % 5a
  s1*9 % 6a
  s1*9 % 7a
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  s1*16
  bes1 % 3c+
  s1
  s1*9 % 4a
  s1*9 % 5a
  s1*9 % 6a
  s1*9 % 7a
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    % \articulate
    <<
    \context GrandStaff <<
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    % \articulate
    <<
    \context GrandStaff <<
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \bookOutputSuffix "women"
  \score {
    \unfoldRepeats
    %\articulate
    <<
    \context GrandStaff <<
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
%            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBass
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
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
 >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "men"
  \score {
    \unfoldRepeats
    %\articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsMenMidi
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBass
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
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
 >>
    \midi {}
  }
}
