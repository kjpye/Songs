\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cradle Song"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Flemish Traditional Carol"
  arranger    = "Arr. John Rutter"
%  opus        = "opus"

  poet        = "John Rutter"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Flowing and gentle" 4=120
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "178a" } s4 s2.*6
  \textMark \markup { \box "178b" }    s2.*7
  \textMark \markup { \box "178c" }    s2.*7
  \textMark \markup { \box "178d" }    s2.*6
  \textMark \markup { \box "179a" }    s2.*5 s2
  \textMark \markup { \box "179b" } s4 s2.*6
  \textMark \markup { \box "179c" }    s2.*7
  \textMark \markup { \box "179d" }    s2.*7
  \textMark \markup { \box "179e" }    s2.*6
  \textMark \markup { \box "180a" }    s2.*5 s2
  \textMark \markup { \box "180b" } s4 s2.*6
  \textMark \markup { \box "180c" }    s2.*7
  \textMark \markup { \box "181a" }    s2.*7
  \textMark \markup { \box "181b" }    s2.*6
  \textMark \markup { \box "181c" }    s2.*5 s2
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*63 | s2
  s4\omit\f-\markup{\dynamic f \italic dolce} | s2.*4 | s2.\mf | s | s2.*2 s2.\f | s2.*4 |
  s2.*3 | s2.\mf | s2.*3 | % 181a
  s2.*3 | s2.\dim | s\p | s |
  s2.*5 | s2
}

solo = \relative {
  \global
  r4 | R2.*63 | s2 \section \break
  d'4^\markup "Choir I (unis) or Solo" | g2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 | g2 a4 | % 180b
  b2 a4 | g2. | 2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 |
  g2 a4 | b2 a4 | g2. | 2 fis4 | e2 4 | fis2 g4 | a2 4 | % 181a
  g4(fis) g | e2 4 | fis2 g4 | a2 4 | g2 a4 | b2 4 |
  c4 b c | b2. | 2 a4 | g2 a4 | b2 a4 | g2\fermata
}

wordsSolo = \lyricmode {
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est hea -- ven;
  Peace, good -- will to men on earth.’
  Se -- ra -- phim on high __ in cho -- rus
  Greet the Sa -- viour's joy -- ful birth.
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the heav'n -- ly song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, O lit -- tle one sleep;
  An -- gels round you watch will keep.
}

wordsSoloMidi = \lyricmode {
  \set stanza = "3."
  "‘Ho" san "na " "in " "the " high "est " hea "ven; "
  "\nPeace, " good "will " "to " "men " "on " "earth.’ "
  "\nSe" ra "phim " "on " "high "  "in " cho "rus "
  "\nGreet " "the " Sa "viour's " joy "ful " "birth. "
  "\nMa" "ry's " "voice, " "in " des "cant " blend "ing, "
  "\nJoins "  "the " heav'n "ly " "song " un end "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " "O " lit "tle " "one " "sleep; "
  "\nAn" "gels " "round " "you " "watch " "will " "keep. "
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mp-\markup{\dynamic mp \italic "legato sempre"} | s2.*20 |
  s2.*3 | s2\> s4\! | s2.\pp | s |
  s2.*5 | s2 % 179a
  s4 | s2. | s\mp | s2.*4 |
  s2.*7 |
  s2.*4 | s2.\p | s2.*2 |
  s2.*4 | s2.\pp | s |
  s2.*5 | s2 % 180a
  s4\omit\f-\markup{\dynamic f \italic dolce} | s2.*4 | s2.\mf | s |
  s2.*2 | s2.\f | s2.*4 |
  s2.*2 | s2.\dim | s\mf | s2.*3 | % 181a
  s2.*3 | s2.\dim | s4 s2\p | s2. |
  s2.*5 | s2
}

