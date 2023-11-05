\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Verleih uns Frieden"
  subtitle    = "Grant us Peace"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Felix Mendelssohn"
  arranger    = "(1809-47)"
%  opus        = "opus"

  poet        = "Martin Luther (1483-1546)"
  meter       = "English version by John Rutter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 3/4
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

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s2.*101
  \tempo 4=50
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \textMark \markup { \circle "208a" } s2.*4
  \textMark \markup { \circle "208b" } s2.*5
  \textMark \markup { \circle "208c" } s2.*6
  \textMark \markup { \circle "208d" }
  \mark     \markup { \box    "A"    } s2.*5
  \textMark \markup { \circle "208e" } s2.*5
  \textMark \markup { \circle "209a" } s2.*2
  \textMark \markup { \circle "209b" }
  \mark     \markup { \box    "B"    } s2.*3
  \textMark \markup { \circle "209b" } s2.*5
  \textMark \markup { \circle "209c" } s2.*6 \break
  \textMark \markup { \circle "209d" }
  \mark     \markup { \box    "C"    } s2.*5
  \textMark \markup { \circle "210a" } s2.*6
  \textMark \markup { \circle "210b" } s2.
  \textMark \markup { \circle "210c" }
  \mark     \markup { \box    "D"    } s2.*5
  \textMark \markup { \circle "210c" } s2.*6
  \textMark \markup { \circle "211a" } s2.*5 \break
  \textMark \markup { \circle "211b" }
  \mark     \markup { \box    "E"    } s2.*6
  \textMark \markup { \circle "211c" } s2.*6 \break
  \textMark \markup { \circle "212a" } s2.*5
  \textMark \markup { \circle "212b" }
  \mark     \markup { \box    "F"    } s2.*5
  \textMark \markup { \circle "213a" } s2.*5
  \textMark \markup { \circle "213b" } s2.*6
}

noA = { s2.*69 }
noB = { s2.*12 }
noC = { s2.*20 }

sopranoA = \relative {
  R2.*69
}

