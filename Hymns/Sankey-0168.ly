\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Coming of the Kingdom."
  subtitle    = "Sankey No. 168"
  subsubtitle = "C.C. No. 40"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2.
  \mark \markup { \box "B" } s4 s1 s2.
  \mark \markup { \box "C" } s4 s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
  \mark \markup { \box "E" } s4 s1 s2.
  \mark \markup { \box "F" } s4 s1 s2.
  \mark \markup { \box "G" } s4 s1 s2
  \mark \markup { \box "H" } s2 s1 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 8
  bes8 8 8 8 c bes a g
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  \slurDashed bes 8(8) 8 8 8 8 a bes % B
  c2. \bar "|" \break f,8 8
  bes8 8 8 8 c(bes) a g % C
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  g8 a bes c d c g a % D
  bes2. \bar "||" \break a8.^\markup\smallCaps Chorus. bes16
  c8 8 8 8 8 ees d c % E
  bes2. \bar "|" \break bes8. c16
  d8 8 8 8 8 f ees d % F
  c2. \bar "|" \break f,8 8
  f16bes8. 8 c d4 f8. 16 % G
  ees8 d c bes \bar "|" \break c8[bes] a g
  f4 d'8 8 8 c bes8. a16 % H
  bes2.
}

sopranoSingle = \relative {
  \autoBeamOff
  f'8 8
  bes8 8 8 8 c bes a g
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  bes4 8 8 8 8 a bes % B
  c2. \bar "|" \break f,8 8
  bes8 8 8 8 c bes a g % C
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  g8 a bes c d c g a % D
  bes2. \bar "||" \break a8.^\markup\smallCaps Chorus. bes16
  c8 8 8 8 8 ees d c % E
  bes2. \bar "|" \break bes8. c16
  d8 8 8 8 8 f ees d % F
  c2. \bar "|" \break f,8 8
  f16 bes8. 8 c d4 f8. 16 % G
  ees8 d c bes \bar "|" \break c8[bes] a g
  f4 d'8 8 8 c bes8. a16 % H
  bes2.
% verse 2
  f8 8
  bes8 8 8 8 c bes a g
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  bes 8 8 8 8 8 8 a bes % B
  c2. \bar "|" \break f,8 8
  bes8 8 8 8 c bes a g % C
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  g8 a bes c d c g a % D
  bes2. \bar "||" \break a8.^\markup\smallCaps Chorus. bes16
  c8 8 8 8 8 ees d c % E
  bes2. \bar "|" \break bes8. c16
  d8 8 8 8 8 f ees d % F
  c2. \bar "|" \break f,8 8
  f16bes8. 8 c d4 f8. 16 % G
  ees8 d c bes \bar "|" \break c8[bes] a g
  f4 d'8 8 8 c bes8. a16 % H
  bes2.
% verse 3
  f8 8
  bes8 8 8 8 c bes a g
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  bes4 8 8 8 8 a bes % B
  c2. \bar "|" \break f,8 8
  bes8 8 8 8 c(bes) a g % C
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  g8 a bes c d c g a % D
  bes2. \bar "||" \break a8.^\markup\smallCaps Chorus. bes16
  c8 8 8 8 8 ees d c % E
  bes2. \bar "|" \break bes8. c16
  d8 8 8 8 8 f ees d % F
  c2. \bar "|" \break f,8 8
  f16bes8. 8 c d4 f8. 16 % G
  ees8 d c bes \bar "|" \break c8[bes] a g
  f4 d'8 8 8 c bes8. a16 % H
  bes2.
% verse 4
  f8 8
  bes8 8 8 8 c bes a g
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  bes8 8 8 8 8 8 a bes % B
  c2. \bar "|" \break f,8 8
  bes8 8 8 8 c bes a g % C
  f8. g16 f8 ees d4 \bar "|" \break f8 8
  g8 a bes c d c g a % D
  bes2. \bar "||" \break a8.^\markup\smallCaps Chorus. bes16
  c8 8 8 8 8 ees d c % E
  bes2. \bar "|" \break bes8. c16
  d8 8 8 8 8 f ees d % F
  c2. \bar "|" \break f,8 8
  f16bes8. 8 c d4 f8. 16 % G
  ees8 d c bes \bar "|" \break c8[bes] a g
  f4 d'8 8 8 c bes8. a16 % H
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'8 8
  d8 8 8 8 ees d fis ees
  d8. ees16 d8 c bes4 d8 8
  \slurDashed d8(8) \slurSolid 8 8 8 8 8 8 % B
  ees2. f8 ees
  d8 8 8 8 \slurDashed 8(8) \slurSolid f8 ees % C
  d8. ees16 d8 c bes4 d8 8
  ees8 8 f g f ees ees ees % D
  d2. f8. 16
  a8 8 8 8 8 8 bes f % E
  f2. 8. 16
  f8 8 8 8 8 8 8 8 % F
  f8[g] a bes a[g] f ees
  d16 8. 8 ees f4 aes8. 16 % G
  g8 8 8 8 ees[g] f ees
  d4 f8 8 8 ees d8. c16
  d2.
}