soprano = \relative {
  \global \vo
  d'4 | g2 a4 | b2 4 | b(c) d | e(c) b | 2 a4 | g2 a4 |
  b2 a4 | g2. | g2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 |
  g2 a4 | b2 a4 | g2. | 2 fis4 | e2 4 | fis2 g4 | a2 4 |
  g4(fis) g | e2 4 | fis2 g4 | a2 4 | g2 a4 | b2 4 |
  c4 b c | b2. | 2 a4 | g2 a4 | b2 a4 | g2 \section \break % 179a
  r4 | R2. | d2.(| d' | g,2.) | e2.~( | 4 g fis |
  a4 g fis | e2 c4 | d2) r4 | d2.( | d' | g,2 a8[b] | c2.~ |
  c4 b a | g e fis | g2.) | R2. | b( | a2 b4 | a g fis |
  e2) r4 | e'2.~( | 4 d e | c e d) | c(b) c | d2. |
  e2.~ | 4 fis d~ | d g, c~ | c b a | d,(e) fis | g2 \section \break % 180a
  r4^\markup "Choir II (aahs if choir I solo)" | r r d | g2 a4 | b2 4 | e2 4 | d2.~ | 4 d,(e) |
  g4(e) fis | g2. | r4 d' c | b2 d4 | g, g' fis | e2 4 | d e fis |
  g2 g,4 | 2 fis4 | g2(a4 | b2) r4 | r c b | a2 g4 | fis(g) a | % 181a
  b2 4 | cis(b) cis | d d(e) | fis(e) d | r e d | b2. |
  e2 e,8(fis) | g4(a) fis | b2. | c4(b) a | g(e) fis | g2\fermata
  \bar "|."
}

words = \lyricmode {
  In Beth -- le -- hem, all in __ a sta -- ble,
  Lies __ a new -- born in -- fant mild. __
  By his side __ a vir -- gin mo -- ther
  Watch -- es o'er __ the ho -- ly child. __
  Je -- sus, ly -- ing in __ the man -- ger,
  Comes __ to us __ on earth a stran -- ger;
  \repeat unfold 8 \skip 1
  \override LyricText.font-shape = #'italic
  \set associatedVoice = alto An -- gels round __ you watch __ will \set associatedVoice = soprano keep.
  Ah __ Ah __ Ah __ Ah __ Ah __
  Lul -- la -- by, __
  "" \repeat unfold 9 \skip 1
  \revert LyricText.font-shape
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est;
  peace __ to __ men \set associatedVoice = alto  on earth.’ __
  Se -- ra -- phim in cho -- rus
  Greet __ the Sa -- viour's joy -- ful birth. __
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, __
  lul -- la, __ lul -- la -- by; __
  An -- gels watch __ will keep.
}

wordsSopAbove = \lyricmode {
  \repeat unfold 47 \skip 1
  \override LyricText.font-shape = #'italic
  Lul -- la -- by! O lit -- tle one sleep;
  \repeat unfold 15 \skip 1
  lul -- la -- by, __ lul -- la, __ lul -- la, lul -- la -- by.
  \revert LyricText.font-shape
  \repeat unfold 11 \skip 1
  earth.’
  Se -- ra -- phim on high, se -- ra -- phim on high
  Greet the 
}

wordsSop = \lyricmode {
  In Beth -- le -- hem, all in __ a sta -- ble,
  Lies __ a new -- born in -- fant mild. __
  By his side __ a vir -- gin mo -- ther
  Watch -- es o'er __ the ho -- ly child. __
  Je -- sus, ly -- ing in __ the man -- ger,
  Comes __ to us __ on earth a stran -- ger;
  \override LyricText.font-shape = #'italic
  Lul -- la -- by! O lit -- tle one sleep;
  An -- gels round __ you watch __ will keep.
  Ah __ Ah __ Ah __ Ah __ Ah __
  Lul -- la -- by, __ lul -- la -- by, __
  lul -- la, __ lul -- la, lul -- la -- by.
  \revert LyricText.font-shape
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est;
  peace __ to __ men on earth.’ __
  Se -- ra -- phim on high,
  se -- ra -- phim on high
  Greet __ the Sa -- viour's joy -- ful birth. __
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, __
  lul -- la, __ lul -- la -- by; __
  An -- gels watch __ will keep.
}

