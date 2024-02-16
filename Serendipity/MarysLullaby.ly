\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mary's lullaby"
  subtitle    = \markup\italic "for JoAnne"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Rutter"
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
  \key ges \major
  \time 3/4
}

TempoTrack = {
  \tempo "Andante tranquillo" 4=69
  s2.*4
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s2.*13 | s2 \tempo 4=23 s4 \tempo 4=69 | s2.
    s2. |
    \alternative {
      \volta 1 { s2.*2 | }
      \volta 2 { s2. | }
    }
  }
  s2.*14 |
  s2 \tempo 4=23 s4 \tempo 4=69 |
  s2.*3 | s1 | \tempo 4=46 s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "289a" } s2.*4
  \repeat volta 2 {
    \textMark \markup { \box "289b" } s2.*3
    \textMark \markup { \box "289c" } s2.*3
    \textMark \markup { \box "290a" } s2.*3
    \textMark \markup { \box "290b" } s2.*3
    \textMark \markup { \box "290c" } s2.*3
    \textMark \markup { \box "291a" } s2.
    \alternative {
      \volta 1 { s2.*2 }
      \volta 2 { s2. }
    }
  }
  \textMark \markup { \box "291b" } s2.*4
  \textMark \markup { \box "291c" } s2.*3
  \textMark \markup { \box "291d" } s2.*3
  \textMark \markup { \box "292a" } s2.*3
  \textMark \markup { \box "292b" } s2.*3
  \textMark \markup { \box "292c" } s2.*4
}

dynamicsSop = {
  s2.*4 |

  s2.\p | s2.*5 |
  s2. s2 s8 s\omit\p s2.*5 | s4 s2\> | s2.\pp |
  s2.*3
  
  s2.\mf | s2.*2 | s2 s4\> | s2.\p | s2. |
  s2. s2 s8 s\omit\p s2.*5 | s4 s2\> | s2.\pp |
  s2. | s2. |
  
  s2.*8 | s4 s s8 s\pp | s2.
  s2.*8 | s1*2 |
}

soprano = \relative {
  \global
  R2.*4
  \repeat volta 2 {
    ges'8 aes bes ces bes aes | des2 ges,8 aes | bes4. ces8 bes ges |
    aes4 ges2 | 8 aes bes ces bes aes | des2 8 ees |
    f4. ges8 f des | ees4 des4. 8^\p | <ees ges> <des f> <ces ees>4. <ees ges>8 | % 290a
    <des f>8 <ces ees> <bes des>4. <ges bes>8 | % 290b
    <aes ces>8 <bes des> <ces ees>4 <des f> | <bes des>2. |
    ges8 aes bes4. ces8 | bes8 aes <aes des>2\fermata | ges8 aes bes ces bes ges |
    aes4 ges2 | % 291a
    \alternative {
      \volta 1 { R2. | R | }
      \volta 2 { R2. | }
    }
  }
  R2.*4 | % 291b
  R2.*3 |
  R2. | r4 r r8 des'^\pp | <ees ges> <des f> <ces ees>4. <ees ges>8 |
  <des f>8 <ces ees> <bes des>4. <ges bes>8 | % 292a
  <aes ces>8 <bes des> <ces ees>4 <des f> | <bes des>2. |
  ges8 aes bes4. ces8 | bes aes <aes des>2\fermata | ges8 aes bes ces bes ges | % 292b
  aes4 ges2 | R2. \time 4/4 | R1 | R\fermata |
  \bar "|."
}

wordsSopOne = \lyricmode {
  \set stanza = \markup {\dynamic p 1.}
  See the child that Ma -- ry bore~
  On her lap so soft -- ly sleep -- ing:
  In a sta -- ble cold and poor,
  Ox and ass their vi -- gil keep -- ing,
  \override LyricText.font-shape = #'italic
  \set stanza = "S. "
  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.

  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.
}

wordsSopTwo = \lyricmode {
  \set stanza = \markup {\dynamic mf 2.}
  Flights of an -- gels round his head~
  Sing him joy -- ful hymns of greet -- ing:
  ‘Peace on earth, good -- will to men.’
  Each to each the song re -- peat -- ing.
}

