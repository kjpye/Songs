\version "2.25.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Gloaming"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Lady Arthur Hill (Annie Fortescue Harrison)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Meta Orred"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
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
  \key g \major
  \time 2/4
}

TempoTrack = {
  \tempo Andante 4=80
  \set Score.tempoHideNote = ##t
  s2*60
  \tempo 4=75 s2*4 | % 6
  \tempo 4=80 s2*5 | % 7a
  s2 | \tempo 4=75 s | s | \tempo 4=80 s | s |
  s2*6 |
  s2 | s | \tempo 4=75 s | \tempo 4=25 s4 \tempo 4=72 s | % 8a
  s2 | s4 \tempo 4=10 s8 \tempo 4=72 s8 | s2 | \tempo 4=36 s2 |
}

RehearsalTrack = {
  \textMark \markup { \box "1a" } s2*4
  \textMark \markup { \box "1b" } s2*4
  \textMark \markup { \box "1c" } s2*4
  \textMark \markup { \box "1d" } s2*4
  \textMark \markup { \box "2a" } s2*4
  \textMark \markup { \box "2b" } s2*4
  \textMark \markup { \box "2c" } s2*4
  \textMark \markup { \box "3a" } s2*6
  \textMark \markup { \box "3b" } s2*6
  \textMark \markup { \box "3c" } s2*8
  \textMark \markup { \box "4a" } s2*3
  \textMark \markup { \box "4b" } s2*3
  \textMark \markup { \box "5a" } s2*3
  \textMark \markup { \box "5b" } s2*3
  \textMark \markup { \box "6a" } s2*2
  \textMark \markup { \box "6b" } s2*2
  \textMark \markup { \box "7a" } s2*5
  \textMark \markup { \box "7b" } s2*5
  \textMark \markup { \box "7c" } s2*6
  \textMark \markup { \box "8a" } s2*4
  \textMark \markup { \box "8b" } s2*4
}

emptyMusic = {
  s2*88
}

soprano = \relative c'' {
  \global \voiceOne
  s2*8 % instrumental
  d4. e8 | d4 b | d4. c8 | c4 b | % 1c
  a4 e | g4 \< b \! | d4. \> c8 | b2 \! |
  d4. e8 | d4 b | d4. c8 | c4 b | % 2a
  a4 e | g4 fis | b4. a8 | g2 |
  g4. a8 | a4 g | g a8(b) | a4 g |
  a4. a8 | b4 d | e4 d | a2 | d4. e8 | d4 b | % 3a
  d4. c8 | c4 b | a4 e | g4 fis | b4. a8 | g2 |
  s2*8  % instrumental
  \change Staff = soprano \oneVoice \key g \major
  b4.(c8 | b4 d) | b4.( g8 | % 4a
  a4 g) | a(c | b g |
  e4 fis | g2) | b4.(c8 | % 5a
  b4 d | b4. g8~ | 4 gis) |
  a4(g | b4 a | % 6a
  e4 fis | g2) |
  \change Staff = women \voiceOne
  g4. a8 | a4 g | g4 a8(b) | a4 g | a4. a8 | % 7a
  b4 d | e4^^ d^^ | a2 | d4. e8| d4 b |
  d4. c8 | c4 b | a4 e | g4 fis | b4. a8 | g2 |
  \change Staff = soprano \oneVoice
  g2 | a4(ais) | b8 d, g b | d4^\fermata\breathe d,8 d | % 8a
  e4 g | b4.^\fermata a8 | g2~ | g2^\fermata |
  \bar "|."
}

dynamicsWomen = {
  s2*8 |
  s2\p | s | s | s |
  s2 | s4\< s\! | s8 s4.\> | s2\! |
  s2*4 | % 2a
  s2*4 |
  s2\cresc | s | s | s |
  s2\< | s\! | s\> | s\!-\markup\italic ten. | s\omit\p-\markup{\dynamic p \italic espress.} | s | % 3a
  s2*6 |
  s2*8 | % instrumental
  s2*16 | % four staves
  s2\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s | s | s | s\cresc | % 7a
  s2 | s\omit\f-\markup{\dynamic f \italic allargando} | s-\markup\italic ten. | s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s |
  s4\> s\! | s\> s\! | s8 s4.\< | s4 s\! | s2\> | s\! |
  s2*8 | % four staves
}

