\version "2.25.80"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Messiah"
  subtitle    = "№ 26. All we Like Sheep have Gone Astray."
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Handel"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
%  \once \set Score.tempoHideNote = ##f
  \tempo "Allegro moderato." 4=92 s1*75 s2
  \tempo "Adagio." 4=60 s2 s1*16
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "95a" } s1*4
  \textMark \markup { \box "95b" } s1*4
  \textMark \markup { \box "95c" } s1*2
  \mark \markup\bold\circle A      s1
  \textMark \markup { \box "96a" } s1*3
  \textMark \markup { \box "96b" } s1*4
  \textMark \markup { \box "96c" } s1*4
  \mark \markup\bold\circle B
  \textMark \markup { \box "97a" } s1*3
  \textMark \markup { \box "97b" } s1*3
  \mark \markup\bold\circle C
  \textMark \markup { \box "97c" } s1*4
  \textMark \markup { \box "98a" } s1*4
  \textMark \markup { \box "98b" } s1*4
  \mark \markup\bold\circle D
  \textMark \markup { \box "98c" } s1*3
  \textMark \markup { \box "99a" } s1*3
  \textMark \markup { \box "99b" } s1*3
  \textMark \markup { \box "99c" } s1*2
  \mark \markup\bold\circle E      s1
  \textMark \markup { \box "100a" } s1*4
  \textMark \markup { \box "100b" } s1*4
  \textMark \markup { \box "100c" } s1*3
  \textMark \markup { \box "101a" } s1
  \mark \markup\bold\circle F       s1*2
  \textMark \markup { \box "101b" } s1*3
  \textMark \markup { \box "101c" } s1*3
  \textMark \markup { \box "102a" } s1*3
  \mark \markup\bold\circle G       s1*2
  \textMark \markup { \box "102b" } s1*7
  \textMark \markup { \box "102c" } s1*7 s\breve  
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4. s8\f s2 | s1*10 |
  s1*11 |
  s1*10 | % 97
  s1*11 |
  s1*9 |
  s1*11 | % 100
  s1*9 |
  s1*4 | s2 s\mf | s1*2 | s2 s\cresc | s1*7 | s2 s\p | s1 | s\dim | s1 | s \after 2... \omit\pp s |
}

soprano = \relative {
  \global
  r4 r8 c'' f4 d | c r r2 | r4 r8 c, f4 d | c r8 c d c f(e |
  a8 g bes a d c e f | g4) r8 g, c4 a | g r r2 | r4 r8 c f4 d |
  c4 r r2 | R1 | r4 g8 bes a16(g f a g f e g |
  a16 g f a g a bes g a g f a g a bes g | a8) f c'8 8 4 4 | 4 4 2 | % 96a
  R1*2 | r4 r8 g c4 a | g r r2 |
  R1*2 | r4 r8 g a g c(b | e d f e a g b, c |
  d4) r r g8 g | 4 g, r2 | r4 d'8 f e16(d c e d c b d | % 97a
  e16 d c e d e f d e d c e d e f d | e8) c g'8 8 4 4 | 4 4 8(f e) d16(c) |
  b4. 8 c4 8 8 | 4 c, r2 | r r4 f'8 e | d c bes a g 4 r |
  r2 r4 r8 g | c4 a g r | R1 | r2 r4 r8 f | % 98a
  g8 f bes(a d c) r4 | R1 | r2 r4 r8 f, | g f bes(a d c ees d |
  g8 f a, bes c4) r | R1*2 |
  R1 | r2 r4 f8 8 | 4 f, r4 d'8 ees | % 99a
  f8 bes, f g a4 bes | bes a bes r | R1 |
  r4 a8 bes c a c d | e c e f g2~ | 8 c, bes c a4 r8 c |
  f4 d c r | r2 r4 r8 f, | c'4 a g r | R1 | % 100a
  r2 r4 r8 c | d c f(e d c bes a | d c bes a g4) r | r f'8 8 4 f,4 |
  r4 g'8 8 4 g,4 | R1*2 |
  r4 c8 bes a g a bes | g4 r r2 | r2 r4 f'8 ees | % 101a
  d16(c bes d c bes a c bes4) f | r2 r4 f'8 ees | d16(c bes d c bes a c bes a g bes a bes c a |
  d16 c d c bes a bes a g8) g r4 | r2 r4 a8 bes | c a c d e4 f |
  f4 e f c8 c | c c c c b4 c | 2 b | c r | r g4.. 16 | % 102a
  c2 bes | aes a | bes a4.. 16 | f'2 ees | des c | bes a | bes c |
  des1~ | 2 2 | c1~ | 2 4 4 | 4 4 bes2 | aes1( | g2.) f4 | \omit\time 4/2 f\breve |
  \bar "|."
}