wordsSopAbove = \lyricmode {
  \set stanza = "1."
  See the child that Ma -- ry bore~
  On her lap so soft -- ly sleep -- ing:
  In a sta -- ble cold and poor,
  Ox and ass their vi -- gil keep -- ing,
  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.
  \revert LyricText.font-shape

  \set stanza = "2."
  Flights of an -- gels round his head~
  Sing him joy -- ful hymns of greet -- ing:
  ‘Peace on earth, good -- will to men.’
  Each to each the song re -- peat -- ing.
  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.

  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.
}

wordsSopSep = \lyricmode {
  \set stanza = "1."
  See the child that Ma -- ry bore~
  On her lap so soft -- ly sleep -- ing:
  In a sta -- ble cold and poor,
  Ox and ass their vi -- gil keep -- ing,
  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.
  \revert LyricText.font-shape

  \set stanza = "2."
  Flights of an -- gels round his head~
  Sing him joy -- ful hymns of greet -- ing:
  ‘Peace on earth, good -- will to men.’
  Each to each the song re -- peat -- ing.
  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.

  Sing lul -- la -- by, sing lul -- la -- by,
  my own dear son, my child;
  Lul -- la -- by, sing lul -- la -- by;
  Lul -- la -- by, my lit -- tle ba -- by.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "See " "the " "child " "that " Ma "ry " "bore~ "
  "\nOn " "her " "lap " "so " soft "ly " sleep "ing: "
  "\nIn " "a " sta "ble " "cold " "and " "poor, "
  "\nOx " "and " "ass " "their " vi "gil " keep "ing, "
  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by.\n"
  
  \set stanza = "2."
  "\nFlights " "of " an "gels " "round " "his " "head~ "
  "\nSing " "him " joy "ful " "hymns " "of " greet "ing: "
  "\n‘Peace " "on " "earth, " good "will " "to " "men.’ "
  "\nEach " "to " "each " "the " "song " re peat "ing. "
  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by.\n"

  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*4

  s2. | s2 s4\pp | s2.*4 |
  s2. | s2 s8 s\p | s2.*5 | s4 s2\> | s2.\pp |
  s2.*3 |
  
  s2. | s2 s4\mp | s2. | s2 s4\> | s2.\p | s2.*2 |
  s2. | s2 s8 s\p | s2.*5 | s4 s2\> | s2.\pp |
  s2.*2 |

  s2.*7 | s2 s8 s\pp | s2.
  s2.*8 | s1*2 |
}

alto = \relative {
  \global
  R2.*4 |
  \repeat volta 2 {
    R2. | r4 r ges'8 aes | bes aes ges f ees4~ |
    ees8 f des2~ | 4 r r | r r des'4~ |
    des8 c bes aes ges4~ | 2 f8 f | ges4 ces8(bes) aes4~ | % 290a
    aes4 bes8 aes ges f | ees4 ges bes | aes(ges) f~ |
    f4 ees8(f) ges4 | 8 f fes2 | ees2.~ |
    ees4 des2 | % 291a
    \alternative {
      \volta 1 { R2. | R | }
      \volta 2 { R2. | }
    }
  }
  R2.*4 |
  R2.*3 |
  R2. | r4 r r8 f | ges4 ces8(bes) aes4~ |
  aes4 bes8 aes ges f | ees4 ges bes | aes(ges) f~ | % 292a
  f4 ees8(f) ges4 | 8 f fes2\fermata | ees2.~ |
  ees4 des2 | R2. \time 4/4 | R1 | R % \fermata |
  \bar "|."
}

humAlignerOne = {
  s2.*4
  \repeat volta 2 {
    s2. | s2 c4~ | 2.~ |
    c2.~ | 4 s2 | s4 d2~ |
    d2.~ | d2~8 d | d4 d d~ | % 290a
    d4 d8 d d d | d4 d d | d~d d~ |
    d4 d d | d8 8 2 | d2.~ |
    d4~d2 |
    \alternative {
      \volta 1 { s2. | s | }
      \volta 2 { s2. | }
    }
  }
  s2.*4 |
  s2.*3 |
  s2. | s2 s8 d | d4 8~8 4~ |
  d4 8 8 8 8 | 4 4 4 | 4~4 4~ | % 292a
  d4 8~8 4 | 8 8 2 | 2.~ |
  d4~2 | s2. | s1 | s |
}