dynamicsSop = {
  s2*48 % two staves
  s2\p | s | s | % 4a
  s2*3 |
  s2 | s | s\pp | % 5a
  s2*3 |
  s2-\markup\italic "poco rall." | s | % 6a
  s2 | s |
  s2*16 | % 7
  s2\p\cresc | s | s8-\markup\italic rall. s4\< s8\! | s4 s\omit\pp-\markup{\dynamic pp \italic slower} | % 8a
  s2 | s8 s4\> s8\! | s2\ppp | s |
}

alto = \relative c'' {
  \global
  \voiceTwo
  s2*8 % instrumental
  g4. g8 | g4 g | g4 fis | g4 g | % 1c
  e4 e | d4 g | fis4. fis8 | g2 |
  g4. g8 | g4 g | g4 fis | g4 g | % 2a
  e4 e | d4 d | fis4. 8 | g2 |
  r8 f4 f8 | e4 e~ | e8 f4 f8 | e4 e |
  g4. g8 | g4 g | g4 g | fis2 | g4. g8 | g4 g | % 3a
  g4 fis | g4 g | e4 e | d4 d | fis4. fis8 | g2 |
  s2*8 | % instrumental
  \change Staff = alto \oneVoice \key g \major
  g2~ | 2 | fis( | % 4a
  e2) | e( | d~ |
  d2~ | 2) | g(~ | % 5a
  g2 | fis | e4 d) |
  cis2( | c~ | % 6a
  c2 | b) |
  \change Staff = women \voiceTwo
  fis'4. fis8 % 7a
  e4 e
  f4. f8
  e4 e
  g4. g8
  g4 g
  g4 g
  fis2
  g4. g8
  g4 g
  fis4 fis
  e4 d
  cis4 e
  e4 d
  fis4. fis8
  e2
  \change Staff = alto \oneVoice
  cis2 | cis2 | d8 b d g | <g b>4^\fermata\breathe d8 d | % 8a
  e4 e | g4 fis^\fermata | d2~ | d2^\fermata |
  \bar "|."
}

dynamicsAlto = {
  s2*48 % two staves
  s2\p | s | s | % 4a
  s2*3 |
  s2 | s | s\pp | % 5a
  s2*3 |
  s2-\markup\italic "poco rall." | s | % 6a
  s2 | s |
  s2*16 | % 7
  s2\p\cresc | s | s8-\markup\italic rall. s4\< s8\! | s4 s\omit\pp-\markup{\dynamic pp \italic slower} | % 8a
  s2 | s4 s\> | s2\ppp | s |
}

tenor = \relative c' {
  \voiceOne
  \global
  s2*8 % instrumental
  b4. c8 | d4 d| b4 a| g4 fis |
  a4 c
  b4 d
  a4. d8
  d2
  d4. c8
  d4 d
  b4 a
  g4 g
  a4 c
  c4 a
  d4. c8
  b2
  r8 d4 d8
  c4 c4~
  c8 d4 d8
  c4 c
  cis4. cis8
  d4 b
  c4 d
  c2
  b4. c8
  d4 d
  b4 a
  g4 g
  a4 c
  c4 a
  d4. c8
  a2 \break
  s2*8 % instrumental
  \change Staff = tenor \key g \major
  d4.^\markup{(Tenor SOLO \italic {ad lib.})} e8 | d4 b | d4. c8 | % 4a
  c4 b | a4 e | g4 b |
  d4. c8 | b2 | d4. e8 | % 5a
  d4 b | d4. c8 | c4 b |
  a4 e | g4 fis | % 6a
  b4. a8 | g2 | \break
  \change Staff = men
  d'4. d8 | c4 c | d4. d8 | c4 c | cis4. c8 | % 7a
  d4 d | c4 d | c2 | b4. c8 | b4 d |
  b4 a | g4 gis | a4 cis | c4 a| d4. c8 | b2 | \break
  \change Staff = tenor 
  g4. fis8 | a8-> g-> dis-> g-> | d2-> ~ | d4^\fermata \breathe d8 d | % 8a
  cis4 cis | c4 c^\fermata | b2~ | b2^\fermata |
  \bar "|."
}

