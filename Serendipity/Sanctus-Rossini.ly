\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sanctus"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Rossini"
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
  \key c \major
  \time 6/8
}

TempoTrack = {
  \tempo "Andantino mosso" 4=90
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "116a" } s2.*7
  \textMark \markup { \box "116b" } s2.*6
  \textMark \markup { \box "117a" } s2.*7
  \textMark \markup { \box "117b" } s2.*6
  \textMark \markup { \box "118a" } s2.*7
  \textMark \markup { \box "118b" } s2.*7
  \textMark \markup { \box "119a" } s2.*5
  \textMark \markup { \box "119b" } s2.*5
  \textMark \markup { \box "120a" } s2.*5
  \textMark \markup { \box "120b" } s2.*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp | s\mf | s\f | s4. s\f\> | s2.\pp | s | s\< |
  s2.\f | s | s\f | s\> | s\! | s |
  s4. s4 s16 s\f | s2. | s\> | s\! | s2.*3 | % 117a
  s2. | s4.\< s\! | s2.\f\> | s\pp | s | s |
  s2.\f | s2.*3 | s4. s4 s16 s\f | s2. | s\> | % 118a
  s2.\! | s2.*4 s2.\f | s4. s\> |
  s2.\pp | s | s4 s2\ppp | s2. | s8 s\f s2 | % 119a
  s8 s\> s2 | s2.\ppp | s | s | s\ppp |
  s2. | s8 s\f s2 | s4. s\> | s8\! s\ppp s2 | s2. | % 120a
  s4 s16 s\ff s4. | s4 s16 s\ff s4. | s4 s16 s\ff s4. | s2 s4\ff | s2. | s2. |
}

soprano = \relative {
  \global
  g'4.^\markup\bold\italic Tutti 8 r r | c4. 8 r r | e2. | 8 r^\markup\bold\italic Solo  r e4.~ | e d4 c8 | 4. b4 a8 | g4 8 fis4~16 fis |
  f4 r8 r4. | R2. | g8-^ ^\markup\bold\italic Tutti f'-^ e-^ e-^ d-^ c-^ | 4 b8 8 a a | 4.-^ gis8 r r | R2. |
  r4. r4^\markup\bold\italic Solo r16 b | 4. 8-! 8-^ gis-^ |
  e'2. | 4.~8 r r^\markup\bold\italic Tutti | g,4^\markup\italic "sotto voce" (e'8) 4(d8) | c8(e, f) g(b a) | g(d e) f(b a) | % 117a
  g4. 8 r r | 4(e'8) 4 d8 | e(c b) b(a) g | g a g fis(d) a' | g4 r8 r4. | R2. |
  g8-^ f'-^ ees-^ ees-^ d-^ c-^ | 4 bes8 8 aes aes | 4.-^ g8 r r | R2. | r4. r4^\markup\bold\italic Solo r16 d' | 4. 8 8 b | f'2. | % 118a
  aes,4.~8 r r^\markup\bold\italic Tutti | g4^\markup\italic "sotto voce" (e'8) 4(d8) | c(e, f) g(b a) | g(d e) f(b a) | g4. 8 r r | c4. e8(d) c | c(d c) d(c) d |
  c8 d c b(g) d' | c r r r4. | r4^\markup\bold\italic Solo ees8 d a b | c g c bes bes(c) | d d(c) b f'-^ f-^ | % 119a
  ees8-^ d-^ c-^ bes(a) aes | g c^\markup\bold\italic Tutti (d) c(e, a) | g(c,) f e4-^ d8 | c r r r4. | r4^\markup\bold\italic Solo e'8 d a b |
  c8 g c b gis(a) | b-. d(c) b f'-^ f-^ | e-^ d-^ c-^ b(a) aes | g c^\markup\bold\italic Tutti (d) c(e, a) | g(c,) f e4 8 | % 120a
  c8 r r16 g'16 4. | 8 r r16 c16 4. | 8 r r16 e16 4. | 4.~16 r e8 c | g'2. | c,4 r8 r4. |
  \bar "|."
}

wordsSop = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus, Do -- mi -- nus De -- us sa -- ba -- oth.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  in no -- mi -- ne Do -- mi -- ni.
  Qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na, Ho -- san -- na,
  Ho -- san -- na in ex -- cel -- sis.
}

