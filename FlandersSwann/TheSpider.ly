\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Spider"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo Menacingly 4=108
  s4
  \set Score.tempoHideNote = ##t
  s1*2 |
  \repeat volta 2 {
    \tempo 4=108
    s1*22 |
    \alternative {
      \volta 1 { s1 | s4 \tempo "rit." 4=100 s2. | s1 |}
      \volta 2 { \tempo 4=108 s1 |}
    }
  }
  s1*7 | \tempo "rit." 4=100 s2. \tempo Slower 4=90 s4 |
  s1 | s4 \tempo "a tempo" 4=108 s2. | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "190a" } s4 s1*2
  \repeat volta 2 {
    s1
    \textMark \markup { \box "191a" } s1*3
    \textMark \markup { \box "191b" } s1*3
    \textMark \markup { \box "191c" } s1*3
    \textMark \markup { \box "191d" } s1*3
    \textMark \markup { \box "192a" } s1*3
    \textMark \markup { \box "192b" } s1*3
    \textMark \markup { \box "192c" } s1*3
    \alternative {
      \volta 1 {
        \textMark \markup { \box "192d" } s1*3
      }
      \volta 2 {
        \textMark \markup { \box "193a" } s1
      }
    }
  }
  s1*2
  \textMark \markup { \box "193b" } s1*3
  \textMark \markup { \box "193c" } s1*3
  \textMark \markup { \box "193d" } s1*3
}

melodyA = \relative {
  r4 | R1 | r2 r4 g'8. 16
}

melodyB = \relative {
  \tag #'dash {c'8. ees16 <<{\vo g8. aes16} \new Voice {\vt \tiny g16 aes8.}>> \ov g4 8. 16 |}
  \tag #'v1   {c,8. ees16        g8. aes16                                         g4 8. 16 |}
  \tag #'v2   {c,8. ees16                                         g16 aes8.        g4 8. 16 |}
  c,8. ees16 g8. aes16 g4 8. 16 | % 191a
  \tag #'dash {<<{\vo c8 8 s4 g8. 16 c8. g16} \new Voice {\vt c16 16 8~8 8 \tiny g8 g c g}>> \ov |}
  \tag #'v1   {                                               c16 16 8~8 8       g8. 16 c8. g16  |}
  \tag #'v2   {       c8 8 8 8 g8 8 c8 g                                                         |}
  aes4 r r aes8. g16 |
  f8. aes16 c8. d16 c4 b8. c16 | % 191b
  \tag #'dash {<<{\vo \tiny d16  c8. \normalsize} \new Voice {\vt d8.  c16}>> \ov aes8. b16 g4 c,8. d16 |}
  \tag #'v1   {                                                   d'8. c16        aes8. b16 g4 c,8. d16 |}
  \tag #'v2   {             d'16 c8.                                              aes8. b16 g4 c,8. d16 |}
  \tag #'dash {ees8 8 <<{\vo f8. ees16} \new Voice {\vt \tiny ees8 8}>> \ov d8. f16 ees8. d16 |}
  \tag #'v1   {ees8 8                                         ees8 8        d8. f16 ees8. d16 |}
  \tag #'v2   {ees8 8        f8. ees16                                      d8. f16 ees8. d16 |}
  c4 r r2 | r2 r4 g'8. 16 | % 191c
  \tag #'dash {c,8. ees16 g8. aes16 g4 r8 <<{\vo g8} \new Voice {\vt \tiny g16[g]}>> \ov |}
  \tag #'v1   {c,8. ees16 g8. aes16 g4 r8        g8                                      |}
  \tag #'v2   {c,8. ees16 g8. aes16 g4 r8                                  g16[g]        |}
  \tag #'dash {c,8. ees16 g8. aes16 g4 <<{\vo r8 g} \new Voice {\vt \tiny g8 8}>> \ov |} % 191d
  \tag #'v1   {c,8. ees16 g8. aes16 g4        r8 g                                    |}
  \tag #'v2   {c,8. ees16 g8. aes16 g4                                    g8 8        |}
  \tag #'dash {c8. 16 <<{\vo \tiny c16 8. \normalsize} \new Voice {\vt c8. 16}>> \ov g16 8. c g16 |}
  \tag #'v1   {c8. 16                                                  c8. 16        g16 8. c g16 |}
  \tag #'v2   {c8. 16              c16 8.                                            g16 8. c g16 |}
  aes4 r r aes8. g16 |
  f8. aes16 c8 d c4 b8. c16 | % 192a
  \tag #'dash {d8  c aes b g4 <<{\vo c,8. d16} \new Voice {\vt \tiny r8 d}>> |}
  \tag #'v1   {d'8 c aes b g4        c,8. d16                                |}
  \tag #'v2   {d'8 c aes b g4                                        r8 d    |}
  \tag #'dash {ees8. 16 f8. ees16 <<{\vo d8. f16} \new Voice {\vt \tiny d16 f8.}>> \ov ees8. d16 |}
  \tag #'v1   {ees8. 16 f8. ees16        d8. f16                                       ees8. d16 |}
  \tag #'v2   {ees8. 16 f8. ees16                                       d16 f8.        ees8. d16 |}
  \tag #'dash {c4 r r <<{\vo c8 8} \new Voice {\vt \tiny r8 c}>> \ov | } % 192b
  \tag #'v1   {c4 r r        c8 8                                    | }
  \tag #'v2   {c4 r r                                    r8 c        | }
  b8 8 8. 16 8. 16 8. 16 |
  \tag #'dash {<<{\vo e4 s} \new Voice {\vt e8 \tiny b~ \normalsize b4}>> \ov r4 b8. 16 |}
  \tag #'v1   {       e4 b                                                    r4 b8. 16 |}
  \tag #'v2   {                             e8       b~             b4        r4 b8. 16 |}
  b8. 16 8. 16 8. 16 8. 16 | % 192c
  \tag #'dash {e4 r r <<{\vo e8. ees16} \new Voice {\vt \tiny r8 ees}>> \ov |}
  \tag #'v1   {e4 r r        e8. ees16                                      |}
  \tag #'v2   {e4 r r                                         r8 ees        |}
  d8. 16 8. 16 8. 16 8. 16 \section
}