dynamicsMen = {
  s2*8 |
  s2\p | s | s | s |
  s2 | s4\< s\! | s8 s4.\> | s2\! |
  s2*4 | % 2a
  s2*4 |
  s2\cresc | s | s | s |
  s2 | s | s | s | s\p | s | % 3a
  s2*6 |
  s2*24 |
  s2\mf | s | s | s | s\cresc | % 7a
  s2 | s\f | s | s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s |
  s4\> s\! | s\> s\! | s2 | s | s | s | s |
  s2*8 | % 8
}

dynamicsTenor = {
  s2*48 % two staves
  s2\omit\mf-\markup{\dynamic mf \italic "con espress."} | s | s | % 4a
  s2*3 |
  s2 | s | s\omit\p-\markup{\italic più \dynamic p} | % 5a
  s2*3 |
  s2-\markup\italic "poco rall." | s | % 6a
  s2 | s |
  s2*16 | % 7
  s2\p\cresc | s | s8-\markup\italic rall. s4\< s8\! | s4 s\omit\pp-\markup{\dynamic pp \italic slower} | % 8a
  s2 | s4 s\> | s2\ppp | s |
}

bass = \relative {
  \voiceTwo
  \global
  s2*8 |
  g4. c8 | b4 g | d4 dis | e4 e | % 1c
  c4 a | d4 d | d4. d8 | g2 |
  b4. c8 | b4 g | d4 dis | e4 e | % 2a
  c4 a | d4 d | d4. d8 | g2 |
  r8 b4 b8 | c4 c~ | c8 b4 b8 | c4 c |
  a4. a8 | d,4 d | c4 b | d2 | d4. c8 | b4 g | % 3a
  d'4 d | e4 e | c4 a | d4 d | d4. d8 | g2 |
  s2*8 % instrumental
  \change Staff = bass \key g \major
  g,2~ | 2 | d'( | % 4a
  e2) | c( | d~ |
  d2 | g) | g,(~ | % 5a
  g2 | d'4 dis | e2) |
  a,2( | d~ | % 6a
  d2 | g,) |
  \change Staff = men
  b4. b'8 | c4 c, | b4. b'8 | c4 c, | a4. e'8 | % 7a
  d4 b'4 | c4 b4 | d,2 | d4. d8 | d4 d |
  d4 d | e4 e | a,4 a| d4 d | d4. d8 | e2 |
  \change Staff = bass
  e2 | e2 | d2~ | d4^\fermata \breathe r % 8a
  d4 d | d4 d^\fermata | g,2~ | g2^\fermata |
%  s2*8 % split
  \bar "|."
}

dynamicsBass = {
  s2*48 % two staves
  s2\p | s | s | % 4a
  s2*3 |
  s2 | s | s\pp | % 5a
  s2*3 |
  s2-\markup\italic "poco rall." | s | % 6a
  s2 | s |
  s2*16 | % 7
  s2\p\cresc | s | s8-\markup\italic rall. s4\< s8\! | s4 s-\markup\italic slower | % 8a
  s2\pp | s4 s\> | s2\ppp | s |
}

dynamicsPiano = {
  s2^\p | s2 | s2 | s2 |
  s2 | s2 | s2 | s2 |
  s2^\p | s | s | s |
  s2 | s\< | s8\! s4.\> | s8 s4.\! |
  s2*12 | % 2
  s2 | s | s | s-\markup\italic "colla voce" | s-\markup\italic "a tempo" | s | % 3a
  s2*5 | s2\cresc
  s2\omit\mf | s2*7 |
  s2\pp | s | s | % 4a
  s2*3 |
  s2 | s | s\omit\pp-\markup{\italic sempre \dynamic pp} | % 5a
  s2*3 |
  s2-\markup\italic "poco rall." | s | % 6a
  s2*2 |
  s2\mf | s | s | s | s\cresc | % 7a
  s2 | s\omit\f-\markup{\dynamic f \italic allargando.} | s | s\mf | s |
  s4\> s\! | s\> s\! | s s\< | s s\! | s2\> | s\! |
  s2\p\cresc | s | s-\markup\italic rall. | s4 s\omit\pp-\markup{\dynamic pp \italic slower.} | % 8a
  s2 | s-\markup\italic "colla voce." | s\ppp | s |
}