humAlignerTwo = {
  s2.*4
  \repeat volta 2 {
    s2. | s2 c4~ | 2.~ |
    c2.~ | 4 s2 | s4 d2~ |
    d2.~ | d2~8 8 | 4 4 4 | % 290a
    d2 8 8 | 2 4 | 2 4~ |
    d2 4 | 4~2 |
    s2.*2 |
    \alternative {
      \volta 1 { s2.*2 }
      \volta 2 { s2.   }
    }
  }
}

humAlignerAlto = {
  s2.*4
  \repeat volta 2 {
    s2. | s2 c4~ | 2.~ |
    c2.~ | 4 s2 | s4 d2~ |
    d2.~ | d2~8 d | d4 d d~ | % 290a
    d4 d8 d d d | d4 d d | d~d d~ |
    d4 d d | d8 8 2 | d2.~ |
    d4~d2 |
    \alternative {
      \volta 1 { s2. | s | }
      \volta 2 { s2. | }
    }
  }
  s2.*4 |
  s2.*3 |
  s2. | s2 s8 d | d4 8~8 4~ |
  d4 8 8 8 8 | 4 4 4 | 4~4 4~ | % 292a
  d4 8~8 4 | 8 8 2 | 2.~ |
  d4~2 | s2. | s1 | s |
}

humAlignerTenor = {
  s2.*4
  \repeat volta 2 {
    s2. | s2 c4~ | 2.~ |
    c2.~ | 4 s2 | s4 d2~ |
    d2.~ | d2~8 8 | 4 4 4 | % 290a
    d2 8 8 | 2 4 | 2 4~ |
    d2 4 | 4~2 |
    s2.*2 |
    \alternative {
      \volta 1 { s2.*2 }
      \volta 2 { s2.   }
    }
  }
}

wordsAltoOne = \lyricmode {
  \set stanza = \markup {"A.T.B." \dynamic pp "1."}
  \override LyricText.font-shape = #'italic
  Hum __ Hum __
  \set stanza = "A. "
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  \set stanza = "A.T.B."
  Hum __
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  \set stanza = "A.T.B."
  Hum __
}

wordsAltoTwo = \lyricmode {
  \set stanza = \markup {\dynamic mp "2."}
  \override LyricText.font-shape = #'italic
  Aw __ Aw __
  \set stanza = "T. "
  Sing lul -- la -- by, lul -- la,
  my own, my child;
  Lul -- la -- by; __
}

wordsAlto = \lyricmode {
  \set stanza = \markup {"A.T.B." \dynamic pp "1."}
  \override LyricText.font-shape = #'italic
  Hum __ Hum __
  \set stanza = "A. "
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  \set stanza = "A.T.B."
  Hum __

  \set stanza = \markup {\dynamic mp "2."}
  \override LyricText.font-shape = #'italic
  Aw __ Aw __
  \set stanza = "A. "
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  \set stanza = "A.T.B."
  Hum __

  Sing lul -- la -- by, __ lul -- la‑- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
}

wordsAltoSep = \lyricmode {
  \override LyricText.font-shape = #'italic
  Hum __ _ _ _ _ _ _ _ _
  Hum __ _ _ _ _ _
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  Hum __ _
  
  Aw __ _ _ _ _ _ _ _ _
  Aw __ _ _ _ _ _
  Sing lul -- la -- by, __ lul -- la -- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  Hum __ _

  Sing lul -- la -- by, __ lul -- la‑- by,
  my own son, my child; __
  Lul -- la -- by, lul -- la -- by;
  Hum __ _
}