wordsSopMidi = \lyricmode {
  "San" "ctus, " San "ctus, " San "ctus, "
  "\nDo" mi "nus, " Do mi "nus " De "us " sa ba "oth. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nQui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nin " no mi "ne " Do mi "ni. "
  "\nQui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nin " no mi "ne " Do mi "ni. "
  "\nHo" san "na, " Ho san "na, "
  "\nHo" san "na " "in " ex cel "sis. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp | s\mf | s\f | s | s\pp | s | s\< |
  s2.\f | s4. s\f | s2. | s\> | s2\! s8 s16 s\f | s2. |
  s4.\> s\! | s2. | s | s | s2.*3 | % 117a
  s2. | s4.\< s\! | s2.\f\> | s\pp | s | s4. s\f |
  s2. | s | s4. s4 s16 s\f | s2. | s4.\> s\! | s2.*2 | % 118a
  s2.\! | s2.*4 s2.\f | s4. s\> |
  s2.\pp | s | s4 s2\ppp | s2. | s8 s\f s2 | % 119a
  s8 s\> s2 | s2.\ppp | s | s | s\ppp |
  s2. | s8 s\f s2 | s4. s\> | s4.\! s\ppp | s2. | % 120a
  s4 s16 s\ff s4. | s4 s16 s\ff s4. | s4 s16 s\ff s4. | s2 s4\ff | s2. | s2. |
}

alto = \relative {
  \global
  e'4. 8 r r | a4. 8 r r | g2. | 8 r r r4.^\markup\bold\italic Solo | f4. 4 8 |4. 4 ees8 | d4 8 4~16 16 |
  d4 r8 r4. | r g8-^ ^\markup\bold\italic {\halign #RIGHT Tutti} d'-^ c-^ | c b f f4 e8 | f4. 4 8 | e4.-^ 8 r r16 gis^\markup\bold\italic {\halign #RIGHT Solo} | 4. 8-! 8-^ e-^ |
  b'4. 8 r r | R2. | R | R | e,4. f | e c | b b | % 117a
  e8(c d) e r r | 4. fis8(g) gis | a4(e8) 4 ees8 | d d d c4 8 | b4 r8 r4. | r g'8-^ d'-^ c-^ |
  c8 b g aes4 g8 | f4. ees4 8 | 4.-^ d8 r^\markup\bold\italic Solo r16 b' | 4. 8 8 g | d'4. 8 r r | R2. | R | % 118a
  R2.^\markup\bold\italic Tutti | e,4.^\markup\italic "sotto voce" f | e c | b b | e8(c d) e r r | g(fis f) e(f) g | f4. fis4 8 |
  g8 g g f4 8 | e r r r4. | r4^\markup\bold\italic Solo g8 fis8 8 f | ees8 8 g f aes4 | 8 4 8 8-^ 8-^ | % 119a
  g8-^ f-^ ees-^ des(c) ees | e4. c | 4 a8 b4-^ 8 | c r r r4. | r4^\markup\bold\italic Solo g'8 fis8 8 f |
  e8 e g f8 4 | 8-. gis4 8 8-^ 8-^ | a-^ f-^ e-^ d(c) ees | e4. c | 4 a8 b4 8 | % 120a
  c8 r r16 e e4. | 8 r r16 a a4. | 8 r r16 gis16 4. | 4.~16 r e'8 c | <g b>-^ <g c>-^ <g cis>-^ <<{\voiceOne d'4(b8)} \new Voice {\voiceTwo g4.}>> \oneVoice | <g c>4 r8 r4. |
%  \bar "|."
}

wordsAlto = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus, Do -- mi -- nus De -- us sa -- ba -- oth.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni.
  Qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na, Ho -- san -- na,
  Ho -- san -- na in ex -- cel -- sis, ex -- cel -- sis.
}

wordsAltoMidi = \lyricmode {
  "San" "ctus, " San "ctus, " San "ctus, "
  "\nDo" mi "nus, " Do mi "nus " De "us " sa ba "oth. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nQui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni. "
  "\nQui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni. "
  "\nHo" san "na, " Ho san "na, "
  "\nHo" san "na " "in " ex cel "sis, " ex cel "sis. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp | s\mf | s\f | s | s\pp | s | s\< |
  s2.\f | s\f | s2. | s\> | s2.\! | s |
  s4. s4 s16 s\f | s2. | s\> | s\! | s2.*3 | % 117a
  s2. | s4.\< s\! | s2.\f\> | s\pp | s | s1.\f |
  s2.*3 | s4. s4 s16 s\f | s2. | s2.\> | % 118a
  s2.\! | s2.*4 s2.\f | s4. s\> |
  s2.\pp | s | s4. s4 s8\ppp | s2. | s8 s\f s2 | % 119a
  s8 s\> s2 | s2.\ppp | s | s | s4. s4 s8\ppp |
  s2. | s8 s\f s2 | s4. s\> | s4.\! s\ppp | s2. | % 120a
  s4 s16 s\ff s4. | s4 s16 s\ff s4. | s4 s16 s\ff s4. | s2 s4\ff | s2. | s2. |
}