sopranoB = \relative {
  \override DynamicTextSpanner.style = #'none
  ees'4^\mf g f % 211b
  ees2 4
  ees4(bes') aes
  g2\< 4
  c2\! bes4
  aes4(g) ees8\omit\dim^\markup\italic "[dim.]" (f)
  g2.^\p % 211c
  ees4 \once\partCombineChords r \once\partCombineChords r
  ees4 aes^\cresc aes8(g)
  f2 \once\partCombineChords r4
  f4 bes bes8(aes)
  g2\omit\f r4
}

sopranoC = \relative {
  \override DynamicTextSpanner.style = #'none
  bes'4^\f^\< ees \> des % 212a
  c4\!(bes) aes8(bes)
  c2.
  c,2 r4
  R2.*3
  r4 r c'8^\cresc(d) % 212b++
  ees2(des4)
  c4^\> \slurDashed bes4(aes) \slurSolid
  g2.~\! % 213a
  g4 r g^\p
  c2.~(
  c4^\dim bes) aes
  g4(f2)
  ees2\omit\pp r4 % 213b
  R2.*4
  R2.\fermata
  \bar "|."
}

wordsB = \lyricmode {
  Ver -- leih uns __ Frie -- den gnä -- dig -- lich,
  Her Gott,
  zu un -- sern __ Zei -- ten!
  Es ist dock ja kein.
  An -- drer nicht,
}

wordsSopA = \lyricmode {
}

wordsSopC = \lyricmode {
  Den für uns könn -- te __ strei -- ten,
  Denn du, __ du, \set ignoreMelismata = ##t un -- ser \unset ignoreMelismata Gott, __
  denn du, __ al -- lei -- ne!
}

wordsMidiSop = \lyricmode {
  "Ver" "leih " "uns "  Frie "den " gnä dig "lich, "
  "\nHer " "Gott, "
  "\nzu " un "sern "  Zei "ten! "
  "\nEs " "ist " "dock " "ja " "kein. "
  "\nAn" "drer " "nicht, "
  "\nDen " "für " "uns " könn "te "  strei "ten, "
  "\nDenn " "du, "  "du, " \set ignoreMelismata = ##t un "ser " \unset ignoreMelismata "Gott, " 
  "\ndenn " "du, "  al lei "ne! "
}

altoA = \relative {
  \override DynamicTextSpanner.style = #'none
  R2.*41
  ees'4\omit\p^\markup\italic {\dynamic p e dolce}^\markup\smallCaps altos g f % 209d
  ees2 4
  ees4(bes') aes
  g4 r g
  c2 bes4
  aes4(g) ees8(f) % 210a
  g2.
  ees4 r r
  ees4\omit\cresc^\markup\italic "[cresc.]" aes aes8(g)
  f2 r4
  f4 bes bes8(aes)
  g2 r4 % 210b
  c4 aes g
  f4\omit\dim^\markup\italic "[dim.]" (ees) des
  c2.
  c2 r4
  r4 r g'
  aes4 g^\cresc f % 210c
  bes2.~
  bes2 aes4^\dim
  g4(f2)
  ees4\omit\p r r
  R2.*6
}

altoB = \relative {
  \override DynamicTextSpanner.style = #'none
  bes4^\mf ees ees8(d) % 211b
  ees2 des4
  c4(ees4.) d8
  ees2\< g4
  aes2\! f4
  f4(ees) ees\omit\dim
  ees4(d2) % 211c
  ees4 r r
  ees4 aes\cresc ees
  d2 r4
  d4 ees f
  bes,2\omit\f r4
}

altoC = \relative {
  ees'4^\f^\< f^\> g % 212a
  aes4\!(g) f
  e8(f g4 f)
  e2 r4
  R2.
  R2. % 212b
  r4 r g
  aes^\cresc g f
  bes2.
  \slurDotted ees,2^\>(f4) \slurSolid
  g2.\!~ % 213a
  g4 r c,^\p
  c2.
  ees2^\dim aes4
  g4(f2)
  ees2\omit\pp r4
  R2.*4
  R2.\fermata
}

wordsAltoA = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten!
  Es ist doch ja kein An -- drer nicht,
  Der für un könn -- te strei -- ten,
  Denn du, un -- ser Gott __ al -- lei -- ne,
}

wordsAltoC = \lyricmode {
  Der für uns könn -- te __ strei -- ten,
  Denn du, un -- ser Gott, \set ignoreMelismata = ##t un -- ser \unset ignoreMelismata Gott, __
  denn du, du al -- lei -- ne!
}

wordsMidiAlto = \lyricmode {
  "Ver" "leih " "uns " Frie "den " gnä dig "lich, "
  "\nHerr " "Gott, " "zu " un "sern " Zei "ten! "
  "\nEs " "ist " "doch " "ja " "kein " An "drer " "nicht, "
  "\nDer " "für " "un " könn "te " strei "ten, "
  "\nDenn " "du, " un "ser " "Gott "  al lei "ne, "

  "\nVer" "leih " "uns "  Frie "den " gnä dig "lich, "
  "\nHer " "Gott, "
  "\nzu " un "sern "  Zei "ten! "
  "\nEs " "ist " "dock " "ja " "kein. "
  "\nAn" "drer " "nicht, "

  "\nDer " "für " "uns " könn "te "  strei "ten, "
  "\nDenn " "du, " un "ser " "Gott, " \set ignoreMelismata = ##t un "ser " \unset ignoreMelismata "Gott, " 
  "\ndenn " "du, " "du " al lei "ne! "
}

tenorB = \relative {
  \override DynamicTextSpanner.style = #'none
  \voiceOne
  \partCombineApart
  g4\mf bes bes % 211b
  g2 bes4
  ees,4(g) f
  ees2\< ees'4
  ees2\! d4
  bes2 c4\omit\dim_\markup\italic "[dim.]"
  c2_\p(b4) % 211c
  c4 r r
  g4 aes\cresc bes8(c)
  d2 r4
  bes8(aes) g4 f
  g2\omit\f r4
}

tenorC = \relative {
  \override DynamicTextSpanner.style = #'none
  g4^\f^\< aes \> bes % 212a
  c8\!(des ees4) aes,
  g8(aes) bes4 aes
  g4(c4.^\>) c8\!
  c2 c,4
  r4 r c'8^\p(d) % 212b
  ees2(des4)
  \slurDashed c4^\cresc(bes) aes \slurSolid
  g2.
  c2^\>c8(d)\!
  ees2.~ % 213a
  ees4 r ees^\p
  ees2.~(ees4^\dim d) c
  bes2 aes4
  g4(f2) % 213b
  ees2\omit\pp r4
  R2.*3
  R2.\fermata
}

wordsTenorA = \lyricmode {
}

wordsTenorC = \lyricmode {
  Der für uns könn -- te,
  der __ für uns könn -- te strei -- ten,
  Denn du, __ \set ignoreMelismata = ##t du, un -- ser Gott, \unset ignoreMelismata
  un -- ser Gott, __
  denn du, __ denn du al -- lei -- ne!
}

wordsMidiTenor = \lyricmode {
  "Ver" "leih " "uns "  Frie "den " gnä dig "lich, "
  "\nHer " "Gott, "
  "\nzu " un "sern "  Zei "ten! "
  "\nEs " "ist " "dock " "ja " "kein. "
  "\nAn" "drer " "nicht, "
  "\nDer " "für " "uns " könn "te, "
  "\nder "  "für " "uns " könn "te " strei "ten, "
  "\nDenn " "du, "  \set ignoreMelismata = ##t "du, " un "ser " "Gott, " \unset ignoreMelismata
  "\nun" "ser " "Gott, " 
  "\ndenn " "du, "  "denn " "du " al lei "ne! "
}

bassA = \relative {
  \override DynamicTextSpanner.style = #'none
  s2.*15 \break
  ees4\omit\p^\markup\italic {\dynamic p e dolce}^\markup\smallCaps basses  g f
  ees2 ees4
  ees4(bes') aes
  g4 r g
  c2 bes4
  aes4(g) ees8(f) % 208e
  g2.
  ees4 r r
  ees4 aes aes8(g)
  f2 r4
  f4 bes bes8(aes) % 209a
  g2 r4
  c4 aes g
  f4(ees) des
  c2.
  c2 r4 % 209b
  r4 r g'
  aes4 g f
  bes2.^\cresc~
  bes2 aes4^\p
  g4(f2) % 209c
  ees4 r r
  R2.*4
  r4^\markup\smallCaps basses r bes^\markup\italic { [ \dynamic p e dolce ] } % 209d (C)
  g'2.
  aes4(bes2)
  bes2.
  aes4 r g
  f4(g) bes % 210a
  g2 r4
  c4 g ees8(d)
  c2 r4
  bes'4\omit\cresc^\markup\italic "[cresc.]" f d8(c)
  bes2 r4
  bes'4 g ees % 210b
  aes2 r4
  R2.
  c,4\omit\p^\markup { [ \dynamic p ] } e f^\<
  g4(c4.\!) c8
  c2 c,4
  r4 r f^\cresc % 210c
  g4 f ees
  ees2 r4
  r4 r bes'^\dim
  g4(f2)
  ees2\omit\p r4
  R2.*5
}

bassB = \relative {
  \override DynamicTextSpanner.style = #'none
  \voiceTwo
  \partCombineApart
  ees4\mf ees bes % 211b
  c2 g4
  aes4(g8 aes) bes4
  ees2\< ees4
  aes,2\! bes4
  d4(ees) aes\omit\dim
  g2.\omit\p % 211c
  c,4 \once\partCombineChords r \once\partCombineChords r
  c4 f\cresc g8(aes)
  bes2 \once\partCombineChords r4
  bes,4 c d
  ees2\omit\f r4
}

bassC = \relative {
  ees8^\f^\<(des) c4^\> ees % 212a
  aes4\!(ees) f
  c2.
  c2 r4
  r4 r g'^\p
  aes^\cresc g f % 212b
  bes2.
  r4 r f
  g2 g4
  aes4^\> g f\!
  c'2.~ % 213a
  c4 r c,^\p
  \slurDashed aes2.~^(
  aes4^\dim aes) aes \slurSolid
  bes2 aes'4
  g4(f2) % 213b
  ees2\omit\pp r4
  R2.*3
  R2.\fermata
}

wordsBassA = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten!
  Es ist doch ja kein An -- drer nicht,
  Der für uns könn -- te  strei -- ten,
  Denn du, un -- ser Gott __ al -- lei -- ne.

  Ver -- leih uns Frie -- den, Herr Gott, __
  Herr Gott!
  Er ist doch ja kein An -- drer nicht,
  kein An -- drer nicht,
  Der für uns könn -- te strei -- ten,
  Denn du, un -- ser Gott al -- lei -- ne.
}

wordsBassC = \lyricmode {
  Der für uns könn -- te strei -- ten,
  Denn du, un -- ser Gott,
  denn du, denn du, un -- ser Gott, __
  denn du, __ denn du al -- lei -- ne!
}

wordsMidiBass = \lyricmode {
  "Ver" "leih " "uns " Frie "den " gnä dig "lich, "
  "\nHerr " "Gott, " "zu " un "sern " Zei "ten! "
  "\nEs " "ist " "doch " "ja " "kein " An "drer " "nicht, "
  "\nDer " "für " "uns " könn "te " strei "ten, "
  "\nDenn " "du, " un "ser " "Gott "  al lei "ne. "

  "\nVer" "leih " "uns " Frie "den, " "Herr " "Gott, " 
  "\nHerr " "Gott! "
  "\nEr " "ist " "doch " "ja " "kein " An "drer " "nicht, "
  "\nkein " An "drer " "nicht, "
  "\nDer " "für " "uns " könn "te " strei "ten, "
  "\nDenn " "du, " un "ser " "Gott " al lei "ne. "

  "\nVer" "leih " "uns "  Frie "den " gnä dig "lich, "
  "\nHer " "Gott, "
  "\nzu " un "sern "  Zei "ten! "
  "\nEs " "ist " "dock " "ja " "kein. "
  "\nAn" "drer " "nicht, "

  "\nDer " "für " "uns " könn "te " strei "ten, "
  "\nDenn " "du, " un "ser " "Gott, "
  "\ndenn " "du, " "denn " "du, " un "ser " "Gott, " 
  "\ndenn " "du, "  "denn " "du " al lei "ne! "
}

organRHone = \relative {
  \global
  \clef bass
  r8\omit\p bes,(g bes ees f
  g2) aes8(bes
  c2\omit\<) c8(des
  ees4.\!) ees8(d c
  bes4.\omit\>) c8(bes aes % 208b
  g8\!) bes(g bes ees d)
  c4\omit\cresc(bes aes8 g)\omit\cresc
  aes8(bes c d ees4~
  ees8) g4(f8 c d)
  ees4.(d8 c d) % 208c
  ees4.(d8 c d
  ees8\omit\dim) c(des2~
  des8) bes c2(
  c8\omit\p) c(f c bes aes)
  aes4\omit\dim(g8 f g aes) \clef treble
  bes4\omit\pp ees4. d8 % 208d
  ees8\omit\< f g aes bes\omit\sf g
  ees8\omit\> g4 f8 c\! d
  ees4 bes8 c des4
  c8 r e g g4~
  g8 f ees4 c~ % 208e
  c8\omit\p d ees c d4 \clef bass
  c8 g ees\omit\<~<ees g> <g c> <b d> \clef treble
  ees8\! g4\omit\cresc f ees8
  d8 bes f bes <bes d> <c ees>
  f8 aes4 g f8 % 209a
  ees8 bes g~<g bes>\omit\cresc <aes ees'> <bes des>
  c4. f4 ees8~\omit\dim
  ees8 des4 c8 bes f'
  e8\omit\p f g e c d
  e8 f g e c\omit\dim aes \clef bass % 209b
  g8 e r4 <e g>
  <f aes>4 <g bes> c8\omit\cresc d \clef treble
  ees8\omit\< f g aes bes\omit\sf g
  ees2 r4\omit\p
  r4 r8 d c d % 209c
  ees4. d8\omit\< c d
  ees8\omit\> c des2~\!
  des8\omit\dim bes c2~
  c8\omit\p c f c bes aes
  aes4 g8 f g aes
  bes4 ees4. d8 % 209d
  ees8 f g aes bes g
  ees8 g4 f8 c d
  ees4 bes8 c des4
  c8 c e f <c g'>4~
  g'8 f ees4 c8 f % 210a
  <c ees>8 <d f> <ees g> ees d4
  c8 g ees~<ees g> <g c> <b d>
  ees8\omit\cresc g4 f ees8
  d8 bes f bes <bes d> <c ees>
  <d f>8 aes'4 g f8
  ees8 bes g~<g bes>\omit\cresc <aes ees'> <bes des> % 210b
  r4 aes'4 g
  f4\omit\dim ees des8 f\omit\p
  e8 f g e c d
  e8 f g e c a \clef bass
  g8\omit\dim e r4 <e g>
  <f aes>4 <g bes>\omit\cresc c8 d \clef treble % 210c
  ees8 f g aes bes\omit\sf g
  ees2 4\omit\p
  r4 r8 d c d
  ees4. d8 c d
  \voiceTwo ees8\omit\< c des2~\omit\> \voiceOne
  des8\! bes c2~ % 211a
  c8\omit\cresc c bes aes r8 <d aes'>
  <e g>8 <d f c'> <ees g bes> <ees ees'>4 <d f aes>8
  g8 c <g bes> ees'4 ees8~
  ees8\omit\f <aes, c> bes4. aes8
  <g bes ees>4\omit\mf <bes ees g> <bes f'> % 211b
  <g ees'>2 <bes des ees>4
  ees4 <bes bes'> <bes aes'>
  <bes ees g>2\omit\< q4
  <c ees c'>2\! <bes d bes'>4
  <f' aes>4 <ees g> ees8\omit\dim f
  g2.\omit\p % 211c
  <c, ees>4 r\omit\< r
  q4\! <aes aes'>\omit\cresc <bes aes'>8 <c g'>
  <f, d' f>2 r4
  <d' f> <ees bes'> bes'8 aes
  <bes, ees g>2 r4
  <g bes>4\omit\f\omit\<<f ees'>\omit\> <g des'> % 212a
  <aes c>4\! <g bes> aes8\omit\dim <d, bes'>
  c'2.~
  c2.
  s4 r \clef bass <e,, g>\omit\p
  <f aes>4\omit\cresc <g bes> c8 d \clef treble % 212b
  ees8 f g aes bes g
  aes4 g f
  bes2\omit\< des4\omit\sf
  c4\omit\> bes c8 <b d>
  <c ees>8\omit\dim <b d> <c ees> <d f> <ees g> <d f> % 213a
  <c ees>8 <b d> <c ees> <d f> <ees g> <c ees>
  c'2.\omit\p~
  <aes c>4\omit\dim bes aes
  g4 f2
  ees4 r r % 213b
  ees,2.\omit\<
  ~ees2\! r4
  r2.\omit\>
  bes2.\omit\pp~
  bes2.\fermata
}

organRHtwo = \relative {
  \global
  s2.*27
  c'2\omit\mf bes4\omit\dim % 209a++ (B)
  aes4 g8 aes s4
  c2\omit\p c4~
  c2 s4\omit\dim
  s2.*16
  s4. c8\omit\p~c b % 210a+
  s2.
  c4.\omit\cresc f8 bes,4~
  bes8 s s2
  s2.
  s2. % 210b
  c8 des ees f4 ees8~
  ees8\omit\dim des4 c8 des4\omit\p
  c2 c4~
  c2 s4
  s2.*6
  \voiceOne ees2. \voiceTwo % 210c+++++
  aes,2.~ % 211a
  aes8\omit\cresc aes g aes s4
  s2.
  ees'8 d ees <f aes> g <aes c>
  ees4\omit\f bes'8 <d, f aes> <ees g> f
  s2\omit\mf ees'8 d % 211b
  s2.
  c4 ees4. d8
  s2.
  s2.
  bes2\omit\f <c ees>4~\omit\dim
  <c ees>4\omit\p~<c d>~<b d> % 211c
  s2.
  s4 c8\omit\cresc d ees4
  s2.
  bes8 aes s2
  s2.
  s2. % 212a
  s2 f4\omit\f\omit\dim
  e8 f g e c d
  e8 f g e c4~
  c2 s4\omit\p
  s2. % 212b
  s2.
  s2 c8\omit\mf d
  ees8\omit\< f g aes bes\omit\sf g
  s2\omit\> aes4
  g2.\omit\dim~ % 213a
  g4 r r
  <c ees>2\omit\p c8~<c ees>~
  q4\omit\dim s2
  s2.
  s4 r r % 213b
  ees,8\omit\pp\omit\< c des2~
  des8\! bes c2~
  c8\omit\> c f c bes aes
  s2.\omit\pp
  s2.
}

dynamicsOrgan = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.
  s8 s\< s2
  s2.\!
  s2.\> % 208b
  s2.\!
  s2.\cresc
  s2.*4
  s2.\dim % 208c++
  s2.
  s2.\p
  s2.\dim
  s2.-\markup\italic {\dynamic pp legato sempre} % 208d
  s2\< s4\sf
  s2\> s4\!
  s2.
  s2.
  s2. % 208e
  s2.\p
  s4 s2\<
  s8\! s\cresc s2
  s2.
  s2. % 209a
  s4. s\cresc
  s2 s4\dim
  s2.
  s2.\p
  s2 s4\dim % 209b
  s2.
  s2 s4\cresc
  s2\< s4\sf
  s2 s4\p
  s2. % 209c
  s4. s\<
  s4.\> s\!
  s2.\dim s2.\p
  s2.
  s2.*5 % 209d
  s2.*3 % 210a
  s2.\cresc
  s2.
  s2.
  s4. s\cresc % 210b
  s2.
  s2\dim s8 s\p
  s2.
  s2.
  s2.\dim
  s4 s2\dim % 210c
  s2 s4\sf
  s2 s4\p
  s2.
  s2.
  s4\< s2\>
  s2.\! % 211a
  s2.\cresc
  s2.
  s2.
  s2.\f
  s2.\mf % 211b
  s2.
  s2.
  s2.\<
  s2.\!
  s2 s4\dim
  s2.\p % 211c
  s4 s2\<
  s4\! s2\cresc
  s2.
  s2.
  s2.
  s4\f\< s2\> % 212a
  s2\! s4\dim
  s2.
  s2.
  s2 s4\p
  s2.\cresc % 212b
  s2.
  s2.
  s2\< s4\sf
  s2.\>
  s2.\dim % 213a
  s2.
  s2.\p
  s2.\dim
  s2.
  s2.
  s8 s\< s2
  s2.\!
  s2.\>
  s4.\pp\< s\>
  s2.\!
}

