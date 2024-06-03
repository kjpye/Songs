\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Click, Go the Shears"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Trad."
  arranger    = "Arr. George S. English"
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
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderately bright" 4=120
  s1*27 |
  \tempo "poco rit." 4=115 s1 |
  \tempo "Smoothly" 4=120 s1*10 |
  \tempo "Poco meno mosso" 4=110 s1*8 | % 6
  \tempo "a tempo" 4=120 s1*9 | \tempo "rit." 4=110 s1 |
  \repeat volta 2 {
    \tempo "a tempo" 4=120 s1*7 | % 8
    s1*8 \tempo "rit. e dim." 4=110 s1 |
    \tempo "Freely and robustly" 4=120 s1*8 | % 10
  }
  s1*8 \tempo Presto 4=150 s1 | \tempo "rit." 4=110 s2 \tempo 4=55 s2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*2
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*4
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \repeat volta 2 {
    \textMark \markup { \box "8a" } s1*2
    \textMark \markup { \box "8b" } s1*3
    \textMark \markup { \box "8c" } s1*3
    \textMark \markup { \box "9a" } s1*3
    \textMark \markup { \box "9b" } s1*3
    \textMark \markup { \box "9c" } s1*2
    \textMark \markup { \box "10a" } s1*3
    \textMark \markup { \box "10b" } s1*3
    \textMark \markup { \box "10c" } s1*2
  }
  \textMark \markup { \box "11a" } s1*4
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1 | s | s\f | s1*5 |
  s1*4 | s1\mf | s | s | s | s\mp | s | % 3
  s1\mf | s4\< s\! s4.\fp\< s8\! | s1\mp | s | s\mf | s | s8. s16\cresc s2. | s1 | s\f | s2. s4\mf | % 4
  s1*10 |
  s1*8 | % 6
  s1\mp | s | s | s | s\cresc | s | s\f | s1*3 |
  \repeat volta 2 {
    s1\mp | s | s\f | s | s\mp | s | s\f | s | % 8
    s1\mp | s | s\mf | s | s\cresc | s | s\f | s\omit\dim |
    s1\omit\f | s1*7 |
  }
  s1\f | s | s\mp | s | s\cresc | s | s\f | s2 s4.\>-\markup\italic ten. s8\f | s1 | s |
}

tick = {
  \override BreathingSign.Y-offset = #2.6
  \override BreathingSign.text = \markup { \musicglyph "scripts.tickmark" }
  \breathe
}

sopranoA = \relative {
  \global \autoBeamOff
  R1 | R \section |
  d''8-. r d8. 16 b4-- d-- | c-. e-. c-. r | a4 8. b16 c4 a8. 16 |
  g4 c8(e,) d4~8. 16 | e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 |
  d8.-> c16 b8 a g f e d | c4-> c'8.-- 16-. c4->~8-. r \section | R1 | % 3a
  R1 | e,4 8. d16 c4. g'8 | c4 8. b16 a2 | g4 8. a16 g4 e8. c16 |
  d4 8. d16 d2 | e4 8. d16 c4 e8. g16 | c4 8. b16 a2 |
  d8.-- c16 b8 a g f e d | c8 c'8 8.-> 16-. 4->~8-. r | d8-. r d8. 16 b4-- d-- | % 4a
  c8-. r e-. r c-. r r4 | a4 8. b16 c4 a8. 16 | g4 c8(e,) d4~8. 16 | e8. 16 8. d16 c4 e8. g16 |
  c8. 16 8. b16 a4 4 | d8.-> c16 b8 a g f e d | c4 c'8. 16 c4\fermata \caesura c,8. d16 |
  e8. 16 8. d16 c4 e8. g16 | c4 8. b16 a4 8. 16 | g4 8. a16 g4 e | % 5a
  d4 8. e16 d2 | e4 8. d16 c4 e8. g16 | c4 8. b16 a2 |
  d8. c16 b8 a g f e d | c8(c') 8. 16 2 \section | R1 | R |
  R1*8 \section | % 6
  d8-. r d8. 16 b4-- d | c-. e-. c-. r | a4 8. b16 c4 a8. 16 | g4 c8(e,) d4~8. 16 | % 7a
  e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 | d8.-> c16 b8 a g f e d |
  c4-> c'8.-- 16-. 4->~8-. r \section | R1 | R \section |
}

sopranoB = \relative {
  e''8-. r c-. r e-. r c-. r | a-. r c-. r f-. r c-. r | % 8a
  \tag #'dash {\slurDashed e8.(16) c8 e c4 e8(8) \slurSolid |} % 8b
  \tag #'v1   {            e8. 16  c8 e c4 e4               |} % 8b
  \tag #'v2   {            e4      c8 e c4 e8 8             |} % 8b
  \tag #'dash {\slurDashed d8. (16) \slurSolid c8 a g2 |}
  \tag #'v1   {            d'8. 16             c8 a g2 |}
  \tag #'v2   {            d'4                 c8 a g2 |}
  e'8-. r c-. r e-. r c-. r |
  a8-. r c-. r f-. r c-. r | % 8c
  \tag #'dash {d8.  c16 b8 a g f \slurDashed e8(d) \slurSolid |}
  \tag #'v1   {d'8. c16 b8 a g f             e8(d)            |}
  \tag #'v2   {d'8. c16 b8 a g f             e8 d             |}
  \tag #'dash {c8 (c') \slurDashed c8.(16) \slurSolid c2 \section |}
  \tag #'v1   {c,8(c')             c4                 c2 \section |}
  \tag #'v2   {c,8(c')             c8. 16             c2 \section |}
  b8 r g r b r g r | c r g r e' r c r | a4 8. b16 c4 a8. 16 | % 9a
  g4 c8.(e,16) d4. 8 | e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 |
  d8.-> c16 b8 a g f e d | c4 c'8. 16 c2\fermata \section |
  R1*8 | % 10
}

sopranoC = \relative {
  d''8-> r d8. 16 b4 d | c8 r e r c r r4 | a4 8. b16 c4 a8. 16 | g4 c8(e,) d4~8. 16 | % 11a
  e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 | d8.-> c16 b8 a g f e d |
  c4 c'8. 16 4. \tick 8 | d8 c b a g f e d | c4 c'8.-> 16-> c2->\fermata |
  \bar "|."
}

soprano = {
  \global \autoBeamOff
  \sopranoA
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoB
  }
  \sopranoC
}