melodyC = \relative {
  g'4 d r d8. ees16 | d4 c a b | g4 r r g'8. 16 |
}

melodyD = \relative {
  g'16 d8. r4 r2 | % 193a
}

melodyE = \relative {
  R1 | r2 r4 g'8. 16 |
  c,8. ees16 g8. aes16 g4 8. 16 | c,8. ees16 g8. aes16 g4 8. 16 | % 193b
  c8. 16 8. 16 g8. 16 c8. g16 |
  aes2 r4 aes8. g16 | f8. aes16 c8. d16 c4 b8. c16 | % 193c
  d8 c aes b g4 \breathe c,8 d |
  ees16 8. f ees16 d8. f16 ees8. d16 | c4 r r2 | R1 |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1 { \melodyC }
      \volta 2 { \melodyD }
    }
  }
  \melodyE \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \melodyE \bar "|."
}

alignerOne = {
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
}

alignerTwo = {
  \melodyA
  \keepWithTag #'v2 \melodyB s1*3 \melodyD
  \melodyE
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1 | s2. s4\mf
  \repeat volta 2 {
    s1*22
    \alternative {
      \volta 1 { s1*3 |}
      \volta 2 { s1 |}
    }
  }
  s1 s2. s4\ff | s1*9 |
}

spokenAligner = {
  s4 s1*2
  \repeat volta 2 {
    s1*22
    \alternative {
      \volta 1 { s1*3   }
      \volta 2 { s2. c4 }
    }
  }
  c1 | c | s1*9
}

wordsOne = \lyricmode {
  I have fought a griz -- zly bear,
  Tracked a co -- bra to its lair,
  Killed a cro -- co -- dile __ who dared to cross my path;
  But the thing I real -- ly dread
  When I've just got out of bed
  Is to find that there's a spi -- der in the bath.
  I've no fear of wasps or bees,
  Mos -- qui -- tos on -- ly tease,
  I ra -- ther like a cri -- cket on the hearth;
  But my blood runs cold to meet
  In py -- ja -- mas and bare feet
  With a great big hai -- ry spi -- der in the bath.
  I have faced a char -- ging bull in Bar -- ce -- lo -- na,
  I have dragged a moun -- tain lio -- ness from her cub,
  I've re -- stored a mad go -- ril -- la to its ow -- ner
  But I don't dare face that Tub…
  What a
}

