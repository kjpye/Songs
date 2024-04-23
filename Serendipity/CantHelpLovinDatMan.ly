\version "2.25.15"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Can't Help Lovin' Dat Man"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerome Kern"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
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
  \tempo "Moderato" 4=90
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "15a" } s1*4
  \textMark \markup { \box "15b" } s1*4
  \textMark \markup { \box "15c" } s1*4
  \textMark \markup { \box "16a" } s1*4
  \textMark \markup { \box "16b" } s1*3
  \textMark \markup { \box "16c" } s1*3
  \textMark \markup { \box "16d" } s1*3
  \textMark \markup { \box "17a" } s1*3
  \textMark \markup { \box "17b" } s1*4
  \textMark \markup { \box "17c" } s1*4
  \textMark \markup { \box "18a" } s1*4
  \textMark \markup { \box "18b" } s1*4
  \textMark \markup { \box "18c" } s1*4
  \textMark \markup { \box "19a" } s1*4
  \textMark \markup { \box "19b" } s1*4
  \textMark \markup { \box "19c" } s1*4
}

soprano = \tripletFeel 8 \relative {
  \global
  \ov
  R1*3
  bes'8^\markup \upright SOPRANO  bes bes ees~4 ees
  ees8 bes bes bes~2 % 15b
  g8 g g c~4 c
  c8 f, f f~2
  bes2 ees,
  ces8 ees ees ges~4 f % 15c
  ees1~
  ees2. r4 \vo
  bes'8^\markup \upright {SOPRANO & ALTO} bes bes ees~4 ees
  ees8 bes bes bes~2 % 16a
  g8 g g c~4 c
  c8 f, f f~2
  bes2 ees,
  ces8 ees ees ges~4 f % 16b
  ees8 bes' c bes des bes4.
  r8 c d c fis, g4.
  bes2~8 g bes g~ % 16c
  g8 ees g ees~2
  r8 ees ees ees ees c'4.
  r8 ees, f d ees ces'4. % 16d
  bes1~
  bes2. \ov r4 \vo
  R1*4 \bar "||"
   bes8 bes bes ees~4 ees % 17b+
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 17c
  bes2 ees,
  ces8 ees ees ges~4 f
  ees1~
  ees2. \ov r4 \vo % 18a
  bes'8 bes bes ees~4 ees
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 18b
  bes2 ees,
  ces8 ees ees ges~4 f
  ees1~
  ees2.~8 \ov r \vo % 18c
  f4 f f f
  fis8(ees'4.~2)
  g,4 g g g
  a8(f'4.~2) % 19a
  bes,4 bes bes bes
  c4 c c c
  f2~8 ees d c
  bes1 % 19b
  bes8 bes bes ees~4 ees
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 19c
  bes2 ees,
  ces8 ees ees ges~4 ges
  ees1~
  ees2. r4
  \bar "|"
}

wordsAll = \lyricmode {
  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat man __ of \set associatedVoice = alignerA mine. __

  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

%  Oh lis -- ten sis -- ter,
  I love my mis -- ter man __
  and I can't __ tell you why,
  can't tell you why,
  Dere ain't no rea -- son
  ain't no rea -- son
  why I should love dat man __

  It must be sump -- in' dat __
  De an -- gels done plan __
  
  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat man __ of mine. __
  Lov -- in' dat man of mine.

  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

  When he goes a -- way __
  Dat's a rai -- ny day, __
  An when he comes back dat day is fine __
  The sun will shine,

  Yes sis -- ter,
  He can come home __ as late as can be, __
  Home with -- out him ain't no home to me __
  Can't help __ lov -- in' dat man __ of mine! __
}

wordsSop = \lyricmode {
  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat man __ of mine __

  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

  Oh lis -- ten, sis -- ter,
  I love my mis -- ter man __
  and I can't __ tell you why,
  Dere ain't no rea -- son
  why I should love dat man __

  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat man __ of mine. __

  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

  When he goes a -- way __
  Dat's a rai -- ny day, __
  An when he comes back dat day is fine __
  The sun will shine,

  He can come home __ as late as can be, __
  Home with -- out him ain't no home to me __
  Can't help __ lov -- in' dat man __ of mine! __
}

wordsSopAbove = \lyricmode {
  \repeat unfold 50 \skip 1
  of mine
  Oh lis -- ten, sis -- ter,

  \repeat unfold 10 \skip 1
  you why,   __
  Dere ain't no rea -- son
  why I should love dat man __

  "" \repeat unfold 24 \skip 1
  mine.

  \repeat unfold 48 \skip 1
  shine,

  \repeat unfold 26 \skip 1
}

wordsSopMidi = \lyricmode {
  "Fish " "got " "to " "swim "  "and " "birds " "got " "to " "fly " 
  "\nI " "got " "to " "love " "one " "man " "till " "I " "die " 
  "\nCan't " "help " lov "in' " "dat " "man "  "of " "mine. " 

  "\nTell " "me " "he's " la "zy, "
  "\nTell " "me " "he's " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "man " "of "  "mine " 

  "\nOh " lis "ten " sis "ter, "
  "\nI " "love " "my " mis "ter " "man " 
  "\nand " "I " "can't "  "tell " "you " "why, "
  "\nDere " "ain't " "no " rea "son "
  "\nwhy " "I " "should " "love " "dat " "man " 

  "\nFish " "got " "to " "swim "  "and " "birds " "got " "to " "fly " 
  "\nI " "got " "to " "love " "one " "man " "till " "I " "die " 
  "\nCan't " "help " lov "in' " "dat " "man "  "of " "mine. " 

  "\nTell " "me " "he's " la "zy, "
  "\nTell " "me " "he's " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "man " "of "  "mine " 

  "\nWhen " "he " "goes " a "way " 
  "\nDat's " "a " rai "ny " "day, " 
  "\nAn " "when " "he " "comes " "back " "dat " "day " "is " "fine " 
  "\nThe " "sun " "will " "shine, "

  "\nHe " "can " "come " "home "  "as " "late " "as " "can " "be, " 
  "\nHome " with "out " "him " "ain't " "no " "home " "to " "me " 
  "\nCan't " "help "  lov "in' " "dat " "man "  "of " "mine! " 
}

alto = \tripletFeel 8 \relative {
  \global
  s1*11
  g'8 f f ees(g4) bes % 15c+++
  aes8 aes aes g(~4 f) % 16a
  ees8 ees ees g(ees4) c
  ees8 ees ees ces8~2
  f4(ees) d(c)
  ces8 ces ces ces~ces bes(aes4) % 16b
  ees'1~
  ees8 ees f ees d d4.
  f4.(ees8~ees) ees ees d~ % 16c
  d8 ees ees des~des a bes b
  c8 c c c c f ees16 d des c
  ces4 ces8 ces ces4 f8(e) % 16d
  ees1~
  ees2. s4
  r8 bes bes bes bes f'4 ges8~ % 17a
  ges8 f4 aes8 aes(ges) f4
  ees1~
  ees2. r4 \bar "||" % 17b
  g8 g g ees~4 g
  aes8 aes aes g~4(f)
  ees8 ees ees ees~4 ees
  c8 ees ees ees~2 % 17c
  f4(ees) d(c) a8 ces ces ees~4 d
  c8(bes) bes bes~bes c bes bes
  c2. s4 % 18a
  g'8 g g(ees) g4 bes
  aes8 aes \( aes g~g(ges f4) \)
  ees8 ees ees g(ees4) c
  ees8 ees ees ces~2 % 18b
  f4(ees) d(c)
  ces8 ces ces ces~ces(bes) aes4
  c2(bes
  c2 d4~8) s % 18c
  c4 c bes b
  c2(des)
  ees4 d cis d
  ees2(f) % 19a
  g4 g g ees
  ees4 ees g f
  aes2~8 aes aes ees
  f4 aes g f % 19b
  g8 g g ees(g4) bes
  aes8 aes aes g~g(ges8 f4)
  ees8 ees ees g(ees4) c
  ees8 ees ees ces~2 % 19c
  f4(ees) d(c)
  ces8 ces ces ees~4 d
  bes1~
  bes2. r4
  \bar "|"
}

wordsAlto = \lyricmode {
  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

  I love my Mis -- ter man __
  and I can't __ tell you why, can't tell you why,
  Dere ain't no rea -- son ain't no rea -- son
  why I should love dat man __

  It must be sump -- in' dat __ De an -- gels done plan. __

  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat man __ of mine. __
  Lov -- in' __ dat man of mine.

  Tell me he's la -- zy,
  Tell me he's slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat man of __ mine __

  When he goes a -- way __
  Dat's a rai -- ny day, __
  An when he comes back dat day is fine __
  The sun will shine, Yes sis -- ter,

  He can come home __ as late as can be, __
  Home with -- out him ain't no home to me __
  Can't help __ lov -- in' dat man __ of mine! __
}

wordsAltoMidi = \lyricmode {
  "Tell " "me " "he's " la "zy, "
  "\nTell " "me " "he's " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "man " "of "  "mine " 

  "\nI " "love " "my " Mis "ter " "man " 
  "\nand " "I " "can't "  "tell " "you " "why, " "can't " "tell " "you " "why, "
  "\nDere " "ain't " "no " rea "son " "ain't " "no " rea "son "
  "\nwhy " "I " "should " "love " "dat " "man " 

  "\nIt " "must " "be " sump "in' " "dat "  "De " an "gels " "done " "plan. " 

  "\nFish " "got " "to " "swim "  "and " "birds " "got " "to " "fly " 
  "\nI " "got " "to " "love " "one " "man " "till " "I " "die " 
  "\nCan't " "help " lov "in' " "dat " "man "  "of " "mine. " 
  "\nLov" "in' "  "dat " "man " "of " "mine. "

  "\nTell " "me " "he's " la "zy, "
  "\nTell " "me " "he's " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "man " "of "  "mine " 

  "\nWhen " "he " "goes " a "way " 
  "\nDat's " "a " rai "ny " "day, " 
  "\nAn " "when " "he " "comes " "back " "dat " "day " "is " "fine " 
  "\nThe " "sun " "will " "shine, " "Yes " sis "ter, "

  "\nHe " "can " "come " "home "  "as " "late " "as " "can " "be, " 
  "\nHome " with "out " "him " "ain't " "no " "home " "to " "me " 
  "\nCan't " "help "  lov "in' " "dat " "man "  "of " "mine! " 
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s1\p | s1*7 | s1\p |
  s1*13 | % 16
  s1*4 | s1\mp | s1*6 |
  s1*9 | s1\p | s1*2 | % 18
  s1*2 | s4 s2.\< | s1\mf | s4 s2.\> | s1\p | s1*6 |
}

tenor = \tripletFeel 8 \relative {
  \global
  \ov
  R1*27 \vo
  bes8 bes bes bes~bes bes bes bes % 17a++
  bes8 bes bes bes~2 \bar "||" % 17b
  bes8 bes bes c~4 c
  c8 ees ees d~2
  bes8 bes bes c~4 c
  ees,8 aes aes ces~2 % 17c
  bes2 g
  ees8 a a ces~ces bes(aes4)
  g4 g8 g~g g g g
  aes2. \ov r4 \vo % 18a
  ees'8 ees d c~4 bes
  c8 c c d~(4 bes)
  c8 c c bes~4 aes
  aes8 aes aes f~f(g aes4) % 18b
  g4(bes) g2
  a8 a a a(ges4) f
  g1(
  aes2 g4~8) \ov r \vo % 18c
  ees4 ees d ees
  fis2(g)
  g4 g e f
  a2(b) % 19a
  c4 bes bes bes
  g4 a a a
  bes2~8 bes bes c
  d4(ees d2) % 19b
  ees8 ees d c~4 bes
  c8 c c d~(4 bes)
  c8 c c bes~4 g
  aes8 aes aes f~(f g aes4) % 19c
  g4(bes) g2
  a8 a a ces~ces(bes) aes4
  g1~
  g2. \ov r4 \vo
  \bar "|"
}

wordsTenor = \lyricmode {
  It must be sump -- in' dat De an -- gels done plan. __
  
  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat gal __ of mine. __
  Lov -- in' __ dat gal of mine.

  Tell me I'm la -- zy,
  Tell me I'm slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat gal of __ mine __

  When I goes a -- way __
  Dat's a rai -- ny day, __
  An when I comes back dat day is fine __
  The sun will shine,

  I can come home __ as late as can be, __
  Home with -- out her ain't no home to me __
  Can't help __ lov -- in' dat gal __ of mine! __
}

wordsTenorMidi = \lyricmode {
  "It " "must " "be " sump "in' " "dat " "De " an "gels " "done " "plan. " 
  
  "\nFish " "got " "to " "swim "  "and " "birds " "got " "to " "fly " 
  "\nI " "got " "to " "love " "one " "man " "till " "I " "die " 
  "\nCan't " "help " lov "in' " "dat " "gal "  "of " "mine. " 
  "\nLov" "in' "  "dat " "gal " "of " "mine. "

  "\nTell " "me " "I'm " la "zy, "
  "\nTell " "me " "I'm " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "gal " "of "  "mine " 

  "\nWhen " "I " "goes " a "way " 
  "\nDat's " "a " rai "ny " "day, " 
  "\nAn " "when " "I " "comes " "back " "dat " "day " "is " "fine " 
  "\nThe " "sun " "will " "shine, "

  "\nI " "can " "come " "home "  "as " "late " "as " "can " "be, " 
  "\nHome " with "out " "her " "ain't " "no " "home " "to " "me " 
  "\nCan't " "help "  lov "in' " "dat " "gal "  "of " "mine! " 
}

bass= \tripletFeel 8 \relative {
  \global
  \vt
  s1*27
  aes8 g g g~g fis fis fis % 17a++
  fis8 g g g~2 % 17b
  ees8 ees ees c~4 c
  f8 f f bes~(4 aes)
  g8 ees ees c~4 c
  ees8 ees ees f~(f g aes4) % 17c
  g2 c,
  ees8 ees ees ees~4 bes
  ees1~
  ees2. s4 % 18a
  ees8 ees ees g~4 c,
  f8 f aes bes~(4 aes)
  g8 ees ees c~4 c
  bes8 bes bes aes~2 % 18b
  g2 c
  c8 c c c~4 bes
  ees1~
  ees2.~8 s % 18c
  aes,4 aes g aes
  a2(bes)
  c4 bes a bes
  c2(d) % 19a
  ees4 ees ees g
  ees4 ees f ees
  d2~8 ees f g
  aes4(f bes,2) % 19b
  ees8 ees ees g~4 c,
  f8 f aes bes~(4 aes)
  g8 ees ees c~4 c
  bes8 bes bes aes~2 % 19c
  g2 c
  ces8 ces ces ces(ces4) bes
  ees1~
  ees2. r4
  \bar "|"
}

wordsBass = \lyricmode {
  It must be sump -- in' dat De an -- gels done plan. __
  
  Fish got to swim __ and birds got to fly __
  I got to love one man till I die __
  Can't help lov -- in' dat gal __ of mine. __

  Tell me I'm la -- zy,
  Tell me I'm slow __
  Tell me I'm cra -- zy, may -- be, I know
  Can't help __ Lov -- in' dat gal of __ mine __

  When I goes a -- way __
  Dat's a rai -- ny day, __
  An when I comes back dat day is fine __
  The sun will shine,

  I can come home __ as late as can be, __
  Home with -- out her ain't no home to me __
  Can't help __ lov -- in' dat gal __ of mine! __
}

wordsBassMidi = \lyricmode {
  "It " "must " "be " sump "in' " "dat " "De " an "gels " "done " "plan. " 
  
  "\nFish " "got " "to " "swim "  "and " "birds " "got " "to " "fly " 
  "\nI " "got " "to " "love " "one " "man " "till " "I " "die " 
  "\nCan't " "help " lov "in' " "dat " "gal "  "of " "mine. " 

  "\nTell " "me " "I'm " la "zy, "
  "\nTell " "me " "I'm " "slow " 
  "\nTell " "me " "I'm " cra "zy, " may "be, " "I " "know "
  "\nCan't " "help "  Lov "in' " "dat " "gal " "of "  "mine " 

  "\nWhen " "I " "goes " a "way " 
  "\nDat's " "a " rai "ny " "day, " 
  "\nAn " "when " "I " "comes " "back " "dat " "day " "is " "fine " 
  "\nThe " "sun " "will " "shine, "

  "\nI " "can " "come " "home "  "as " "late " "as " "can " "be, " 
  "\nHome " with "out " "her " "ain't " "no " "home " "to " "me " 
  "\nCan't " "help "  lov "in' " "dat " "gal "  "of " "mine! " 
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*13 | % 16
  s1*2 | s1\p | s | s1\mp | s1*6 |
  s1*9 | s1\p | s1*2 | % 18
  s1*2 | s4 s2.\< | s1\mf | s4 s2.\> | s1\p | s1*6 |
}

pianoRHone = \tripletFeel 8 \relative {
  \global
  \vo
  s1
  \ov r8 \vo c'' \( \grace d8 ees c ees g~g bes~
                                bes2 \) s
  bes,8 bes bes ees~4 ees
  ees8 bes bes bes~2 % 15b
  g8 g g c~4 c
  c8 f, f f~2
  <bes, bes'>2 ees
  ces8 ees ees ges~4 <d f> % 15c
  ees1
  <g g'>4. <f f'>8~2
  bes8 bes bes ees~4 ees
  ees8 bes bes bes~2 % 16a
  g8 g g c~4 c
  c8 f, f f~2
  <bes, bes'>2 ees
  ces8 ees ees ges~4 f % 16b
  r8 bes(c bes des bes4.)
  r8 c(d c fis, g4.)
  <g bes>2~q8 g bes g~ % 16c
  g8 ees g ees~2
  r8 ees ees ees ees c'4 r8
  r8 ees, f d ees ces'4. % 16d
  r4 <g bes> q <f g>
  q8( ees ees ees~ees f ees c)
  r8 bes bes bes bes \grace e8 f4 \grace f8 ges~( % 17a
  ges8 \grace e8 f4 \grace g8 aes8~aes ges <aes, d f>4)
  <bes ees>1~
  q1 \bar "||" % 17b
  bes'8 bes bes ees~4 ees
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 17c
  <bes, bes'>2 ees
  ces8 ees ees ges~4 <d f>
  ees1
  <g g'>4. <f f'>8~2 % 18a
  bes8 bes bes ees~4 ees
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 18b
  <bes, bes'>2 ees
  ces8 ees ees ges~4 <d f>
  ees1
  <aes c>4 <g bes> <f aes> <ees g> % 18c
  <c f>4 q <bes f'> <b f'>
  fis'8 ees'4. des,8(g \grace a8 bes ees)
  <ees, g>4 <d g> <cis g'> <d g>
  a'8 f'4. fes,8(b \grace cis8 d f) % 19a
  s4 <g, bes> q <ees bes'>
  <ees c'>4 q <g c> <f c'>
  s1
  bes4. bes'8(\vt <d,, g> bes'' bes, bes') \vo % 19b
  bes,8 bes bes ees~4 ees
  ees8 bes bes bes~2
  g8 g g c~4 c
  c8 f, f f~2 % 19c
  <bes, bes'>2 ees
  ces8 ees ees ges~4 <d f>
  <g, ees'>4 \ov r8 \vo s4. <fis' c'>4
  <ees g bes ees>2. \ov r4
  \bar "|."
}

pianoRHtwo = \tripletFeel 8 \relative {
  \global
  \vt
  r8 bes'(c bes) r c(ees c)
  s2. <aes c>4
  <bes ees>2 <d, fis bes> \bar "||"
  <ees g>4. q8~4 q
  <ees aes>4. <d g>8~4 <d f> % 15b
  <bes ees>4. <c ees g>8~2
  <bes ees>4. <ces ees>8~2
  f4 ees d c
  a2. aes4 % 15c
  <bes ees>8 bes bes <g bes>~q c q4
  d'8 c c c~c d c4
  <ees, g>4. q8~4 q
  <ees aes>4. <d g>8~4 <d f> % 16a
  <bes ees>4. <c ees g>8~2
  <c ees>4. <ces ees>8~2
  f4 ees d c
  a2. aes4 % 16b
  <g ees'>4 <ees' g> q q
  <ees f>4 f8 ees d4 d
  f4. ees8~4. d8~ % 16c
  d4. des8~des a bes b
  c2 c4 ees16 d des c
  ces2 ces % 16d
  g4 bes2.
  bes4. bes8~4 a
  s1 % 17a
  s1
  aes8 g g g~g fis fis fis~
  fis8 g g g~2 % 17b \bar "||"
  <ees' g>4. q8~4 q
  <ees aes>4. <d g>8~4 <d f>
  <bes ees>4. <c ees g>8~2
  <c ees>4. q8~2 % 17c
  f4 ees d c
  a2. aes4
  <g c>8 bes bes <g bes>~q c q4
  d'8 c c c c d c4 % 18a
  <ees, g>4. q8~4 q
  <ees aes>4. q8~q ges <d f>4 <bes ees>4. <c ees g>8~2
  <c ees>4. <ces ees>8~q4 q % 18b
  f4 ees d c
  a2. aes4
  <g c>8 bes bes q~q c q4
  ees8 c d4 ees8 c bes4 % 18c
  s1
  c2(des)
  s1
  s2(fes) % 19a
  <g bes g'>4 s2.
  s1
  <aes f'>4(aes8 \grace g'8 <bes, aes'> <aes f'>2)
  f4 aes s2 % 19b
  <ees g>4. q8~q4 q
  <d aes'>4. q8~q ges <d f>4
  <bes ees>4. <c ees g>8~2
  <c ees>4. <ces ees>8~4 q % 19c
  f4 ees d c
  a2. aes4
  s4. <g' c f>8~q ees' s4
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s4 s2.\< | s2\mf s\p | s1\p | s1*6 | s2\mp s\> | s1\p |
  s1*13 | % 16
  s1*4 | s1\mp | s1*6 |
  s1*12 | % 18
  s1*2 | s4 s2.\< | s1\mf | s4 s2.\> | s1\p | s1*6 |
}