pianoRHone = \relative c'' {
  \global \voiceOne
  d4. e8 | d4 b | d4. c8 | c4 b |
  a4 e | g4 fis | b4. a8 | \oneVoice <b, g'>8 d g b \voiceOne |
  d4. e8 | d4 b | d4. c8 | c4 b |
  a4 e | \oneVoice b8 d <g b> d | c d <fis a> d | b d g b |
  \voiceOne d4. e8 | d4 b | d4. c8 | c4 b | % 2a
  a4 e | g4 fis | b4. a8 | g2 |
  g4. a8 | a4 g | g4 a8 b | a4 g |
  a4. a8 | b4 d | e4 d | \oneVoice a8 <d, fis>4 8 | \voiceOne d'4. e8 | d4 b | % 3a
  d4. c8 | c4 b | a4 e | g4 fis | b4. a8 | \oneVoice <b, g'>8 d g b \voiceOne |
  d4. e8 | d4 b | d4. c8 | c4 b | a4 e | g4 b | a4. g8| \oneVoice <b, g'> d g b |
  r16 d,(g b d b e c) | d(b g d b' g d b) | r d(fis b d b c a) | % 4a
  c16(a e c b' g e d) | r c e a c a e c | r b d g b g d b |
  r16 e g b d b c a | r d, g b d b g d | r d g b d b e c | % 5a
  d16 b g d b' g d b | r d fis a d b c a | c a e c b' gis e d |
  r16 cis e g a g e cis | r c e b' a fis e d | % 6a
  r16 e g c b fis d c | r b d b' g4 \voiceOne |
  r8 g g a | a4 g | r8 g a b | a4^> g | r8 a a a | % 7a
  <g b>8 8 d' d | e8 e d d | a2 | r8 d d e | d8 d b b |
  r8 d d c | c8 c b b | a8 a e e | g8 g fis fis | b8 b b a | g2 |
  g2 | a4 ais | <g b>8 d g b | e4^\fermata \oneVoice d,8 d | % 8a
  \voiceOne e4 g | b4. a8^\fermata | g2 | <d' g>2^\fermata |
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  r8 <d g b> q <e g> | d'8 <d, g> b' <d, g> | r8 <g b> <fis a> r | c'8 <e, g> b' <e, g> |
  a8 <a, c> e' <a, c> | g'8 <a, c> fis' <a, c> | r8 <d fis> q <c fis> | s2 |
  r8 <d g b> q <e g> | d'8 <d, g> b' q | r8 <g b> <fis a> r | c' <e, g> b' q |
  a8 <a, c> e' q | s2 | s | s |
  r8 <d g b> q <e g> | d' <d, g> b' q | r <g b> <fis a> r | c' <e, g> b' q | % 2a
  a8 <a, c> e' q | g q fis q | r <d fis> <c fis> c | <b d> q q q |
  g'8 <b, f'> q r | a' <c, e> g' q | g <b, f'> q r | a' <c, e> g' q |
  r8 <cis, e g> q r | b' <d, g> d' q | e <e, g> d' <d, g> | s2 | r8 <d g b> q <e g> d' <d, g> b' q | % 3a
  r8 <g b> <fis a> r | c' <e, g> b' q | a <a, c> e' q | g q fis q | r <d fis> <c fis> q | s2 |
  r8 <d g b> q <e g> | d' <d, g> b' q | r <g b> <fis a> r | c' <e, g> b' q | a <a, c> e' q | g <b, d> b' <d, g> | a' <c, fis> q r | s2 |
  \tiny \change Staff = pianolh \voiceOne d4. e8 | d4 b | d4. c8 | % 4a
  c4 b | a e | g b |
  d4. c8 | b2 | e4. e8 | % 5a
  d4 b | d4. c8 | c4 b |
  a4 e | g fis | % 6a
  b4. a8 | g2 | \change Staff = pianorh \voiceTwo \normalsize
  s8 <d' f> q q | <c e>4 4 | s8 <d f> q q | <c e>4 q | s8 <cis g'> q q | % 7a
  <d g>8 8 8 8 | g g g g | fis2 | s8 g g g | g g g g |
  s8 fis8 8 8 | e e d d | cis8 8 8 8 | e e d d | <d fis> q q c | <b e>2 |
  cis2 | cis | d8 b <b d> d | <g b>4 s | % 8a
  cis,4 <cis e> | g' fis | <b, d>2 | <fis' a>\fermata |
  \bar "|."
}

pianoLHone = \relative c {
  \global
  <g b'>4.-\arpeggio c'8 | b4 g | <d, d'>4 <dis dis'> | <e e'>2 |
  c'4 a | <d, d'>2 | q2 | <g g'>2 |
  <g b'>4.-\arpeggio c'8 | b4 g | <d, d'> <dis dis'> | <e e'>2 |
  c'4 a | d,2 | <d d'> | <g g'> |
  q4.\arpeggio c'8 | b4 g | <d, d'> <dis dis'> | <e e'>2 | % 2a
  c'4 a <d, d'>2 | q | <g g'> |
  g8 g'4 8 | c,8 g'4 8 | g,8 g'4 8 | c,8 g'4 8 |
  a,8 a'4 8 | d, b'4 8 | c4 b | d,8 c'4 8 | <g, b'>4.\arpeggio c'8 | b4 g | % 3a
  <d, d'>4 4 | <e e'>2 | c'4 a | <d, d'>2 | q | <g g'> |
  <g b'>4.\arpeggio c'8 | b4 g | <d, d'> <dis dis'> | <e e'>2 | c'4 a | <d, d'>2 | q | <g g'> |
  \voiceTwo <g b'>4.\arpeggio c'8 | b4 g | d2 | % 4a
  e2 | c | d |
  d2 | g, | g | % 5a
  g2 | d'4 dis | e2 |
  a,2 | d | % 6a
  d2 | \voiceOne g, \oneVoice |
  b2 | c | b | c | a | % 7a
  d4 b' | c-^ b-^ | \voiceOne c2 | b4. c8 | b4 g |
  b4 a | g gis | a2 | c4 a | s2 | s |
  g4.-> f8 | a-> g-> fis-> g-> | s2 | d'4 \oneVoice r | % 8a
  s2 \voiceOne | c2 | g | d'\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2*69
  s2 | s | d2 | d | 4 4 | % 7b
  d4 d | e e | a,2 | d2 | d | e |
  e2 | e | d2~ | 4 s | % 8a
  d2 | d2 | g, | g'\fermata |
  \bar "|."
}

wordsSopAbove = \lyricmode {
  \repeat unfold 30 _
  When the winds are sob -- bing faint -- ly
}

words= \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  \repeat unfold 5 _
  For my heart was crush'd with long- ing,
  what had been could nev- er be!
  It was best to leave you thus, dear,
  best for you and best for me;
}

wordsSop = \lyricmode {
  \repeat unfold 60 _
  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.
  \repeat unfold 30 _
  It was __ best to leave you thus,
  best for you and best for me. __
}

wordsSopSep = \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.

  For my heart was crush'd with long- ing,
  what had been could nev- er be!
  It was best to leave you thus, dear,
  best for you and best for me;
  It was __ best to leave you thus,
  best for you and best for me. __
}

