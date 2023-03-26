\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "10. Agnus Dei"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \tempo Larghetto 4=60
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
  \textMark \markup { \box "78a" } s1*4
  \textMark \markup { \box "78b" } s1*4
  \textMark \markup { \box "78c" } s1*4
  \textMark \markup { \box "79a" } s1*4
  \textMark \markup { \box "79b" } s1*2
  \mark     \markup { \box "A"   } s1*2
  \textMark \markup { \box "80a" } s1*4
  \textMark \markup { \box "80b" } s1*4
  \textMark \markup { \box "81a" } s1*4
  \textMark \markup { \box "81b" } s1*2
  \mark     \markup { \box "B"   } s1*2
  \textMark \markup { \box "82a" } s1*4
  \textMark \markup { \box "82b" } s1*4
  \textMark \markup { \box "83a" } s1*4
  \textMark \markup { \box "83b" } s1*4
}

soprano = \relative c'' {
  \global
  R1 % 78a
  r2 r8 c^\markup SOPRANO (b a
  g4. f16 e) d4.(e16 f)
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  R1 % 78b
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f)
  e4 e2 r4
  r4 r8 e a(b c e) % 78c
  a,2. r4
  r4 r8 d, g a b(d,)
  e2. r4
  r4 r8 c f(g a c,) % 79a
  a'2. aes4
  g2.(fis4
  eis4 fis8 gis~gis ais fis eis)
  e1~ % 79b
  e2. r4 \bar "||"
  r4 e'8 e e(d cis e
  f8 g f a,) f'2
  r4 d8 d d(c b d % 80a
  e8 f e g,) e'2
  r4 c8 c c(b a c
  d8 e d e, c' d c e,
  b'8 c b a b c b8. a16) % 80b
  b2. r4 \bar "||"
  r1
  r2 r8 c(b a
  g4. f16 e) d4.(e16 f) % 81a
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f) % 81b
  e4 e2 r4 \bar "||"
  r4 r8 e a(b c e)
  a,2. r4
  r4 r8 b8 g a b(d,) % 82a
  e2. r4
  r4 r8 d(f g a) c,
  a'2. aes4
  g2.(fis4 % 82b
  eis4 fis8 gis~gis ais fis eis)
  e1~
  e2. r4
  r1 % 83a
  r2 r8 c'(b a
  g4. f16 e)
  d4.(e16 f)
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1 % 83b
  r2 r8 c'(b) a
  g4.^\markup \bold rall. ( f16 e d4.) e16(f)
  e4(~e8. \times 2/3 {d32 e d}) c2\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 % 78a
  s2 s8 s4.\p
  s1
  s1
  s1 % 78b
  s1
  s1
  s1
  s1 % 78c
  s1
  s1
  s1
  s4. s8-\cresc s2 % 79a
  s1
  s1
  s1
  s1\mp % 79b
  s2.\> s4\p
  s4 s2.\mp
  s1
  s1 % 80a
  s1
  s1
  s1
  s1 % 80b
  s2. \> s4\p
  s1
  s2 s8 s4.\p
  s1 % 81a
  s1
  s1
  s1
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s1\cresc
  s1 % 82b
  s1
  s1\mp
  s2.\>s4\p
  s1 % 83a
  s2 s8 s4.\p
  s1
  s1
  s1 % 83b
  s1
  s1
  s1
}

wordsSop = \lyricmode {
  A -- gnus __ De -- i,
  A -- gnus __ De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re no -- bis. __
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di
  do -- na no -- bis pa -- cem. __
  A -- gnus __ De -- i,
  do -- na no -- bis pa -- cem.
}

midiWordsSop = \lyricmode {
  A  "gnus "  De  "i, "
  "\nA"  "gnus "  De  "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di "
  "\nmi" se  re  "re " no  "bis. " 
  "\nA" "gnus " De  "i, "
  "\nA" "gnus " De  "i, "
  "\nA" "gnus " De  "i, "
  "\nA"  "gnus " De  "i, "
  "\n"  "gnus " De  "i, "
  "\nqui " tol  "lis " pec ca "ta " mun "di "
  "\ndo"  "na " no  "bis " pa  "cem. " 
  "\nA"  "gnus "  De  "i, "
  "\ndo"  "na " no  "bis " pa  "cem. "
}