wordsSopMidi = \lyricmode {
  "In " Beth le "hem, " "all " "in "  "a " sta "ble, "
  "\nLies "  "a " new "born " in "fant " "mild. " 
  "\nBy " "his " "side "  "a " vir "gin " mo "ther "
  "\nWatch" "es " "o'er "  "the " ho "ly " "child. " 
  "\nJe" "sus, " ly "ing " "in "  "the " man "ger, "
  "\nComes "  "to " "us "  "on " "earth " "a " stran "ger; "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by! " "O " lit "tle " "one " "sleep; "
  "\nAn" "gels " "round "  "you " "watch "  "will " "keep. "
  "\nAh "  "Ah "  "Ah "  "Ah "  "Ah " 
  "\nLul" la "by, "  lul la "by, " 
  "\nlul" "la, "  lul "la, " lul la "by. "
  \revert LyricText.font-shape
  \set stanza = "3."
  "\n‘Ho" san "na " "in " "the " high "est; "
  "\npeace "  "to "  "men " "on " "earth.’ " 
  "\nSe" ra "phim " "on " "high, "
  "\nse" ra "phim " "on " "high "
  "\nGreet "  "the " Sa "viour's " joy "ful " "birth. " 
  "\nMa" "ry's " "voice, " "in " des "cant " blend "ing, "
  "\nJoins "  "the " "song " un end "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " 
  "\nlul" "la, "  lul la "by; " 
  "\nAn" "gels " "watch "  "will " "keep. "
}

alto = \relative {
  \global \vt
  r4 | R2. | r4 r d' | 2 g4 | 2 4 | fis(e) fis | g2 4 |
  g4(e) fis | d2. | g2 4 | g(b) a | g2 4 | e2 4 | fis(e) fis |
  g4(fis) e | c2 e4 | d2. | b4(c) d | d(c) d | c2 e4 | e(d) d |
  b2 d4 | 2 cis4 | d2 4 | d(e) fis | g2.~ | 2 fis4 |
  e2 g4 | g(a fis) | e2 fis4 | g(f) e | d(e) fis | g2 \section % 179a
  r4 | R2. | d2.( | f | e) | c~( | 4 e d |
  fis4 e d | c2 a4 | d2) r4 | d2.( | fis4 e fis | e2.~ | 4 g fis |
  e4 d c8 d | e4 d c~ | c b2) | R2. | g'2.( | fis4 e d | c2. |
  b2) r4 | g'2.( | a2 b4 | e,2 f4) | g2 4 | fis(b a) |
  g2 a4 | fis2. | e2 fis4 | e2 c4 | e(d) c | b2 \section % 180a
  r4 | r r d | 2 4 | g2 b4 | b(a) g | fis2(e4 | d) d(c) |
  b4(c) d | e(d c | d) r r | r b' a | g2 4 | 2 e4 | fis(e) a |
  d,2 c4 | d(e) a, | b2(c4 | d2) r4 | r e e | e(d) d | d2 4 | % 181a
  g2 4 | a2 4 | a a(g) | fis(g) fis | r g fis | g(fis e) |
  e2 8(fis) | fis2 4 | e2. | 2 4 | c2 d4 | fis2\fermata 
  \bar "|."
}

wordsAltoBelow = \lyricmode {
  \override LyricText.font-shape = #'italic
  \repeat unfold 43 \skip 1
  Lul -- la, lul -- la -- by; __
  "" \repeat unfold 47 \skip 1
  lul -- la -- by,
  lul -- la, lul -- la, lul -- la -- by.
}

wordsAlto = \lyricmode {
  all in __ a sta -- ble,
  Lies __ a new -- born in -- fant mild. __
  By his side __ a vir -- gin mo -- ther
  Watch -- es o'er __ the ho -- ly child. __
  Je -- sus, ly -- ing in __ the man -- ger,
  Comes __ to us __ on earth a stran -- ger;
  \override LyricText.font-shape = #'italic
  Lul -- la, lul -- la -- by; __
  An -- gels round __ you watch __ will keep.
  Ah __ Ah __ Ah __ Ah __ Ah __
  Lul -- la -- by, __
  lul -- la -- by, lul -- la, lul -- la, lul -- la -- by.
  \revert LyricText.font-shape
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est;
  peace __ to __ men on earth.’ __
  Se -- ra -- phim in cho -- rus
  Greet __ the Sa -- viour's joy -- ful birth. __
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, __
  lul -- la, __ lul -- la -- by; __
  An -- gels watch __ will keep.
}