wordsSopSepMidi = \lyricmode {
  "In " "the " gloam "ing, " "oh, " "my " dar "ling, "
  "\nwhen " "the " "lights " "are " "dim " "and " "low, "
  "\nAnd " "the " qui "et " sha "dows " fall "ing "
  "\nsoft" "ly " "come " "and " soft "ly " "go "
  "\nWhen " "the " "winds " "are " sob "bing " faint "ly "
  "\nwith " "a " gen "tle " un "known " "woo "
  "\nWill " "you " "think " "of " "me " "and " "love " "me, " "as " "you " "did " "once " "long " a "go? "

  "\nMmm. " "Mmm. " "Mmm. " "Mmm. " "Mmm. "

  "\nFor " "my " "heart " "was " "crush'd " "with " long "ing, "
  "\nwhat " "had " "been " "could " nev "er " "be! "
  "\nIt " "was " "best " "to " "leave " "you " "thus, " "dear, "
  "\nbest " "for " "you " "and " "best " "for " "me; "
  "\nIt " "was "  "best " "to " "leave " "you " "thus, "
  "\nbest " "for " "you " "and " "best " "for " "me. " 
}

wordsAlto = \lyricmode {
  \repeat unfold 60 _
  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.
  \repeat unfold 30 _
  It was __ best to leave you thus,
  best for you and best for me. __
}