wordsAltoMidi = \lyricmode {
  "Hum "  "" "" "" "" "" "" "" ""
  "\nHum "  "" "" "" "" ""
  "\nSing " lul la "by, "  lul la "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum "  ""
  
  "\nAw "  "" "" "" "" "" "" "" ""
  "\nAw "  "" "" "" "" ""
  "\nSing " lul la "by, "  lul la "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum "  ""

  "\nSing " lul la "by, "  lul la‑ "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum "  ""
}

wordsTenorHum = \lyricmode {
  \repeat volta 2 {
    "" ""
    \override LyricText.font-shape = #'italic
    \set stanza = "T. "
    Sing lul -- la -- by, lul -- la,
    my own, my child;
    Lul -- la -- by; __
  }
}

wordsTenorSep = \lyricmode {
  \override LyricText.font-shape = #'italic
  Hum __ _ _ _ _ _ _
  Hum __ _ _ _ _ _
  Sing lul -- la -- by, lul -- la,
  my own, my child;
  Lul -- la -- by; __
  Hum __ _ _
  
  Aw __ _ _ _ _ _ _
  Aw __ _ _ _ _ _
  Sing lul -- la -- by, lul -- la,
  my own, my child;
  Lul -- la -- by; __
  Hum __ _ _

  \revert LyricText.font-shape
  \set stanza = "3."
  Shep -- herds kneel -- ing by his bed~
  Of -- fer hom -- age with -- out mea -- sure;
  Wise men, by a bright star led,
  Bring him gifts of rich -- est trea -- sure.

  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, lul -- la,
  my own, my child;
  Lul -- la -- by; __
  Hum __ _ _
}

wordsTenorMidi = \lyricmode {
  "Hum "  "" "" "" "" "" ""
  "\nHum "  "" "" "" "" ""
  "\nSing " lul la "by, " lul "la, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum "  "" ""
  
  "\nAw "  "" "" "" "" "" ""
  "\nAw "  "" "" "" "" ""
  "\nSing " lul la "by, " lul "la, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum "  "" ""

  \set stanza = "3."
  "\nShep" "herds " kneel "ing " "by " "his " "bed~ "
  "\nOf" "fer " hom "age " with "out " mea "sure; "
  "\nWise " "men, " "by " "a " "bright " "star " "led, "
  "\nBring " "him " "gifts " "of " rich "est " trea "sure. "

  "\nSing " lul la "by, " lul "la, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum "  "" ""
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 |

  s2. | s2 s4\pp | s2.*4 |
  s2. | s2 s8 s\p | s2.*5 | s4 s2\> | s2.\pp |
  s2.*3 |
  
  s2. | s2 s4\mp | s2. | s4 s2\> | s2.\p | s2. |
  s2. | s2 s8 s\p | s2.*5 | s4 s2\> | s2.\pp |
  s2.*2 |
  
  s2. | s\omit\mp-\markup{\dynamic mp \italic cantabile} | s2.*6 | s2  s8 s\pp | s2. |
  s2.*8 | s1*2 |
}

tenor = \relative {
  \global
  R2.*4 |
  \repeat volta 2 {
    R2. \apart | r4 r ges'4~ | 8 f ees des \auto ces4~ |
    ces2 aes4 | bes r r | r des2~ |
    des2 8 bes~ | 8 c aes4 des8 8 | <ces ees> ( [ <des f> ] ) <ees ges>(<des f>) <ces ees>4 | % 290a
    <des f>2 <bes des>8 8 | ces2 4 | bes2 des4~( |
    des4 ces) ees | d(des2) | des4 ces2~ |
    ces4 bes2 | % 291a
    \alternative {
      \volta 1 { R2. | R | }
      \volta 2 { R2. | }
    }
  }
  R2. | % 291b
  ges8^\markup\bold "TENORS (with BARITONES ad lib.)" aes bes ces bes aes |
  des2 ges,8 aes | bes4. ces8 bes ges |
  aes4 ges2 | 8 aes bes ces bes aes | des2 8 ees | % 291c
  f4. ges8 f des | ees4 des4. 8 | <ces ees>( [ <des f> ] ) <ees ges>(<des f>) <ces ees>4 |
  <des f>2 <bes des>8 8 | ces2 4 | bes2 des4~( | % 292a
  des4 ces) ees | d(des2\fermata) | 4 ces2~ |
  ces4 bes2 | R2. \time 4/4 | R1 | R\fermata |
  \bar "|."
}