organLHone = \relative {
  \global
  \voiceOne
  R2.
  r8 ees\omit\p( bes ees f g
  aes8) ees\omit\<(c ees aes bes\!
  c8 bes aes g) aes4~
  aes8\omit\> g aes f d4 % 208b
  ees8\!(g ees g bes4)
  aes4\omit\cresc( g f8 e)
  f8(g aes ces bes des)
  c8(bes aes2~
  aes8) g aes2~ % 208c
  aes8 g aes2~
  aes4.\omit\dim g8 f g
  aes2.~
  aes4.\omit\p  aes8 g f
  f4\omit\dim ees8 d ees f
  g8\omit\pp aes bes4 aes % 208d
  g8\omit\< aes bes c des4\omit\sf
  c4\omit\> bes aes\!
  g8 f g aes bes g
  ees8 c' bes aes g c~
  c8 d ees bes c, d % 208e
  ees8\omit\p f g c~c b
  r8 ees, c4\omit\< ees8 f
  c4.\! f8\omit\cresc bes4~
  bes8 f d~<d f>~ f4
  d'8 c bes2~ % 209a
  bes8 g ees4 f8\omit\cresc g
  aes8 bes aes4 g\omit\dim
  f4 ees <des f>
  g8\omit\p aes bes4 aes
  g8 aes bes4 aes8\omit\dim f % 209b
  e8 c c aes c,4
  f4 r aes'8\omit\cresc~<aes ces>
  <g aes>8\omit\< aes bes c des4\omit\sf~
  des4 c r\omit\p
  r8 f, aes2~ % 209c
  aes8 g aes2~\omit\<
  aes4.\omit\> g8\! f g
  aes2.~\omit\dim
  aes4.\omit\p aes8 g f
  f4 ees8 d ees f
  g8 aes bes4~<aes bes> % 209d
  g8 aes bes c <g des'>4
  c4 <f, bes> <f aes>
  g8 f g aes <g bes> g
  ees8 r bes' aes g c~
  c8 ees bes bes aes4 % 210a
  r4 c g
  r8 ees c4 ees8 g
  c8\omit\cresc bes aes4 ees
  r8 f d~<d f> g4
  bes8 c <bes d>~<bes ees> bes4~
  bes8 g ees4 f8\omit\cresc g % 210b
  c8 bes c4 bes
  aes4\omit\dim g8 aes bes4\omit\p
  g8 aes bes4 aes
  g8 aes bes4 aes8 f
  e8\omit\dim c c g c,4
  f4 r\omit\cresc aes'8~<aes ces> % 210c
  <g bes>8 aes bes c <ees, des'>4\omit\sf~
  q4 <aes c> r\omit\p
  r8 g8 aes2
  r8 g8 aes2~
  aes4.\omit\< g8\omit\> f g\!
  aes4. g8 f ees % 211a
  d4.\omit\cresc <d f>8 <ees g> f
  g8 aes g <aes c> <g bes> <f aes>
  <g bes>8 aes bes <aes c ees> <bes ees> <ees, c' ees>~
  <ees bes>8\omit\f <aes c> <g bes> aes bes <bes d>
  ees4\omit\mf bes2 % 211b (E)
  <ees, c'>2 <ees bes'>4
  <aes c>4 <bes g'> <bes f'>
  <bes g'>2\omit\< <bes ees g>4\!
  <aes ees' aes>2 <bes d f>4
  <bes f' aes>4 <bes ees g> <c ees>\omit\dim~
  q4\omit\p~<c d>~<b d> % 211c
  c8 g <c, e>~ \omit\< <c ees g> <ees g c> <g b d>
  <c ees>4\! r\omit\cresc r
  r8 f, d~ <d f> <d f bes> <f a c>
  <b d>4 <b g'> <b f'>
  ees8 bes g~<g bes> <g bes ees> <bes d f>
  ees4\omit\f\omit\< <aes, c ees>\omit\> <bes des ees> % 212a
  <c ees>4\! <bes des> c\omit\dim
  g8 aes bes4 aes
  g8 aes bes4 aes8~<f aes>
  <e g>8 e c aes c,4\omit\p
  f4\omit\cresc r aes'8 ces % 212b
  <g bes>8 aes bes c <bes des>4
  <aes c>2 c8 ces
  g8\omit\< aes bes c ees4\omit\sf
  <aes, c>2\omit\> <aes d>4
  <c ees>2\omit\dim g4~ % 213a
  <g c>4 \clef treble <c ees> <c ees g>
  aes'8\omit\p ees c ees~<ees aes>4~
  <ees aes>4\omit\dim ~ees2 \clef bass
  <bes ees>4. d8 c d
  ees4. d8 c d % 213b
  ees,2.\omit\<
  aes2.~\!
  aes4.\omit\> aes8 g f
  s2.\omit\pp
  <ees g>2.\fermata
}

