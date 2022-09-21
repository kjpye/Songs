\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let Me Know Beauty"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Allan E. Naplan"
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

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=100
  s2.*110
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s2.*2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s2.*4
  \mark \markup { \box "3b" } s2.*4
  \mark \markup { \box "3c" } s2.*4
  \mark \markup { \box "4a" } s2.*4
  \mark \markup { \box "4b" } s2.*4
  \mark \markup { \box "4c" } s2.*4
  \mark \markup { \box "4d" } s2.*5
  \mark \markup { \box "5a" } s2.*3
  \mark \markup { \box "5b" } s2.*4
  \mark \markup { \box "5c" } s2.*4
  \mark \markup { \box "6a" } s2.*4
  \mark \markup { \box "6b" } s2.*5
  \mark \markup { \box "6c" } s2.*4
  \mark \markup { \box "7a" } s2.*4
  \mark \markup { \box "7b" } s2.*3
  \mark \markup { \box "7c" } s2.*3
  \mark \markup { \box "8a" } s2.*3
  \mark \markup { \box "8b" } s2.*3
  \mark \markup { \box "8c" } s2.*4
  \mark \markup { \box "9a" } s2.*3
  \mark \markup { \box "9b" } s2.*3
  \mark \markup { \box "9c" } s2.*3
  \mark \markup { \box "10a" } s2.*3
  \mark \markup { \box "10b" } s2.*3
  \mark \markup { \box "10c" } s2.*4
  \mark \markup { \box "11a" } s2.*4
  \mark \markup { \box "11b" } s2.*3
  \mark \markup { \box "11c" } s2.*3
  \mark \markup { \box "12a" } s2.*3
  \mark \markup { \box "12b" } s2.*3
  \mark \markup { \box "12c" } s2.*4
}

sopranoA = \relative {
  R2.*8 \break
  R2.^\markup "Unison Voices" e'4.^\mp f8 g4 | g4 c, f8 e | d4 c d |
  e2 d8 c | a'4. b8 c4 | c4 g e8 g | f4 e c | % 4a
  d2 c'8 b | a4 d8(c) b(d) | c4 g c,8 d | e4. f8 g4 |
  a2 4 | a4. b8 c4 | g-- c2~ | c4 r g8 8 |
  a4. c8 b4 | c2.~ | c4 r r | R2. | R2. \break |
}