wordsAltoSep = \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.
  For my heart was crush'd with long- ing,
  what had been could nev- er be!

  It was best to leave you thus, dear,
  best for you and best for me;
  It was __ best to leave you thus,
  best for you and best for me. __
}

wordsAltoSepMidi = \lyricmode {
  "In " "the " gloam "ing, " "oh, " "my " dar "ling, "
  "\nwhen " "the " "lights " "are " "dim " "and " "low, "
  "\nAnd " "the " qui "et " sha "dows " fall "ing "
  "\nsoft" "ly " "come " "and " soft "ly " "go "
  "\nWhen " "the " "winds " "are " sob "bing " faint "ly "
  "\nwith " "a " gen "tle " un "known " "woo "
  "\nWill " "you " "think " "of " "me " "and " "love " "me, " "as " "you " "did " "once " "long " a "go? "

  "\nMmm. " "Mmm. " "Mmm. " "Mmm. " "Mmm. "
  
  "\nFor " "my " "heart " "was " "crush'd " "with " long "ing, "
  "\nwhat " "had " "been " "could " nev "er " "be! "

  "\nIt " "was " "best " "to " "leave " "you " "thus, " "dear, "
  "\nbest " "for " "you " "and " "best " "for " "me; "
  "\nIt " "was "  "best " "to " "leave " "you " "thus, "
  "\nbest " "for " "you " "and " "best " "for " "me. " 
}

wordsTenor = \lyricmode {
  \repeat unfold 60 _
  In the gloam- ing oh! my dar- ling
  think not bit- ter- ly of me,
  Tho' I passed a -- way in si- lence,
  left you lone- ly set you free

  \repeat unfold 30 _
  It was best to leave you thus, __
  best for you and best for me. __
}

wordsTenorSep = \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  In the gloam- ing oh! my dar- ling
  think not bit- ter- ly of me,
  Tho' I passed a -- way in si- lence,
  left you lone- ly set you free

  For my heart was crush'd with long- ing,
  what had been could nev- er be!
  It was best to leave you thus, dear,
  best for you and best for me;

  It was best to leave you thus, __
  best for you and best for me. __
}

wordsTenorSepMidi = \lyricmode {
  "In " "the " gloam "ing, " "oh, " "my " dar "ling, "
  "\nwhen " "the " "lights " "are " "dim " "and " "low, "
  "\nAnd " "the " qui "et " sha "dows " fall "ing "
  "\nsoft" "ly " "come " "and " soft "ly " "go "
  "\nWhen " "the " "winds " "are " sob "bing " faint "ly "
  "\nwith " "a " gen "tle " un "known " "woo "
  "\nWill " "you " "think " "of " "me " "and " "love " "me, " "as " "you " "did " "once " "long " a "go? "

  "\nIn " "the " gloam "ing " "oh! " "my " dar "ling "
  "\nthink " "not " bit ter "ly " "of " "me, "
  "\nTho' " "I " "passed " a "way " "in " si "lence, "
  "\nleft " "you " lone "ly " "set " "you " "free "

  "\nFor " "my " "heart " "was " "crush'd " "with " long "ing, "
  "\nwhat " "had " "been " "could " nev "er " "be! "
  "\nIt " "was " "best " "to " "leave " "you " "thus, " "dear, "
  "\nbest " "for " "you " "and " "best " "for " "me; "

  "\nIt " "was " "best " "to " "leave " "you " "thus, " 
  "\nbest " "for " "you " "and " "best " "for " "me. " 
}

