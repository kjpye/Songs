\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Everybody Says Don't"
  subtitle    = "from Anyone Can Whistle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Stephen Sondheim"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Stephen Sondheim"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
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
  \key c \major
  \time 4/4
  \tempo 4=120
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
%  \mark \markup { \box 5 }
  \mark \markup { \circle "12a" } s1*2
  \mark \markup { \circle "12b" } s1*3
  \mark \markup { \circle "12c" } s1*2
  \mark \markup { \circle "13a" } s1*3
  \mark \markup { \circle "13b" } s1*3
  \mark \markup { \circle "13c" } s1*3
  \mark \markup { \circle "13d" } s1*3
  \mark \markup { \circle "14a" } s1*2
  \mark \markup { \circle "14b" } s1*4
  \mark \markup { \circle "14c" } s1*4
  \mark \markup { \circle "14d" } s1*4
  \mark \markup { \circle "15a" } s1*4
  \mark \markup { \circle "15b" } s1*4
  \mark \markup { \circle "15c" } s1*4
  \mark \markup { \circle "15d" } s2*4
  \mark \markup { \circle "16a" } s2*5
  \mark \markup { \circle "16b" } s2*4
  \mark \markup { \circle "16c" } s2*5
  \mark \markup { \circle "16d" } s2*6
  \mark \markup { \circle "17a" } s2*4
  \mark \markup { \circle "17b" } s2*5
  \mark \markup { \circle "17c" } s2*4
  \mark \markup { \circle "17d" } s2*4
  \mark \markup { \circle "18a" } s2*5
  \mark \markup { \circle "18b" } s2*6
  \mark \markup { \circle "18c" } s2*6
  \mark \markup { \circle "18d" } s2*6
}

melody = \relative c' {
  \global
  \repeat volta 2 { r1 }
  r8 g16 g g g g8 a c,16 c c c c8
  d8 g,16 g g g g8 a c e a
  g4. a,8~a c e a
  g2. r4
  r8 g16 g g g g8 a c,16 c c c c8
  d8 g,16 g g g g8 a c e a
  g4. a,8~a c e a % 13a
  g4. a,8~a c e b'
  g1~
  g2 r4 d % 13b
  b'2 c
  a1
  c2 d % 13c
  e,8 e16 e e8 e16 e f8 e f4
  e2 fis
  a1 % 13d
  a8 a16 a b8 a r a b a
  b4 fis8 b,~b4 r
  r8 g'16 g g g g8 a c,16 c c c c8 % 14a
  d8 g,16 g g g g8 a c e a
  g2 a,8 c e b' % 14b
  a2 c,8 e g d'
  b1~
  b4 r c,8 e g e'
  c1 % 14c
  r8 c16 c c8 c c f, d4
  c2. r4
  r1
  b8 e4 cis8 fis dis4.~ % 14d
  dis2 r
  b8 e4 cis8 b'2~
  b1
  ees,8 aes4 f8 bes g4.~ % 15a
  g2 r
  ees8 aes4 f8 ees'2~
  ees1
  g,8 a4 g8 a g a4 % 15b
  a1
  g8 a4 g8 c bes a4
  g1
  g8 a4 g8 d' c b4 % 15c
  a2. g8 g
  a16 a a8 a a~a b4 a8
  b2 r \bar "||"
  \time 2/4 r8 g16 g g g g8 % 15d
  a8 c,16 c c c c8
  d8  g,16 g g g g8
  a8 c e a
  g2 % 16a
  a,8 c e a
  g2~
  g4 r
  r8 g16 g g g g8
  a8 c,16 c c c c8 % 16b
  d8 g,16 g g g g8
  a8 c e a
  g4. a,8~
  a8 c e a % 16c
  g4. a,8~
  a c e b'
  g2~
  g2~
  g2 % 16d
  r4 d
  b'2
  c2
  a2~
  a2
  c2 % 17a
  d2
  e,8 e16 e e8 e16 e
  f8 e f4
  e2 % 17b
  fis2
  a2~
  a2
  a8 a16 a b8 a
  r8 a b a % 17c
  b4 fis8 b~
  b4 r
  \override NoteHead.style = #'cross
  r8 g16^\markup \italic (Spoken) g g g g8
  a8 c,16 c c c c8 % 17d
  d8 d16 d d d d8
  \revert NoteHead.style
  a8^\markup \italic (Sung) c e a
  g16 e g8~g4
  a,8 c e b' % 18a
  a8 g4 a8~
  a2~
  a4. r8
  c,8 e g c
  d8 c4 d8~ % 18b
  d2
  d4 e
  c4 g
  d'8 c4 d8~
  d2
  d4 e % 18c
  c4 g
  d'4 c
  d4-> r
  r4 f,
  a4 c
  e2~ % 18d
  e2~
  e2~
  e2~
  e2\fermata ~
  e8 r r4
  \bar "|."
}