atLhloHc   = \lyricmode { and the Lord hath laid on Him, }
awlsc      = \lyricmode { all we like sheep, }
awlssc     = \lyricmode { all we like sheep; }
Awlsc      = \lyricmode { All we like sheep, }
awlshgac   = \lyricmode { all we like sheep have gone a -- stray, }
awlshgasc  = \lyricmode { all we like sheep have gone a -- stray; }
eothowc    = \lyricmode { ev -- ’ry one to his own way, }
hgasc      = \lyricmode { have gone a -- stray; }
hloHc      = \lyricmode { hath laid on Him, }
hloHtiouap = \lyricmode { hath laid on Him the in -- i -- qui -- ty of us all. }
oHc        = \lyricmode { on Him, }
oHtiouap   = \lyricmode { on Him the in -- i -- qui -- ty of us all. }
thowc      = \lyricmode { to his own way, }
tLhloHtiouap = \lyricmode { the Lord hath laid on Him the in -- i -- qui -- ty of us all. }
wht        = \lyricmode { we have turn -- ed }
whtc       = \lyricmode { we have turn -- ed, }
whteoc     = \lyricmode { \wht ev -- ’ry one, }
whteothowc = \lyricmode { \wht \eothowc }

wordsSop = \lyricmode {
  \Awlsc \awlshgac \awlsc \awlssc \whteothowc
  \awlshgasc
  \whtc \whteothowc \thowc \whteothowc % 97
  \awlshgac \hgasc
  \whtc \whteothowc \whteothowc \thowc \awlsc
  \awlshgasc \whtc \whteothowc % 100
  \whtc \whtc \whteothowc
  \whteothowc \atLhloHc \atLhloHc \hloHc \oHtiouap
}

MatLhloHc   = \lyricmode { "\nand " "the " "Lord " "hath " "laid " "on " "Him, " }
Mawlsc      = \lyricmode { "\nall " "we " "like " "sheep, " }
Mawlssc     = \lyricmode { "\nall " "we " "like " "sheep; " }
MAwlsc      = \lyricmode { "All " "we " "like " "sheep, " }
Mawlshgac   = \lyricmode { "\nall " "we " "like " "sheep " "have " "gone " a "stray, " }
Mawlshgasc  = \lyricmode { "\nall " "we " "like " "sheep " "have " "gone " a "stray; " }
Meothowc    = \lyricmode { "\nev" "’ry " "one " "to " "his " "own " "way, " }
Mhgasc      = \lyricmode { "\nhave " "gone " a "stray; " }
MhloHc      = \lyricmode { "\nhath " "laid " "on " "Him, " }
MhloHtiouap = \lyricmode { "\nhath " "laid " "on " "Him " "the " in i qui "ty " "of " "us " "all. " }
MoHc        = \lyricmode { "on " "Him, " }
MoHtiouap   = \lyricmode { "\non " "Him " "the " in i qui "ty " "of " "us " "all. " }
Mthowc      = \lyricmode { "\nto " "his " "own " "way, " }
MtLhloHtiouap = \lyricmode { "\nthe " "Lord " "hath " "laid " "on " "Him " "the " in i qui "ty " "of " "us " "all. " }
Mwht        = \lyricmode { "\nwe " "have " turn "ed " }
Mwhtc       = \lyricmode { "\nwe " "have " turn "ed, " }
Mwhteoc     = \lyricmode { \Mwht ev "’ry " "one, " }
Mwhteothowc = \lyricmode { \Mwht \Meothowc }

wordsSopMidi = \lyricmode {
  \MAwlsc \Mawlshgac \Mawlsc \Mawlssc \Mwhteothowc
  \Mawlshgasc
  \Mwhtc \Mwhteothowc \Mthowc \Mwhteothowc % 97
  \Mawlshgac \Mhgasc
  \Mwhtc \Mwhteothowc \Mwhteothowc \Mthowc \Mawlsc
  \Mawlshgasc \Mwhtc \Mwhteothowc % 100
  \Mwhtc \Mwhtc \Mwhteothowc
  \Mwhteothowc \MatLhloHc \MatLhloHc \MhloHc \MoHtiouap
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4. s8\f s2 | s1*10 |
  s1*11 |
  s1*10 | % 97
  s1*11 |
  s1*9 |
  s1*11 | % 100
  s1*9 |
  s1*6 | s2 s\mf | s2 s\cresc | s1*7 | s2 s\p | s1 | s\dim | s1 | s \after 2... \omit\pp s |
}