wordsAltoMidi = \lyricmode {
  "all " "in "  "a " sta "ble, "
  "\nLies "  "a " new "born " in "fant " "mild. " 
  "\nBy " "his " "side "  "a " vir "gin " mo "ther "
  "\nWatch" "es " "o'er "  "the " ho "ly " "child. " 
  "\nJe" "sus, " ly "ing " "in "  "the " man "ger, "
  "\nComes "  "to " "us "  "on " "earth " "a " stran "ger; "
  \override LyricText.font-shape = #'italic
  "\nLul" "la, " lul la "by; " 
  "\nAn" "gels " "round "  "you " "watch "  "will " "keep. "
  "\nAh "  "Ah "  "Ah "  "Ah "  "Ah " 
  "\nLul" la "by, " 
  "\nlul" la "by, " lul "la, " lul "la, " lul la "by. "
  \revert LyricText.font-shape
  \set stanza = "3."
  "\n‘Ho" san "na " "in " "the " high "est; "
  "\npeace "  "to "  "men " "on " "earth.’ " 
  "\nSe" ra "phim " "in " cho "rus "
  "\nGreet "  "the " Sa "viour's " joy "ful " "birth. " 
  "\nMa" "ry's " "voice, " "in " des "cant " blend "ing, "
  "\nJoins "  "the " "song " un end "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " 
  "\nlul" "la, "  lul la "by; " 
  "\nAn" "gels " "watch "  "will " "keep. "
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2. | s2 s4\omit\mp-\markup{\dynamic mp \italic "legato sempre"} | s2.*4 |
  s2.*7 |
  s2.*7 |
  s2.*3 | s2\> s4\! | s2. s\omit\pp |
  s2.*5 | s2 % 179a
  s4\omit\mp | s2.*6 |
  s2.*7 |
  s2.*3 | s2.\omit\p | s2.*3 |
  s2.*4 | s2.\omit\pp | s |
  s2.*5 | s2 % 180a
  s4 | s2 s4\omit\f-\markup{\dynamic f \italic dolce} | s2.*3 | s2.\mf | s |
  s2.*3 | s4 s2\f | s2.*3 |
  s2. | s | s\dim | s\mf | s2.*3 | % 181a
  s2.*3 | s2.\dim | s4 s2\p | s2. |
  s2.*5 | s2
}

tenor = \relative {
  \global \vo
  r4 | R2. | r4 r g | d'2 4 | e2 c4 | d2 4 | b4(g) c |
  c2 4 | 2(a4) | b2 c4 | d2 4 | d(c) b | b(a) g | d'2 4 |
  b2 c4 | e2 c4 | 2(b4) | d,2 g4 | 2 4 | a2 c4 | a2 fis4 |
  g4(a) b | a(b) a | 2 4 | 2 4 | R2. | e'2^\pp d4 |
  c4(d) e | d2. | e4(b) b | b(d) c | 2 4 | d2 \section % 179a
  \ov d,4^\mp^\markup Unis. | g2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 | g2 a4 |
  b2 a4 | g2. | 2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 |
  g2 a4 | b2 a4 | g2. | 2^\p fis4 | e2 4 | fis2 g4 | a2 4 |
  g4(fis) g | e2 4 | fis2 g4 | a2 4 | g2^\pp a4 | b2 4 |
  c4 b c | b2. | 2 a4 | g2 a4 | b2 a4 | g2 \section % 180a
  \vo r4 | r r d' | b2 4 | e2 b4 | e2 c4 | d2(c4 | b) g2 |
  g2 a4 | c(b a | b) r r | r d d | e2 b4 | b(a) g | d'2 4 |
  g4(fis) e | d(c) d | 2.~ | 2 r4 | r c e | a,2 4 | 2 d4 | % 181a
  b2 d4 | cis(d) e | d a2 | a d4 | r b d | b(a g) |
  c4.(d8) e4 | b2 4 | 2. | a2 c4 | d2 c4 | b2\fermata
  \bar "|."
}

wordsTenorAbove = \lyricmode {
  \override LyricText.font-shape = #'italic
  \repeat unfold 43 \skip 1
  Lul -- la, lul -- la -- by;
  \repeat unfold 7 \skip 1
  \revert LyricText.font-shape
 
}