organLHtwo = \relative {
  \global
  \voiceTwo
  s2.*12
  r4 r8 g\omit\p f ees % 208c+++
  d2.~\omit\p
  d4\omit\dim s2\omit\pp
  s2.*18
  s4 ees2~\omit\f % 209b+++
  ees4 s2
  s2. % 209c
  s2.
  s2.
  r4 r8 g8\omit\p f ees
  d2.\omit\p~
  d4 s2
  s2. % 209d
  s4 ees s
  s2.
  s2.
  s4 c s
  s2.*7
  aes'4 s2 % 210b+
  s2.*32
  s2 aes4 % 212b
  s2.
  s2 aes4\omit\mf
  g2\omit\< des4\omit\sf
  s2.
  s2. % 213a
  s2.
  c'4\omit\p c2~
  c4 d c
  r8 g aes2
  <g bes>8\omit\pp q <f aes>2~ % 213b
  \voiceOne aes4. g8 f g \voiceTwo
  r4 r8 g f ees
  d2.~\omit\f\omit\>
  <d f aes>2.\omit\pp
  s2.
}

organPed = \relative {
  \global
  ees,2.\omit\p~
  ees2.~
  ees2.~\omit\<
  ees2.~\!
  ees2.~\omit\> % 208b
  ees4\! r g
  aes4\omit\cresc(bes c)
  f,2 g4
  aes2 r4
  bes2.~ % 208c
  bes2.
  ees,2.~\omit\dim
  ees2.~
  ees2.\omit\p
  ees4 r r\omit\dim
  r4\omit\pp r bes' % 208d
  c2\omit\< g4\omit\sf
  aes4\omit\> f bes\!
  ees,2 4
  aes4 g8 f e4
  f4 g aes % 208e
  g2.\omit\p
  c4 r\omit\< r
  c4.\! d8\omit\cresc ees4
  bes2 r4
  bes4. c8 d4 % 209a
  ees4. des8\omit\cresc c bes
  aes4 r r\omit\dim
  R2.
  c2\omit\p f4
  c2 f,4\omit\dim % 209b
  c'4 r r
  f,2.
  g2\omit\< ees4\omit\sf
  aes2 f4\omit\p
  bes2.~ % 209c
  bes2.
  ees,2.~
  ees2.~
  ees2.~
  ees4 r r
  r4 r bes' % 209d
  c2 ees,4
  aes4 f bes
  ees,2 ees4
  aes4 g8 f e4
  f4 g aes % 210a
  g2 g'4
  c,2 r4
  c4.\omit\cresc d8 ees4
  bes2 r4
  bes4. c8 d4
  ees4. des8\omit\cresc c bes % 210b
  aes4 r r
  r4\omit\dim r bes\omit\p
  c2 f4
  c2 f,4
  c'4\omit\dim r r
  f,2. % 210c
  g2.\omit\mp
  aes2\omit\mf f4\omit\p
  bes2.~
  bes2.
  ees,2.~
  ees2.~ % 211a
  ees2.~\omit\cresc
  ees2.~
  ees4. c'8 bes aes
  g8\omit\f aes g f ees4~
  ees2\omit\mf bes'4 % 211b
  c2 g4
  aes4 g8 aes bes4
  ees,2\omit\< ees'4\!
  aes,2 bes4
  d4 ees aes\omit\dim
  g2.\omit\p % 211c
  c,4 r\omit\< r\!
  c4 f,\omit\cresc g8 aes
  bes2 r4
  bes4 c d
  ees2 r4
  ees8\omit\f\omit\< des c4\omit\> ees % 212a
  aes4\! ees f\omit\dim
  c2 f4
  c2 f,4
  c'4 r r\omit\p
  f,2.\omit\cresc % 212b
  g2 ees4
  f2.
  g2.\omit\<
  aes4\omit\> g f
  c'2.\omit\dim~ % 213a
  c4 r c
  aes2.~\omit\p
  aes2.\omit\dim
  bes2.~
  bes2. % 213b
  ees,2.~
  ees2.~
  ees2.~
  ees2.~
  ees2.\fermata\omit\pp
}