alto = \relative {
  \global
  r4 r8 f'8 4 4 | a r r2 | r4 r8 c, f4 d | c r r2 |
  R1 | r4 r8 e f4 f | e r r2 | r4 r8 g f4 f |
  a4 r8 c, d c f(e | a g bes a d, c e f | g4) r r2 |
  R1 | r4 g8 bes a16(g f a g f e g | a g f a g a bes g a g f a g a bes g | % 96a
  a8) f c d e c f g | a(e) f g a bes16(a) g8 f | e4 r8 8 g4 f | e r r2 |
  R1*2 | r4 r8 e f e a(g | c, b d c f e d c |
  b4) r r2 | R1*2 | % 97a
  R1 | r4 b8 c d b e f | g e g a d,(g4) a8 |
  g4. 8 4 r | r2 r4 c8 c | 4 c, r f8 a | bes a g f e4 r |
  r2 r4 r8 e | f4 f e r | r2 r4 r8 c d c f(e a g) r4 | % 98a
  R1*4 |
  R1 | r4 f8 8 4 4 | r2 r4 8 f |
  f4 f f f | 1 | r4 d8 ees f4 d | % 99a
  r4 bes8 ees8 4 d | g f f r | r d8 ees f d f g |
  a8 f c e f4 r | r2 r4 e8 f | g e f g a4 r8 8 |
  f4 f a r | r2 r4 r8 c, | f4 f e r | R1 | % 100a
  R1 | r8 c d c f(e g f | bes a g f e4) r | R1 |
  R1 | r4 a8 8 4 a, | r4 bes'8 8 4 bes, |
  r4 g'8 g f e f g | e4 r r <<{\vo c'8 bes} \new Voice {\vt \teeny c,8 g'}>> | \ov a16(g f a g f e g f8) c f a | % 101a
  bes4 a r f8 ees | d16(c bes d c bes a c bes8) d f c | bes'16(a g bes a g f a g f e g f g a f |
  bes16 a bes a g f g f e8) e r4 | r f8 g a f r4 | r a8 a g4 a |
  g4 g a4 8 8 | g g g g f4 g | 2 2 | 2 r | R1 | % 102a
  R1 | r2 c,4.. 16 | f2 ees | des c | bes a | f'1 | R |
  r2 aes | g f | e1~ | 2 4 4 | f4 4 2 | 1 | e | \omit\time 4/2 f\breve |
}

wordsAlto = \lyricmode {
  \Awlsc \awlsc \awlsc \awlshgasc
  \whteothowc \eothowc \awlshgasc
  \whtc \whteothowc \whteothowc % 97
  \awlshgac \whteothowc
  \whteothowc \whteothowc \eothowc \awlsc
  \awlshgasc \whtc \whteothowc % 100
  \whtc \whtc \whtc \whtc \whteothowc
  \whteothowc \atLhloHc \oHc \hloHtiouap
}

wordsAltoMidi = \lyricmode {
  \MAwlsc \Mawlsc \Mawlsc \Mawlshgasc
  \Mwhteothowc \Meothowc \Mawlshgasc
  \Mwhtc \Mwhteothowc \Mwhteothowc % 97
  \Mawlshgac \Mwhteothowc
  \Mwhteothowc \Mwhteothowc \Meothowc \Mawlsc
  \Mawlshgasc \Mwhtc \Mwhteothowc % 100
  \Mwhtc \Mwhtc \Mwhtc \Mwhtc \Mwhteothowc
  \Mwhteothowc \MatLhloHc \MoHc \MhloHtiouap
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4. s8\f s2 | s1*10 |
  s1*11 |
  s1*10 | % 97
  s1*11 |
  s1*9 |
  s1*11 | % 100
  s1*9 |
  s1*5 | s2 s\mf | s1 | s2 s\cresc | s1*7 | s2 s\p | s1 | s\dim | s1 | s \after 2... \omit\pp s |
}