alto = \relative c'' {
  \global
  R1*4 % 78a
  R1*4 % 78b
  r2 r4 r8 g^\markup ALTO % 78c
  g4(fis e fis)
  g4 r r2
  r2 r8 b a a
  g4 f r2 % 79a
  r8 d e(f) des4 des
  r8 c d(e) b4 b
  b2(cis)
  c1(b2.) r4 \bar "||"
  r1
  r2 f'8(e) d(c)
  c4 b r2 % 80a
  r2 e8(d) c(bes)
  a4 a r2
  f'4 e2.
  dis1 % 80b
  e2. r4 \bar "||"
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.( e16 f) % 81a
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f) % 81b
  e4 e2 r4 \bar "||"
  r2 r4 r8 g
  g4(fis e fis)
  g4 r r2 % 82a
  r2 r8 b a a
  g4 f r2
  r8 d8(e) f des4 des
  r8 c(d) e b4 b % 82b
  b2(cis)
  c1(
  b2.) r4 \bar "||"
  r1 % 83a
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f)
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1 % 83b
  r2 r8 c'(b) a
  g4.(f16 e d4.) e16(f)
  e4(~e8. \times 2/3 {d32 e d}) c2\fermata
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*4 % 78a
  s1*4 % 78b
  s2. s8 s-\p % 78c
  s1
  s1
  s1
  s1 % 79a
  s8 s\cresc s2.
  s1
  s1
  s1\mp % 79b
  s2.\> s4\p
  s1
  s2 s\mp
  s1 % 80a
  s1
  s1
  s1
  s1 % 80b
  s2.\> s4\p
  s1
  s2 s8 s4.\p
  s1 % 81a
  s1
  s1
  s1
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s8 s \cresc s2.
  s1 % 82b
  s1
  s1\mp
  s2.\> s4\p
  s1 % 83a
  s1
  s1
  s1
  s1 % 83b
  s1
  s1
  s1
}

wordsAlto = \lyricmode{
  qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis __
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus __ de -- i,
  A -- gnus __ de -- i,
  qui tol -- lis pec -- ca -- ta mun -- di
  do -- na no -- bis,
  do -- na no -- bis pa -- cem. __
  A -- gnus __ de -- i,
  do -- na no -- bis pa -- cem.
}

midiWordsAlto = \lyricmode{
  "qui " tol "lis " pec ca "ta " mun "di "
  "\nmi" se re "re, "
  "\nmi" se re "re " no "bis " 
  "\nA" "gnus " De "i, "
  "\nA" "gnus " De "i, "
  "\nA" "gnus " De "i, "
  "\nA" "gnus "  de  "i, "
  "\nA"  "gnus "  de "i, "
  "qui " tol  "lis " pec ca "ta " mun "di "
  "\ndo" "na " no "bis, "
  "\ndo" "na " no "bis " pa  "cem. " 
  "\nA"  "gnus "  de  "i, "
  "\ndo" "na " no  "bis " pa  "cem. "
}