ebs   = \lyricmode { Ev- 'ry- bod- y says } % should be "es" but Lilypond won't allow that
esc  = \lyricmode { Ev- 'ry- bod- y says: }
esd  = \lyricmode { Ev- 'ry- bod- y says don't, }
esdc = \lyricmode { Ev- 'ry- bod- y says: don't, }

words = \lyricmode {
  \esd \esd
  \esd it is- n't right.
  Don't! It is- n't nice!
  \esd \esd
  \esdc walk on the grass.
  Don't dis- turb the peace. Dont' skate on the ice.

  Well, I say do!
  I say walk on the grass, it was meant to feel!
  I Say Sail!
  Tilt at the wind- mill
  And if you fail, you fail! __

  \esd \esd
  \esdc get out of line.
  When they say that, then,
  La- dy, that's a sign: __
  Nine times out of ten,
  La- dy, you are do- ing just fine! __
  Make just a rip- ple. __
  Come on, be brave. __
  This time a rip- ple, __
  Next time a wave! __
  Some- times you have to start small,
  Climb- ing the ti- ni- est wall,
  May- be you're go- ing to fall, __
  But it's bet- ter than not start- ing at all!

  \ebs no, \ebs stop,
  \esc must- n't rock the boat!
  Must- n't touch a thing! __
  \esd \ebs wait,
  \esc can't fight Cit- y Hall,
  Can't up- set the cart,
  Can't laugh at the King. __

  Well, I say try! __
  I say:
  Laught at the kings or they'll make you cry!
  Lose your poise! __
  Fall if you have to,
  But, la- dy, make a noise! __
  \esd
  \ebs can't,
  \esc wait a- round for mir- a- cles, __
  That's the way the world is made! __
  I in- sist on Mir- a- cles, __
  if you do them, Mir- a- cles! __
  Noth- ing to them! I say don't--
  Don't be a- fraid!
}

pianoRH = \relative c' {
  \global
  \repeat volta 2 { <e a d>8-. r r q-. r4 q8-. r }
  <d g a d>8-> r r <e, a d>-. r4 <e gis c>8-. r
  <fis ais d>8-. r r q-. r4 <f a b e>8 r % 12b
  s1
  s2. <des' ges bes>8->^(<c f a>-.)
  <d g a d>8 r r <e, a d>-. r4 <e gis c>8-. r % 12c
  <fis ais d>8 r r q r4 <f a b e>8 r
  s1*5
  a'1 % 13b++
  s1 % 13c
  <a, c e g>8 r r4 r r8 <aes b d f>
  s1
  <a cis fis>8(<fis b e>) r <a cis fis>->[(<fis b e>)] r <a cis fis>->(<fis b e>)
  <c' e a>8-. r r4 <d e a>8-. r r4
  <b dis>4 <cis e>8 <b d g>~q <a' d g> <g c f> <f bes ees>
  <d g a d>8-> [ r r <e, a d>-. ] r4 <e gis c>8-. r % 14a
  <fis ais d>8-. [ r r q-. ] r4 <f a b e>8-. r
  s1 % 14b
  s1
  s1
  s4. r8 <c' e g>4(<g c e>)
  s1 % 14c
  <f' a c e>8-> r r4 r <f, a b d>8-. r
  <e g a c>8-. [ r r q-. ] r4 <f a d>8-. r
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 { s1 }
  s1
  s1 % 12b
  <d f>8(<c e>) r <d f>(<c e>) r <d f>(<c e>)
  <d f>8(<c e>) r <d f>(<c e>) r s4
  s1 % 12c
  s1
  <d f>8(<c e>) r <d f>[(<c e>)] r <d f>(<c e>) % 13a
  <e g>8(<d f>) r <e g>[(<d f>)] r <e g>(<d f>)
  g8(e) r g->[e] r b'->(g)
  r8 d'8->[(b)] r g'->[(e)] s4 % 13b
  b2(c)
  <b d>8->(<a c>) r <b d>8->(<a c>) r <b d>8->(<a c>) 
                   c2(d) % 13c
                   s1
                   e,2(fis)
                   s1 % 13d
                   s1
                   s1
                   s1 % 13d
                   s1
                   s1
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 { s1 }
  s1
  s1 % 12b
  g4 r8 g4 r8 g4
  a4 r8 a4 r8 s4
  s1 % 12c
  s1
  g4 r8 g4 r8 g4 % 13a
  a4 r8 a4 r8 a4
  <b d>4 r8 q4 r8 q4
  r8 <d g>4 r8 <g b d>4 <b, d> % 13b
  <b f' a>8[ q r q] <c f a>[ q r q]
  <e g>4 r8 q4 r8 q4
  <c d f a>8[ q r q] <d f a b>[ q r q] % 13c
  s1
  <a b d>8[ q r q] <gis b d>[ q r q]
  s1 % 13d
  s1
  s1
  
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 { s1 }
  s1\fz
  s1 % 12b
  s1
  s4.\< s4\! s4.\>
  s1\fz % 12c
  s1
  s1 % 13a
  s1
  s4 s8 s\< s2
  s2 s4\f s\p % 13b
  s1
  s1
  s1 % 13c
  s1
  s1
  s4 s2.\mf % 13d
  s2\p s\fz
  s1
  s1\fz % 14a
  s1
  s1 % 14b
  s4.\< s8\! s2
  s2. s4\<
  s2.\! s4\>
  s2\! s8 s\< s4 % 14c
  s2.\fz s4\p
  s1
  s1
  s1 % 14d
  s1
  s1
  s1
}

pianoLH = \relative c, {
  \global
  \repeat volta 2 { <c g'>8-. r r q-. r4 q8-. r }
  <c g'e'>8-> r r <c g'>-. r4 <c g' c>8-. r
  <c g'>8-. r r q-. r4 q8-. r % 12b
  q4 r8 q4 r8 q4
  <f c'>4 r8 q4 r8 s4
  <c g' e'>8 r r <c g'> r4 <c g' e'>8 r % 12c
  <c g'>8 r r q r4 q8 r
  q4 r8 q4 r8 q4 % 13a
  <f c'>4 r8 q4 r8 q4
  <a e' g>4 r8 q4 r8 q4
  r8 q4 r8 q4 q4 % 13b
  <d, d'>8 [ r <g, g'> ] r <d' d'> [ r <g, g'> ] r
  <c g' e'>4\arpeggio r8 <g g'>4 r8 <c g' e'>4
  <d d'>8 [r <g, g'> ] r <d' d'> [r <g, g'> ] r % 13c
  <c g' e'>8 r r4 r r8 <g' d'>
  b8[r e,] r b'[r e,] r
  <a e'>8(cis) r q->(cis) r q->(cis) % 13d
  <d g>8-. r r4 <c fis>8-.-> r r4
  <b fis'>4 <a e'>8 <g d'>~q <f c'> <ees bes'> <des aes'>
  <c g' e'>8-> [r r <c g'> ] r4 <c g' c>8-. r % 14a
  <c g'>8-. [ r8 r q-. ] r4 q8-. r 
  q4 r8 q4 r8 q4 % 14b
  <f c'>4 r8 q4 r8 q4
  <a e'>4 r8 q4 r8 q4
  r8 q4 r8 q2
  <d, a' f'>4 r8 q4 r8 q4 % 14c
  <g f' a>8-^ r r4 r <g, g'>8-. r
  <c g'>8-. [ r r q-. ] r4 q8-. r
  <e b' fis'>8-. [ r r q-. ] r4 q8-. r
  <e b' e>8-. [ r r q8 ] r4 q8-. r8 % 14d
  <e b' fis'>8-. [ r r q8-. ] r4 q8-. r
  <e b' e>8-. [ r r q-. ] r4 q8-. r
  <e b' fis'>8-. [ r r q8-. ] r4 q8-. r
  <ees aes ees'>8-. [ r r q8 ] r4 q8-. r % 15a
  <ees aes ees'>8-. [ r r q8 ] r4 q8-. r
  <ees aes ees'>8-. [ r r q8 ] r4 q8-. r
  <ees aes ees'>8-. [ r r q8 ] r4 q8-. r
  <c c'>8-. [ r r q8-. ] r4 q8-. r % 15b
  <c' f>8-. [ r r q-. ] r4 q8-. r
  <c, c'>8-. [ r r q-. ] r4 q8-. r
  <c' f>8-. [ r r q-. ] r4 q8-. r
  <a e'>8-. [ r r q-. ] r4 q8-. r % 15c
  <f c'>4 r8 f'4-> r8 q4
  <d, a'>8 r r4 r2
  <b' fis'>4 <a e'>8 <g d'>~q <f c'> <ees bes'> <des aes'>
  \time 2/4
  <c g'>8 [ r g ] r % 15d
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r % 16a
  <c g'>8 [ r q ] r
  <f c'>8 [ r c ] r
  <f c'>8 [ r c ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r % 16b
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  q8 [ r q ] r % 16c
  <f' c'>8 [ r c ] r
  q8 [ r c ] r
  <a' e'>8 [ r e ] r
  <a e'>8 [ r e ] r
  <a e'>8 [ r e ] r % 16d
  <a e'>8 [ r e ] r
  <d d'>8 [ r <g, g'> ] r
  <d' d'>8 [ r <g, g'> ] r
  <c g' e'>4 r8 <g g'> ~
  q8 r <c g' e'>4
  <d d'>8 [ r <g, g'> ] r % 17a
  <d' d'>8 [ r <g, g'> ] r
  <c g' e'>8 r r4
  r4 r8 <g' d'>
  b8 [ r e, ] r % 17b
  b'8 [ r e, ] r
  <a e'>8(<cis fis>) r <a e'>(
  <cis fis>8) r <a e'>(<cis fis>)
  <d g>8-. r r4
  <c fis>8-> r r4 % 17c
  <b fis>4 <a e'>8 <g d'>~
  q8 <f c'> <ees bes'> <des aes'>
  s2
  <c g'>8 [ r g ] r % 17d
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r
  <c g'>8 [ r g ] r % 18a
  <f' c'>8 [ r c ] r
  <f c'>8 [ r c ] r
  <f c'>8 [ r c ] r
  <f c'>8 [ r c ] r
  g'8 [ r g, ] r % 18b
  g'8 [ r g, ] r
  <a' e'>8 [ r a, ] r
  <a' e'>8 [ r a, ] r
  b' [ r b, ] r
  b' [ r b, ] r
  <e b' fis'>8 [ r q ] r % 18c
  <a e' g>8 [ r <a ees' g> ] r
  <d, a' f'>8 r q4\arpeggio
  <d' f a c>8-> r f16-> e-> c-> a->
  g8-^ r <f c'>4->
  <ees ces' g'>4-> <des bes' f'>
  <c c'>8-> [ r <g g'>-> ] r % 18d
  <c c'>8-> [ r <g' g'>-> ] r
  <fis fis'>4 <gis gis'>8 <e e'>-> ~
  q8 <fis fis'>-> <d d'>-> <cis cis'>->
  \repeat tremolo 8 { c32 c'\fermata }
  <c c'>8 r r4
  \bar "|."
}

pianoLHone = \relative c {
  \global
  \voiceOne
  \repeat volta 2 { s1 }
  s1*3 s2. ees8->(d)
  s1*40
  \time 2/4 s2*36
  e2 % 17c+++
  s2*27
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  \repeat volta 2 { s1 }
  s1*3 s2. g4
  s1*40
  \time 2/4 s2*36
  <c, g'>8 [ r g ] r % 17c+++
  s2*27
  \bar "|."
}

\score {
  \context GrandStaff <<
    <<
      \new ChoirStaff <<
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice \RehearsalTrack
          \clef "treble_8" %%%% SHOULD BE "bass"
          \new Voice = "bass" \melody
          \new Lyrics \lyricsto "bass" \words
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
  \midi {}
}