wordsBass = \lyricmode {
  \repeat unfold 60 _
  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.
  \repeat unfold 30 _
  It was best, __
  best for you and me. __
}

wordsBassSep = \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  \markup\italic "Mmm. (lips closed)"
  \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm. \markup\italic Mmm.

  For my heart was crush'd with long- ing,
  what had been could nev- er be!
  It was best to leave you thus, dear,
  best for you and best for me;

  It was best, __
  best for you and me. __
}

wordsBassSepMidi = \lyricmode {
  "In " "the " gloam "ing, " "oh, " "my " dar "ling, "
  "\nwhen " "the " "lights " "are " "dim " "and " "low, "
  "\nAnd " "the " qui "et " sha "dows " fall "ing "
  "\nsoft" "ly " "come " "and " soft "ly " "go "
  "\nWhen " "the " "winds " "are " sob "bing " faint "ly "
  "\nwith " "a " gen "tle " un "known " "woo "
  "\nWill " "you " "think " "of " "me " "and " "love " "me, " "as " "you " "did " "once " "long " a "go? "

  "\nMmm. " "Mmm. " "Mmm. " "Mmm. " "Mmm. "

  "\nFor " "my " "heart " "was " "crush'd " "with " long "ing, "
  "\nwhat " "had " "been " "could " nev "er " "be! "
  "\nIt " "was " "best " "to " "leave " "you " "thus, " "dear, "
  "\nbest " "for " "you " "and " "best " "for " "me; "

  "\nIt " "was " "best, " 
  "\nbest " "for " "you " "and " "me. " 
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
          \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
%          \new Voice \emptyMusic
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = soprano \soprano
          \new Voice = alto    \alto
        >>
        \new Staff = men \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = men} \dynamicsMen
          \new Voice \tenor
          \new Voice \bass
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
        \new Lyrics \with {alignBelowContext = women} \lyricsto alto \words

        \new Staff = soprano \with {
          shortInstrumentName = #"S"
        }
        <<
%          \new Voice \emptyMusic
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new NullVoice \soprano
          \addlyrics \wordsSop
        >>
        \new Staff = alto \with {
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
%          \new Voice \emptyMusic
          \new NullVoice \alto
          \addlyrics \wordsAlto
        >>
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
%          \new Voice \emptyMusic
          \new NullVoice \tenor
          \addlyrics \wordsTenor
        >>
        \new Staff = bass \with {
          \clef bass
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
%          \new Voice \emptyMusic
          \new NullVoice \bass
          \addlyrics \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh <<
          \clef bass
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-sep"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
          \addlyrics \wordsSopSep
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAltoSep
        >>
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenorSep
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {alignAboveContext = bass} \dynamicsTenor
          \new Voice \bass
          \addlyrics \wordsBassSep
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh <<
          \clef bass
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 17)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
          \addlyrics \wordsSopSep
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAltoSep
        >>
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenorSep
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsBassSep
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh <<
          \clef bass
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sep-bass"
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
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
          \addlyrics {\tiny \wordsSopSep}
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoSep}
        >>
        \new Dynamics \dynamicsTenor
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorSep}
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsBassSep
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \magnifyStaff #4/7
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh <<
          \clef bass
          \magnifyStaff #4/7
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
          \addlyrics \wordsSopSepMidi
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
        >>
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsBass
          \new Voice \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAltoSepMidi
        >>
        \new Dynamics \dynamicsTenor
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsBass
          \new Voice \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
        >>
        \new Dynamics \dynamicsTenor
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenorSepMidi
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsBass
          \new Voice \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = soprano} \dynamicsSop
          \new Voice = soprano \soprano
        >>
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsWomen
          \new Dynamics \with {AlignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
        >>
        \new Dynamics \dynamicsTenor
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
        >>
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsMen
          \new Dynamics \with {AlignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsBassSepMidi
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