\book {
  \bookOutputSuffix "single"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \noB \sopranoC }
            \new Lyrics \lyricsto "soprano" \wordsSopC
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \noB \altoC }
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \noB \tenorC }
            \new Lyrics \lyricsto "tenor" \wordsTenorC
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \noB \bassC }
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsBassC }
          >>
                                % Joint soprano/alto staff
          \new Staff =women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" { \noA \sopranoB \noC }
            \new Voice \partCombine { \global \noA \sopranoB \noC }
                                    { \global \noA \altoB    \noC }
            \new Lyrics \lyricsto "aligner" \wordsB
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \partCombine { \global \noA \tenorB \noC }
                                    { \global \noA \bassB  \noC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \noB \sopranoC }
            \new Lyrics \lyricsto "soprano" \wordsSopC
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \noB \altoC }
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \noB \tenorC }
            \new Lyrics \lyricsto "tenor" \wordsTenorC
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \noB \bassC }
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsBassC }
          >>
                                % Joint soprano/alto staff
          \new Staff =women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new NullVoice = "aligner" { \noA \sopranoB \noC }
            \new Voice \partCombine { \global \noA \sopranoB \noC }
                                    { \global \noA \altoB    \noC }
            \new Lyrics \lyricsto "aligner" \wordsB
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \partCombine { \global \noA \tenorB \noC }
                                    { \global \noA \bassB  \noC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \sopranoB \sopranoC }
            \addlyrics {\wordsB \wordsSopC}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsB \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \new Lyrics \lyricsto "tenor" {\wordsB \wordsTenorC}
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsB \wordsBassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \sopranoB \sopranoC }
            \addlyrics {\wordsB \wordsSopC}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \addlyrics {\tiny \wordsAltoA \wordsB \wordsAltoC}
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \addlyrics {\tiny \wordsB \wordsTenorC}
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \addlyrics { \tiny \wordsBassA \wordsB \wordsBassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics {\teeny \dynamicsOrgan}
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
            \magnifyStaff #4/7
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \sopranoB \sopranoC }
            \addlyrics {\tiny \wordsB \wordsSopC}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \addlyrics {\wordsAltoA \wordsB \wordsAltoC}
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \addlyrics {\tiny \wordsB \wordsTenorC}
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \addlyrics { \tiny \wordsBassA \wordsB \wordsBassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics {\teeny \dynamicsOrgan}
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
            \magnifyStaff #4/7
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \sopranoB \sopranoC }
            \addlyrics {\tiny \wordsB \wordsSopC}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \addlyrics {\tiny \wordsAltoA \wordsB \wordsAltoC}
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \addlyrics {\wordsB \wordsTenorC}
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \addlyrics { \tiny \wordsBassA \wordsB \wordsBassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics {\teeny \dynamicsOrgan}
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
            \magnifyStaff #4/7
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \noA \sopranoB \sopranoC }
            \addlyrics {\tiny \wordsB \wordsSopC}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \addlyrics {\tiny \wordsAltoA \wordsB \wordsAltoC}
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \addlyrics {\tiny \wordsB \wordsTenorC}
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \addlyrics {\wordsBassA \wordsB \wordsBassC}
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
          \new Dynamics {\teeny \dynamicsOrgan}
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \magnifyStaff #4/7
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
            \magnifyStaff #4/7
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \sopranoA \sopranoB \sopranoC }
            \new Lyrics \lyricsto "soprano" \wordsMidiSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