altoSingle = \relative {
  \autoBeamOff
  d'8 8
  d8 8 8 8 ees d fis ees
  d8. ees16 d8 c bes4 d8 8
  d4 8 8 8 8 8 8 % B
  ees2. f8 ees
  d8 8 8 8 8 8 f8 ees % C
  d8. ees16 d8 c bes4 d8 8
  ees8 8 f g f ees ees ees % D
  d2. f8. 16
  a8 8 8 8 8 8 bes f % E
  f2. 8. 16
  f8 8 8 8 8 8 8 8 % F
  f8[g] a bes a[g] f ees
  d16 8. 8 ees f4 aes8. 16 % G
  g8 8 8 8 ees[g] f ees
  d4 f8 8 8 ees d8. c16
  d2. \nl
% verse 2
  d8 8
  d8 8 8 8 ees d fis ees
  d8. ees16 d8 c bes4 d8 8
  d8 8 8 8 8 8 8 8 % B
  ees2. f8 ees
  d8 8 8 8 8 8 f8 ees % C
  d8. ees16 d8 c bes4 d8 8
  ees8 8 f g f ees ees ees % D
  d2. f8. 16
  a8 8 8 8 8 8 bes f % E
  f2. 8. 16
  f8 8 8 8 8 8 8 8 % F
  f8[g] a bes a[g] f ees
  d16 8. 8 ees f4 aes8. 16 % G
  g8 8 8 8 ees[g] f ees
  d4 f8 8 8 ees d8. c16
  d2. \nl
% verse 3
  d8 8
  d8 8 8 8 ees d fis ees
  d8. ees16 d8 c bes4 d8 8
  d4 8 8 8 8 8 8 % B
  ees2. f8 ees
  d8 8 8 8 8(8) f8 ees % C
  d8. ees16 d8 c bes4 d8 8
  ees8 8 f g f ees ees ees % D
  d2. f8. 16
  a8 8 8 8 8 8 bes f % E
  f2. 8. 16
  f8 8 8 8 8 8 8 8 % F
  f8[g] a bes a[g] f ees
  d16 8. 8 ees f4 aes8. 16 % G
  g8 8 8 8 ees[g] f ees
  d4 f8 8 8 ees d8. c16
  d2. \nl
% verse 4
  d8 8
  d8 8 8 8 ees d fis ees
  d8. ees16 d8 c bes4 d8 8
  d8 8 8 8 8 8 8 8 % B
  ees2. f8 ees
  d8 8 8 8 8 8 f8 ees % C
  d8. ees16 d8 c bes4 d8 8
  ees8 8 f g f ees ees ees % D
  d2. f8. 16
  a8 8 8 8 8 8 bes f % E
  f2. 8. 16
  f8 8 8 8 8 8 8 8 % F
  f8[g] a bes a[g] f ees
  d16 8. 8 ees f4 aes8. 16 % G
  g8 8 8 8 ees[g] f ees
  d4 f8 8 8 ees d8. c16
  d2.
}