tenor = \relative {
  \global
  r4 r8 a c4 d | f r r2 | r4 r8 a, c4 bes | a r8 a bes a d(c |
  f8 e d c bes a g f | e4) r8 c'8 4 4 | c r r2 | r4 r8 c8 4 d8(e) |
  f4 r r2 | R1 | r2 r4 c8 c |
  c4 c, r2 | R1*2 | % 96a
  r4 c'8 8 4 4 | 4 4 8(d16 c bes8 a | g4) r8 c8 4 4 | 4 r r2 |
  r4 r8 g a g c(b | e d f e a, g b c | d4) r r2 | R1 |
  r4 d8 f e16(d c e d c b d | e d c e d e f d e d c e d e f d | e8) c g8 8 4 4 | % 97a
  g4 4 2 | r4 g8 a b g c b | c4.(b16 a b8 d e) f |
  d4. 8 e4 r | r c8 8 4 c, | R1 | r2 r4 f'8 e |
  d8 c bes a g4 r8 c | 4 4 4 r | R1*2 | % 98a
  r2 r4 r8 f, | g f bes(a d c ees d | g f a, bes c4) r | R1 |
  r2 r4 c8 ees | d16(c bes d c bes a c d c bes d c d ees c | d c bes d c d ees c d8) bes r4 |
  R1 | r2 r4 a8 bes | c a bes c d4 bes | % 99a
  r4 d8 c8 4 bes | c c d bes8 c | d bes f' a, bes f f c' |
  c4 r r2 | r4 c8 d e c g' b, | c g f c'8 4 r8 f |
  c4 d f r | r2 r4 r8 a, | c4 c c r8 c | d c f(ees d c bes a | % 100a
  d8 c bes a g4) r | R1*3 |
  r2 r4 e'8 8 | 4 e, r f'8 8 | 4 f, r2 |
  r4 e'8 e c c c d | e4 r r2 | R1 | % 101a
  r4 f8 ees d16(c bes d c bes a c | bes4) f r2 | r r4 c'8 f |
  f8 f d c8 4 8 d | e c r4 r2 | r4 f8 f e4 c |
  c4 c c f8 f | c c c c d4 e | d2 d | e r | R1 | % 102a
  r2 e4.. 16 | f2 ees | des c | bes a | f'1 | R1*2 |
  r2 c | bes aes | g1~ | 2 4 4 | c c des2 | c1~ | 2 2 | \omit\time 4/2 aes\breve |
}

wordsTenor = \lyricmode {
  \Awlsc \awlshgasc\awlsc \awlssc \wht
  \eothowc \awlshgasc
  \whteothowc \whteothowc \whteothowc % 97
  \awlshgasc \whtc
  \whtc \whteothowc \whteothowc \whteothowc \awlsc
  \awlshgasc \whtc \whteothowc % 100
  \whteothowc \whteothowc
  \whteothowc \atLhloHc \oHc \hloHtiouap
}

wordsTenorMidi = \lyricmode {
  \MAwlsc \Mawlshgasc\Mawlsc \Mawlssc \Mwht
  \Meothowc \Mawlshgasc
  \Mwhteothowc \Mwhteothowc \Mwhteothowc % 97
  \Mawlshgasc \Mwhtc
  \Mwhtc \Mwhteothowc \Mwhteothowc \Mwhteothowc \Mawlsc
  \Mawlshgasc \Mwhtc \Mwhteothowc % 100
  \Mwhteothowc \Mwhteothowc
  \Mwhteothowc \MatLhloHc \MoHc \MhloHtiouap
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4. s8\f s2 | s1*10 |
  s1*11 |
  s1*10 | % 97
  s1*11 |
  s1*9 |
  s1*11 | % 100
  s1*9 |
  s1*4 | s2 s\mf | s1*2 | s2 s\cresc | s1*7 | s2 s\p | s1 | s\dim | s1 | s \after 2... \omit\pp s |
}