tenor = \relative c' {
  \global
  R1*4 % 78a
  R1*4 % 78b
  r1 % 78c
  r2 r4 r8 a^\markup TENOR
  c8(a) b4 r r8 b
  b8.(c32 b) a4 gis a~
  a4 r r2 % 79a
  r2 r4 bes8 bes
  a8 a r4 r2
  gis2(ais)
  g1( % 79b
  gis2.) r4 \bar "||"
  r4 e'8 e e(d cis e
  f8 g f a,) f'2
  r4 d8 d d(c b d % 80a
  e8 f e g,) e'2
  r4 c8 c c(b a c
  a4 gis a c
  a1) % 80b
  gis2. r4 \bar "||"
  r1
  r2 r8 c(b a
  g4. f16 e) d4.(e16 f) % 81a
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f) % 81b
  e4 e2 r4 \bar "||"
  r1
  r2 r4 r8 a
  c8(a) b4 r r8 b % 82a
  b8.(c32 b) a4 gis a~
  a4 r r2
  r2 r4 bes8 bes
  a8 a r4 r2 % 82b
  gis2(ais)
  g1(
  gis2.) r4
  r1 % 83a
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f)
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1 % 83b
  r2 r8 c'(b) a
  g4.(f16 e d4.) e16(f)
  e4(~e8. \times 2/3 {d32 e d}) c2\fermata
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*4 % 78a
  s1*4 % 78b
  s1 % 78c
  s2. s8 s-\p
  s1
  s1
  s1 % 79a
  s2. s4\cresc
  s1
  s1
  s1\mp % 79b
  s2.\> s4\p
  s4 s2.\mp
  s1
  s1 % 80a
  s1
  s1
  s1
  s1 % 80b
  s2.\> s4\p
  s1
  s2 s8 s4.\p
  s1 % 81a
  s1
  s1
  s1
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s2. s4\cresc
  s1 % 82b
  s1
  s1\mp
  s2.\> s4\p
  s1 % 83a
  s1
  s1
  s1
  s1 % 83b
  s1
  s1
  s1
}

wordsTenor = \lyricmode {
  qui tol -- lis pec -- ca -- ta mun -- di __
  mi -- se -- re -- re no -- bis __
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus __ de -- i,
  A -- gnus __ de -- i,
  qui tol -- lis pec -- ca -- ta mun -- di __
  do -- na no -- bis pa -- cem. __
  A -- gnus __ de -- i,
  do -- na no -- bis pa -- cem.
}

midiWordsTenor = \lyricmode {
  "qui " tol "lis " pec ca "ta " mun "di " 
  "\nmi" se re "re " no  "bis " 
  "\nA" "gnus " De  "i, "
  "\nA" "gnus " De  "i, "
  "\nA" "gnus " De  "i, "
  "\nA" "gnus "  de  "i, "
  "\nA" "gnus "  de "i, "
  "\nqui " tol "lis " pec ca "ta " mun "di " 
  "\ndo" "na " no "bis " pa  "cem. " 
  "\nA"  "gnus "  de  "i, "
  "\ndo" "na " no  "bis " pa  "cem. "
}

bass = \relative c {
  \global
  R1*4 % 78a
  R1*4 % 78b
  R1*4 % 78c
  R1 % 79a
  R1
  R1
  cis2^\markup BASS (fis,)
  c'1( % 79b
  e2.) r4 \bar "||"
  r1
  r1
  g4 g r2 % 80a
  r1
  f4 f r2
  b4(e,) a(g)
  f1 % 80b
  e2. r4
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f) % 81a
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f) % 81b
  e4 e2 r4 \bar "||"
  r1
  r1
  r1 % 82a
  r1
  r1
  r1
  r1 % 82b
  cis2(fis,)
  c'1(
  e2.) r4
  r1 % 83a
  r2 r8 c'(b a
  g4. f16 e) d4.(e16 f)
  e4(~e8. \times 2/3 {d32 e d}) c4 r
  r1 % 83b
  r2 r8 c'(b) a
  g4.(f16 e d4.) e16(f)
  e4(~e8. \times 2/3 {d32 e d}) c2\fermata
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*15
  s1\p % 79a+++
  s1\mp % 79b
  s2.\> s4\p
  s1
  s1
  s1\mp % 80a
  s1
  s1
  s1
  s1 % 80b
  s2.\> s4\p
  s1
  s2 s8 s4.\p
  s1 % 81a
  s1
  s1
  s1
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s1
  s1 % 82b
  s1\cresc
  s1\mp
  s2.\> s4\p
  s1 % 83a
  s1
  s1
  s1
  s1 % 83b
  s1
  s1
  s1
}