wordsTenor = \lyricmode {
  all in __ a sta -- ble,
  Lies __ a new -- born in -- fant mild. __
  By his side __ a vir -- gin mo -- ther
  Watch -- es o'er __ the ho -- ly child. __
  Je -- sus, ly -- ing in __ the man -- ger,
  Comes __ to us __ on earth a stran -- ger;
  \override LyricText.font-shape = #'italic
  Lul -- la, lul -- la -- by;
  An -- gels round __ you watch __ will keep.
  \revert LyricText.font-shape
  \set stanza = "2."
  Saint Jo -- seph stands be -- side __ the cra -- dle,
  Fill'd with won -- der, awe, and love.
  See, the in -- fant King __ lies sleep -- ing,
  Sent from God in heav'n a -- bove.
  Ox and ass be -- fore him kneel -- ing,
  Ma -- ry's love his sor -- rows heal -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, O lit -- tle one sleep;
  An -- gels round you watch will keep.
  \revert LyricText.font-shape
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est;
  peace __ to __ men on earth.’ __
  Se -- ra -- phim in cho -- rus
  Greet __ the Sa -- viour's joy -- ful birth. __
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, __
  lul -- la, __ lul -- la -- by; __
  An -- gels watch __ will keep.
}

wordsTenorMidi = \lyricmode {
  "all " "in "  "a " sta "ble, "
  "\nLies "  "a " new "born " in "fant " "mild. " 
  "\nBy " "his " "side "  "a " vir "gin " mo "ther "
  "\nWatch" "es " "o'er "  "the " ho "ly " "child. " 
  "\nJe" "sus, " ly "ing " "in "  "the " man "ger, "
  "\nComes "  "to " "us "  "on " "earth " "a " stran "ger; "
  \override LyricText.font-shape = #'italic
  "\nLul" "la, " lul la "by; "
  "\nAn" "gels " "round "  "you " "watch "  "will " "keep. "
  \revert LyricText.font-shape
  \set stanza = "2."
  "\nSaint " Jo "seph " "stands " be "side "  "the " cra "dle, "
  "\nFill'd " "with " won "der, " "awe, " "and " "love. "
  "\nSee, " "the " in "fant " "King "  "lies " sleep "ing, "
  "\nSent " "from " "God " "in " "heav'n " a "bove. "
  "\nOx " "and " "ass " be "fore " "him " kneel "ing, "
  "\nMa" "ry's " "love " "his " sor "rows " heal "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " "O " lit "tle " "one " "sleep; "
  "\nAn" "gels " "round " "you " "watch " "will " "keep. "
  \revert LyricText.font-shape
  \set stanza = "3."
  "\n‘Ho" san "na " "in " "the " high "est; "
  "\npeace "  "to "  "men " "on " "earth.’ " 
  "\nSe" ra "phim " "in " cho "rus "
  "\nGreet "  "the " Sa "viour's " joy "ful " "birth. " 
  "\nMa" "ry's " "voice, " "in " des "cant " blend "ing, "
  "\nJoins "  "the " "song " un end "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " 
  "\nlul" "la, "  lul la "by; " 
  "\nAn" "gels " "watch "  "will " "keep. "
}

wordsTenorBelow = \lyricmode {
  \repeat unfold 55 \skip 1
  \set stanza = "2."
  Saint Jo -- seph stands be -- side __ the cra -- dle,
  Fill'd with won -- der, awe, and love.
  See, the in -- fant King __ lies sleep -- ing,
  Sent from God in heav'n a -- bove.
  Ox and ass be -- fore him kneel -- ing,
  Ma -- ry's love his sor -- rows heal -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, O lit -- tle one sleep;
  An -- gels round you watch will keep.
%  \revert LyricText.font-shape
%  \repeat unfold 7 \skip 1
%  Peace __ to
}