tenor = \relative {
  \autoBeamOff
  bes8 8
  f8 8 8 8 8 8 bes8 8
  bes8. 16 8 f8 4 bes8 8
  \slurDashed f8(8) 8 8 g8 8 fis g % B
  a2. f8 8
  f8 8 8 8 8(8) bes bes % C
  bes8. 16 8 f f4 bes8 bes
  bes8 c bes8 8 8 f f f % D
  f2. c'8. d16
  ees8 8 8 8 8 c f c % E
  d2. 8. c16
  bes8 8 8 8 8 8 a bes % F
  a8[g] f g f4 bes8 a
  bes16 f8. 8 bes8 4 8. 16
  bes8 8 8 8 g[bes] 8 8
  bes4 8 8 8 a bes8. f16
  f2.
}

tenorSingle = \relative {
  \autoBeamOff
  bes8 8
  f8 8 8 8 8 8 bes8 8
  bes8. 16 8 f8 4 bes8 8
  f4 8 8 g8 8 fis g % B
  a2. f8 8
  f8 8 8 8 8 8 bes bes % C
  bes8. 16 8 f f4 bes8 bes
  bes8 c bes8 8 8 f f f % D
  f2. c'8. d16
  ees8 8 8 8 8 c f c % E
  d2. 8. c16
  bes8 8 8 8 8 8 a bes % F
  a8[g] f g f4 bes8 a
  bes16 f8. 8 bes8 4 8. 16
  bes8 8 8 8 g[bes] 8 8
  bes4 8 8 8 a bes8. f16
  f2.
% verse 2
  bes8 8
  f8 8 8 8 8 8 bes8 8
  bes8. 16 8 f8 4 bes8 8
  f8 8 8 8 g8 8 fis g % B
  a2. f8 8
  f8 8 8 8 8 8 bes bes % C
  bes8. 16 8 f f4 bes8 bes
  bes8 c bes8 8 8 f f f % D
  f2. c'8. d16
  ees8 8 8 8 8 c f c % E
  d2. 8. c16
  bes8 8 8 8 8 8 a bes % F
  a8[g] f g f4 bes8 a
  bes16 f8. 8 bes8 4 8. 16
  bes8 8 8 8 g[bes] 8 8
  bes4 8 8 8 a bes8. f16
  f2.
% verse 3
  bes8 8
  f8 8 8 8 8 8 bes8 8
  bes8. 16 8 f8 4 bes8 8
  f4 8 8 g8 8 fis g % B
  a2. f8 8
  f8 8 8 8 4 bes8 bes % C
  bes8. 16 8 f f4 bes8 bes
  bes8 c bes8 8 8 f f f % D
  f2. c'8. d16
  ees8 8 8 8 8 c f c % E
  d2. 8. c16
  bes8 8 8 8 8 8 a bes % F
  a8[g] f g f4 bes8 a
  bes16 f8. 8 bes8 4 8. 16
  bes8 8 8 8 g[bes] 8 8
  bes4 8 8 8 a bes8. f16
  f2.
% verse 4
  bes8 8
  f8 8 8 8 8 8 bes8 8
  bes8. 16 8 f8 4 bes8 8
  f8 8 8 8 g8 8 fis g % B
  a2. f8 8
  f8 8 8 8 8 8 bes bes % C
  bes8. 16 8 f f4 bes8 bes
  bes8 c bes8 8 8 f f f % D
  f2. c'8. d16
  ees8 8 8 8 8 c f c % E
  d2. 8. c16
  bes8 8 8 8 8 8 a bes % F
  a8[g] f g f4 bes8 a
  bes16 f8. 8 bes8 4 8. 16
  bes8 8 8 8 g[bes] 8 8
  bes4 8 8 8 a bes8. f16
  f2.
}

bass = \relative {
  \autoBeamOff
  bes,8 8
  bes8 8 8 8 8 8 8 8
  bes8. 16 8 8 4 8 8
  \slurDashed bes8(8) 8 8 g'8 8 d g % B
  f2. 8 8
  bes,8 8 8 8 8(8) 8 8 % C
  bes8. 16 8 8 4 8 8
  ees8 c d ees f f f f
  bes,2. f'8. 16
  f8 8 8 8 8 8 8 8 % E
  bes,4 d8 f bes4 f8. 16
  bes,8 8 8 8 8 d c bes % F
  f'8[ees] f g f[ees] d c
  bes16 8. 8 8 4 d8. 16 % G
  ees8 8 8 8 4 8 8
  f4 8 8 8 8 8. 16 % H
  bes,2.
}