wordsBass = \lyricmode {
  no -- bis __
  De -- i, De -- i,
  A -- gnus __ De -- i,
  A -- gnus __ De -- i,
  A -- gnus __ De -- i,
  pa -- cem. __
  A -- gnus __ de -- i,
  do -- na no -- bis pa -- cem.
}

midiWordsBass = \lyricmode {
  no  "bis " 
  "\nDe" "i, " De "i, "
  "\nA" "gnus "  De  "i, "
  "\nA" "gnus "  De  "i, "
  "\nA" "gnus "  De "i, "
  "\npa"  "cem. " 
  "\nA"  "gnus "  de  "i, "
  "\ndo" "na " no  "bis " pa  "cem. "
}

pianoRH = \relative c {
  \global
  \clef bass
  <e a c>4--^\markup "(Tbne.)" q-- q-- q-- % 78a
  <c g' c>4-- q-- q-- q--
  <c a' c>4 q <d g c> <d g b>
  <e c'>4 q q r
  <e a c>4 q q q % 78b
  <c g' c>4 q q q
  <c a' c>4 q <d g c> <d g b>
  <e c'>4 q2 r8 <e g c> \bar "||"
  <e b' c>4 <e a c> q <e g c> % 78c
  <d g c>4 <d fis c'> <d e c'> <d fis c'>
  <d g c>4 <d g b> q <d g a>
  <c e b'>4 <c e a> <c e gis> <c e a>
  <c g'a>4 <c f a> q q \clef treble % 79a
  <a' d f a>4 q <a des f a> <aes des f aes>
  <g c e g>4 q <g b dis g> <fis b dis fis>
  s1
  s1 % 79b
  s2. r4 \clef bass
  <e g cis>4 q q q
  <f a d>4 q q q
  <f c' d>4 <f b d> q q % 80a
  <g b e> q <e bes' c e> q
  <e a c>4 q q q
  <d f a>4 <d e gis> <e a c> q
  s1 % 80b
  <e gis b>2. r4 \bar "||"
  s1
  s1
  <c a' c>4 q <d g c> <d g b> % 81a
  <e c'>4 q q r
  s1
  s1
  <c a' c>4 q <d g c> <d g b> % 81b
  <e c'>4 q2 r8 <e g c> \bar "||"
  <e b' c>4 <e a c> q <e g c>
  <d g c>4 <d fis c'> <d e c'> <d fis c'>
  <d g c>4 <d g b> q <d g a> % 82a
  <c e b'>4 <c e a> <c e gis> <c e a>
  <c g' a> <c f a> q q \clef treble
  <a' d f a>4 q <a des f a> <aes des f aes>
  <g c e g>4 q <g b dis g> <fis b dis fis> % 82b
  s1
  s1
  s1 \clef bass
  s1 % 83a
  s1
  <c a' c>4 q <d g c> <d g b>
  <e c'>4 q q r
  s1 % 83b
  s1
  <c a' c>4 q <d g c> <d g b>
  <e c'>4 q q2\fermata
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  s1*15
  eis4 fis8 gis~gis ais fis eis % 79a+++
  e1~ % 79b
  e2. s4 \clef bass
  s1
  s1
  s1 % 80a
  s1
  s1
  s1
  b8 c b a c b b8. a16 % 80b
  s1
  r2 r4 r8 c16 c
  g'8. c,16 c4 s2
  s1 % 81a
  s1
  r2 r4 r8 c16 c
  g'8. c,16 c4 s2
  s1 % 81b
  s1 \bar "||"
  s1
  s1
  s1 % 82a
  s1
  s1
  s1 \clef treble
  s1 % 82b
  eis4 fis8 gis~gis ais fis eis
  e1~
  e2. r4 \clef bass
  r2 r4 r8 c16 c % 83a
  g'8. c,16 c4 s2
  s1
  s1
  r2 r4 r8 c16 c % 83b
  g'8. c,16 c4 s2
  s1
  s1


  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1*15
  <gis b>4 q <ais cis> q % 79a+++
  <g c>4 q q q % 79b
  <gis b>2. s4 \clef bass
  s1
  s1
  s1 % 80a
  s1
  s1
  s1
  <d b'>4 q q q % 80b
  s1
  <e a c>4 q q q
  <c g' c>4 q q q
  s1 % 81a
  s1
  <e a c>4 q q q
  <c g' c>4 q q q
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s1 \clef treble
  s1 % 82b
  <gis' b>4 q <ais cis> q
  <g c> q q q
  <gis b>2. r4 \clef bass
  <e a c>4 q q q % 83a
  <c g' c>4 q q q
  s1
  s1
  <e a c>4 q q q % 83b
  <c g' c>4 q q q
  s1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p % 78a
  s1
  s1-\markup {sempre tenuto}
  s1*9
  s4 s2.\cresc % 79a
  s1
  s1
  s1
  s1\mp % 79b
  s1
  s1
  s1
  s1 % 80a
  s1
  s1
  s1
  s1 % 80b
  s1\>
  s1\p
  s1
  s1 % 81a
  s1
  s1
  s1
  s1 % 81b
  s1
  s1
  s1
  s1 % 82a
  s1
  s1
  s1
  s1 % 82b
  s1
  s1\mp
  s2.\> s4\!
  s1 % 83a
  s1
  s1
  s1
  s1 % 83b
  s1
  s1
  s1
}