sopranoB = \relative {
  e'4.^\mf^\markup Soprano f8 g4 | g c, f8 e | d4 c d | % 5a
  e2^\> d8\! c | a'4. b8 c4 | c g e8 g | f4 e c |
  d2 c'8 b | a4 d8(c) b(d) | c4 g c,8 d | e4. f8 g4 |
  a2 4 | 4. b8 c4 | g-- c2~ | c4 r g | % 6a
  a4. c8 b4 | c2.~ | c4 r r | R2. | R2. \bar "||" \key d \major |
  R2. | R2. | fis,4.^\mf g8 a4 | a d, g8 fis |
  e4 d e | fis2 e8 d | b'4. cis8 d4 | d a fis | % 7a
  g4 a b | d4(cis) d8 cis | b4 e8(d) cis(e) |
  d4 a d,8 e | fis4. g8 a4 | b2 4 |
  b4. cis8 d4 | a-- d2~ | d4 r a | % 8a
  b4. d8 cis4 | d2.->^\< ~ | 4 r\! d^\f |
  d4. cis8 b4 | a4 d, d' | e4. d8 e4 | fis4 d2^\<~ |
  d4 r\! 8^\ff c | d4 a fis | e'2 d8 cis | % 9a
  d4 a fis | e'2 d8 e | fis4. e8 d4 |
  d2 8(e) | fis4. g8 fis4 | d2 8 e |
  fis4. e8 d4 | e d-- e-- | fis2.~ | % 10a
  fis4 d-- fis-- | e2.~ | e4 r d8(cis) |
  d4. cis8 d4 | d4 a g8 a | b4 a g | a2 8 8
  b4. cis8 d4 | d a fis8 a | c4-- <b d>-- % 11a
  << {\voiceTwo g8(b) | d4(cis)} \new Voice {\voiceOne e4 | e2} >> d8 cis
  <b d>4 e8(d) cis(e) | d4 a d,8 e | fis4 g a | % 11b
  b2^\> 4 | 4.^\mf cis8 d4 | a4-- d2~ |
  d4 8^\f cis d4 | d8^\< (e) fis4 \tuplet 3/2 {d8^\ff (e fis)} | g4. fis8 e4 | % 12a
  fis4 d fis, | << {\voiceTwo b2. | d2 cis4 | d2.~ | d2} \new Voice {\voiceOne b2 fis'4 | e4. d8 e4 | d2.~ | d2} >> r4
  R2.^\markup\italic rit. | R2.
}

soprano = \relative {
  \global
  \sopranoA
  \sopranoB
  \bar "|."
}

wordsA = \lyricmode {
  Let me know beau -- ty in my mind, in my sight,
  Let it bright -- en my day -- time,
  let it com -- fort my night.
  Let my mind know the __ beau -- ty
  that the world has to give,
  O let me know beau -- ty __
  for as long as I live. __
}

wordsSopB = \lyricmode {
  Let me see beau -- ty through my eyes, through my heart,
  In the tex -- tures of na -- ture, in the col -- ors of art.
  Let my sight be __ wise o -- pen to a beau -- ti -- ful view,
  O when I see beau -- ty __
  I'll see it through you. __

  Let me hear beau -- ty in the ech -- oes of sound,
  From a cho -- rus of voic -- es as mu -- sic sur -- rounds. __
  While the tones ring __ out __ sweet -- ly
  and the rhy -- thms beat strong,
  O when I hear beau -- ty __
  I'll sing all day long. __
  O let me see beau -- ty.
  O let me hear beau -- ty. __
  That the world has to give,
  for as long as I live
  Through a beau -- ti -- ful view,
  that __ I'll see through you.
  When the rhy -- thms beat strong I will sing __
  all day long. __
  O let me know beau -- ty, be it seen, be it heard,
  In a beau -- ti -- ful pic -- ture,
  in a beau -- ti -- ful word. __
  Let me know beau -- ty's __ pow -- er,
  let me know beau -- ty's ways.
  O let me see beau -- ty, __
  let me hear beau -- ty.
  O __ let me know beau -- ty for all of my days. __
}

wordsSop = {
  \wordsA
  \wordsSopB
}

wordsSopMidi = \lyricmode {
  "Let " "me " "know " beau "ty " "in " "my " "mind, " "in " "my " "sight, "
  "\nLet " "it " bright "en " "my " day "time, "
  "\nlet " "it " com "fort " "my " "night. "
  "\nLet " "my " "mind " "know " "the "  beau "ty "
  "\nthat " "the " "world " "has " "to " "give, "
  "\nO " "let " "me " "know " beau "ty " 
  "\nfor " "as " "long " "as " "I " "live. " 
  "\nLet " "me " "see " beau "ty " "through " "my " "eyes, " "through " "my " "heart, "
  "\nIn " "the " tex "tures " "of " na "ture, " "in " "the " col "ors " "of " "art. "
  "\nLet " "my " "sight " "be "  "wise " o "pen " "to " "a " beau ti "ful " "view, "
  "\nO " "when " "I " "see " beau "ty " 
  "\nI'll " "see " "it " "through " "you. " 

  "\nLet " "me " "hear " beau "ty " "in " "the " ech "oes " "of " "sound, "
  "\nFrom " "a " cho "rus " "of " voic "es " "as " mu "sic " sur "rounds. " 
  "\nWhile " "the " "tones " "ring "  "out "  sweet "ly "
  "\nand " "the " rhy "thms " "beat " "strong, "
  "\nO " "when " "I " "hear " beau "ty " 
  "\nI'll " "sing " "all " "day " "long. " 
  "\nO " "let " "me " "see " beau "ty. "
  "\nO " "let " "me " "hear " beau "ty. " 
  "\nThat " "the " "world " "has " "to " "give, "
  "\nfor " "as " "long " "as " "I " "live "
  "\nThrough " "a " beau ti "ful " "view, "
  "\nthat "  "I'll " "see " "through " "you. "
  "\nWhen " "the " rhy "thms " "beat " "strong " "I " "will " "sing " 
  "\nall " "day " "long. " 
  "\nO " "let " "me " "know " beau "ty, " "be " "it " "seen, " "be " "it " "heard, "
  "\nIn " "a " beau ti "ful " pic "ture, "
  "\nin " "a " beau ti "ful " "word. " 
  "\nLet " "me " "know " beau "ty's "  pow "er, "
  "\nlet " "me " "know " beau "ty's " "ways. "
  "\nO " "let " "me " "see " beau "ty, " 
  "\nlet " "me " "hear " beau "ty. "
  "\nO "  "let " "me " "know " beau "ty " "for " "all " "of " "my " "days. " 
}

wordsDescant = \lyricmode {
  \skip 2.*106
  all,2 for4 all4. of8 my4 days2. __ ""2
}

altoA = \relative {
  R2.*29
}

altoB = \relative {
  e'4.^\mf^\markup Alto d8 c4 | c4 4 f8 e | d4 c d | % 5a
  d4^\>(c) d8\! e | f4. g8 a4 | g4 e c8 e | d4 e f |
  g2 e8 g | f4 a8(g) f(a) | g(f) e4 c8 d | e4. d8 e(c) |
  f2 4 | f4. g8 a4 | e4-- g2~ | g4 r e | % 6a
  f4. a8 g4 | g2.~ | g4 r r | R2. | R2. \key d \major |
  R2. | R2. | r4 d8^\mf e fis4 | 4 g4 8 fis
  e4 d cis | d4 4 e8(d) | fis4. g8 a4 | a4 fis d8(fis) | % 7a
  e4 fis g | b4(a) 8 fis | g4 b8(a) g(b) |
  a4 fis d8 e | fis4. g8 a4 | a(g) fis |
  g4 8-> (a) b4 | fis4-- a2~ | 4 r fis | % 8a
  g4. b8 a4 | b2.->^\< ( | a4->) r\! a^\f |
  g4. a8 b4 | a d, a' | a8(b) cis-> b-> cis4 | d8(cis) b2^\< ~
  b4 r\! d8^\ff cis | d4 a fis8-> a-> | g4-- d'-- cis-- | % 9a
  a2 fis8-> a-> | b4-- e-- cis-- | d2. |
  r4 a(d) | d4. e8 d4 | b2 8 a |
  a8-> d4. a4 | b4 8--(<a cis>--) <b d>-- (cis--) | d4-- b-- <a cis>-- | % 10a
  <a d>4-- b-- q-- | a2.~ | a4 r4 8(g)
  fis4. g8 a4 | a4 d, g8 fis | e4 d e | fis2 8 d |
  g4. a8 b4 | a4 fis4 8 a | g4-- fis-- d-- | e(a) fis8 a | % 11a
  g4 b8(a) g(b) | a4 fis d8 e | d4 e fis |
  a4^\> (g) fis | g4.^\mf a8 b4 | fis4-- a <fis a>->^\f
  <g b>4.-> <a cis>8 <b d>4 | <a d>8^\< (<g cis>) <a d>4 a4^\ff | b cis d | % 12a
  a4 d a | b2. | a2 4 |
  a2.~ | 2 r4 | R2. | R2.
}

alto = \relative {
  \global
  \altoA
  \altoB
  \bar "|."
}

altoMidi = {
  \global
  \sopranoA
  \altoB
}

wordsAltoB = \lyricmode {
  Let me see beau -- ty through my eyes, through my heart,
  In the tex -- tures of na -- ture, in the col -- ors of art.
  Let my sight be __ wise o -- pen to a beau -- ti -- ful view,
  O when I see beau -- ty __
  I'll see it through you. __

  Let me hear beau -- ty in the ech -- oes of sound,
  From a cho -- rus of voic -- es as mu -- sic sur -- rounds. __
  While the tones ring __ out __ sweet -- ly
  and the rhy -- thms beat strong,
  O when I hear beau -- ty __
  I'll sing all day long. __
  O let me see beau -- ty.
  O let, let me hear beau -- ty. __
  That the world has, that the world has to give,
  for as long as I live

  that __ I'll see through you.
  When the rhy -- thms beat strong I will sing __
  I will sing all day long. __
  O let me know beau -- ty, be it seen, be it heard,
  In a beau -- ti -- ful pic -- ture,
  in a beau -- ti -- ful word. __
  Let me know beau -- ty's __ pow -- er,
  let me know beau -- ty's ways.
  O let me see beau -- ty, __
  O let me hear beau -- ty.
  O let me know beau -- ty for all of my days. __
}

wordsAlto = {
  \wordsAltoB
}

wordsAltoMidi = \lyricmode {
  "Let " "me " "know " beau "ty " "in " "my " "mind, " "in " "my " "sight, "
  "\nLet " "it " bright "en " "my " day "time, "
  "\nlet " "it " com "fort " "my " "night. "
  "\nLet " "my " "mind " "know " "the "  beau "ty "
  "\nthat " "the " "world " "has " "to " "give, "
  "\nO " "let " "me " "know " beau "ty " 
  "\nfor " "as " "long " "as " "I " "live. " 
  "\nLet " "me " "see " beau "ty " "through " "my " "eyes, " "through " "my " "heart, "
  "\nIn " "the " tex "tures " "of " na "ture, " "in " "the " col "ors " "of " "art. "
  "\nLet " "my " "sight " "be "  "wise " o "pen " "to " "a " beau ti "ful " "view, "
  "\nO " "when " "I " "see " beau "ty " 
  "\nI'll " "see " "it " "through " "you. " 

  "\nLet " "me " "hear " beau "ty " "in " "the " ech "oes " "of " "sound, "
  "\nFrom " "a " cho "rus " "of " voic "es " "as " mu "sic " sur "rounds. " 
  "\nWhile " "the " "tones " "ring "  "out "  sweet "ly "
  "\nand " "the " rhy "thms " "beat " "strong, "
  "\nO " "when " "I " "hear " beau "ty " 
  "\nI'll " "sing " "all " "day " "long. " 
  "\nO " "let " "me " "see " beau "ty. "
  "\nO " "let, " "let " "me " "hear " beau "ty. " 
  "\nThat " "the " "world " "has, " "that " "the " "world " "has " "to " "give, "
  "\nfor " "as " "long " "as " "I " "live "

  "\nthat "  "I'll " "see " "through " "you. "
  "\nWhen " "the " rhy "thms " "beat " "strong " "I " "will " "sing " 
  "\nI " "will " "sing " "all " "day " "long. " 
  "\nO " "let " "me " "know " beau "ty, " "be " "it " "seen, " "be " "it " "heard, "
  "\nIn " "a " beau ti "ful " pic "ture, "
  "\nin " "a " beau ti "ful " "word. " 
  "\nLet " "me " "know " beau "ty's "  pow "er, "
  "\nlet " "me " "know " beau "ty's " "ways. "
  "\nO " "let " "me " "see " beau "ty, " 
  "\nO " "let " "me " "hear " beau "ty. "
  "\nO " "let " "me " "know " beau "ty " "for " "all " "of " "my " "days. " 
}

pianoRH = \relative {
  \global \oneVoice
  c4-> \clef treble <g'' c e>8(<a c f> <g c g'>4)
  q4(<c, g' c>) <a' c f>8( <g e'>
  <f g d'>4 c' d
  <g, c e>8) <e g> <e g c> <f a d> \tuplet 3/2 {<g c e> <a c f> <c e g>}
  <c f a>4.(<d g b>8 <f g c>4) % 3b
  q4(<c d e g>) <c e>8(<d g>)
  <c f a>8(g' <a, c f> e' <g, d'>4
  \voiceOne c4.) g,8 c g'
  \oneVoice <a, c f>4 e'8 c <g c d>4 % 3c
  <c e>8 g c d e g |
  <a, c e g>4 <a c> <a f'>8 <g e'> |
  <f a c>4 <a c e>8 f <b d> g |
  <g d'>8 e <c' e> g <d' f> <c e> | % 4a
  <c e a>4. <d e b'>8 <e f c'>4 |
  <f g c>4 <d e g> <c e>8 <d g> |
  <c d f a>4 <a c e g> <f a c e> |
  <c' d g>4 <b d> <e g c>8 <d g b> | % 4b
  <c g' a c>4 <d' f>8(<c e> <b d> <d f>) |
  <g, c e>4 <d g c> c8(d) |
  <g, c e>4 <a c f> <g c d g> |
  <a e' g>4 <d f> <g, c e> | % 4c
  <f a c e>4. <c' d b'>8 <d e c'>4 |
  <c d g>4 <g' c>2 |
  <c g'>4 <e c'> <g,, c> |
  <f a c e>4 <c' f a> <c f g b> | % 4d
  <e c'>4 <g c e>8(<a c f> <g c g'>4) |
  <g c e g>4 <c, g' c> <c g'> |
  <c e>4 <g' c e>8(<a c f> <g c e g>4) |
  q4 <c, g' c> <d g d'> |
  <g d'>8 e <g c> d <g b> c, | % 5a
  <g' b>8 c, <f a> c f e |
  <d f>8 c <f a> c <g' b> c, |
  <g' c e>8(d' c g d c | % 5b
  <a c e g>4.) <d g b>8 <e a c>4 |
  <g c>8 e <d g> c <g c e> <d' g> |
  <f a>8 c <e g> c <c f> a|
  <g c d>8( e' <a, c f> <c d g> <g' c e> <g b d>) | % 5c
  <g a c>4\arpeggio <a c f>8(<g c e> <g c d> <a c f> |
  <g c e>4) <d e g c> <c c'>8 <d d'> |
  <g e'>8(<f d'> <e c'> <d b'> <c a'> <b g'>) |
  <c a>8(<b g'> <a f'> <g e'> <f d'> <e c'> | % 6a
  <f a c e>4) <a d f> <d f a c> |
  <g, d' e g>4 <e' g c> <f a c e> |
  <c' g'>4 <e c'> <c, g'> |
  <c f a>8(<f a c> <a c f> <g c e> <g c d>4 | % 6b
  <e c'>4) <g c e>8( <a c f> <g c e g>4) |
  <g c e g>4 <c, g' c> <c g'> |
  <e c'>4 <g c e>8( <a c f> <g c e g>4) |
  q4 <c, g' c> <d g a d>-- \key d \major |
  <d a' d>8-> <d a'> <a' d fis>(<b d g> <a e' a>4) | % 6c
  <b d a'>8(<g d'> <g a d> <d a> <a b d g> <a e'>) |
  <d fis>8 a <a d fis> <b d g> <a d a'>4 |
  <a b d a'>4 <d a' b> <d g b> |
  <g, a e'>4 <a b d> <a b e> | % 7a
  <a d fis>8 a(d a' <a, d g> fis') |
  <g, a d fis>8 4 4 8 |
  <a b d g>8 4 4 <a d fis>8 |
  <g d' e g>8 <g g'> <b' d g>\arpeggio (fis' <g, b e> d' | % 7b
  <e, a d e>4) <e a cis e> d'16(cis b a) |
  <g d'>16 b a g <a b d>8-> <g a b d>-> <e a cis> e' |
  d16 a d, a' <d, a'>8 d d <d e> | % 7c
  <a d fis>8-> 4-> <b d e g>8 <d e fis a>4 |
  <d a' b>8 g <a, g'> d <a d e> a' |
  <d, g b>4 <e a cis> <e g a d> | % 8a
  <d e a>4 <g a d fis> <d d'>8(<e e'> |
  <a d fis>4) <d, e a>8 <d e g> <d fis> <a d> |
  <b d g>4 <d g b> <e g a d> | % 8b
  <a, d fis>4-- -> <a' d fis>8(<b d g> <a d a'>4) |
  <a, d fis>4 <a' d fis>8( <b d g> <a d a'>4) |
  <a a'>8(d <d, d'> a' <d, a'> d | % 8c
  <d e cis'>8 a' <d, e a>4 q) |
  <a' b e>8 a <a e'> d <e, cis'> a |
  <d, fis b>4 <b b'>-- <cis fis cis'>-- |
  <d fis b d>4 <e b' e> <b' fis'>16(e d cis) | % 9a
  <f, d'>8(a <d, a'> fis <a, d e fis> a' |
  <d, e g>8 <fis a> <d g b> <e a cis>) <a fis'>16(e' <g, d'> cis |
  <fis, d'>8 a <d, a'> fis <a, d e fis> a' | % 9b
  <b, fis' b>8 <cis cis'> <d b' d> <e b' e> <fis fis'> <e e'>) |
  <d d'>16(a' fis a~a fis a d~d a d fis) |
  r16 a,,(d fis~fis d fis a~a fis a d) | % 9c
  r16 a,( d g~g d g b~b g b d) |
  r16 a,( d g~g b, d g~g a, d g) |
  <a, d fis>8-> 4-> <b d e g>8 <a d e fis a>4 | % 10a
  <b d fis>4 <d fis b> <e fis cis'> |
  <d d'>16(g d g~g b, d g~g d g b) |
  <g a d>2. | % 10b
   r16 g,(b d~d b d g~g d g b |
  <a b e>4) a8 g <d a'> <d e g> |
  <a d fis>4-- <a d e g>-- <a d e a>-- | % 10c
  <a b a'>8 d(<g a d> cis <d, g b> <d a'> |
  <b d g>4) <d g b> <e a cis> |
  d8 <d e> <d fis> <d e g> <e a> d |
  <d g b>4. <e a cis>8 <g a d>4 | % 11a
  q4 <d e a> <b d fis>8 a' |
  <g, d' e g>4 <c e g> <e g b> |
  <a, d e>8( cis <g' a d> cis <e, a d>16 cis' b a) |
  <f b>16( g, b d~d d g b~b a b e) | % 11b
  d16 a e a <e fis>8 a <a, d fis> <b e a> |
  <a d fis a>4-- <b d e g>-- <a d e fis a>-- |
  <d b'>8 g <b, g'> <a d> <a b d fis> a' | % 11c
  <d, g b>16(g, b d~d b d g~g d g b) |
  r16 a,( cis e~e cis e a~a e a cis) |
  r16 g,(b d~d b d g~g d g b) | % 12a
  r16 a,(cis e~e cis e a~a e a cis) |
  <d, b'>8(g <cis, e a> fis <b, g'> d |
  <a e' fis a>8 d <e fis a>4 <e, a>) | % 12b
  r16 g( b d~d b d g~g d g b~ |
  b16 g b d~d b d g~g d g b |
  <d, fis a>4) <a d fis>8(<b d g> <a d fis a>4) | % 12c
  <a d fis a>4 <d, g a d>8 <d d'> <g' b d>(<e cis'> |
  <d g b>8^\markup\italic rit. <fis a> <b, d g> <d fis> <a d e>8.) <d, d'>16 |
  <fis a d>4 <d' fis a d>2\arpeggio
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  s2.*8
  s2.\mp % 3c+
  s2.*15
  s2.\mf % 4d+
  s2.*19
  s2.\f % 6b+
  s2.*4
  s4. s\> % 6c+
  s2.\mf
  s2.*15
  s2.\f % 8b+
  s2.*4
  s4 s2\<
  s2 s4\ff % 9a
  s2.*25
  s2.\> % 11c
  s2.\mf
  s2.
  s2.\f % 12a
  s2.
  s2.\ff
  s2.*7
}