wordsTwo = \lyricmode {
  _ _ fright -- ful- look -- ing beast—
  Half an inch a -- cross at least—
  It would frigh -- ten e -- ven Su -- per -- man or Garth.
  There's con -- tempt it can't dis -- guise
  In the lit -- tle bea -- dy eyes
  Of the spi -- der sit -- ting glower -- ing in the bath.
  It ig -- nores my ev -- ery lunge
  With the back -- brush and the sponge;
  I have bombed it with ‘A Pre -- sent from Pen -- arth’;
  But it does -- n't mind at all,
  It just rolls in -- to a ball
  And sim -- ply goes on squat -- ting in the bath.
  For hours we have been locked in end -- less strug -- gle;
  I have lured it to the deep end, by the drain;
  At last I think I've washed it down the plug- 'ole
%  spoken: But here it comes a-crawling up the chain!
  Now its time for me to shave
  Though my nerves will not be -- have,
  And there's bound to be a fear -- ful af -- ter -- math;
  So be -- fore I cut my throat
  I shall leave this fi -- nal note:
  DRI -- VEN TO IT BY THE SPI -- DER IN THE BATH!
}

wordsSingle = \lyricmode {
  I have fought a griz -- zly bear,
  Tracked a co -- bra to its lair,
  Killed a cro -- co -- dile __ who dared to cross my path;
  But the thing I real -- ly dread
  When I've just got out of bed
  Is to find that there's a spi -- der in the bath.
  I've no fear of wasps or bees,
  Mos -- qui -- tos on -- ly tease,
  I ra -- ther like a cri -- cket on the hearth;
  But my blood runs cold to meet
  In py -- ja -- mas and bare feet
  With a great big hai -- ry spi -- der in the bath.
  I have faced a char -- ging bull in Bar -- ce -- lo -- na,
  I have dragged a moun -- tain lio -- ness from her cub,
  I've re -- stored a mad go -- ril -- la to its ow -- ner
  But I don't dare face that Tub…

  \set stanza  = "2."
  What a fright -- ful- look -- ing beast—
  Half an inch a -- cross at least—
  It would frigh -- ten e -- ven Su -- per -- man or Garth.
  There's con -- tempt it can't dis -- guise
  In the lit -- tle bea -- dy eyes
  Of the spi -- der sit -- ting glower -- ing in the bath.
  It ig -- nores my ev -- ery lunge
  With the back -- brush and the sponge;
  I have bombed it with ‘A Pre -- sent from Pen -- arth’;
  But it does -- n't mind at all,
  It just rolls in -- to a ball
  And sim -- ply goes on squat -- ting in the bath.
  For hours we have been locked in end -- less strug -- gle;
  I have lured it to the deep end, by the drain;
  At last I think I've washed it down the plug- 'ole
%  spoken: But here it comes a-crawling up the chain!
  Now its time for me to shave
  Though my nerves will not be -- have,
  And there's bound to be a fear -- ful af -- ter -- math;
  So be -- fore I cut my throat
  I shall leave this fi -- nal note:
  DRI -- VEN TO IT BY THE SPI -- DER IN THE BATH!
}

spokenWords = \lyricmode {
  "\nSpoken: But " "here it comes a-crawling up the " chain!
}