bassSingle = \relative {
  \autoBeamOff
  bes,8 8
  bes8 8 8 8 8 8 8 8
  bes8. 16 8 8 4 8 8
  bes4 8 8 g'8 8 d g % B
  f2. 8 8
  bes,8 8 8 8 8 8 8 8 % C
  bes8. 16 8 8 4 8 8
  ees8 c d ees f f f f
  bes,2. f'8. 16
  f8 8 8 8 8 8 8 8 % E
  bes,4 d8 f bes4 f8. 16
  bes,8 8 8 8 8 d c bes % F
  f'8[ees] f g f[ees] d c
  bes16 8. 8 8 4 d8. 16 % G
  ees8 8 8 8 4 8 8
  f4 8 8 8 8 8. 16 % H
  bes,2.
% verse 2
  bes8 8
  bes8 8 8 8 8 8 8 8
  bes8. 16 8 8 4 8 8
  bes8 8 8 8 g'8 8 d g % B
  f2. 8 8
  bes,8 8 8 8 8 8 8 8 % C
  bes8. 16 8 8 4 8 8
  ees8 c d ees f f f f
  bes,2. f'8. 16
  f8 8 8 8 8 8 8 8 % E
  bes,4 d8 f bes4 f8. 16
  bes,8 8 8 8 8 d c bes % F
  f'8[ees] f g f[ees] d c
  bes16 8. 8 8 4 d8. 16 % G
  ees8 8 8 8 4 8 8
  f4 8 8 8 8 8. 16 % H
  bes,2.
% verse 3
  bes8 8
  bes8 8 8 8 8 8 8 8
  bes8. 16 8 8 4 8 8
  bes4 8 8 g'8 8 d g % B
  f2. 8 8
  bes,8 8 8 8 4 8 8 % C
  bes8. 16 8 8 4 8 8
  ees8 c d ees f f f f
  bes,2. f'8. 16
  f8 8 8 8 8 8 8 8 % E
  bes,4 d8 f bes4 f8. 16
  bes,8 8 8 8 8 d c bes % F
  f'8[ees] f g f[ees] d c
  bes16 8. 8 8 4 d8. 16 % G
  ees8 8 8 8 4 8 8
  f4 8 8 8 8 8. 16 % H
  bes,2.
% verse 4
  bes8 8
  bes8 8 8 8 8 8 8 8
  bes8. 16 8 8 4 8 8
  bes8 8 8 8 g'8 8 d g % B
  f2. 8 8
  bes,8 8 8 8 8 8 8 8 % C
  bes8. 16 8 8 4 8 8
  ees8 c d ees f f f f
  bes,2. f'8. 16
  f8 8 8 8 8 8 8 8 % E
  bes,4 d8 f bes4 f8. 16
  bes,8 8 8 8 8 d c bes % F
  f'8[ees] f g f[ees] d c
  bes16 8. 8 8 4 d8. 16 % G
  ees8 8 8 8 4 8 8
  f4 8 8 8 8 8. 16 % H
  bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Be thou rea -- dy, O my soul,
  for the trum -- pet soon may roll,
  And the King in His glo -- ry shall ap -- pear!
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ draw -- eth near!
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ draw -- eth near!
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There's a glo -- rious King -- dom wait -- ing
  in the land be -- yond the sky,
  Where the saints have been gath -- 'ring year by year;
  And the days are swift -- ly \nom pass -- ing \yesm
  that will bring the King -- dom nigh:
  For the com -- ing of the King -- dom draw -- eth near!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis the hope of yon -- der King -- dom,
  and the glo -- ry there pre -- pared,
  And the \nom look -- ing \yesm for the Sa -- viour to ap -- pear,
  That de -- liv -- ers us from \nom bond -- age \yesm
  to the world that once en -- snared:
  For the com -- ing of the King -- dom draw -- eth near!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  With the com -- ing of the King -- dom
  we shall see our bles -- sed Lord,
  For the King ere the King -- dom must ap -- pearl
  Hal -- le -- lu -- jah to His name,
  who re -- deemed us by His blood!
  Oh, the com -- ing of the King -- dom draw -- eth near!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, the world is grow -- ing wea -- ry,
  it has wait -- ed now so long,
  And the \nom hearts of \yesm men are fail -- ing them for fear;
  Let us tell them of the \nom King -- dom, \yesm
  let us cheer them with the song,
  That the com -- ing of the King -- dom draw -- eth near!
}
  