%          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \midi {}
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \sopranoA \sopranoB \sopranoC }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
            \new Lyrics \lyricsto "alto" \wordsMidiAlto
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
%          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \midi {}
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \sopranoA \sopranoB \sopranoC }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
            \new Lyrics \lyricsto "tenor" \wordsMidiTenor
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
%          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \midi {}
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
          \new Staff = sop \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \global \sopranoA \sopranoB \sopranoC }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice = "alto" { \global \altoA \altoB \altoC }
          >>
                                % Single tenor staff
          \new Staff =tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice = "tenor" { \global \noA \tenorB \tenorC }
          >>
                                % Single bass staff
          \new Staff =bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice = "bass" { \global \bassA \bassB \bassC }
            \new Lyrics \lyricsto "bass" \wordsMidiBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = "Organ"
          shortInstrumentName = "Man."
          printPartCombineTexts = ##f
        }
        <<
          \new Staff = "rh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "treble"
            \new Voice \partCombine \organRHone \organRHtwo
          >>
%          \new Dynamics \dynamicsOrgan
          \new Staff = "lh" \with { printPartCombineTexts = ##f } <<
            \set Staff.midiInstrument = "church organ"
            \clef "bass"
            \new Voice \partCombine \organLHone \organLHtwo
          >>
        >>
        \new Staff \with { instrumentName = #"Pedal" shortInstrumentName = #"Ped" } <<
          \set Staff.midiInstrument = "church organ"
          \clef "bass"
          \new Voice \organPed
        >>
      >>
    >>
    \midi {}
  }
}