midiWords = \lyricmode {
  "I " "have " "fought " "a " griz "zly " "bear, "
  "\nTracked " "a " co "bra " "to " "its " "lair, "
  "\nKilled " "a " cro co "dile "  "who " "dared " "to " "cross " "my " "path; "
  "\nBut " "the " "thing " "I " real "ly " "dread "
  "\nWhen " "I've " "just " "got " "out " "of " "bed "
  "\nIs " "to " "find " "that " "there's " "a " spi "der " "in " "the " "bath. "
  "\nI've " "no " "fear " "of " "wasps " "or " "bees, "
  "\nMos" qui "tos " on "ly " "tease, "
  "\nI " ra "ther " "like " "a " cri "cket " "on " "the " "hearth; "
  "\nBut " "my " "blood " "runs " "cold " "to " "meet "
  "\nIn " py ja "mas " "and " "bare " "feet "
  "\nWith " "a " "great " "big " hai "ry " spi "der " "in " "the " "bath. "
  "\nI " "have " "faced " "a " char "ging " "bull " "in " Bar ce lo "na, "
  "\nI " "have " "dragged " "a " moun "tain " lio "ness " "from " "her " "cub, "
  "\nI've " re "stored " "a " "mad " go ril "la " "to " "its " ow "ner "
  "\nBut " "I " "don't " "dare " "face " "that " "Tub…\n"

  "\nWhat " "a " fright ful look "ing " "beast— "
  "\nHalf " "an " "inch " a "cross " "at " "least— "
  "\nIt " "would " frigh "ten " e "ven " Su per "man " "or " "Garth. "
  "\nThere's " con "tempt " "it " "can't " dis "guise "
  "\nIn " "the " lit "tle " bea "dy " "eyes "
  "\nOf " "the " spi "der " sit "ting " glower "ing " "in " "the " "bath. "
  "\nIt " ig "nores " "my " ev "ery " "lunge "
  "\nWith " "the " back "brush " "and " "the " "sponge; "
  "\nI " "have " "bombed " "it " "with " "‘A " Pre "sent " "from " Pen "arth’; "
  "\nBut " "it " does "n't " "mind " "at " "all, "
  "\nIt " "just " "rolls " in "to " "a " "ball "
  "\nAnd " sim "ply " "goes " "on " squat "ting " "in " "the " "bath. "
  "\nFor " "hours " "we " "have " "been " "locked " "in " end "less " strug "gle; "
  "\nI " "have " "lured " "it " "to " "the " "deep " "end, " "by " "the " "drain; "
  "\nAt " "last " "I " "think " "I've " "washed " "it " "down " "the " plug "'ole "
%  spoken: But here it comes a-crawling up the chain!
  "\nSung: Now " "its " "time " "for " "me " "to " "shave "
  "\nThough " "my " "nerves " "will " "not " be "have, "
  "\nAnd " "there's " "bound " "to " "be " "a " fear "ful " af ter "math; "
  "\nSo " be "fore " "I " "cut " "my " "throat "
  "\nI " "shall " "leave " "this " fi "nal " "note: "
  "\nDRI" "VEN " "TO " "IT " "BY " "THE " SPI "DER " "IN " "THE " "BATH! "
}