sopranoSingle = {
  \global \autoBeamOff
  \sopranoA
  \keepWithTag #'v1 \sopranoB
  \keepWithTag #'v2 \sopranoB
  \sopranoC
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsWomen = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won't he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- 'ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it's tak -- en off clean.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  Click, click, click, click, click, click, click, click,
  \nom With his \yesm black -- en’d tar -- pot __ \nom and his \yesm tar -- ry hand,
  Click, click, click, click, click, click, click, click,
  Here’s what he’s been wait -- ing for __
  “Tar here, Jack!”
  Click, click, click, click, click, click, click, click,
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsWomenTwo = \lyricmode {
  \repeat unfold 225 _
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Click, click, click, click, click, click, click, click,
  Glo -- ry he’ll get down on \nom it, ere \yesm he __ \nom stirs a \yesm peg.
}

wordsWomenSingle = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won’t he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- ’ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it’s tak -- en off clean.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  Click, click, click, click, click, click, click, click,
  \nom With his \yesm black -- en’d tar -- pot __ \nom and his \yesm tar -- ry hand,
  Click, click, click, click, click, click, click, click,
  Here’s what he’s been wait -- ing for __
  “Tar here, Jack!”
  Click, click, click, click, click, click, click, click,
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __
  
  Click, click, click, click, click, click, click, click,
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Click, click, click, click, click, click, click, click,
  Glo -- ry he’ll get down on \nom it, ere \yesm he __ \nom stirs a \yesm peg.
  Click, click, click, click, click, click, click, click,
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsWomenMidi = \lyricmode {
  "Click " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "1."
  "\nOut " "on " "the " "board " "the " "old " shear "er " "stands, "
  "\nGrasp" "ing " "his " "shears " "in " "his " "thin " bon "y " "hands, "
  "\nFixed " "is " "his " "gaze " "on " "a " blue bel "lied " "Joe, "
  "\nGlo" "ry " "if " "he " "gets " "her, " "won’t " "he " "make " "the " ring "er " "go. " 
  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "2."
  "\nIn " "the " mid "dle " "of " "the " "floor " "in " "his " cane bot "tomed " "chair "
  "\nis " "the " "boss " "of " "the " "board, " "with " "eyes " ev ’ry "where; "
  "\nNotes " "well " "each " "fleece " "as " "it " "comes " "to " "the " "screen, "
  "\nPay" "ing " "strict " at ten "tion " "if " "it’s " tak "en " "off " "clean. "

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  \nom With his \yesm black -- en’d tar -- pot __ \nom and his \yesm tar -- ry hand,
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nHere’s " "what " "he’s " "been " wait "ing " "for " 
  "\n“Tar " "here, " "Jack!” "
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 
  
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nGrasp" "ing " "his " "glass " \nom "in " "his " \yesm "thin "  bon "y " "hands, "
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nGlo" "ry " "he’ll " "get " "down " "on " \nom "it, " "ere " \yesm "he "  \nom "stirs " "a " \yesm "peg. "
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe, "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. "
}

altoA = \relative {
  R1 | R \section |
  f'8-. r f8. 16 4-- 4-- | e-. g-. e-. r | f4 8. g16 f4 8. 16 |
  e4 e d~8. 16 | e8. 16 8. d16 c4 e8. g16 | a8. 16 8. g16 f4 4 |
  f8.-> 16 8 8 8 8 e d | c4-> 8.-- 16-. e4->~8-. r \section | R1 | % 3a
  R1 | e4 8. d16 c4. g'8 | c4 8. b16 a2 | g4 8. a16 g4 e8. c16 |
  d4 8. e16 d2 | e4 8. d16 c4 e8. g16 | c4 8. b16 a2 |
  d8.-- c16 b8 a g f e d | c c'8 8.-> 16-. 4->~8-. r | f, r f8. 16 4-- 4-- | % 4a
  e8-. r g-. r e-. r r4 | f4 8. g16 f4 8. 16 | e4 4 d~8. 16 | e8. 16 8. d16 c4 e8. g16 |
  a8. 16 8. g16 f4 f | 8.-> 16 8 8 8 8 e d | c4 8. 16 e4\fermata \caesura c8. d16 |
  e8. 16 8. d16 c4 e8. g16 | a4 8. g16 f4 8. 16 | e4 g8. d16 e4 4 | % 5a
  d4 8. e16 d2 | e4 8. d16 c4 e8. g16 | a4 8. g16 f2 |
  f8. 16 8 8 8 8 e d | c4 8. 16 e2 \section | R1 | R |
  R1*8 \section | % 6
  f8-. r f8. 16 4-- 4-- | e-. g-. e-. r | f4 8. g16 e4 8. 16 | e4 e d~8. 16 | % 7a
  e8. 16 8. d16 c4 e8. g16 | a8. 16 8. g16 f4 f | f8.-> 16 8 8 8 8 e d |
  c4-> 8.-- 16-. e4->~8-. r \section | R1 | R \section | \break
}

altoB = \relative {
  g'8-. r e-. r g-. r e-. r | c-. r f-. r a-. r f-. r | % 8a
  \tag #'dash {\slurDashed g8.(16) e8 8 4 g8(8) \slurSolid |} % 8b
  \tag #'v1   {            g8. 16  e8 8 4 g4               |}
  \tag #'v2   {            g4      e8 8 4 g8 8             |}
  \tag #'dash {\slurDashed fis8.(16) \slurSolid 8 8 f2 |}
  \tag #'v1   {            fis8. 16             8 8 f2 |}
  \tag #'v2   {            fis4                 8 8 f2 |}
  g8-. r e-. r g-. r e-. r |
  c8-. r f-. r a-. r f-. r | % 8c
  \tag #'dash {f8. 16 8 8 8 8 \slurDashed e8(d) \slurSolid |}
  \tag #'v1   {f8. 16 8 8 8 8             e8(d)            |}
  \tag #'v2   {f8. 16 8 8 8 8             e8 d             |}
  \tag #'dash {c4 \slurDashed c8.(16) \slurSolid e2 \section |}
  \tag #'v1   {c4             c4                 e2 \section |}
  \tag #'v2   {c4             c8. 16             e2 \section |}
  f8 r f r f r f r | e r e r g r e r | f4 8. g16 a4 f8. 16 | % 9a
  g4 e d4. 8 | e8. 16 8. d16 c4 e8. g16 | a8. 16 8. g16 f4 f |
  f8.-> 16 8 8 8 8 e d | c4 8. 16 e2\fermata |
  R1*8 | % 10
}

altoC = \relative {
  d'8-> r d8. 16 b4 d | c8 r e r c r r4 | f4 8. g16 f4 8. 16 | e4 e d~8. 16 | % 11a
  e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 a | f8.-> 16 8 8 8 8 e d |
  c4 8. 16 e4. \tick c'8 | d c b a g f e d | c4 8.-> 16-> e2\fermata |
%  \bar "|."
}

alto = {
  \global \autoBeamOff
  \altoA
  \repeat volta 2 {
    \keepWithTag #'dash \altoB
  }
  \altoC
}

altoSingle = {
  \global \autoBeamOff
  \altoA
  \keepWithTag #'v1 \altoB
  \keepWithTag #'v2 \altoB
  \altoC
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*5 |
  s1*4 | s1\mf | s | s | s | s\mp | s | % 3
  s1\mf | s4\< s\! s4.\fp\< s8\! | s1\mp | s | s\mf | s | s8. s16\cresc s2. | s1 | s\f | s2. s4\mf | % 4
  s1*9 | s2. s4\mf |
  s1*8 | % 6
  s1\mp | s | s | s | s\cresc | s | s\f | s1*3 |
  \repeat volta 2 {
    s1\mp | s | s\f | s | s\mp | s | s\f | s | % 8
    s1\mp | s | s\mp | s | s\cresc | s | s\f | s\omit\dim |
    s1\f | s1*7 |
  }
  s1\f | s | s\mp | s | s\cresc | s | s\f | s2 s4.\>-\markup\italic ten. s8\f | s1 | s |
}

tenorA = \relative {
  R1 | R \section |
  b8-. r b8. 16 d4-- b-- | c-. c-. c-. r | c4 8. b16 a4 c8. 16 |
  c4 a8(c) 4(b8.) 16 | c8. 16 8. d16 c4 8. 16 | 8. 16 8. 16 4 4 |
  b8.-> a16 g8 a b c b a | g4-> a8.-- 16-. g4->~8-. r \section | R1 | % 3a
  R1 | e4 8. d16 c4. g'8 | c4 8. b16 a2 | g4 8. a16 g4 e8. c16 |
  d4 8. e16 d2 | e4 8. d16 c4 e8. g16 | c4 8. b16 a2 |
  d8.-- c16 b8 a g f e d | c c'8 8.-> 16-. 4->~8-. r8 | b-. r b8. 16 d4-- b-- | % 4a
  c8-. r c-. r c-. r r4 | 4 8. b16 a4 c8. 16 | 4 a8(c) 4(b8.) 16 | c8. 16 8. d16 c4 8. 16 |
  c8. 16 8. 16 4 4 | b8.-> a16 g8 a b c b a | g4 a8. 16 g4\fermata \caesura c,8. d16 |
  e8. 16 g8. 16 4 8. c16 | 4 8. 16 4 8. 16 | 4 8. 16 4 4 | % 5a
  c4 8. 16 b2 | c4 g8. 16 4 8. c16 | 4 8. 16 2 |
  b8. c16 d8 c d c b a | g4 a8. 16 g2 \section | R1 | r2 r4 c,8. d16 |
  e8. 16 8. d16 c8 c e(g) | c8. 16 8 b a2 | % 6a
  g8. 16 8 a g4 e8(c) | d4 8. e16 d2 | e8. 16 8 d c4 e8 g |
  c4 8. b16 a2 | <b d>8.^\markup Div.  <a c>16 <g b>8 <f a> <f g> f e(d) | c8. c'16 <a c>8 8 <g c>2 \section |
  b8-. r b8. 16 d4-- b-- | c-. c-. c-. r | 4 8. b16 a4 c8. 16 | 4 a8(c) 4(b8.) 16 | % 7a
  c8. 16 8. d16 c4 8. 16 | 8. 16 8. 16 4 4 | b8.-> a16 g8 a b c b a |
  g4-> a8.-- 16-. g4->~8-. r \section | R1 | R \section |
}

tenorB = \relative {
  c'8-. r g-. r c-. r g-. r | f-. r a-. r c-. r a-. r | % 8a
  \tag #'dash {\slurDashed c8.(16) 8 8 4 8(8) \slurSolid |} % 8b
  \tag #'v1   {            c8. 16  8 8 4 4               |}
  \tag #'v2   {            c4      8 8 4 8 8             |}
  \tag #'dash {\slurDashed c8.(16) \slurSolid 8 8 b2 |}
  \tag #'v1   {            c8. 16             8 8 b2 |}
  \tag #'v2   {            c4                 8 8 b2 |}
  c8-. r g-. r c-. r g-. r |
  f8-. r a-. r c-. r a-. r | % 8c
  \tag #'dash {b8. c16 d8 c d c \slurDashed b(a) \slurSolid |}
  \tag #'v1   {b8. c16 d8 c d c             b(a)            |}
  \tag #'v2   {b8. c16 d8 c d c             b a             |}
  \tag #'dash {g4 \slurDashed a8.(16) \slurSolid g2 \section |}
  \tag #'v1   {g4             a4                 g2 \section |}
  \tag #'v2   {g4             a8. 16             g2 \section |}
  d'8 r d8. 16 b4 d | c8 r e r c2 | c1^\markup Div. | % 9a
  c2 <<{\vo d4.} \new Voice {\vt c4(b8)}>> \ov <b d>8 | c8. 16 8. d16 c4 8. 16 | 8. 16 8. 16 4 4 |
  b8.-> a16 g8 a b c b a | g4 a8. 16 g2\fermata \section |
  \tag #'dash {e8. 16 8 d \slurDashed c8.(16) e8(g) \slurSolid |} % 10a
  \tag #'v1   {e8. 16 8 d             c8. 16  e8 g             |}
  \tag #'v2   {e8. 16 8 d             c4      e8(g)            |}
  \tag #'dash {\slurDashed c8.(16) \slurSolid 8. b16 a2 |}
  \tag #'v1   {            c4                 8. b16 a2 |}
  \tag #'v2   {            c8. 16             8. b16 a2 |}
  \tag #'dash {g4  8. a16 g4 \slurDashed e8(c) \slurSolid |}
  \tag #'v1   {g'4 8. a16 g4             e8 c             |}
  \tag #'v2   {g'4 8. a16 g4             e8(c)            |}
  \tag #'dash {\slurDashed d8.(16) \slurSolid d8. e16 d4. 8 |} % 10b
  \tag #'v1   {            d4                 d8. e16 d4. 8 |} % 10b
  \tag #'v2   {            d8. 16             d8. e16 d4. 8 |} % 10b
  \tag #'dash {\slurDashed e8.(16) 8. d16 c4(e8) \slurSolid g8 |}
  \tag #'v1   {            e4      8. d16 c4 e8             g8 |}
  \tag #'v2   {            e8. 16  8. d16 c4(e8)            g8 |}
  \tag #'dash {c8. 16 8. b16 \slurDashed a4.(8) \slurSolid |}
  \tag #'v1   {c8. 16 8. b16             a4. 8             |}
  \tag #'v2   {c8. 16 8. b16             a2                |}
  \tag #'dash {d8  c b a \slurDashed g8(f) \slurSolid e8 d |} % 10c
  \tag #'v1   {d'8 c b a             g8 f             e8 d |} % 10c
  \tag #'v2   {d'8 c b a             g8(f)            e8 d |} % 10c
  c8.-> c'16-> 8-> 8-> 2-> |
}

tenorC = \relative {
   d'8-> r d8. 16 b4 d | c8 r e r c r r4 | 4 8. b16 a4 c8. 16 | 4 a8(c) 4(b8.) d,16 | % 11a
  e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 | b8.-> c16 d8 c d c b a |
  g4 a8. 16 g4. \tick c8 | d c b a g f e d | c4 a'8.-> 16-> g2\fermata |
%  \bar "|."
}

tenor = {
  \global \autoBeamOff
  \tenorA
  \repeat volta 2 {
    \keepWithTag #'dash \tenorB
  }
  \tenorC
}

tenorSingle = {
  \global \autoBeamOff
  \tenorA
  \keepWithTag #'v1 \tenorB
  \keepWithTag #'v2 \tenorB
  \tenorC
}

wordsTenorOne = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won't he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- 'ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it's tak -- en off clean.

  \set stanza = "3."
  The Co -- lo -- ni -- al ex -- per -- ience man, __
  he is there, of course,
  With his shin -- y leg -- gin's, just of his horse,
  Cast -- ing round his eyes like a real con -- nois -- seur,
  Whis -- tl -- ing the old time tune, “I'm the Per -- fect Lure”.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  Click, click, click, click, click, click, click, click,
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  Click, click, click, click, click, click, click, click,
  Here's what he's been wait -- ing for __
  “Tar here, Jack!”
  Click go the shears, boys, click, click, click,
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "5."
  Shear -- ing is all \nom o -- ver and we've \yesm all got our cheques,
  Roll up your swag, \nom we're all \yesm off on the tracks,
  The first pub we \nom come to \yesm it's there we'll have a \nom spree,
  And \yesm ev -- 'ry -- one that \nom comes a -- \yesm long it's “Come and drink with me!”

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsTenorTwo = \lyricmode {
  \repeat unfold 272 _
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Click, click, click, click, click, click, click, click,
  Glo -- ry he'll get down on \nom it, ere he stirs a peg. \yesm
  \repeat unfold 37 _
  \set stanza = "7."
  There we leave him stand -- ing __ \nom ‘shout -- ing’ \yesm for all hands,
  Whilst all a -- round him, \nom ev -- 'ry \yesm shoot -- er stands,
  His \nom eyes are \yesm on the cask, __ which now is low'r -- ing fast, __
  He works hard, he drinks hard and goes to hell at last.
}

wordsTenorSingle = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won't he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- 'ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it's tak -- en off clean.

  \set stanza = "3."
  The Co -- lo -- ni -- al ex -- per -- ience man, __
  he is there, of course,
  With his shin -- y leg -- gin's, just of his horse,
  Cast -- ing round his eyes like a real con -- nois -- seur,
  Whis -- tl -- ing the old time tune, “I'm the Per -- fect Lure”.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  Click, click, click, click, click, click, click, click,
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  Click, click, click, click, click, click, click, click,
  Here's what he's been wait -- ing for __
  “Tar here, Jack!”
  Click go the shears, boys, click, click, click,
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "5."
  Shear -- ing is all \nom o -- ver and we've \yesm all got our cheques,
  Roll up your swag, \nom we're all \yesm off on the tracks,
  The first pub we \nom come to \yesm it's there we'll have a \nom spree,
  And \yesm ev -- 'ry -- one that \nom comes a -- \yesm long it's “Come and drink with me!”

  Click, click, click, click, click, click, click, click,
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Click, click, click, click, click, click, click, click,
  Glo -- ry he'll get down on \nom it, ere he stirs a peg. \yesm
  Click go the shears boys, click, click, click.
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __
  
  \set stanza = "7."
  There we leave him stand -- ing __ \nom ‘shout -- ing’ \yesm for all hands,
  Whilst all a -- round him, \nom ev -- 'ry \yesm shoot -- er stands,
  His \nom eyes are \yesm on the cask, __ which now is low'r -- ing fast, __
  He works hard, he drinks hard and goes to hell at last.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsTenorMidi = \lyricmode {
  "Click " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "1."
  "\nOut " "on " "the " "board " "the " "old " shear "er " "stands, "
  "\nGrasp" "ing " "his " "shears " "in " "his " "thin " bon "y " "hands, "
  "\nFixed " "is " "his " "gaze " "on " "a " blue bel "lied " "Joe, "
  "\nGlo" "ry " "if " "he " "gets " "her, " "won't " "he " "make " "the " ring "er " "go. " 
  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "2."
  "\nIn " "the " mid "dle " "of " "the " "floor " "in " "his " cane bot "tomed " "chair "
  "\nis " "the " "boss " "of " "the " "board, " "with " "eyes " ev 'ry "where; "
  "\nNotes " "well " "each " "fleece " "as " "it " "comes " "to " "the " "screen, "
  "\nPay" "ing " "strict " at ten "tion " "if " "it's " tak "en " "off " "clean. "

  \set stanza = "3."
  "\nThe " Co lo ni "al " ex per "ience " "man, " 
  "\nhe " "is " "there, " "of " "course, "
  "\nWith " "his " shin "y " leg "gin's, " "just " "of " "his " "horse, "
  "\nCast" "ing " "round " "his " "eyes " "like " "a " "real " con nois "seur, "
  "\nWhis" tl "ing " "the " "old " "time " "tune, " "“I'm " "the " Per "fect " "Lure”. "

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nHere's " "what " "he's " "been " wait "ing " "for " 
  "\n“Tar " "here, " "Jack!” "
  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click, "
  "\nHum "  "" ""
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "5."
  "\nShear" "ing " "is " "all " \nom o "ver " "and " "we've " \yesm "all " "got " "our " "cheques, "
  "\nRoll " "up " "your " "swag, " \nom "we're " "all " \yesm "off " "on " "the " "tracks, "
  "\nThe " "first " "pub " "we " \nom "come " "to " \yesm "it's " "there " "we'll " "have " "a " \nom "spree, "
  "\nAnd " \yesm ev 'ry "one " "that " \nom "comes " a \yesm "long " "it's " "“Come " "and " "drink " "with " "me!” "

  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nGrasp" "ing " "his " "glass " \nom "in " "his " \yesm "thin "  bon "y " "hands, "
  "\nClick, " "click, " "click, " "click, " "click, " "click, " "click, " "click, "
  "\nGlo" "ry " "he'll " "get " "down " "on " \nom "it, " "ere " "he " "stirs " "a " "peg. " \yesm
  "\nClick " "go " "the " "shears " "boys, " "click, " "click, " "click. "
  "\nHum "  "" ""
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 
  
  \set stanza = "7."
  "\nThere " "we " "leave " "him " stand "ing "  \nom ‘shout "ing’ " \yesm "for " "all " "hands, "
  "\nWhilst " "all " a "round " "him, " \nom ev "'ry " \yesm shoot "er " "stands, "
  "\nHis " \nom "eyes " "are " \yesm "on " "the " "cask, "  "which " "now " "is " low'r "ing " "fast, " 
  "\nHe " "works " "hard, " "he " "drinks " "hard " "and " "goes " "to " "hell " "at " "last. "

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe, "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\f | s1*5 |
  s1*4 | s1\mf | s | s | s | s\mp | s | % 3
  s1\mf | s4\< s\! s4.\fp\< s8\! | s1\mp | s | s\mf | s | s8. s16\cresc s2. | s1 | s\f | s2. s4\mf | % 4
  s1*9 | s2. s4\mf |
  s1*8 | % 6
  s1\mp | s | s | s | s\cresc | s | s\f | s | s | s2.. s8\mf |
  \repeat volta 2 {
    s1\mf | s | s\f | s | s\mf | s | s\f | s | % 8
    s1\mf | s | s\mp | s | s\cresc | s | s\f | s\omit\dim |
    s1\f | s1*7 |
  }
  s1\f | s | s\mp | s | s\cresc | s | s\f | s2 s4.\>-\markup\italic ten. s8\f | s1 | s |
}

bassA = \relative {
  R1 | R \section |
  g8-. r g8. 16 g,4-- g'-- | c,-. c-. c-. r | f4 8. 16 4 8. 16 |
  c4 e8(a) g4~8. 16 | c,8. 16 8. f16 e4 c8. e16 | f8. 16 8. g16 a4 d, |
  g,8. a16 b8 c d a' g f | e4-> f8.-- 16-. c4->~8-. r \section | R1 | % 2a
  R1 | e4 8. d16 c4. g'8 | c4 8. b16 a2 | g4 8. a16 g4 e8. c16 |
  d4 8. e16 d2 | e4 8. d16 c4 e8. g16 | c4 8. b16 a2 |
  d8.-- c16 b8 a g f e d | c c' c8.-> 16-. 4->~8-. r | g8-. r g8. 16 g,4-- g'-- | % 4a
  c,8-. r c-. r c-. r r4 | f4 8. 16 4 8. 16 | c4 e8(a) g4~8. 16 | c,8. 16 8. f16 e4 c8. e16 |
  f8. 16 8. g16 a4 d, | g,8.-> a16 b8 c d a' g f | e4 d8. 16 c4\fermata \caesura 8. d16 |
  e8. 16 c8. d16 e4 c8. e16 | f4 8. g16 a4 f8. 16 | c4 e8. f16 g4 a | % 5a
  fis4 8. 16 g2 | c,4 8. d16 e4 c8. e16 | f4 8. g16 a2 |
  g8. a16 g8 a b a g f | e4 f8. 16 c2 \section | R1 | r2 r4 c8. d16 |
  e8. 16 8. d16 c8 8 e(g) | c8. 16 8 b a2 | % 6a
  g8. 16 8 a g4 e8(c) | d4 8. e16 d2 | e8. 16 8 d c4 e8 g |
  e4 8. g16 f2 | <g, f'>8.^\markup Div. <a f'>16 <b f'>8 <c f> <d f> f e(d) | c8. 16 <f, f'>8 8 <c' e>2 \section |
  <g g'>8-. r g'8. 16 g,4-- g'-- | c,-. c-. c-. r | f4 8. 16 4 8. 16 | c4 e8(a) g4~8. 16 | % 7a
  c,8. 16 8. f16 e4 c8. e16 | f8. 16 8. g16 a4 d, | g,8.-> a16 b8 c d a' g f |
  e4-> f8.-- 16-. c4->~8-. r \section | R1 | r2 r4 r8 c8 \section |
}

bassB = \relative {
  \tag #'dash {e4 8. d16 \slurDashed c4(e8.) \slurSolid g16 |} % 8a
  \tag #'v1   {e4 8. d16             c4 e8.             g16 |} % 8a
  \tag #'v2   {e4 8. d16             c4(e8.)            g16 |} % 8a
  \tag #'dash {\slurDashed c8.(16) \slurSolid 8. b16 a2 |}
  \tag #'v1   {            c8. 16             8. b16 a2 |}
  \tag #'v2   {            c8.(16)            8. b16 a2 |}
  \tag #'dash {\slurDashed g8. (16) 8 a g4 e8(c) \slurSolid |} % 8b
  \tag #'v1   {            g'8. 16  8 a g4 e8(c)            |} % 8b
  \tag #'v2   {            g'4      8 a g4 e8 c             |} % 8b
  \tag #'dash {\slurDashed d8.(16) \slurSolid 8. e16 d2 |}
  \tag #'v1   {            d8. 16             8. e16 d2 |}
  \tag #'v2   {            d4                 8. e16 d2 |}
  e4 8. d16 c4 e8. g16 |
  \tag #'dash {\slurDashed c8.(16) \slurSolid 8. b16 a2 |} % 8c
  \tag #'v1   {            c8. 16             8. b16 a2 |}
  \tag #'v2   {            c4                 8. b16 a2 |}
  \tag #'dash {g8. a16 g8 a b a \slurDashed g(f) \slurSolid |}
  \tag #'v1   {g8. a16 g8 a b a             g(f)            |}
  \tag #'v2   {g8. a16 g8 a b a             g f             |}
  \tag #'dash {e4 \slurDashed f8.(16) \slurSolid c2 \section |}
  \tag #'v1   {e4             f4                 c2 \section |}
  \tag #'v2   {e4             f8. 16             c2 \section |}
  d8 r d8. 16 b4 d | c8 r e r c2 | <f a>1^\markup Div. | % 9a
  <e g>4(<a, e'>) <g f'>4. 8 | c8. 16 8. f16 e4 c8. e16 | f8. 16 8. g16 a4 d, |
  g,8.-> a16 b8 c d a' g f | e4 f8. 16 c2\fermata \section |
  \tag #'dash {e8. 16 8 d \slurDashed c8.(16) e8(g) \slurSolid |} % 10a
  \tag #'v1   {e8. 16 8 d             c8. 16  e8 g             |} % 10a
  \tag #'v2   {e8. 16 8 d             c4      e8(g)            |} % 10a
  \tag #'dash {\slurDashed c8.(16) \slurSolid 8. b16 a2 |}
  \tag #'v1   {            c4                 8. b16 a2 |}
  \tag #'v2   {            c8. 16             8. b16 a2 |}
  \tag #'dash {g4  8. a16 g4 \slurDashed e8(c) \slurSolid |}
  \tag #'v1   {g'4 8. a16 g4             e8 c             |}
  \tag #'v2   {g'4 8. a16 g4             e8(c)            |}
  \tag #'dash {\slurDashed d8.(16) \slurSolid 8. e16 d4. 8 |} % 10b
  \tag #'v1   {            d4                 8. e16 d4. 8 |} % 10b
  \tag #'v2   {            d8. 16             8. e16 d4. 8 |} % 10b
  \tag #'dash {\slurDashed e8.(16) 8. d16 c4(e8) \slurSolid g8 |}
  \tag #'v1   {            e4      8. d16 c4 e8             g8 |}
  \tag #'v2   {            e8. 16  8. d16 c4(e8)            g8 |}
  \tag #'dash {c8. 16 8. b16 \slurDashed a4.(8) \slurSolid |}
  \tag #'v1   {c8. 16 8. b16             a4. 8             |}
  \tag #'v2   {c8. 16 8. b16             a2                |}
  \tag #'dash {d8  c b a \slurDashed g(f) \slurSolid e d |} % 10c
  \tag #'v1   {d'8 c b a             g f             e d |} % 10c
  \tag #'v2   {d'8 c b a             g(f)            e d |} % 10c
  c8. c'16-> 8-> 8-> 2-> |
}

bassC = \relative {
  d8-> r d8. 16 b4 d | c8 r e r c r r4 | f4 8. 16 4 8. 16 | c4 e8(a) g4~8. d16 | % 11a
  e8. 16 8. d16 c4 e8. g16 | c8. 16 8. b16 a4 4 | g8.-> a16 g8 a b a g f |
  e4 f8. 16 c4. \tick c'8 | d c b a g f e d | c4 f8.-> 16-> c2->\fermata |
%  \bar "|."
}

bass = {
  \global \autoBeamOff
  \bassA
  \repeat volta 2 {
    \keepWithTag #'dash \bassB
  }
  \bassC
}

bassSingle = {
  \global \autoBeamOff
  \bassA
  \keepWithTag #'v1 \bassB
  \keepWithTag #'v2 \bassB
  \bassC
}

wordsBassOne = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won't he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- 'ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it's tak -- en off clean.

  \set stanza = "3."
  The Co -- lo -- ni -- al ex -- per -- ience man, __
  he is there, of course,
  With his shin -- y leg -- gin's, just of his horse,
  Cast -- ing round his eyes like a real con -- nois -- seur,
  Whis -- tl -- ing the old time tune, “I'm the Per -- fect Lure”.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "4."
  The tar boy is \nom there and a -- wait -- ing \yesm in de -- mand,
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  Sees one old sheep with a \nom cut up -- on \yesm his back,
  Here's what he's been wait -- ing for __
  “Tar here, Jack!”
  Click go the shears, boys, click, click, click,
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "5."
  Shear -- ing is all \nom o -- ver and we've \yesm all got our cheques,
  Roll up your swag, \nom we're all \yesm off on the tracks,
  The first pub we \nom come to \yesm it's there we'll have a \nom spree,
  And \yesm ev -- 'ry -- one that \nom comes a -- \yesm long it's “Come and drink with me!”

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsBassTwo = \lyricmode {
  \repeat unfold 265 _
  Down by the bar __ the old __ shear -- er stands,
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Fixed is his gaze on a green paint -- ed keg,
  Glo -- ry he'll get down on \nom it, ere he stirs a peg. \yesm
  \repeat unfold 37 _
  \set stanza = "7."
  There we leave him stand -- ing __ \nom ‘shout -- ing’ \yesm for all hands,
  Whilst all a -- round him, \nom ev -- 'ry \yesm shoot -- er stands,
  His \nom eyes are \yesm on the cask, __ which now is low'r -- ing fast, __
  He works hard, he drinks hard and goes to hell at last.
}

wordsBassSingle = \lyricmode {
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "1."
  Out on the board the old shear -- er stands,
  Grasp -- ing his shears in his thin bon -- y hands,
  Fixed is his gaze on a blue -- bel -- lied Joe,
  Glo -- ry if he gets her, won't he make the ring -- er go. __
  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "2."
  In the mid -- dle of the floor in his cane -- bot -- tomed chair
  is the boss of the board, with eyes ev -- 'ry -- where;
  Notes well each fleece as it comes to the screen,
  Pay -- ing strict at -- ten -- tion if it's tak -- en off clean.

  \set stanza = "3."
  The Co -- lo -- ni -- al ex -- per -- ience man, __
  he is there, of course,
  With his shin -- y leg -- gin's, just of his horse,
  Cast -- ing round his eyes like a real con -- nois -- seur,
  Whis -- tl -- ing the old time tune, “I'm the Per -- fect Lure”.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "4."
  The tar boy is \nom there and a -- wait -- ing \yesm in de -- mand,
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  Sees one old sheep with a \nom cut up -- on \yesm his back,
  Here's what he's been wait -- ing for __
  “Tar here, Jack!”
  Click go the shears, boys, click, click, click,
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "5."
  Shear -- ing is all \nom o -- ver and we've \yesm all got our cheques,
  Roll up your swag, \nom we're all \yesm off on the tracks,
  The first pub we \nom come to \yesm it's there we'll have a \nom spree,
  And \yesm ev -- 'ry -- one that \nom comes a -- \yesm long it's “Come and drink with me!”

  \set stanza = "6."
  Down by the bar __ the old __ shear -- er stands,
  Grasp -- ing his glass \nom in his \yesm thin __ bon -- y hands,
  Fixed is his gaze on a green paint -- ed keg,
  Glo -- ry he'll get down on \nom it, ere he stirs a peg. \yesm

  Click go the shears, boys, click, click, click,
  Hum __ _ _
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe. __

  \set stanza = "7."
  There we leave him stand -- ing __ \nom ‘shout -- ing’ \yesm for all hands,
  Whilst all a -- round him, \nom ev -- 'ry \yesm shoot -- er stands,
  His \nom eyes are \yesm on the cask, __ which now is low'r -- ing fast, __
  He works hard, he drinks hard and goes to hell at last.

  Click go the shears, boys, click, click, click!
  Wide is his blow and his hands move quick;
  The ring -- er looks a -- round and is beat -- en by a blow
  And curs -- es the old snag -- ger with the blue bel -- lied Joe,
  And curs -- es the old snag -- ger with the blue bel -- lied Joe.
}

wordsBassMidi = \lyricmode {
  "Click " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "1."
  "\nOut " "on " "the " "board " "the " "old " shear "er " "stands, "
  "\nGrasp" "ing " "his " "shears " "in " "his " "thin " bon "y " "hands, "
  "\nFixed " "is " "his " "gaze " "on " "a " blue bel "lied " "Joe, "
  "\nGlo" "ry " "if " "he " "gets " "her, " "won't " "he " "make " "the " ring "er " "go. " 
  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "2."
  "\nIn " "the " mid "dle " "of " "the " "floor " "in " "his " cane bot "tomed " "chair "
  "\nis " "the " "boss " "of " "the " "board, " "with " "eyes " ev 'ry "where; "
  "\nNotes " "well " "each " "fleece " "as " "it " "comes " "to " "the " "screen, "
  "\nPay" "ing " "strict " at ten "tion " "if " "it's " tak "en " "off " "clean. "

  \set stanza = "3."
  "\nThe " Co lo ni "al " ex per "ience " "man, " 
  "\nhe " "is " "there, " "of " "course, "
  "\nWith " "his " shin "y " leg "gin's, " "just " "of " "his " "horse, "
  "\nCast" "ing " "round " "his " "eyes " "like " "a " "real " con nois "seur, "
  "\nWhis" tl "ing " "the " "old " "time " "tune, " "“I'm " "the " Per "fect " "Lure”. "

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "4."
  "\nThe " "tar " "boy " "is " \nom "there " "and " a wait "ing " \yesm "in " de "mand, "
  \nom With his \yesm black -- en'd tar -- pot __ \nom and his \yesm tar -- ry hand,
  "\nSees " "one " "old " "sheep " "with " "a " \nom "cut " up "on " \yesm "his " "back, "
  "\nHere's " "what " "he's " "been " wait "ing " "for " 
  "\n“Tar " "here, " "Jack!” "
  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click, "
  "\nHum "  "" ""
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "5."
  "\nShear" "ing " "is " "all " \nom o "ver " "and " "we've " \yesm "all " "got " "our " "cheques, "
  "\nRoll " "up " "your " "swag, " \nom "we're " "all " \yesm "off " "on " "the " "tracks, "
  "\nThe " "first " "pub " "we " \nom "come " "to " \yesm "it's " "there " "we'll " "have " "a " \nom "spree, "
  "\nAnd " \yesm ev 'ry "one " "that " \nom "comes " a \yesm "long " "it's " "“Come " "and " "drink " "with " "me!” "

  \set stanza = "6."
  "\nDown " "by " "the " "bar "  "the " "old "  shear "er " "stands, "
  "\nGrasp" "ing " "his " "glass " \nom "in " "his " \yesm "thin "  bon "y " "hands, "
  "\nFixed " "is " "his " "gaze " "on " "a " "green " paint "ed " "keg, "
  "\nGlo" "ry " "he'll " "get " "down " "on " \nom "it, " "ere " "he " "stirs " "a " "peg. " \yesm

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click, "
  "\nHum "  "" ""
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. " 

  \set stanza = "7."
  "\nThere " "we " "leave " "him " stand "ing "  \nom ‘shout "ing’ " \yesm "for " "all " "hands, "
  "\nWhilst " "all " a "round " "him, " \nom ev "'ry " \yesm shoot "er " "stands, "
  "\nHis " \nom "eyes " "are " \yesm "on " "the " "cask, "  "which " "now " "is " low'r "ing " "fast, " 
  "\nHe " "works " "hard, " "he " "drinks " "hard " "and " "goes " "to " "hell " "at " "last. "

  "\nClick " "go " "the " "shears, " "boys, " "click, " "click, " "click! "
  "\nWide " "is " "his " "blow " "and " "his " "hands " "move " "quick; "
  "\nThe " ring "er " "looks " a "round " "and " "is " beat "en " "by " "a " "blow "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe, "
  "\nAnd " curs "es " "the " "old " snag "ger " "with " "the " "blue " bel "lied " "Joe. "
}

pianoRHone = \relative {
  \global \ov
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4 <c f a c>-> <c e g c>4->~8-. r \section |
  <f b d>2 <d f b>4 <f b d> | % 2b
  <e g c>4 <e g e'> <e g c>2 |
  <c f a>2 <c f c'>4 <c f a> |
  <c e g>4 <c e c'> \vo d2 | % 2c
  \ov <g, c e>4--~8-. r <g c g'>4--~8-. r |
  <c f a>4--~8-. r <c f c'>4--~8-. r |
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) | % 3a
  <g c>4-> <c f a c>-> <c e g c>-> ~8-. r \section |
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4 <c f a c>-> <c e g c>-> ~8 r | % 3b
  r4 <g c e> r <g c g'> |
  r4 <c f a> r <c f c'> |
  r4 <g c e> r <a c e> |
  r4 <a c d fis> r <b d f g> | % 3c
  r4 <g c e> r <a c g'> |
  r4 <c f a> r q |
  r4 <b d f g> r q | % 4a
  r4 <c f a c>-> <c e g c>-> ~8-. r |
  <f b d>8-. r r4 <d f b>8-. r <f b d>-. r |
  <e g c>8-. r <e g e'>-. r <e g c>-. r r4 | % 4b
  <c f a>2 \vo c'4(a) |
  g4(c) d,2 |
  \ov <g, c e>4-- ~8-. r <g c g'>4--  ~8-. r |
  <c f a>4-- ~8-. r <c f c'>4-- ~8-. r | % 4c
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4-> <c f a c>-> <c e g c>\fermata \caesura r4 |
  \repeat unfold 3 {r4 s2.} | % 5a
  r4 s b'4\rest s | r4 s2. | r4 s2. |
  r4 s2. | % 5c
  <e,, g c>4 <c' f a c> <c e g c>2 \section |
  <d' d'>8 <c c'> <b b'> <a a'> <d g> <c f> <b e> <a d> |
  <g c>4 <c, a'> <c e g>2 |
  r8. g16([<c e>8. g16]) r8. g16([<c g'>8. g16]) | % 6a
  r8. c16([<f a>8. c16]) r8. c16([<f c'>8. c16]) |
  r8. g16([<c e>8. g16]) r8. g16([<c g'>8. g16]) | % 6b
  r8. fis16([<c' d fis>8. fis,16]) r8. g16([<b f' g>8. g16]) |
  r8. g16([<c e>8. g16]) r8. g16([<c g'>8. g16]) |
  r8. c16([<f a>8. c16]) r8. c16([<f c'>8. c16]) | % 6c
  r8. g16([<b f' g>8. g16]) r8. g16([q8. g16]) |
  r8. g16([<a c>8. f16]) <e g c>2 \section |
  <f' b d>2 <d f b>4 <f b d> | % 7a
  <e g c>4 <e g e'> <e g c>2 |
  <c f a>2 <c f c'>4 <c f a> |
  <c e g>4 <c e c'> \vo d2 \ov |
  <g, c e>4-- ~8-. r <g c g'>4-- ~8-. r | % 7b
  <c f a>4-- ~8-. r <c f c'>4-- ~8-. r |
  <b'd>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4-> <c f a c>-> <c e g c>-> ~8-. r \section | % 7c
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4-- <c f a c>-- <c e g c>-- ~8-. r \section |
  \repeat volta 2 {
    \ottava #1
    <g'' c e>8-. r <e g c>-. r <g c e>-. r <e g c>-. r | % 8a
    <c f a>8-. r <f a c>-. r <a c f>-. r <f a c>-. r | \ottava #0
    <g, c e>2 <c, e g>4 <c g' c> | % 8b
    <d fis a d>2 <b d g> |
    \ottava #1 <g'' c e>8-. r <e g c>-. r <g c e>-. r <e g c>-. r |
    <c f a>8-. r <f a c>-. r <a c f>-. r <f a c>-. r \ottava #0 | % 8c
    r4^\markup\italic loco s2. |
    <e,, g c>4 <c' f a c> <c e g c>2 \section |
    <f b d>2 <d f b>4 <f b d> | % 9a
    <e g c> <e g e'> <e g c>2 |
    <c f a>2 \vo c'4(a) |
    g4(c) d,2 | % 9b
    \ov <g, c e>4-- ~8-. r <g c g'>4-- ~8-. r |
    <c f a>4-- ~8-. r <c f c'>4-- ~8-. r |
    <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) | % 9c
    <g c>4 <c f a c> <c e g c>2\fermata \section |
    <g c e>2 <g c g'> | <c f a> <c f c'> | <g e' g> <a c e> | % 10a
    <b c d fis>2 <g b d f> | <g c e> <g c g'> | <c f a> <c f c'> |
    <d' d'>8 <c c'> <b b'> <a a'> <d g> <c f> < b e> <a d> | % 10c
    <g c>4 <c f a c>-> <c e g c>2-> |
  }
  <d, d'>8 r q8. 16 <b b'>4 <d d'> | % 11a
  <c c'>8-. r <e e'>-. r <c c'>-. r r4 |
  <c f a>2 \vo c'4(a) |
  g4(c) d,2 | \ov
  <g, c e>8 r r4 <g c g'>2 | % 11b
  <c f a>8 r r4 <c f c'>2 |
  <b' d>8.(<a c>16 <g b>8 <f a> g <c, f> <b e> <a d>) |
  <g c>4 <c f a c> <c e g c>4.^\markup\italic "ten." \tick r8 | % 11c
  <d' d'>8 <c c'> <b b'> <a a'> <d g> <c f> <b e> <a d> |
  <g c>4-> <c f a c>-> <c e g c>2->\fermata |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*5 |
  s2 c'4(b) | s1 | s | % 2c
  s1*10 | % 3
  s1*3 | % 4a
  s1 | s2 <c f>2 | <c e> c4(b) | s1 |
  s1*3 |
  \change Staff = pianolh \vo c,,8^([g'] \change Staff = pianorh e' c' e g c[g]) | % 5a
  \change Staff = pianolh c,,,8^([a'] \change Staff = pianorh f' c' f a c[a]) |
  \change Staff = pianolh c,,,8^([g'] \change Staff = pianorh e' c' e g c[e,]) |
  \change Staff = pianolh fis,,8([d'] \change Staff = pianorh c'd) \change Staff = pianolh g,,(f' \change Staff = pianorh b[d]) | % 5b
  \change Staff = pianolh c,,8([g'] \change Staff = pianorh e' c' e g c[g]) |
  \change Staff = pianolh c,,,8([a'] \change Staff = pianorh f' c' f a c[a]) |
  \change Staff = pianolh g,,8([d'] \change Staff = pianorh b' c d <a c f> <g b e> <f a d>) | % 5c
  s1 \section | s | s |
  s1*8 \section | % 6
  s1*3 | \vt s2 c'4(b) | s1*4 \section | s1*2 \section |
  \repeat volta 2 {
    s1*5 | % 8a
    s1 | % 8c
    \change Staff = pianolh \vo g,8([d'] \change Staff = pianorh b' c d [ <a c f> ] <g b e> <f a d>) |
    s1 \section |
    s1*2 | s2 \vt <c' f> | <c e> c4(b) | s1*4 | % 9
    s1*8 |
  }
  s1*2 | s2 <c f> | <c e> c4(b) | s1*6 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*7 |
  s1*4 | s1\mf | s1*3 | s1\mp | s | % 3
  s1 | s | s\mp | s | s\mf | s1*5 |
  s1*8 | s1\f | s2 s\> | % 5
  s1\mf | s1*7 |
  s1\mp | s1*7 | s1\mf | s | % 7
  \repeat volta 2 {
    s1\mp | s | s\f | s | s\mp | s | s\f | s |
    s1\mp | s | s\mp | s1*3 | s1\f | s | % 9
    s1\f | s1*7 |
  }
  s1\f | s | s\mp | s | s\cresc | s | s\f | s2 s4.\>-\markup\italic "ten." s8\omit\f | s1*2 | |
}

pianoLHone = \relative {
  \global \ov
  f2~8 a(g f) | \vo <c e>4 <f, f'>-> <c c'>->~8-. r \section |
  <g' g'>2 4 4 | % 2b
  <c g'>4 <e c'> <c c'> <g g'> |
  <f f'>2 <a a'>4 <f f'> |
  <e e'>4 <a e'> <g f'>2 | % 2c
  <c, c'>4-- ~8-. r <e e'>4-- ~8-. r |
  <f f'>4-- ~8-. r <a a'>4-- ~8-. r |
  \vo f'2~8 a(g f) | % 3a
  \ov <c e>4-> <f, f'>-> <c c'>4-> ~8-. r \section |
  \vo f'2~8 a(g f) |
  \ov <c e>4 <f, f'>-> <c c'>-> ~8 r | % 3b
  q4 r <e e'> r |
  <f f'>4 r <a a'> r |
  <c, c'>4 r <a a'> r |
  <d d'>4 r <g g'> r | % 3c
  <c, c'>4 r <e e'> r |
  <f f'>4 r <a a'> r |
  <g g'>4 r <b, b'> r | % 4a
  <c c'>2 4-> ~8-. r |
  <g' g'>8-. r r4 q8-. r q-. r |
  <c g'>8-. r <e c'>-. r <c c'>-. r r4 | % 4b
  <f, f'>2 <a a'>4(<f f'>) |
  \vo e'2 \ov <g, f'> |
  <c, c'>4-- ~8-. r <e e'>4-- ~8-. r |
  <f f'>4-- ~8-. r <a a'>4-- ~8-. r | % 4c
  \vo f'2~8 a(g f) |
  \ov <c e>4 <f, f'> <c c'>\fermata r |
  s8 \once \hide Stem g' ~2. | % 5a
  s8 \once \hide Stem a ~2. |
  s8 \once \hide Stem g ~2. |
  s8 \once \hide Stem d' ~4 s8 \once \hide Stem f ~4 | % 5b
  s8 \once \hide Stem g, ~2. |
  s8 \once \hide Stem a ~2. |
  s8 \once \hide Stem d ~2. | % 5c
  <c, c'>4 <f f'> <c c'>2 \section |
  r4 <d' d'>8 <c c'> <b b'> <a a'> <g g'> <f f'> |
  <e e'>4 <f f'> <c g' e'>2 |
  <c c'>4 r <e e'> r | <f f'> r <a a'> r | % 6a
  <c, c'>4 r <e e'> r | <d d'> r <g, g'> r | <c c'> r <e e'> r |
  <f f'>4 r <a a'> r | <g, g'> r <b b'> r | c' f, c'8. g16 c,4 \section |
  <g' g'>2 4 4 | <c g'> <e c'> <c c'> <g g'> | <f f'>2 <a a'>4 <f f'> | <e e'> <a e'> <g f'>2 | % 7a
  <c, c'>4-- ~8-. r <e e'>4-- ~8-. r | % 7b
  <f f'>4-- ~8-. r <a a'>4-- ~8-. r |
  \vo f'2~8 a(g f) \ov |
  <c e>4-> <f, f'>-> <c c'>-> ~8-. r \section | % 7c
  \vo f'2~8 a(g f) \ov |
  <c e>4-- <f, f'>-- <c c'>-- ~8-. r \section |
  \repeat volta 2 {
    <e e'>4 8. <d d'>16 <c c'>4 <e e'>8. <g g'>16 | % 8a
    <c c'>4 8. <b b'>16 <a a'>2 |
    <g g'>4 8 <a a'> <g g'>4 <e e'>8 <c c'> | % 8b
    <d d'>2 <g f'> |
    <e e'>4 8. <d d'>16 <c c'>4 <e e'>8. <g g'>16 |
    <c c'>4 8. <b b'>16 <a a'>2 | % 8c
    \vo s8 \once \hide Stem d8_~2. \ov |
    <c, c'>4 <f f'> <c' g'>2 \section |
    <g g'>2 4 4 | % 9a
    <c g'>4 <e c'> <c c'> <g g'>8 r |
    <f f'>2 <a a'>4(<f f'>) |
    \vo e'2 \ov <g, f'> | % 9b
    <c, c'>4-- ~8-. r <e e'>4-- ~8-. r |
    <f f'>4-- ~8-. r <a a'>4-- ~8-. r |
    \vo f'2~8 a(g f) \ov | % 9c
    <c e>4 <f, f'> <c c'>2\fermata \section |
    q2 <e e'> | <f f'> <a a'> | <c, c'> <a a'> | % 10a
    <d d'>2 <g, g'> | <c c'> <e e'> | <f f'> <a a'> |
    r4 <d d'>8 <c c'> <b b'> <a a'> <g g'> <f f'> | % 10c
    <e e'>4 <f f'>-> <c c'>2-> |
  }
  <d d'>8 r q8. 16 <b b'>4 <d d'> | % 11a
  <c c'>8-. r <e e'>-. r <c c'>-. r r4 |
  <f f'>2 <a a'>4(<f f'>) |
  \vo e'2 \ov <g, g'> |
  <c, c'>8 r r4 <e e'>2 | <f f'>8 r r4 <a a'>2 | \vo f'2~8 a(g f) | % 11b
  \ov <c e>4 <f, f'> <c c'>4. \tick r8 | % 11c
  r4 <d' d'>8 <c c'> <b b'> <a a'> <g g'> <f f'> |
  <e e'>4-> <f f'>-> <c g' e'>2->\fermata |
%  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  g,1 | s \section | s1*6 |
  g1 | s \section | g | s1*7 | % 3
  s1*5 | e4(a) s2 | s1 | s | g | s | % 4
  c,1 | c | c | f2 g | c,1 | c | g' | s \section | s | s |
  s1*8 | % 6
  s1*6 | g1 | s1 \section | g1 | s \section |
  \repeat volta 2 {
    s1*6 | g1 | s \section | % 8
    s1*3 | e4(a) s2 | s1*2 | g1 | s \section |
    s1*8 | % 10
  }
  s1*3 | e4(a) s2 | s1*2 | g1 | s1*3 |
  \bar "|."
}

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = repeat
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomen
            \addlyrics \wordsWomenTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomen
            \addlyrics \wordsWomenTwo
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
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
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
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
            \addlyrics \wordsWomenSingle
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
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
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
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
            \addlyrics \wordsWomenSingle
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
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
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
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsWomenSingle}
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
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    }
  }
}

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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
            \addlyrics \wordsWomenSingle
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
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsWomenSingle}
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
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsWomenSingle}
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
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
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
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = midi-women
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsWomenMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
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