bass = \relative {
  \global \vt
  r4 | R2. | r4 r g | g(a) b | c2 a4 | d,2 4 | e2 4 |
  d2 4 | g2. | 4 2 | 2 fis4 | e2 d4 | c2 4 | b2 4 |
  e2 a,4 | d(e) fis | g2. | g,4(a) b | c2 b4 | a(a') g | fis2 d4 |
  e2 4 | a2 a,4 | d2 e4 | fis2 d4 | R2. | R |
  a'2 4 | b2(a4) | g2 fis4 | e2 a,4 | d2 4 | <g, d'>2 \section
  s4 | s2.*31 | s2
  r4 | r r fis' | g2 fis4 | e2 d4 | c2 a4 | d2.(e2) a,4 | % 180b
  d2 4 | g,2.~ | 4 r r | r g' fis | e2 d4 | c2 4 | b(c) d |
  e2 a,4 | d2 4 | g2.~ | 2 r4 | r a g | fis2 e4 | d(e) fis | % 181a
  e2 4 | a,2 a'4 | fis fis(e) | d2 4 | r e e | e2. |
  a,2 a'4 | b2 a4 | g(fis g) | a2 a,4 | d2 4 | <g, d'>2\fermata
  \bar "|."
}

bassSep = \relative {
  \global
  r4 | R2. | r4 r g | g(a) b | c2 a4 | d,2 4 | e2 4 |
  d2 4 | g2. | 4 2 | 2 fis4 | e2 d4 | c2 4 | b2 4 |
  e2 a,4 | d(e) fis | g2. | g,4(a) b | c2 b4 | a(a') g | fis2 d4 |
  e2 4 | a2 a,4 | d2 e4 | fis2 d4 | R2. | R |
  a'2 4 | b2(a4) | g2 fis4 | e2 a,4 | d2 4 | <g, d'>2 \section
  d4^\mp^\markup Unis. | g2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 | g2 a4 |
  b2 a4 | g2. | 2 a4 | b2 4 | b(c) d | d(c) b | 2 a4 |
  g2 a4 | b2 a4 | g2. | 2^\p fis4 | e2 4 | fis2 g4 | a2 4 |
  g4(fis) g | e2 4 | fis2 g4 | a2 4 | g2^\pp a4 | b2 4 |
  c4 b c | b2. | 2 a4 | g2 a4 | b2 a4 | g2 \section % 180a
  r4 | r r fis' | g2 fis4 | e2 d4 | c2 a4 | d2.(e2) a,4 |
  d2 4 | g,2.~ | 4 r r | r g' fis | e2 d4 | c2 4 | b(c) d |
  e2 a,4 | d2 4 | g2.~ | 2 r4 | r a g | fis2 e4 | d(e) fis | % 181a
  e2 4 | a,2 a'4 | fis fis(e) | d2 4 | r e e | e2. |
  a,2 a'4 | b2 a4 | g(fis g) | a2 a,4 | d2 4 | <g, d'>2\fermata
  \bar "|."
}

wordsBassBelow = \lyricmode {
  \override LyricText.font-shape = #'italic
  \repeat unfold 43 \skip 1
  Lul -- la -- by;
  \repeat unfold 7 \skip 1
  \repeat unfold 7 \skip 1
  \revert LyricText.font-shape
  peace __ to 
}

wordsBass = \lyricmode {
  all in __ a sta -- ble,
  Lies __ a new -- born in -- fant mild. __
  By his side __ a vir -- gin mo -- ther
  Watch -- es o'er __ the ho -- ly child. __
  Je -- sus, ly -- ing in __ the man -- ger,
  Comes __ to us __ on earth a stran -- ger;
  \override LyricText.font-shape = #'italic
  Lul -- la -- by;
  An -- gels round __ you watch __ will keep.
  \revert LyricText.font-shape
  \set stanza = "2."
  Saint Jo -- seph stands be -- side __ the cra -- dle,
  Fill'd with won -- der, awe, and love.
  See, the in -- fant King __ lies sleep -- ing,
  Sent from God in heav'n a -- bove.
  Ox and ass be -- fore him kneel -- ing,
  Ma -- ry's love his sor -- rows heal -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, O lit -- tle one sleep;
  An -- gels round you watch will keep.
  \revert LyricText.font-shape
  \set stanza = "3."
  ‘Ho -- san -- na in the high -- est;
  peace __ to __ men on earth.’ __
  Se -- ra -- phim in cho -- rus
  Greet __ the Sa -- viour's joy -- ful birth. __
  Ma -- ry's voice, in des -- cant blend -- ing,
  Joins __ the song un -- end -- ing:
  \override LyricText.font-shape = #'italic
  Lul -- la -- by, __
  lul -- la, __ lul -- la -- by; __
  An -- gels watch __ will keep.
}

wordsBassMidi = \lyricmode {
  "all " "in "  "a " sta "ble, "
  "\nLies "  "a " new "born " in "fant " "mild. " 
  "\nBy " "his " "side "  "a " vir "gin " mo "ther "
  "\nWatch" "es " "o'er "  "the " ho "ly " "child. " 
  "\nJe" "sus, " ly "ing " "in "  "the " man "ger, "
  "\nComes "  "to " "us "  "on " "earth " "a " stran "ger; "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by; "
  "\nAn" "gels " "round "  "you " "watch "  "will " "keep. "
  \revert LyricText.font-shape
  \set stanza = "2."
  "\nSaint " Jo "seph " "stands " be "side "  "the " cra "dle, "
  "\nFill'd " "with " won "der, " "awe, " "and " "love. "
  "\nSee, " "the " in "fant " "King "  "lies " sleep "ing, "
  "\nSent " "from " "God " "in " "heav'n " a "bove. "
  "\nOx " "and " "ass " be "fore " "him " kneel "ing, "
  "\nMa" "ry's " "love " "his " sor "rows " heal "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " "O " lit "tle " "one " "sleep; "
  "\nAn" "gels " "round " "you " "watch " "will " "keep. "
  \revert LyricText.font-shape
  \set stanza = "3."
  "\n‘Ho" san "na " "in " "the " high "est; "
  "\npeace "  "to "  "men " "on " "earth.’ " 
  "\nSe" ra "phim " "in " cho "rus "
  "\nGreet "  "the " Sa "viour's " joy "ful " "birth. " 
  "\nMa" "ry's " "voice, " "in " des "cant " blend "ing, "
  "\nJoins "  "the " "song " un end "ing: "
  \override LyricText.font-shape = #'italic
  "\nLul" la "by, " 
  "\nlul" "la, "  lul la "by; " 
  "\nAn" "gels " "watch "  "will " "keep. "
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix single
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = soprano \soprano
%            \addlyrics \words
            \new Voice = alto \alto
            \new Lyrics \with {alignBelowContext = women} \lyricsto alto \wordsAltoBelow
            \new Lyrics \with {alignBelowContext = women} \lyricsto soprano \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignBelowContext = men} \dynamicsMen
            \new Voice = tenor \tenor
            \new Voice = bass  \bass
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
            \new Lyrics \with {alignBelowContext = men} \lyricsto tenor \wordsTenorBelow
            \new Lyrics \with {alignBelowContext = men} \lyricsto bass  \wordsBassBelow
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
  \bookOutputSuffix singlepage
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
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = soprano \soprano
%            \addlyrics \words
            \new Voice = alto \alto
            \new Lyrics \with {alignBelowContext = women} \lyricsto alto \wordsAltoBelow
            \new Lyrics \with {alignBelowContext = women} \lyricsto soprano \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignBelowContext = men} \dynamicsMen
            \new Voice = tenor \tenor
            \new Voice = bass  \bass
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
            \new Lyrics \with {alignBelowContext = men} \lyricsto tenor \wordsTenorBelow
            \new Lyrics \with {alignBelowContext = men} \lyricsto bass  \wordsBassBelow
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
  \bookOutputSuffix singlepage-sep
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
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
            \addlyrics \wordsSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAlto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics \wordsTenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
            \addlyrics \wordsBass
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
  \bookOutputSuffix midi-solo
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
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
  \bookOutputSuffix midi-sop
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
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
  \bookOutputSuffix midi-alto
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
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
  \bookOutputSuffix midi-tenor
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
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
  \bookOutputSuffix midi-bass
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single choir I / solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics = dynsolo \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = tempo \with {alignAboveContext = dynsolo}  \TempoTrack 
            \new Voice \with {alignAboveContext = tempo} \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bassSep
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