tenor = \relative {
  \global
  e'4. 8 r r | 4. 8 r r |
  b2. | 8 r r r4.^\markup\bold\italic Solo | 4. 4 a8 | d4. 4 c8 b4 8 c8(a8 16) 16 |
  b4 r8 r4. | g8-^ ^\markup\bold\italic {\halign #RIGHT Tutti} d'-^ c-^ c b a | d4 c8 a b c | a8(gis a) b4 c8 | 4.-^ b8 r r | R2. |
  r4. r4^\markup\bold\italic Solo r16 b | 4. 8-! 8-^ gis-^ | e'2. | 4.~8 r r^\markup\bold\italic Tutti | g,4.^\markup\italic "sotto voce" gis8(a b) | c4. e, | f d | % 117a
  g8(e f) g r r | g(b c) d4 e8 | 4(gis,8) 8(a) ais | b c b a4 fis8 | d4 r8 r4. | g8-^ d'-^ c-^ c b a |
  d4 c8 f f ees | d4. c4 8 | 4.-^ b8 r r | R2. | r4. r4^\markup\bold\italic Solo r16 d | 4. 8 8 b | f'2. | % 118a
  aes,4.~8 r r^\markup\bold\italic Tutti | g4.^\markup\italic "sotto voce" gis8(a b) | c4. e, | f d | g8(e f) g r r | c4. 8(d) e | f4. c8(d) c |
  e8 f e d4 b8 | g r r r4. | r4. r4^\markup\bold\italic Solo d'8 | g, c ees d f4 | 8 4 8 d-^ d-^ | % 119a
  ees8-^ b-^ c-^ g(a) c | 4. e,^\markup\bold\italic Tutti | 8(a) d, f-^(g) f | e r r r4. | r r4^\markup\bold\italic Solo d'8 |
  g,8 c e d d4 | 8-. f4 8 d-^ d-^ | e-^ b-^ c-^ gis(a) c | 4. e, | 8(a) d, f(g) f | % 120a
  e8 r r16 e'16 4. | 8 r r16 e e4. | 8 r r16 <b e> q4. | 4.~16 r e8 c | <b d>-^ <c ees>-^ <cis e>-^ <d f>4. | <c e>4 r8 r4. |
%  \bar "|."
}

wordsTenor = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus, Do -- mi -- nus De -- us sa -- ba -- oth.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a, glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a, glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni.
  in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na, Ho -- san -- na,
  Ho -- san -- na in ex -- cel -- sis, ex -- cel -- sis.
}

wordsTenorMidi = \lyricmode {
  "San" "ctus, " San "ctus, " San "ctus, "
  "\nDo" mi "nus, " Do mi "nus " De "us " sa ba "oth. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a, " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a, " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nin " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni. "
  "\nin " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni. "
  "\nHo" san "na, " Ho san "na, "
  "\nHo" san "na " "in " ex cel "sis, " ex cel "sis. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp | s\mf | s\f | s | s\pp | s | s\< |
  s4.\f s\f| s2. | s | s\> | s2.\! | s |
  s4.\> s\! | s2.*6 | % 117a
  s2. | s4.\< s\! | s2.\f\> | s\pp | s4. s\f | s2. |
  s2.*2 | s4. s4 s16 s\f | s2. | s4.\> s\! | s2.*2 | % 118a
  s2.*4 | s2 s4\f | s2. | s4. s\> |
  s2.\pp | s4 s2\p | s2.*2 | s8 s\f s2 | % 119a
  s8 s\> s2 | s2.\ppp | s | s4 s2\ppp | s2. |
  s2. | s8 s\f s2 | s4. s\> | s4.\! s\ppp | s2. | % 120a
  s4 s16 s\ff s4. | s4 s16 s\ff s4. | s4 s16 s\ff s4. | s2 s4\ff | s2. | s2. |
}