pianoRHone = \relative {
  \global
  \tuplet 3/2 {g''8 fis aes} |
  g4 \tuplet 3/2 {8 fis aes} g4 \tuplet 3/2 {8 fis aes} |
  \tuplet 3/2 {g8 fis aes} \tuplet 3/2 {g8 fis aes} g4 <b,, g'>4 |
  \repeat volta 2 {
    \ss \lh <ees, c'>4 \hs \rh \ov <c' g'> <c f g> <b d g> |
    c4 <c g'> <c f aes> <b d g> % 191a
    \vo c'2. \ov <ees, bes'>4 |
    <c aes'>4 c'8 \tuplet 3/2 {c16(d e} f4) r |
    <c, f>2 <ees c'> | <d g b>4 \vo aes'8. b16 \ov <d, f g>4 r | % 191b
    <g, ees'>4 \vo f'8. ees16 d8. f16 ees8. d16 |
    \ov c4 \tuplet 3/2 {g''8 fis aes} g4 \tuplet 3/2 {8 f aes} | % 191c
    \tuplet 3/2 {g8 fis aes} \tuplet 3/2 {g fis aes} g4 r |
    \lh <ees,, c'>4 \rh <c' g'> <c f g> <b d g> |
    c4 <c g'> <c f g> <b d g> | \vo c'2. \ov <ees, bes'>4 | % 191d
    <c aes'>4 c'8 \tuplet 3/2 {c16(d e} f4) r |
    <c, f>2 <ees c'> | <d g b>4 \vo aes'8 b \ov <d, f g>4 r | % 192a
    <g, ees'>4 \vo f'8. ees16 d8. f16 ees8. d16 |
    \tuplet 3/2 {c4 8} \tuplet 3/2 {c ees g} c4 r | % 192b
    <a, b>2 <a b dis> | <g e'> r |
    <a b e>2 <a b dis> | <g e'>4 r r2 | <g c d>2 <fis c' d> \section | % 192c
    \alternative {
      \volta 1 { g'4 d r2 | d4 c aes b | g4 g'2\startTrillSpan <b, g'>4\stopTrillSpan } % 192d
      \volta 2 { g'16 d8. r4 r2 | } % 193a
    }
  }
  d'1\startTrillSpan | g1\startTrillSpan |
  c4\stopTrillSpan <g, c> <f g c> <f g b> | % 193b
  <c ees c'>4 <g c g'> <c f g c> <f g b> | <ees c'> <c f c'> <c g'> <c g' c> |
  <c f aes>4 \clef bass c, f,2 | r2 \clef treble <ees'' fis c'> | % 193c
  <d g d'>4 <ees aes>8 b' <d, g>4 \breathe c8 d |
  <c ees>16 ees8. \vo f8. ees16 d8. f16 \ov <b, ees>8. d16 | % 193d
  \lh <ees, fis c'>4 \rh \ov \tuplet 3/2 {c'''8 d b} \tuplet 3/2 {c d b} \tuplet 3/2 {c d b} |
  c4 <g, b d g> <c ees g c> r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4 | s1*2 |
  \repeat volta 2 {
    s1 |
    s1 | <c' e>4 <c f> <c g'> s | s1 | % 191a
    s1 | s4 <c fis> s2 | s4 <g c> aes b |
    s1*3 |
    s1 | <c e>4 <c f> <c g'> s | s1 |
    s1 | s4 <c fis> s2 | s1 | % 192a
    s1*3 |
    s1*3 |
    \alternative {
      \volta 1 { s1*3 | }
      \volta 2 { s1 | } % 193b
    }
  }
  s1*2 |
  s1*3 |
  s1*3 |
  s4 <g c> aes s | s1*2 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f | s1 | s2. s4\mf
  \repeat volta 2 {
    s1*22 |
    \alternative {
      \volta 1 { s1*3 |}
      \volta 2 { s1 |}
    }
  }
  s1\f\cresc | s1*8 |
  s1\omit\ff-\markup{\italic sempre \dynamic ff} | s4 s\sf s\sf s |
}

pianoLH = \relative {
  \global
  \tuplet 3/2 {r8 r aes'} |
  g4 \tuplet 3/2 {r8 r aes} g4 \tuplet 3/2 {r8 r aes} |
  \tuplet 3/2 {g4 aes8} \tuplet 3/2 {g4 aes8} g4 \clef bass <g,, f'> |
  \repeat volta 2 {
    \vt <c, c'> \ov <ees ees'> <d d'> <g f'> |
    <c ees>4 <ees g> <d, d'> <g f'> | % 191a
    c4 d e <c g'> |
    <f, f'>4 c''8 \tuplet 3/2 {c16(d e} f4) r |
    <a,,f'>2 <a fis'> | <g g'>4 <a fis'> <b g'> r | % 191b
    c4 <ees, c'> <f d'> <g f'> |
    c4 r \clef treble g'' \tuplet 3/2 {r8 r aes} | % 191c
    \tuplet 3/2 {g4 aes8} \tuplet 3/2 {g4 aes8} g4 r \clef bass |
    \vt <c,,, c'>4 \ov <ees ees'> <d d'> <g g'> |
    <c ees>4 <ees g> <d, d'> <g f'> | c d e <c g'> | % 191d
    <f, f'>4 c''8 \tuplet 3/2 {c16(d e} f4) r |
    <aes,, f'>2 <a fis'> | <g g'>4 <a fis'> <b g'> r | % 192a
    c4 <ees, c'> <f d'> <g f'> |
    c4 \tuplet 3/2 {c8 ees g} c4 r | fis,,2 b | % 192b
    e,8. b'16 8. 16 8. 16 8. 16 |
    <fis e'>2 b | <e, b'>8. \acciaccatura ais'8 b16 e,8. b'16 e,4 r | % 192c
    a2 d, \section |
    \alternative {
      \volta 1 {g4 d r2 | d4 c aes b | g f' <ees g> <d f> } % 192d
      \volta 2 { g16 d8. r4 r2 | } % 193a
    }
  }
  \clef treble d'4 ees f fis | g aes a b |
  c4 \clef bass <ees,, c'> <d c'> <g, g'> | % 193b
  c4 ees, <d d'> <g g'> | <c, c'> <d d'> <ees ees'> <e e'> |
  <g g'>4 \ottava #-1 c, f,2 \ottava #0 | % 193c
  r2 <a' a'> | <b g'>4 <c aes'> <b g'> r |
  <c g'>4 <ees, c'> <f d'> <g f'> | % 193d
  \vt <a, a'> \ov \clef treble \tuplet 3/2 {a'''8 b gis} \tuplet 3/2 {a b gis} \tuplet 3/2 {a b gis}
  a4 \clef bass <g,, g'> <c, c'> r |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new NullVoice \alignerOne
            \addlyrics \wordsOne
            \new NullVoice \alignerTwo
            \addlyrics \wordsTwo
            \new NullVoice \spokenAligner
            \addlyrics \spokenWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \melodySingle
            \addlyrics \midiWords
            \new NullVoice \spokenAligner
            \addlyrics \spokenWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