wordsTenorAbove = \lyricmode {
  \repeat unfold 88 \skip 1
  \override LyricText.font-shape = #'italic
  Sing lul -- la -- by, lul -- la,
  my own, my child;
  Lul -- la -- by; __
  \set stanza = "A.T.B. "
  Hum __ _ _
}

wordsTenor = \lyricmode {
  \repeat unfold 29 \skip 1
  \set stanza = "3."
  Shep -- herds kneel -- ing by his bed~
  Of -- fer hom -- age with -- out mea -- sure;
  Wise men, by a bright star led,
  Bring him gifts of rich -- est trea -- sure.
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 |

  s2.*2 | s2 s4\pp | s2.*3 |
  s2. | s2 s8 s\p | s2.*5 | s2.\pp |
  s2.*3 |
  
  s2.*2 | s2 s4\mp | s2 s4\> | s2.\p | s2. |
  s2. | s2 s8 s\p | s2.*5 | s2.\pp |
  s2. |
  
  s2.*8 | s2 s8 s\pp | s2. |
  s2.*11 | s1 | s |
}

bass = \relative {
  \global
  R2.*4
  \repeat volta 2 {
    R2.| R | r4 r ces'8 bes | aes4 ges2~ | 4 r r | r des'8 c bes4~ |
    bes8 aes ges f ees4 | aes des,4. des'8 | ges,2 8(aes) | % 290a
    bes2 ees,4 | aes2 des,4 | 2. |
    ees2 bes'4 <<{\vt aes8 bes ces4(bes^\fermata)} \new Voice {\vf aes4(ges2\fermata)}>> \vt |
    <<{\vf ges2.~ | \vt 8 f s2} \new Voice {\vt ces2 aes4 | \vf des4 <ges, des'>2}>> \vt |
    \alternative {
      \volta 1 { R2. | R | }
      \volta 2 { R2. | }
    }
  }
  R2.*4 |
  R2.*3 |
  R2. | r4 r r8 des''8 | ges,2 8(aes) |
  bes2 ees,4 | aes2 des,4 | 2. | % 292a
  ees2 bes'4 | <<{\vt aes8 bes ces4(bes^\fermata)} \new Voice {\vf aes4(ges2\fermata)}>>
  <<{\vf ges2.~ | \vt 8 f s2} \new Voice {\vt ces2 aes4 | \vf des4 <ges, des'>2}>> \vt |
  R2. \time 4/4 | R1 | R % \fermata |
  \bar "|."
}

wordsBassOne = \lyricmode {
  \repeat volta 2 {
    \override LyricText.font-shape = #'italic
    \repeat unfold 13 \skip 1
    \set stanza = "B. "
    Sing lul -- la -- by, my own, my child;
    \set stanza = "B. 1"
    Lul -- la, lul -- la -- by; __
    "" ""
    Sing lul -- la -- by, my own, my child;
    \set stanza = "B. 1"
    Lul -- la, lul -- la -- by; __
    "" _
  }
}

wordsBassTwo = \lyricmode {
  \override LyricText.font-shape = #'italic
  \repeat volta 2 {
    \repeat unfold 21 \skip 1
    \set stanza = "B. 2"
    Lul -- la -- by; __ _ _
    "" ""
  }
  \repeat unfold 8 \skip 1
  \set stanza = "B. 2"
  Lul -- la -- by; __ _ _
}

wordsBassSepOne = \lyricmode {
  \override LyricText.font-shape = #'italic
  Hum __ _ _ _ 
  Hum __ _ _ _ _ _ _ _ _
  Sing lul -- la -- by,
  my own, my child;
  Lul -- la, lul -- la -- by; __
  Hum __ _
  
  Aw __ _ _ _ 
  Aw __ _ _ _ _ _ _ _ _
  Sing lul -- la -- by,
  my own, my child;
  Lul -- la, lul -- la -- by; __
  Hum __ _
  
  Sing lul -- la -- by,
  my own, my child;
  Lul -- la, lul -- la -- by; __
  Hum __ _ _
}

wordsBassSepTwo = \lyricmode {
  \override LyricText.font-shape = #'italic
  _ _ _ _ 
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  \set stanza = "B.2"
  Lul -- la -- by; __ _ _
  "" _
  
  _ _ _ _ 
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  \set stanza = "B.2"
  Lul -- la -- by; __ _ _
  "" _
  
  _ _ _ _ _ _ _ _
  \set stanza = "B.2"
  Lul -- la -- by; __ _ _
  "" _ _
}

wordsBassMidiOne = \lyricmode {
  "Hum "  "" "" "" 
  "\nHum "  "" "" "" "" "" "" "" ""
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; " 
  "\nHum "  ""
  
  "\nAw "  "" "" "" 
  "\nAw "  "" "" "" "" "" "" "" ""
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; " 
  "\nHum "  ""
  
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; " 
  "\nHum "  "" ""
}

wordsBassMidiTwo = \lyricmode {
  "Hum "  "" "" "" 
  "\nHum "  "" "" "" "" "" "" "" ""
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; "  "" ""
  "\nHum "  ""
  
  "\nAw "  "" "" "" 
  "\nAw "  "" "" "" "" "" "" "" ""
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; "  "" ""
  "\nHum "  ""
  
  "\nSing " lul la "by, "
  "\nmy " "own, " "my " "child; "
  "\nLul" la "by; "  "" ""
  "\nHum "  "" ""
}

flutepart = \relative {
  s2. | r8 des''^\markup{\halign #RIGHT \italic Fl. "(v.2 only)"} (des' ces des4~ | 4) ges4.(ees8 |
  des4. des,8 des' ces | des4) r r | r8 f,(f' ees f4~ |
  f4) bes,2~( | 8 aes ges ees f4 | ges8) r r4 r | % 290a
  s2.*7 |
}

flute = {
  s2.*4 |
  \repeat volta 2 {
    \flutepart
    \alternative {
      \volta 1 { s2.*2 | }
      \volta 2 { s2. | }
    }
  }
  s2.*18 | s1*2 |
}

fluteSingle = {
  s2.*4
  s2.*16
  s2.*2
  \flutepart
  s2.*21
}

pianoRHoneA = \relative {
  ges'8(aes bes ces bes aes | des4. ges8 f ees | des4. 8 ces bes | ges4 aes2) |
}

pianoRHoneB = \relative {
    ges'4 f ees | <des f>2 <des ges>4~ | ges8 aes ges f <ces ees>4~ |
    ees8 f des2 | ges2 f4~ | 8 ees <des f>4 <f des'>4~ |
    des'8 c bes aes ges4~ | 8 aes8 2 | ges4 ces8 bes aes4~ | % 290a
    aes4 bes8 aes ges4~ | <ees ges>4 <ges ces> <f bes> | <des bes'>2. |
    ges2. | ges8 <f aes> <fes aes>2\fermata | <ees ges>2. |
    \tag #'dash {r4^\markup\tiny "(v.2 take small note instead of quavers)" r8 \vt ges8 <<{f ees} \new Voice {\vth \tiny ges4\laissezVibrer}>> |} % 291a
    \tag #'v1   {r4                                                         r8     ges8    f ees                                               |}
    \tag #'v2   {r4                                                         r8     ges'8                                  ges4~                 |}
  }

pianoRHoneC = \relative {
  \vo des''4. 8 ces bes | <ees, ges>4 <ces aes'>2 |
}

pianoRHoneD = \relative {
  \tag #'dash {ges''8\repeatTie aes bes ces bes ges |}
  \tag #'v2   {ges8             aes bes ces bes ges |}
}

pianoRHoneE = \relative {
  des''2. | ges,4 f ees | <ces ees aes>2 bes'8 aes | <bes, ees ges>2. |
  <ees ges>8 <des f> ges4. aes8 | bes4. ces8 des4~ | 8 c bes aes bes4~ |
  bes8 c des2 | aes2. | ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | <ees ges>2. |
  <ces ees aes>4 ges'4 4~( | 8 aes bes ces bes ges \time 4/4 |
  r8) des''(ces bes ges ees aes4 | ges1\fermata) |
}

pianoRHone = {
  \global \vo
  \pianoRHoneA
  \repeat volta 2 {
    \keepWithTag #'dash \pianoRHoneB
    \alternative {
      \volta 1 { \pianoRHoneC }
      \volta 2 { \keepWithTag #'dash \pianoRHoneD }
    }
  }
  \pianoRHoneE
  \bar "|."
}

pianoRHoneSingle = {
  \global \vo
  \pianoRHoneA
  \keepWithTag #'v1 \pianoRHoneB \pianoRHoneC
  \keepWithTag #'v2 \pianoRHoneB \keepWithTag #'v2 \pianoRHoneD
  \pianoRHoneE
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <bes ges'>4~<bes f'> <ces ees> |
  <ees aes>4 <des ges> <ges ces> |
  <<{\vt f8 aes} \new Voice {\vf des4}>> \vt <des, ges>2 |
  ces2 <ces ees>4 | 
  \repeat volta 2 {
    bes2 ces4 | s2 \vo des4_~ | \vt 4 s \vo ces4_~ |
    \vt ces2 aes4 | bes4 des8 ces des <aes ees'> | bes4. c8 des4 |
    f4 ges8 aes bes4~ | 4 ges f | <ces ees>8 <des f> <ees ges> <des f> <ces ees>4 | % 290a
    <des f>2 <bes des>4 | ces2. | aes'4 ges f~ |
    <des f>4 <ces ees>8~<ces f> <ees ges>4 | d4 ces(bes\fermata) | des4 ces2 |
    <ces ees aes>4 <bes des ges>2 | % 291a
    \alternative {
      \volta 1 { ees8 f <des ges>2 | ces4. ees8 f4 | }
      \volta 2 { ces'4 bes des | }
    }
  }
  <<{\vf <ees, ges>2~<ees f aes>4} \new Voice {\vt ces'4 bes s}>> |
  \vt <bes, des>2 ces4 | s2 <bes des>4 | s2. |
  ces4~<ces ees> <bes des>8 ces | <bes bes'>4 <des aes'> <bes ges'> | <des f>4. <c ees>8 <bes des> <c ees> |
  <des f>4 <des ges>2 | <<{\vf ees4 ges f} \new Voice {\vt bes,8 c des2}>> | ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | r4 ces,2 |
  s4 <bes des>2 | bes2. \time 4/4 | <ces ees aes>2 ces' | <ges bes>1\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\omit\p-\markup{\dynamic p \italic "legato sempre"} | s2.*3 |
  \repeat volta 2 {
    s2.*3 |
    s2.*3 |
    s2.*7 | s4 s2\> | s2.\pp | % 290
    s4 s2\p | % 291a
    \alternative {
      \volta 1 { s2.*2 | }
      \volta 2 { s2. | }
    }
  }
  s2.*8 | s4 s4.\> s8\pp | s2. |
  s2.*5 | s2.\pp | s2 s4\omit\p-\markup{\dynamic p \italic espress.} | s2. | s2 s\> | s1\pp |
}

pianoLHone = \relative {
  \global \vo
  des2 ees4 | f8 des ees4 ges | aes ges aes8 bes | \parenthesize ces bes aes ges ees f |
  \repeat volta 2 {
    <ges, ges'>2 s4 | ces'2 s4 | s2. |
    s2.*3 |
    des2 8 bes~ | 8 c aes2 | \ov <ges, ges'>2 ges8 aes | % 290a
    bes2 <ees, ees'>4 | aes2 <des, des'>4~ | 2 des'4 |
    <ees, ees'>2 bes''4 | aes <ges, ges'>2\fermata | \vo ges'2.~ |
    ges8 f \ov <ges, des'>2 |
    \alternative {
      \volta 1 { \vo ges'8 aes bes4 aes8 bes | \parenthesize ces8 bes aes ges aes4 | }
      \volta 2 { \ov <ges ces ees>4 <f bes des>2 | }
    }
  }
  \vo ces'2. | des,2 ees4~ | 4 f <ges, ges'>8 <f f'> | <ees ees'>4 <des des'> <ces ces'> |
  <des des'>4 ges2 | <ges ges'>4 <f f'> <ees ees'> | bes'2.~ |
  bes4 bes' ges~ | <ges, ges'> <des aes'>2 | ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | ges'2.~ |
  ges8 f <ges, des'>2 | d'2 ees4 \time 4/4 | aes,8 ees' ges ces ees4 f | <ges,, des' bes'>1\arpeggio\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  ges,2. | 2.~ | 4 ees2 | <aes ees'>2 des4 |
  \repeat volta 2 {
    s2 ges4~ | 4 aes bes~ | 4 ees8 des ces bes |
    aes4 ges2~ | 4 f8 ees des ces | bes2 bes'4~ |
    bes8 aes ges f ees4 | aes des,2 | s2. | % 290a
    s2.*3 |
    s2. | s | ces2 aes4 |
    des4 s2 |
    \alternative {
      \volta 1 { <ges ces>4 ees2 | aes,4 des2 | }
      \volta 2 { s2. }
    }
  }
  ees4 des2 | ges,2.~ | 2 s4 | s2. |
  s2.*3 |
  s4 ees'2 | s2. | s8 r r4 r |
  R2.*3 |
  R2. | r4 r r\fermata | ces2 aes4 |
  des4 s2 | ges,2. \time 4/4 | aes2 des | s1 |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano {\vo \soprano}
            \new Voice = alto {\vt \alto}
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopOne
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopTwo
            \new NullVoice \humAlignerOne
            \addlyrics \wordsAltoOne
            \new NullVoice \humAlignerTwo
            \addlyrics \wordsAltoTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice = tenor {\vo \tenor}
            \addlyrics \wordsTenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
            \new Voice {\vt \bass}
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
            \new Voice {\tiny \vth \flute}
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano {\vo \soprano}
            \new Voice = alto {\vt \alto}
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
            \new NullVoice \humAlignerAlto
            \addlyrics \wordsAlto
            \new NullVoice \humAlignerTenor
            \addlyrics \wordsTenorHum
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice = tenor {\vo \tenor}
            \addlyrics {\repeat unfold 29 \skip 1 \wordsTenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
            \new Voice {\vt \bass}
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano {\vo \soprano}
            \new Voice = alto {\vt \alto}
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSopAbove
            \new NullVoice \humAlignerAlto
            \addlyrics \wordsAlto
            \new NullVoice \humAlignerTenor
            \addlyrics \wordsTenorHum
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice = tenor {\vo \tenor}
            \addlyrics {\repeat unfold 29 \skip 1 \wordsTenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
            \new Voice {\vt \bass}
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassSepOne
            \addlyrics \wordsBassSepTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
           \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSepOne}
            \addlyrics {\tiny \wordsBassSepTwo}
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice = soprano \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSepOne}
            \addlyrics {\tiny \wordsBassSepTwo}
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice = soprano \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
           \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSepOne}
            \addlyrics {\tiny \wordsBassSepTwo}
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice = soprano \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
           \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassSepOne
            \addlyrics \wordsBassSepTwo
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
            \new Voice {\tiny \vth \fluteSingle}
            \new Voice \pianoRHoneSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new Staff = flute \with {
          midiInstrument = "flute"
        }
        <<
          \new Voice \fluteSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
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
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new Staff = flute \with {
          midiInstrument = "flute"
        }
        <<
          \new Voice \fluteSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
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
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new Staff = flute \with {
          midiInstrument = "flute"
        }
        <<
          \new Voice \fluteSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
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
  \bookOutputSuffix "midi-bass1"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidiOne
          >>
        >>
        \new Staff = flute \with {
          midiInstrument = "flute"
        }
        <<
          \new Voice \fluteSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
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
  \bookOutputSuffix "midi-bass2"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
           \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidiTwo
          >>
        >>
        \new Staff = flute \with {
          midiInstrument = "flute"
        }
        <<
          \new Voice \fluteSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
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