pianoLH = \relative {
  \global
  <c,, c'>4->_\markup\italic "with pedal" c''8( d e4) |
  <f,, f'>8(c'' f g a <g c>) |
  <g,, g'>8(d'' g a b g |
  <c,, c'>8) <b'' c> <a c> <g c d> \tuplet 3/2 {c,(g c,)} |
  <f, f'>8(c'' f g <a f'>4) | % 3b
  c,8( g' c d e c) |
  g,8(d' g a b g,) |
  c,8 g' c d e4 |
  g,8 d'4. f8 g,| % 3c
  <c, c'>2. |
  <f f'>8 c' f g r4 |
  <d, d'>8 a' g4 g, |
  <c c'>4 g' c8 c, | % 4a
  f8 c' f g a4 |
  <c,, c'>8 g' c d e4 |
  <d, d'>8 a'4 d a8 |
  <g g'>8 d'4 g8 e g | % 4b
  <f,, f'>8 c'' f(g a d) |
  <c,, c'>8 e' g2 |
  <c,, c'>4 <d d'> <e e'> |
  <f f'>8 c'4 f8 <e, e'> c' | % 4c
  <d, d'>8 a' d g f d |
  <c, c'>8 e' g c d e |
  <f g>4 <e g> <c,, c'> |
  <d, d'>4 f'' <g, d' f> | % 4d
  <c,, c'>4-> c'''8( d e4) |
  <f,,, f'>8 c'' f4 <g, d'> |
  <c,, c'>4 c'''8( d e4) |
  <f,,, f'>8 c'' e4 <d g> |
  c,8 g' c4 g | % 5a
  f8 c' f4 e,8 c' |
  <d, d'>4 g g' |
  c,8 g' c4 b | % 5b
  f,8 c' f e <f, f'>4 |
  c8 g' c4 c, |
  d a' d |
  g,8 d' g a <g, g'> <d d'> | % 5c
  <f, f'>8\arpeggio c'' f'(e d f |
  <c,, c'>) e' <g c>4 e8 g |
  <c,, c'>4 g'' <g,, g'> |
  <f f'>4 c'' c | % 6a
  <d, a' d>4 f' a |
  <c,, g' c>4 c'' d |
  <f a>4 <e g> <c,,, c'> |
  <d d'>2 <f f'>4 | % 6b
  <c c'>4-> c'''8(d e4) |
  <f,,, f'>8 c'' f4 <b, d'> |
  <c,, c'>8-> <g'' g'> <c c'>(<d d'> <e e'>4) |
  <f,, f'>8 c'' f4 <g, d'>-- \key d \major |
  <d, d'>8 d'' d'(cis b a) | % 6c
  <g,, g'>(d'' g fis e <g, e'>) |
  <d d'>8 a' q <e e'> <g g'> d' |
  <g,, g'>8 d'' <g b> fis e d |
  <a, a'>8 e'' g e cis a | % 7a
  <d, d'>8 a' d cis <g, g'> <a a'> |
  <b b'>8 4 4 8 |
  <e e'>8 4 8 <d d'>4 |
  <e e'>4 g''8\arpeggio (fis e d | % 7b
  <a,, a'>8) e'' <a d>4 <d,, d'>8 <a a'> |
  <g g'>4-> <g'' d'>4-> <d g a>-> |
  <d,, d'>4-> <e'' a>-> <a, fis'>8 <b g'> | % 7c
  <fis, fis'>4-> <g g'>-> <a a'>-> |
  <g g'>4 d'' <fis,, fis'> |
  <e e'>8 b'' g' fis e b | % 8a
  <d,, d'>8 e'' <fis d'>2 |
  a8 g fis e d a |
  <e, e'>8 b'' g' fis a,, a' | % 8b
  <b, b'>4-> d''8(e fis4) |
  <a,,, a'>4-> d''8(e fis4) |
  <g,,, g'>4 b'' g | % 8c
  <fis,, fis'> a'' e |
  <cis, cis'>4 b'' a |
  <gis,, gis'>4-> q-- q-- |
  <gis gis'>8 8 8 8 8 8 | % 9a
  <a a'>8 a' e'4 d |
  <a, a'>4 4 8 <e e'> |
  <fis fis'>8 e'' a4 fis8 d | % 9b
  <gis,, gis'>4 4 4 |
  <a a'>4-> <a'' d>-> <a fis'>-> |
  <b,, b'>4-> a''-> d-> | % 9c
  <c,, c'>4 a'' d |
  <b,, b'>4 <d' a'> <b g'> |
  <fis, fis'>4 <g g'> <a a'> | % 10a
  <gis gis'>4 8 8 8 8 |
  <e e'>4 a'' b |
  d2. | % 10b
  <a,, a'>4 4 4 |
  q4 <a' a'>8 <g g'> <fis fis'> <e e'> |
  <d d'>4-- <e e'>-- <fis fis'>-- | % 10c
  <g g'>4 b'8 a <g, g'> <fis fis'> |
  <e e'>4 a a, |
  d'8 <cis cis'> <b b'> <a a'> <g g'> <fis fis'> |
  <g, g'>8 fis'' e d e b | % 11a
  <d,, d'>8 a''' g fis <b,, b'> fis'' |
  <c,, c'>8 d'' g c d4 |
  <a,, a'>8 e'' b' a g fis |
  <g,, g'>4 <a'' b>-> <g d>-> | % 11b
  <d,, d'>4 d'''8 a <fis, d'> <f e'> |
  a,16-> a' a, a' a,-> a' a, a' a,-> a' a, a' |
  g,16 g' g, g' g8 d' <b fis'> q | % 11c
  <e,, e'>4 g'' b |
  <fis,, fis'>4 a'' d |
  <g,,, g'>4 g'' b | % 12a
  <fis, d'>4 a' d |
  <g,, d'>4 <fis e'> <e d'> |
  d4 d'' <fis,, d'> | % 12b
  <a, a'>4-> g'' b |
  d4 \clef treble g b \clef bass |
  <d,,,, d'>4 <fis'' d'>8( <g e'> <a fis'>4) % 12c
  <g,, g'>8 a'' b4 <d, a'> |
  <g,, g'>8 d'' g a <a, e'> fis, |
  <d d'>4 <d'' d'>2\arpeggio |
  \bar "|."
}

singleScore = {
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
          \new Voice \soprano
          \addlyrics \wordsSop
          \new Lyrics \with {alignAboveContext = soprano} \wordsDescant
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Voice \alto
          \addlyrics \wordsAlto
        >>
      >>
      \new PianoStaff = piano <<
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = pianorh \with {
        }
        <<
          \clef bass % yes, really
          \new Voice \pianoRH
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \clef "bass"
          \new Voice \pianoLH
        >>
      >>
    >>
  >>
}

singleBassScore = {
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
          \new Voice \soprano
          \addlyrics \wordsSop
          \new Lyrics \with {alignAboveContext = soprano} \wordsDescant
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \clef bass
          \new Voice \transpose c c, \alto
          \addlyrics \wordsAlto
        >>
      >>
      \new PianoStaff = piano <<
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = pianorh \with {
        }
        <<
          \clef bass % yes, really
          \new Voice \pianoRH
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \clef "bass"
          \new Voice \pianoLH
        >>
      >>
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singleScore
    \layout {
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
  \bookOutputSuffix "single-bass"
  \score {
    \singleBassScore
    \layout {
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
    \singleScore
    \layout {
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
    \singleBassScore
    \layout {
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
%            \new Lyrics \with {alignAboveContext = soprano} \wordsDescant
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \new Lyrics \with {alignAboveContext = soprano} \wordsDescant
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoMidi
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