pianoLH = \tripletFeel 8 \relative {
  \global
  \ov
  <bes ees g>4 q <a ees' g> q
  <aes ees' ges>4 q <g b f'> <bes f'>
  <ees, bes' g'>2 <bes aes'> \bar "||"
  <ees, ees'>2 <c c'>
  <f f'>2 bes'4 aes % 15b
  <ees g>2 <c g'>
  aes'2 f8(g aes4)
  <g, g'>2 <c g'>
  <ces, ges' ees'>2. <bes bes'>4 % 15c
  <ees bes'>4 q q q
  <aes' ees'>4 q q q
  <ees, ees'>2 <c c'>
  <f f'>2 bes'4 aes % 16a
  <ees g>2 <c g'>
  aes'2 f8 g aes4
  <g, g'>2 <c g'>
  <ces, ges' ees'>2. <bes bes'>4 % 16b
  <ees bes'>4 <ees bes' g'> q q
  <f c' a'>4 <f' a> <bes, aes'> q
  <ees, bes' g'>4 <ees' g> q q % 16c
  <ees, bes'>4 <ees' g> q q
  <aes, ees'>4 q q q
  q4 q q << \vt q \new Voice {\vo ees'16(e f ges)} >> \ov % 16d
  <ees, bes'>4 q q q
  q4 <bes' g'> <f ees'> f
  <bes f aes'>4 q q q % 17a
  q4 q q <bes, bes'>
  <ees bes'>4 q q q
  q4 q q q \bar "||" % 17b
  <ees ees'>2 <c c'>
  <f f'>2 bes'4 aes
  <ees g>2 <c g'>
  << {ees4. f8~f g aes4} \new Voice {aes,2 aes} >> % 17c
  <g g'>2 <c g'>
  <ces, ges' ees'>2. <bes bes'>4
  <ees bes'>4 q q q
  <aes' ees'>4 q q q % 18a
  <ees, ees'>4 <g' d'> <c,, c'> <c' bes'>
  <f, f'>4 <aes' c> <bes,, bes'> <aes'' bes>
  <ees, ees'>4 g' <c,, c'> g''
  <bes, bes'>4 q <aes f'>8 g' aes4 % 18b
  <g, g'>2 <c g'>
  <ces, ges' ees'>4 <ces ces'> q <bes bes'>
  <ees bes'>4 q q q
  q4 q q q % 18c
  <aes ees'>4 q <g d'> <aes ees'>
  <aes fis'>2 <bes g'>
  <c g'>4 <bes f'> <a e'> <bes f'>
  <c a'>2 <d b'> % 19a
  <ees c'>4 <ees bes'> q <g bes>
  <ees g> <ees a> <f a> <ees a>
  <d bes'>8 d' r4 <f, d'>2
  <aes d>4 <f ees'> << {s4 <d' f>} \new Voice {<bes, aes'>2} >> % 19b
  <ees, ees'>4 <g' d'> <c,, c'> <c' bes'>
  <f, f'>4 <aes' c> <bes,, bes'> <aes'' bes>
  <ees, ees'>4 g' <c,, c'> <c' bes'>
  <bes aes'>4 q << {\vo f'8(g aes4)} \new Voice {\vt aes,2} >> \ov % 19c
  <g g'>2 <c g'>
  <ces, ges' ees'>4 <ces ces'> q <bes bes'>
  <ees bes'>4 r8 <f' a ees'>8~4 <ees gis d'>4
  <ees, ees'>2. r4 % I just made that up
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice = "soprano" { \vo \soprano }
            \addlyrics \wordsAll
            \new Voice = "alto"    { \vt \alto    }
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = "tenor" \tenor
            \new Voice = "bass" \bass
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
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice = "soprano" { \vo \soprano }
            \addlyrics \wordsAll
            \new Voice = "alto"    { \vt \alto    }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = "tenor" \tenor
            \new Voice = "bass" \bass
          >>
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
        \new PianoStaff <<
          \new Staff <<
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
%   \articulate
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \new Dynamics \dynamicsWomen
            \addlyrics \wordsAltoMidi
          >>
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
%   \articulate
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
%   \articulate
    <<
      <<
        \new Dynamics \TempoTrack
        \new ChoirStaff <<
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \new Dynamics \dynamicsWomen
            \addlyrics \wordsAltoMidi
          >>
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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