pianoLH = \relative c, {
  \global
  \oneVoice
  <a a'>4--_\markup "(Tuba)" q-- q-- q-- % 78a
  <e e'>4-- q-- q-- q--
  <f f'>4 q <g g'> q
  <c g>4 q q r
  <a a'>4-- q-- q-- q-- % 78b
  <e e'>4-- q-- q-- q--
  <f f'>4 q <g g'> q
  <c g>4 q2 r8 <b b'>
  <a a'>4 q q q % 78c
  <d, d'>4 q q q
  <g g'>4 q q q
  <c, c'>4 q q q
  <f f'>4 q q q % 79a
  <b b'>4 q <bes bes'> q
  <a aes>4 q <gis gis'> q
  <cis, cis'>4 q <fis fis'> q
  <c c'>4 q q q % 79b
  <e e'>2. r4 \bar "||"
  <a a'>4 q q q
  <d, d'>4 q q q
  <g g'>4 q q q % 80a
  <c, c'>4 q <ges' ges'> q
  <f f'>4 q q q
  <b b'>4 <e, e'> <a a'> <b b'>
  <f f'>4 q q q % 80b
  <e e'>2. r4 \bar "||"
  <a a'>4 q q q
  <e e'>4 q q q
  <f f'>4 q <g g'> q % 81a
  <c g'>4 q q r
  <a a'>4 q q q
  <e e'>4 q q q
  <f f'>4 q <g g'> q % 81b
  <c g'>4 q2 r8 <b b'>
  <a a'>4 q q q
  <d, d'>4 q q q
  <g g'>4 q q q % 82a
  <c, c'>4 q q q
  <f f'>4 q q q
  <b b'>4 q <bes bes'> q
  <a a'>4 q <gis gis'> q % 82b
  <cis, cis'>4 q <fis fis'> q
  <c c'>4 q q q
  <e e'>2. r4
  <a a'>4 q q q % 83a
  <e e'>4 q q q
  <f f'>4 q q q
  <c' g'>4 q q r
  <a a'>4 q q q % 83b
  <e e'>4 q q q
  <f f'>4 q q q
  <c' g'>4 q q2\fermata
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%    >>
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%    >>
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
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" {\tiny \wordsSop}
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" {\tiny \wordsAlto}
          >>
                                  % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" {\tiny \wordsTenor}
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
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
%    >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \midiWordsSop
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                  % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \midiWordsAlto
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
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
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
            \new Lyrics \lyricsto "tenor" \midiWordsTenor
          >>
                                  % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
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
    \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
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
            \new Lyrics \lyricsto "bass" \midiWordsBass
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
          >>
        >>
      >>
    >>
>>
    \midi {}
  }
}