wordsSingleSop = \lyricmode {
  \set stanza = "1."
  There's a glo -- rious King -- dom wait -- ing
  in the land be -- yond the sky,
  Where the saints have been gath -- 'ring year by year;
  And the days are swift -- ly pass -- ing
  that will bring the King -- dom nigh:
  For the com -- ing of the King -- dom draw -- eth near!
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Be thou rea -- dy, O my soul,
  for the trum -- pet soon may roll,
  And the King in His glo -- ry shall ap -- pear!

  \set stanza = "2."
  'Tis the hope of yon -- der King -- dom,
  and the glo -- ry there pre -- pared,
  And the look -- ing for the Sa -- viour to ap -- pear,
  That de -- liv -- ers us from bond -- age
  to the world that once en -- snared:
  For the com -- ing of the King -- dom draw -- eth near!
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Be thou rea -- dy, O my soul,
  for the trum -- pet soon may roll,
  And the King in His glo -- ry shall ap -- pear!

  \set stanza = "3."
  With the com -- ing of the King -- dom
  we shall see our bles -- sed Lord,
  For the King ere the King -- dom must ap -- pearl
  Hal -- le -- lu -- jah to His name,
  who re -- deemed us by His blood!
  Oh, the com -- ing of the King -- dom draw -- eth near!
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Be thou rea -- dy, O my soul,
  for the trum -- pet soon may roll,
  And the King in His glo -- ry shall ap -- pear!

  \set stanza = "4."
  Oh, the world is grow -- ing wea -- ry,
  it has wait -- ed now so long,
  And the hearts of men are fail -- ing them for fear;
  Let us tell them of the King -- dom,
  let us cheer them with the song,
  That the com -- ing of the King -- dom draw -- eth near!
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Oh, the com -- ing of the King -- dom draw -- eth near! __
  Be thou rea -- dy, O my soul,
  for the trum -- pet soon may roll,
  And the King in His glo -- ry shall ap -- pear!
}
  
wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " glo "rious " King "dom " wait "ing "
  "\nin " "the " "land " be "yond " "the " "sky, "
  "\nWhere " "the " "saints " "have " "been " gath "'ring " "year " "by " "year; "
  "\nAnd " "the " "days " "are " swift "ly " pass "ing "
  "\nthat " "will " "bring " "the " King "dom " "nigh: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "2."
  "\n'Tis " "the " "hope " "of " yon "der " King "dom, "
  "\nand " "the " glo "ry " "there " pre "pared, "
  "\nAnd " "the " look "ing " "for " "the " Sa "viour " "to " ap "pear, "
  "\nThat " de liv "ers " "us " "from " bond "age "
  "\nto " "the " "world " "that " "once " en "snared: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "3."
  "\nWith " "the " com "ing " "of " "the " King "dom "
  "\nwe " "shall " "see " "our " bles "sed " "Lord, "
  "\nFor " "the " "King " "ere " "the " King "dom " "must " ap "pearl "
  "\nHal" le lu "jah " "to " "His " "name, "
  "\nwho " re "deemed " "us " "by " "His " "blood! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "4."
  "\nOh, " "the " "world " "is " grow "ing " wea "ry, "
  "\nit " "has " wait "ed " "now " "so " "long, "
  "\nAnd " "the " "hearts " "of " "men " "are " fail "ing " "them " "for " "fear; "
  "\nLet " "us " "tell " "them " "of " "the " King "dom, "
  "\nlet " "us " "cheer " "them " "with " "the " "song, "
  "\nThat " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "
}
  
wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " glo "rious " King "dom " wait "ing "
  "\nin " "the " "land " be "yond " "the " "sky, "
  "\nWhere " "the " "saints " "have " "been " gath "'ring " "year " "by " "year; "
  "\nAnd " "the " "days " "are " swift "ly " pass "ing "
  "\nthat " "will " "bring " "the " King "dom " "nigh: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "2."
  "\n'Tis " "the " "hope " "of " yon "der " King "dom, "
  "\nand " "the " glo "ry " "there " pre "pared, "
  "\nAnd " "the " look "ing " "for " "the " Sa "viour " "to " ap "pear, "
  "\nThat " de liv "ers " "us " "from " bond "age "
  "\nto " "the " "world " "that " "once " en "snared: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "3."
  "\nWith " "the " com "ing " "of " "the " King "dom "
  "\nwe " "shall " "see " "our " bles "sed " "Lord, "
  "\nFor " "the " "King " "ere " "the " King "dom " "must " ap "pearl "
  "\nHal" le lu "jah " "to " "His " "name, "
  "\nwho " re "deemed " "us " "by " "His " "blood! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "4."
  "\nOh, " "the " "world " "is " grow "ing " wea "ry, "
  "\nit " "has " wait "ed " "now " "so " "long, "
  "\nAnd " "the " "hearts " "of " "men " "are " fail "ing " "them " "for " "fear; "
  "\nLet " "us " "tell " "them " "of " "the " King "dom, "
  "\nlet " "us " "cheer " "them " "with " "the " "song, "
  "\nThat " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " draw "eth " "near! "
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " glo "rious " King "dom " wait "ing "
  "\nin " "the " "land " be "yond " "the " "sky, "
  "\nWhere " "the " "saints " "have " "been " gath "'ring " "year " "by " "year; "
  "\nAnd " "the " "days " "are " swift "ly " pass "ing "
  "\nthat " "will " "bring " "the " King "dom " "nigh: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "2."
  "\n'Tis " "the " "hope " "of " yon "der " King "dom, "
  "\nand " "the " glo "ry " "there " pre "pared, "
  "\nAnd " "the " look "ing " "for " "the " Sa "viour " "to " ap "pear, "
  "\nThat " de liv "ers " "us " "from " bond "age "
  "\nto " "the " "world " "that " "once " en "snared: "
  "\nFor " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "3."
  "\nWith " "the " com "ing " "of " "the " King "dom "
  "\nwe " "shall " "see " "our " bles "sed " "Lord, "
  "\nFor " "the " "King " "ere " "the " King "dom " "must " ap "pearl "
  "\nHal" le lu "jah " "to " "His " "name, "
  "\nwho " re "deemed " "us " "by " "His " "blood! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "

  \set stanza = "4."
  "\nOh, " "the " "world " "is " grow "ing " wea "ry, "
  "\nit " "has " wait "ed " "now " "so " "long, "
  "\nAnd " "the " "hearts " "of " "men " "are " fail "ing " "them " "for " "fear; "
  "\nLet " "us " "tell " "them " "of " "the " King "dom, "
  "\nlet " "us " "cheer " "them " "with " "the " "song, "
  "\nThat " "the " com "ing " "of " "the " King "dom " draw "eth " "near! "
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nOh, " "the " com "ing " "of " "the " King "dom " draw "eth " "near! " 
  "\nBe " "thou " rea "dy, " "O " "my " "soul, "
  "\nfor " "the " trum "pet " "soon " "may " "roll, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "shall " ap "pear! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new NullVoice \soprano
            \addlyrics { \wordsOne \chorus }
            \addlyrics   \wordsTwo
            \addlyrics   \wordsThree
            \addlyrics   \wordsFour
            \new NullVoice \alto
            \addlyrics \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \bass
            \addlyrics \chorusBass
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
            { \global \altoSingle }
            \new NullVoice \sopranoSingle
            \addlyrics \wordsSingleSop
            \new NullVoice { \alto \alto \alto \alto }
            \addlyrics { \chorusAlto \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
            \new NullVoice { \bass \bass \bass \bass }
            \addlyrics { \chorusBass \chorusBass \chorusBass \chorusBass }
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
            { \global \altoSingle }
            \new NullVoice \sopranoSingle
            \addlyrics \wordsSingleSop
            \new NullVoice \altoSingle
            \addlyrics { \chorusAlto \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
            \new NullVoice \bassSingle
            \addlyrics { \chorusBass \chorusBass \chorusBass \chorusBass }
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
            \addlyrics \wordsAltoMidi
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
            \addlyrics \wordsBassMidi
          >>
        >>
    \midi {}
  }
}