bass = \relative {
  \global
  c'4. 8 r r | a4. 8 r r | e2. | 8 r r r4.^\markup\bold\italic Solo | g4. 4 8 | 4. 4 8 | 4 8 4~16 16 |
  g4 r8^\markup\bold\italic Tutti g d'-^ c-^ | c b a g4.-^ | g-^ 8 gis a | d,4. 4 dis8 | e4.-^ 8 r r16 gis^\markup\bold\italic {\halign #RIGHT Solo} | 4. 8-! 8-^ e-^ |
  b'4. 8 r r | R2. | R | R | c,4.^\markup\italic "sotto voce" ^\markup\bold\italic {\halign #RIGHT Tutti} c | c c | c c | % 117a
  c4. 8 r r | 4. b4 8 | a4(b8) c4 cis8 | d d d d4 8 | g,4 r8 g'-^ d'-^ c-^ | c b a g4.-^ |
  g4.-^ 8 8 8 | 4. 4 8 | 4.-^ 8 r8 r16 b^\markup\bold\italic{\halign #RIGHT Solo} | 4. 8 8 g | d'4. 8 r r | R2. | R | % 118a
  R2. | c,4.^\markup\italic "sotto voce" ^\markup\bold\italic{\halign #RIGHT Tutti} c | c c | c c | c4. 8 e(g) | bes(a aes) g4(b8) | a4. aes4 8 |
  g8 8 8 g,4 8 | c r c'^\markup\bold\italic{\halign #RIGHT Solo} bes ees, f | g2. | 4 8 aes d(c) | bes bes(c) d b-^ b-^ | % 119a
  c8-^ g-^ aes-^ e(f) fis | g4. g,^\markup\bold\italic {\halign #RIGHT Tutti} | 4 8 4-^ 8 | c r c'^\markup\bold\italic {\halign #RIGHT Solo} b e, fis | g2. |
  g4 8 gis b(a) | gis-. b(c) d b-^ b-^ | c-^ gis-^ a-^ e(f) fis | g4. g,^\markup\bold\italic{\halign #RIGHT Tutti} | 4 8 4 8 | % 120a
  c8 r r16 c' c4. | 8 r r16 a a4. | 8 r r16 e e4. | 4.~16 r
  <<{\voiceTwo e8 c | g2. | c4} \new Voice {\voiceOne e'8 c | g g g g4. | 4}>> r8 r4. |
%  \bar "|."
}

wordsBass = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus, Do -- mi -- nus De -- us sa -- ba -- oth.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a, glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a, glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- tus,
  Be -- ne -- di -- tus qui ve -- nit,
  ve -- nit in no -- mi -- ne Do -- mi -- ni.
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni.
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  no -- mi -- ne Do -- mi -- ni,
  Ho -- san -- na, Ho -- san -- na,
  Ho -- san -- na in ex -- cel -- sis.
}

wordsBassMidi = \lyricmode {
  "San" "ctus, " San "ctus, " San "ctus, "
  "\nDo" mi "nus, " Do mi "nus " De "us " sa ba "oth. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a, " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nPle" "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a, " glo ri "a " tu "a. "
  "\nHo" san "na " "in " ex cel "sis. "
  "\nBe" ne di "tus, "
  "\nBe" ne di "tus " "qui " ve "nit, "
  "\nve" "nit " "in " no mi "ne " Do mi "ni. "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni. "
  "\nqui " ve "nit " "in " no mi "ne " Do mi "ni. "
  "\nQui " ve "nit " "in " no mi "ne " Do mi "ni, "
  "\nno" mi "ne " Do mi "ni, "
  "\nHo" san "na, " Ho san "na, "
  "\nHo" san "na " "in " ex cel "sis. "
}

alignerBassTwo = {
  s2.*58 | s2 c8 8 | 8 8 8 4. | 4 s2 |
}

wordsBassTwo = \lyricmode {
  in ex -- cel -- sis, ex -- cel -- sis.
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*61-\markup\bold\italic "For rehearsal only—to be performed ‘a capella'"
}

#(set-global-staff-size 16)

\book {
  \bookOutputSuffix "single"
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
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single-noacc"
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
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo \wordsBassTwo
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
        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc"
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
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo \wordsBassTwo
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
        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo {\tiny \wordsBassTwo}
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
        \RemoveAllEmptyStaves
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo {\tiny \wordsBassTwo}
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
        \RemoveAllEmptyStaves
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo {\tiny \wordsBassTwo}
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
        \RemoveAllEmptyStaves
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new NullVoice = basstwo \alignerBassTwo
            \new Lyrics \with {alignAboveContext = bass} \lyricsto basstwo \wordsBassTwo
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
        \RemoveAllEmptyStaves
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
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
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
  \bookOutputSuffix "midi-alto"
  \score {
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
  \bookOutputSuffix "midi-tenor"
  \score {
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
  \bookOutputSuffix "midi-bass"
  \score {
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