bass = \relative {
  \global
  r4 r8 f a4 bes | f r r2 | r4 r8 f a,4 bes | f' r r2 |
  R1 | r4 r8 c' a4 f | c' r r2 | r4 r8 c a4 bes |
  f4 r8 f bes, a d(c | f e g f bes a g f | c'4) r r2 |
  R1*3 | % 96a
  R1*2 | r4 r8 c, e4 f | c r r2 |
  r4 r8 c f e a(g | c b a g f e d c | g'4) r r2 | R1 |
  R1*3 | % 97a
  R1 | r2 r4 c,8 d | e c e f g(b c) f, |
  g4. 8 c,4 r | R1 | r4 c'8 8 4 c, | r2 r4 a'8 f |
  bes8 a g f c4 r8 c | a'4 f c r | R1*2 | % 98a
  R1*2 | r2 r4 r8 d' | ees(d) r c bes(a g f |
  ees8 d c bes f'4) r | R1 | r2 r4 c'8 ees |
  d16(c bes d c bes a c d d bes d c d ees c | d c bes d c bes a c d8) bes f g | a f r4 r bes,8 c | % 99a
  d8 bes d ees f4 g | ees f bes, r | r bes8 c d bes d e |
  f4 8 g a f a bes | c4 r r c,8 d | e c d e f4 r8 f |
  a4 bes f r | r2 r4 r8 f | a4 f c r | r8 c d c f(e g f | % 100a
  bes8 a g f c4) r | R1 | r2 r4 c'8 8 | 4 c, r d'8 8 |
  d4 d, r2 | R1*2 |
  r4 e8 c f c f bes, | c4 c'8 bes a16(g f a g f e g | f8) c c' bes a4 f | % 101a
  R1 | r4 f8 ees d16(c bes bes' a g f a | bes4) f r f8 f |
  d8 f bes f c4 r | r2 r4 f8 g | a f a bes c4 f, |
  c'4 c f,4 8 8 | e e e e d4 c | g'2 g, | c2 4.. 16 | c'2 bes | % 102a
  aes2 g f1~ | 1~ | 1~ | 2 ees | des ees | des c |
  bes1~ | 1~ | 1~ | 2 4 4 | aes4 4 bes2 | c1~ | 2 2 | \omit\time 4/2 f\breve |
}

wordsBass = \lyricmode {
  \Awlsc \awlsc \awlsc \awlshgasc
  \awlshgasc
  \whteothowc \whteothowc % 97
  \awlshgasc \whtc
  \whtc \whteothowc \whteoc \eothowc \eothowc \awlsc
  \awlshgasc \whtc \whteothowc % 100
  \whtc \whtc \whteothowc \whteothowc
  \whteothowc \atLhloHc \tLhloHtiouap
}

wordsBassMidi = \lyricmode {
  \MAwlsc \Mawlsc \Mawlsc \Mawlshgasc
  \Mawlshgasc
  \Mwhteothowc \Mwhteothowc % 97
  \Mawlshgasc \Mwhtc
  \Mwhtc \Mwhteothowc \Mwhteoc \Meothowc \Meothowc \Mawlsc
  \Mawlshgasc \Mwhtc \Mwhteothowc % 100
  \Mwhtc \Mwhtc \Mwhteothowc \Mwhteothowc
  \Mwhteothowc \MatLhloHc \MtLhloHtiouap
}

pianoRHone = \relative {
  \global
  <a c f>4 r8 <f' a c> <f c' f>4 <f bes d> |
  <f a c>4 r8 q <f c' f>4 <f bes d> |
  <f a c>4 r8 <a, c> <a c f>4 <f bes d> |
  <f a c>4 r8 c' d(c f e) |
  \vo a8(g bes a) d(c e f) \ov | % 95b
  <g, c g'>4 r8 <c, e g> <c f c'>4 <c f a> |
  <e g>4 r8 <c' e g> <c g' c>4 <c f a> |
  <c e g>4 r8 <e, g c> <f c' f>4 <f bes d> |
  <f a c>4 r8 c d(c f e) | a(g bes a) d,(c <bes e> <a f'>) | % 95c
  <c g'>4 g'8 bes a16 g f a \vo c8 8 |
  c4 g16 a bes g \ov a g f a g a bes g | % 96a
  <f a>8 [ f ] <c' g'> <c bes'> \vo a'16 g f a g f e g |
  a16 g f a g a bes g a g f a g a bes g |
  a8 f c d e c f g | % 96b
  a e f g \ov <c, a'>(<d bes'>16 <c a'>) <bes g'>8-. <a f'>-. |
  <g e'>4 r8 <c, e g> <c g' c>4 <c f a> |
  <c e g>4 r8 <c' e g> <c g' c>4 <c f a> |
  <c e g>4 r8 g, a(g c b) | e(d f e) a,(g b c) | % 96c
  d4 r8 <e g> a(g c b) | e(d f e) a(g b, c) |
  d4 \vo r r g,8 8 | 4 8 8 2~ | 4 d'8 f e16 d c e d c b d | % 97a
  e16 d c e d e f d e d c e d e f d | <c e>8 c g'8 8 4 4 | % 97b
  g4 8 a <g b> <f g>(<e g>) c' |
  \ov <d, g b>4. 8 <e g c>4 c8 c | % 97c
  c4 <c, c'>8 8 4 <c' c'>8 8 | 4 <c, c'>8 8 4 <f f'>8 <a e'> |
  <bes d>8 <a c> <g bes> <f a> <e g>4 \vo r |
  d8 c bes a g4 r8 <c e g> | <c f c'>4 <c f a> <c e g> r8 <c' e g> | % 98a
  <c f c'>4 <c f a> <c e g> r8 c, | d(c f e) a(g) r f |
  g8(f bes a) d(c) r f,, | g f bes a d c ees d | % 98b
  g8 f a, bes c4 r8 <d f> | g8(f bes a) d(c es d) |
  g8 f a, bes c4 c8-. ees-. \vo r4 f8 8 4 c16 d ees c | % 98c
  d16 c bes d c d ees c d8 [ bes ] \ov <c, f> <ees f> |
  \vo f4 f f f | 2~4 f'8 8 | 4 f, r d'8 ees | % 99a
  \ov <bes f'>8 <bes d> <bes f'> <g bes ees g> <c ees a>4-! <bes d g bes>-! | % 99b
  <c g' bes>4-! <c f a>-! <bes d f bes> bes,8 c |
  d8 [ bes ] <bes d> <a ees'> <bes f'> <f d'> <f f'> <c' g'> |
  <c a'>8 <a f'> <c a'> <e bes'> \vo c' a c d | % 99c
  e8 c e f g2~ |
  \ov <g, c e g>8 <e g c> <d f bes> <c g' c> <c f a> f a <f a c> |
  \vo f'4 d c r8 c \ov | <f, c' f>4 <f bes d> <f a c>4. 8 | % 100a
  <c' f c'>4 <c f a> <c e g> r8 c, | d(c f e) d(c bes a) |
  d8(c bes a) g4 r8 c' | \vo d(c f e) d(c bes a) | % 100b
  d8(c bes a) \ov <e' g>16 <d f> <c e> <d f> <e g> <f a> <g bes> <e g> |
  \vo a8 [ c, ] f8 8 4 r |
  r4 g8 8 4 e16(f g e) | c8 16 bes a8 8 4 r | % 100c
  bes16 c d ees bes'8 8 16 f g a bes a g f |
  g16 f e d c bes a g a c d e f e f g | e4 c c c8 bes | % 101a
  <f a>16 g f a g f e g <c, f>8 c f' [ ees ] |
  d16 c bes d f8 ees <bes d>16 c bes d c bes a c | % 101b
  bes8 r r4 r \ov <c f>8 <f c'> |
  <bes d>16 <a c> <g bes> <bes d> <a c> <g bes> <f a> <a c> <g bes> <f a> <e g> <g bes> <f a> <g bes> <a c> <f a> |
  <bes d>16 <a c> <bes d> <a c> <g bes> <f a> <g bes> <f a> <e g>8 8 \vo r4 | % 101c
  r4 \ov f,8 g a f a bes | c a <f a c> <f a d> <e g e'>4-! <a c f>-! |
  <g c f>4-! <g bes c e>-! <a c f> <c f a c>8 q | % 102a
  <c g' c>8 8 8 8 <d f b>4 <e g c> | <d g c>2 <d g b> |
  <e g c>2 r | r \vo g,4.. 16 |
  <f c'>2 bes | <f aes> <ees a> | <f bes> a4.. 16 | % 102b
  f'2 ees | des c | \ov <f, bes> <c f a> | <bes f' bes> <ees a c> |
  \vo des'1~ | 1 | \ov <g,, e' c'>1\arpeggio~ | 2 <g' c>4 <e g c> | % 102c
  <c f c'>4 4 <des f bes>2 | \vo <f aes>1 |
  <<{\vth e1} \new Voice {\vo g2. f4}>> |
  \ov \omit\time 4/2 <aes, c f>\breve |
}

pianoRHtwo = \relative {
  \global \vt
  s1*4 |
  r4 f'~f bes8 a | s1*3 |
  s1*2 | s2. g16 f e g |
  a16 g f a c,4 s2 | s c'4 4 | 4 4 2~ | % 96a
  c4 c~8 8 4 | 4 4 s2 | s1*2 |
  s1*4 |
  s4 d,8 f e16 d c e d c b d | e d c e d e f d e d c e d e f d | % 97a
  e8 c g'8 8 4 4 |
  g4 4 2 | 4 b8 c d b <c e> <b f'> | c8 <c e> c b16 a d4 c8 a' | % 97b
  s1*3 | s2. f,8 e | % 97c
  s1*8 | % 98ab
  s1 | d'16 c bes d c bes a c d c bes d f,8 8 | 4 g8 a f4 s |
  d16 c bes d c bes a c d c bes d c d ees c | % 99a
  d16 c bes d c bes a c d8 [ bes ] a' bes | <f c'> [ a ] d, ees f4 bes |
  s1*3 | % 99b
  s2 f4 r | r2 r4 <g e'>8 <b f'> | s1 | % 99c
  <a c>8(f) bes(f) a(f) a(f) | s1*3 | % 100a
  s1 | \lh bes,8(a \rh d c) f(e g f) | bes8(a g f) s2 | % 100b
  c'16 bes a bes c d ees c d c bes c d e f d |
  g16 a bes a g f e d e d c d g,8 8 | % 100c
  a16 bes e,8 a16 g f e f e d e f g a f | <d f>8 f f'16 e d c bes2 |
  g4 8 e a g a8. bes16 | g4 c8 bes a16 g f a g f e g | % 101a
  c,4 r8 c s4 f8 a |
  f4 <a c>16 bes a c f,4 8 ees | d16 c bes d c bes a c bes8 d s4 | s1 | % 101b
  s2. c8 d | e c s2. | s1 |
  s1*4 | s2 <c e> | % 102a
  c2 e4.. 16 | c2 4.. 16 | des2 <c ees> | f1~ | f | s1*2 |
  <f bes>2 <c aes'> | <bes g'> <aes f'> | s1*3 | c1~ | 2 2 | s\breve |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*11 |
  s1*11 |
  s1*10 | % 97
  s1*11 |
  s1*9 |
  s1*11 | % 100
  s1*9 |
  s1*3 | s2 s\mf | s1*11 | s2 s\p | s1 | s\dim | s | s \after 2... \omit\pp s |
}

pianoLHone = \relative {
  \global
  <f,, f'>8 <f' f'> \*2{<a a'>(<f f'>)} <bes bes'>(<f f'>) |
  \*3{<a a'>(<f f'>)} <bes bes'>(<d d'>) |
  <a a'>8(<f f'>) \*2{<a, a'>(<f f'>)} <bes bes'>(<f f'>) |
  <a a'>8(<f f'>) \vo r8 a'' bes(a d c) |
  f8(e d c) bes(a g f) | % 95b
  \*2{<e, e'>8(<c c'>)} \*2{<a' a'>(<f f'>)} |
  <c' c'>8(<c, c'>) \*2{<e e'>(<c c'>)} <f f'>(<c c'>) |
  \*2{<e e'>8(<c c'>)} <a' a'>(<f f'>) <bes bes'>(<f f'>) |
  \*2{<a a'>8(<f f'>)} <bes, bes'> <a a'> <d d'> <c c'> | % 95c
  <f f'>8 <e e'> <g g'> <f f'> <bes bes'> <a a'> <g g'> <f f'> |
  <e e'>(<d d'>) <e e'> <c c'> <f, f'> <f' f'> <e e'> <c c'> |
  <f f'>8 <f, f'> <e' e'> <g g'> <f f'> <a a'> <bes bes'> <c c'> | % 96a
  <f, f'>8 <d d'> <e e'> <c c'> <f, f'> <f' f'> <e e'> <c c'> |
  <f, f'>8 <f' f'> <e e'> <g g'> <f f'> <a a'> <c c'> <c, c'> |
  <f, f'>8 <f' f'> <e e'> <d d'> <c c'> <bes bes'> <a a'> <g g'> | % 96b
  <f f'>8 <c' c'> <d d'> <e e'> <f f'> <a, a'> <bes bes'> <f f'> |
  <c' c'>8 q \*2{<e e'>(<c c'>)} <f f'> <c c'> |
  \*3{<e e'>(<c c'>)} <f f'>(<c c'>) |
  \*2{<e e'>8 <c c'>} <f f'> <e e'> <a a'> <g g'> | % 96c
  <c c'> <b b'> <a a'> <g g'> <f f'> <e e'> <d d'> <c c'> |
  <g' g'>8 a' b c \clef treble f(e a g) |
  c,8(b d c) f(e d c) \clef bass |
  <g b>8 <g,, g'> <b b'> <g g'> <c c'> <e e'> <g g'> <g, g'> | % 97a
  <c c'>8 <c' c'> <b b'> <d d'> <c c'> <e, e'> <g g'> <b b'> |
  <c c'> <c, c'> <b b'> <g g'> <c c'> <e e'> <g g'> <g, g'> |
  <c c'>8 <e, e'> <g g'> <b b'> <c c'> <e e'> <g g'> <g, g'> | % 97b
  <c c'>8 <e e'> <g g'> <a a'> <b b'> <g g'> <c, c'> <d d'> |
  <e e'>8 <c c'> <e e'> <f f'> <g g'> <b b'> <c c'> <f, f'> |
  <g g'>8 <f f'> <g g'> <g, g'> <c c'> <d d'> <e e'> <c c'> | % 97c
  <f f'>8 <g g'> <a a'> <f f'> c' <c, c'> <e e'> <c c'> |
  <f f'>8 <g g'> <a a'> <f f'> <e e'> <c c'> <a a'> <f f'> |
  <bes bes'>8 <f' f'> <bes bes'> <bes, bes'> <c c'> <bes bes'> <a a'> <f f'> |
  <bes bes'>8(<a a'> <g g'> <f f'>) <c' c'> q <e e'>(<c c'>) | % 98a
  \*2{<a a'>8(<f f'>)} <c' c'> q <e e'>(<c c'>) |
  \*2{<a' a'>(<f f'>)} <c' c'>(<bes bes'> <c c'>) <a a'> |
  <bes bes'>8(<a a'>) r <g g'> <f f'>(<c' c'> <bes bes'> <a a'>) |
  <bes bes'>(<a a'> <g g'> <f f'>) <bes, bes'>(<f f'> <g g'> <a a'>) | % 98b
  \*2{<bes bes'>8(<a a'> <g g'> <f f'>)} |
  <ees' ees'>8(<d d'> <c c'> <bes bes'>) <f' f'>(<g g'> <a a'> <bes bes'>) |
  <ees ees'>(<d d'>) r <c c'> <bes bes'>(<a a'> <g g'> <f f'>) |
  <ees ees'>8(<d d'> <c c'> <bes bes'>) <f' f'>-. <g g'>-. <a a'>-. <f f'>-. | % 98c
  <bes bes'>8-. <bes, bes'>-. <a a'>-. <f f'> <bes bes'> <bes' bes'> <a a'> <a, a'> |
  <bes bes'>8 <d d'> <ees ees'> <f f'> <bes, bes'> <bes' bes'> <a a'> <f f'> |
  <bes bes'>8 [ <d, d'> ] <f f'> <f, f'> <bes bes'> <bes' bes'> <a a'> <a, a'> | % 99a
  <bes bes'>8 <d d'> <f f'> <f, f'> <bes bes'> <d d'> <f f'> <g g'> |
  <a a'>8 <f f'> <bes bes'> <c c'> <d d'> [ <bes bes'> ] <bes, bes'> <c c'> |
  <d d'>8 <bes bes'> <d d'> <ees ees'> <f f'> <f, f'> <g g'> <g' g'> | % 99b
  <ees ees'>8 <c c'> <f f'> <f, f'> <bes bes'> <f' f'> <g g'> <a a'> |
  <bes bes'>8 [ q ] <bes, bes'> <c c'> <d d'> <bes bes'> <d d'> <e e'> |
  <f f'>4 8 <g g'> <a a'> <f f'> <a a'> <bes bes'> | % 99c
  <c c'>4 \vo c'8 d e [ c ] \ov <c,, c'> <d d'> |
  <e e'>8 <c c'> <d d'> <e e'> <f f'> q <a a'>(<f f'>) |
  <a a'>8(<f f'>) <bes bes'>(<f f'>) \*3{<a a'>(<f f'>)} % 100a
  <bes bes'>(<f f'>) \*2{<a a'>(<f f'>)} |
  \*2{<a, a'>(<f f'>)} <c' c'> q <e e'> <c c'> |
  <f f'> <c c'> <d d'> <c c'> <f f'> <e e'> <g g'> <f f'> |
  <bes bes'>(<a a'> <g g'> <f f'>) <c c'> \vo e'(f a) | s1 | % 100b
  r2 <c, c'>8 <g g'> <e e'> <c c'> |
  <f f'>8 <f, f'> <a a'> <g g'> <bes bes'> <bes' bes'> q <a a'> |
  <g g'>8 <g, g'> <bes bes'> <g g'> <c c'> <c' c'> q <bes bes'> | % 100c
  <a a'> <a, a'> <c c'> <a a'> <d d'> <d' d'> q <c c'> |
  <bes bes'> <bes, bes'> <d d'> <bes bes'> <g g'> <d' d'> <g g'> <d d'> |
  <e e'>8 <d d'> <e e'> <c c'> <f f'> <c c'> <f f'> <bes, bes'> | % 101a
  <c c'>8 <d d'> <e e'> <c c'> <f, f'> <f' f'> <e e'> <c c'> |
  <f f'>8 <a a'> <c c'> <bes bes'> <a a'> <g g'> <a a'> <f f'> |
  <bes, bes'>8 <d d'> <f f'> <f, f'> <bes bes'> <bes' bes'> <a a'> <f f'> | % 101b
  <bes bes'>8 <bes, bes'> <f' f'> <ees ees'> <d d'> <bes bes'> <a a'> <a' a'> |
  <bes bes'>8 <bes, bes'> <f' f'> <f, f'> <bes bes'> <c c'> <f, f'> <f' f'> |
  <d d'>8 <f f'> <bes bes'> <f f'> <c c'> <bes bes'> <a a'> <f f'> | % 101c
  <c' c'>8 <a a'> <d d'> <e e'> <f f'> <f, f'> <f' f'> <g g'> |
  <a a'>8 <f f'> <a a'> <bes bes'> <c c'>4-! <f, f'>-! |
  <c c'>4-! q-! <f f'>4 8 8 | <e e'> q q q <d d'>4 <c c'> | % 102a
  <g' g'>2 <g, g'> | <c c'>2 4.. 16 | <c' c'>2 <bes bes'> |
  <aes aes'>2 <g g'> | f'1~ | 1~ | 1_~ | <f bes>2 <ees a> | % 102b
  <des bes'>2 <ees, ees'> | <des des'> <c c'> |
  <bes bes'>1~ | q~ | 1~ | 2 4 4 | <aes aes'> q <bes bes'>2 | % 102c
  <c c'>1~ | 2 2 | \omit\time 4/2 <f, f'>\breve |
}

pianoLHtwo = \relative {
  \global \vt
  s1*3 | s4 r r2 | R1 | s1*6 |
  s1*11 | % 96
  s1*10 |
  s1*11 |
  s1*7 | s4 r r s | s1 | % 99
  s1*4 | s2 s8 r r4 | R1 | s1*5 |
  s1*9 |
  s1*5 | s1*3 | \vo <bes d>2 <a c> | s1*10 s\breve | % 102
}

#(set-global-staff-size 18)

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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
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
%        \RemoveAllEmptyStaves
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
