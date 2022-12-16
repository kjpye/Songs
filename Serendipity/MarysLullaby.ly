\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mary's Lullaby"
%  subtitle    = "subtitle"
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
    s2.*13
    s2 \tempo 4=35 s4 \tempo 4=69 % 290c+
    s2.*2
    \alternative {
      {s2.*2}
      {s2.}
    }
  }
  s2.*14
  s2 \tempo 4=35 s4 \tempo 4=69 % 290c+
  s2.*3
  s1
  \tempo 4=46 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "289a" } s2.*4
  \repeat volta 2 {
    \textMark \markup { \box \bold "289b" } s2.*3
    \textMark \markup { \box \bold "289c" } s2.*3
    \textMark \markup { \box \bold "290a" } s2.*3
    \textMark \markup { \box \bold "290b" } s2.*3
    \textMark \markup { \box \bold "290c" } s2.*3
    \textMark \markup { \box \bold "291a" } s2.
    \alternative {{s2.*2} {s2.}}
  }
  \textMark \markup { \box \bold "291b" } s2.*4
  \textMark \markup { \box \bold "291c" } s2.*3
  \textMark \markup { \box \bold "291d" } s2.*3
  \textMark \markup { \box \bold "292a" } s2.*3
  \textMark \markup { \box \bold "292b" } s2.*3
  \textMark \markup { \box \bold "292c" } s2.*2 s1*2
}

apart    = { \partCombineApart     }
auto     = { \partCombineAutomatic }
pcchords = { \partCombineChords    }

soprano = \relative {
  \global \voiceOne 
  R2.*4
  \repeat volta 2 {
    \apart ges'8 aes bes ces bes aes | des2 ges,8 \auto aes | bes4. ces8 bes ges |
    aes4 ges2 | 8 aes bes ces bes aes | des2 8 ees |
    f4. ges8 f des | ees4 des4. 8^\p | <ees ges> <des f> <ces ees>4. <ees ges>8 | % 290a
    <des f>8 <ces ees> <bes des>4. <ges bes>8 | <aes ces> <bes des> <ces ees>4 <des f> | <bes des>2. |
    ges8 aes bes4. ces8 | bes8 aes <aes des>2\fermata ^\> | ges8^\pp aes bes ces bes ges |
    aes4 ges2 | % 291a
    \alternative { {R2. R } {R2.} }
  }
  R2.*7
  R2. | r4 r r8 des'^\pp | <ees ges> <des f> <ces ees>4. <ees ges>8 |
  <des f>8 <ces ees> <bes des>4. <ges bes>8 | <aes ces> <bes des> <ces ees>4 <des f> | <bes des>2. | % 292a
  ges8 aes bes4. ces8 | bes8 aes <aes des>2\fermata | ges8 aes bes ces bes ges |
  aes4 ges2 | \oneVoice R2. \time 4/4 | R1 | R1\fermata |
  \bar "|."
}

alto = \relative {
  \global \voiceTwo
  R2.*4 |
  \repeat volta 2 {
    R2. | r4 r ges'8(aes | bes aes ges f ees4~ |
    ees8 fes des2~ | 4) r r | r r des'4~( |
    des8 c bes aes ges4~ | 2 f8) 8 | ges4 ces8(bes) aes4~ | % 290a
    aes4 bes8 aes ges f | ees4 ges bes | aes(ges) f~ |
    f4 ees8(f) ges4 | 8 f fes2\fermata\omit\> | ees2.\omit\pp ~ (
    ees4 des2)
    \alternative {{s2.*2} {s2.} }
  }
  s2.*7
  s2. | s2 s8 f\omit\pp | ges4 ces8(bes) aes4~ | % 291d
  aes4 bes8 aes ges f | ees4 ges bes | aes4(ges) f~ | % 292a
  f4 ees8(f) ges4 | 8 f fes2\fermata | ees2.~ ( |
  ees4 des2) | s2. | s1 | s1 |
  \bar "|."
}

tenor = \relative {
  \global \voiceOne
  R2.*4
  \repeat volta 2 {
    R2. r4 r ges'4~( | 8 f ees des ces4~ |
    ces2 aes4 | bes4) \oneVoice r r | r \voiceOne des2~( |
    des2 8 bes~ | 8 c aes4 des8) 8 | <ces ees>8 ( [ <des f> ] ) <ees ges> ( [ <des f> ] ) <ces ees>4 | % 290a
    <des f>2 <bes des>8 8 | ces2 4 | bes2 des4(~ |
    des4 ces) ees | d4(des2\fermata) des4 (ces2~ |
    ces4 bes2) |
    \oneVoice \alternative { {R2. | R | } { R2. } }
  }
  s2. | ges8\omit\mp^\markup{\dynamic mp \italic cantabile} ^\markup\bold "TENORS (with BARITONES ad lib.)" aes bes ces bes aes | des2 ges,8 aes | bes4. ces8 bes ges | % 291b
  aes4 ges2 | ges8 aes bes ces bes aes | des2 8 ees |
  \voiceOne f4. ges8 f des | ees4 des4. 8 | <ces ees>8 ( [ <des f> ] ) <ees ges> ( [ <des f> ] ) <ces ees>4 |
  <des f>2 <bes des>8 8 | ces2 4 | bes2 des4~ ( % 292a
  des4 ces) ees | d4(des2\fermata) | des4(ces2~ |
  ces4 bes2) \oneVoice | R2. | R1 | R1\fermata |
  \bar "|."
}

bassOne = \relative {
  \global \voiceTwo
  R2.*4
  \repeat volta 2 {
    R2. | \apart R2. | r4 r ces'8(bes |
    aes4 ges2~ | 4) r r | r des'8(c bes4~ |
    bes8 aes ges f ees4 | aes4 des,4.)des8 | ges2 8(aes) | % 290a
    bes2 ees,4 | aes2 des,4 | 2. |
    ees2 bes'4 | aes8 bes ces4(bes\fermata) | ges2.^~ \omit( | 8 f <ges, des'>2) |
    \alternative { { R2. | R | } { R2. | } }
  }
  s2.*7
  R2. r4 r r8 des'' | ges,2 8(aes) |
  bes2 ees,4 | aes2 des,4 | 2. | % 292a
  ees2 bes'4 | aes8 bes ces4(bes\fermata) | ges2.~\omit( |
  ges8 f <ges, des'>2) | s2. | s1 | s1 |
  \bar "|."
}

bassOneMidi = \relative {
  \global
  R2.*4
  \repeat volta 2 {
    R2. | \apart R2. | r4 r ces'8(bes |
    aes4 ges2~ | 4) r r | r des'8(c bes4~ |
    bes8 aes ges f ees4 | aes4 des,4.)des8 | ges2 8(aes) | % 290a
    bes2 ees,4 | aes2 des,4 | 2. |
    ees2 bes'4 | aes8 bes ces4(bes\fermata) | ges2.^~ \omit( | 8 f des2) |
    \alternative { { R2. | R | } { R2. | } }
  }
  s2. | ges8\omit\mp^\markup{\dynamic mp \italic cantabile} aes bes ces bes aes | des2 ges,8 aes | bes4. ces8 bes ges | % 291b
  aes4 ges2 | ges8 aes bes ces bes aes | des2 8 ees |
  f4. ges8 f des | ees4 des4. 8 | ges,2 8(aes) |
  bes2 ees,4 | aes2 des,4 | 2. | % 292a
  ees2 bes'4 | aes8 bes ces4(bes\fermata) | ges2.~\omit( |
  ges8 f des2) | s2. | s1 | s1 |
  \bar "|."
}

bassTwo = \relative {
  s2.*4
  \repeat volta 2 {
    s2.*12
    \voiceTwo \hideNotes ees2 bes'4 \unHideNotes \voiceFour |
    aes4(ges2\fermata) | ces,2(aes4 | des4 \hideNotes ges,2) \unHideNotes | % 290c+
    \alternative { {s2.*2} {s2.} }
  }
  s2.*13
  \voiceTwo \hideNotes ees2 bes'4 \unHideNotes \voiceFour | aes'4(ges2\fermata) | ces,2(aes4 | % 292b
  des4 \hideNotes ges2) \unHideNotes | s2. | s1 | s1 |
}

bassTwoMidi = \relative {
  \global
  R2.*4
  \repeat volta 2 {
    R2. | \apart R2. | r4 r ces'8(bes |
    aes4 ges2~ | 4) r r | r des'8(c bes4~ |
    bes8 aes ges f ees4 | aes4 des,4.)des8 | ges2 8(aes) | % 290a
    bes2 ees,4 | aes2 des,4 | 2. |
    ees2 bes'4 | aes4(ges2\fermata) | ces,2(aes4 | des4 ges,2) |
    \alternative { { R2. | R | } { R2. | } }
  }
  s2. | ges'8\omit\mp^\markup{\dynamic mp \italic cantabile} aes bes ces bes aes | des2 ges,8 aes | bes4. ces8 bes ges | % 291b
  aes4 ges2 | ges8 aes bes ces bes aes | des2 8 ees |
  f4. ges8 f des | ees4 des4. 8 | ges,2 8(aes) |
  bes2 ees,4 | aes2 des,4 | 2. | % 292a
  ees2 bes'4 | aes4(ges2\fermata) | ces,2(aes4 |
  des4 ges,2) | s2. | s1 | s1 |
  \bar "|."
}

wordsSopOneAbove = \lyricmode {
  \set stanza = \markup {\dynamic p "1."}
  See the child that Ma -- ry bore~
  On her lap so soft -- ly sleep -- ing:
  In a sta -- ble cold and poor,
  Ox and ass their vi -- gil keep -- ing,
% first two choruses
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, \markup\italic sing \markup\italic lul -- \markup\italic la -- \markup\italic by,
  \markup\italic my \markup\italic own \markup\italic dear \markup\italic son, \markup\italic my \markup\italic child;
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic sing \markup\italic lul -- \markup\italic la -- \markup\italic by;
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic my \markup\italic lit -- \markup\italic tle \markup\italic ba -- \markup\italic by.
% third chorus
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, \markup\italic sing \markup\italic lul -- \markup\italic la -- \markup\italic by,
  \markup\italic my \markup\italic own \markup\italic dear \markup\italic son, \markup\italic my \markup\italic child;
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic sing \markup\italic lul -- \markup\italic la -- \markup\italic by;
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic my \markup\italic lit -- \markup\italic tle \markup\italic ba -- \markup\italic by.
}

wordsSopTwoAbove = \lyricmode {
  \set stanza = \markup {\dynamic mf "2."}
  Flights of an -- gels round his head~
  Sing him joy -- ful hymns of greet -- ing:
  'Peace on earth, good -- will to men.'
  Each to each the song re -- peat -- ing.
}

wordsSopMidi = \lyricmode {
  \set stanza = \markup {\dynamic p "1."}
  "See " "the " "child " "that " Ma "ry " "bore~ "
  "\nOn " "her " "lap " "so " soft "ly " sleep "ing: "
  "\nIn " "a " sta "ble " "cold " "and " "poor, "
  "\nOx " "and " "ass " "their " vi "gil " keep "ing, "
% first two choruses
  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by. "
  \set stanza = \markup {\dynamic mf "2."}
  "\nFlights " "of " an "gels " "round " "his " "head~ "
  "\nSing " "him " joy "ful " "hymns " "of " greet "ing: "
  "\n'Peace " "on " "earth, " good "will " "to " "men.' "
  "\nEach " "to " "each " "the " "song " re peat "ing. "
% second chorus
  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by. "
% third chorus
  "\nSing " lul la "by, " "sing " lul la "by, "
  "\nmy " "own " "dear " "son, " "my " "child; "
  "\nLul" la "by, " "sing " lul la "by; "
  "\nLul" la "by, " "my " lit "tle " ba "by. "
}

wordsOne = \lyricmode {
  \set stanza = \markup {\dynamic pp "1."}
  \markup\italic Hum __
  \markup\italic Hum __
  \set stanza = Alto
% first two choruses
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, __ \markup\italic lul -- \markup\italic la -- \markup\italic by,
  \markup\italic my \markup\italic own \markup\italic son, \markup\italic my \markup\italic child; __
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic lul -- \markup\italic la -- \markup\italic by;
  \set stanza = "A.T.B."
  \markup\italic Hum __
% third chorus
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, __ \markup\italic lul -- \markup\italic la -- \markup\italic by,
  \markup\italic my \markup\italic own \markup\italic son, \markup\italic my \markup\italic child; __
  \markup\italic Lul -- \markup\italic la -- \markup\italic by, \markup\italic lul -- \markup\italic la -- \markup\italic by;
  \set stanza = "A.T.B."
  \markup\italic Hum. __
}

wordsTwo = \lyricmode {
  \set stanza = \markup {\dynamic mp "2."}
  \markup\italic Aw __
  \markup\italic Aw __
}

wordsThree = \lyricmode {
}

wordsAltoMidi = \lyricmode {
  \set stanza = \markup {\dynamic pp "1."}
  "Hum " 
  "\nHum " 
  \set stanza = Alto
% first two choruses
  "\nSing " lul la "by, "  lul la "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum " 
  \set stanza = \markup {\dynamic mp "2."}
  "\nAw " 
  "\nAw " 
% first two choruses
  "\nSing " lul la "by, "  lul la "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum " 
% third chorus
  "\nSing " lul la "by, "  lul la "by, "
  "\nmy " "own " "son, " "my " "child; " 
  "\nLul" la "by, " lul la "by; "
  "\nHum. " 
}

wordsTenorAbove = \lyricmode {
  _ _
  \set stanza = Tenor
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, \markup\italic lul -- \markup\italic la, \markup\italic my \markup\italic own, \markup\italic my \markup\italic child;
  \markup\italic Lul -- \markup\italic la -- \markup\italic by; __
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3."
  Shep -- herds kneel -- ing by his bed~
  Of -- fer hom -- age with -- out mea -- sure;
  Wise men, by a bright star led,
  Bring him gifts of rich -- est trea -- sure.
}

wordsTenorMidi = \lyricmode {
  "Hum "  "Hum " 
  "\nSing " lul la "by, " lul "la, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 

  "\nAw "  "Aw " 
  "\nSing " lul la "by, " lul "la, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 

  \set stanza = "3."
  "\nShep" "herds " kneel "ing " "by " "his " "bed~ "
  "\nOf" "fer " hom "age " with "out " mea "sure; "
  "\nWise " "men, " "by " "a " "bright " "star " "led, "
  "\nBring " "him " "gifts " "of " rich "est " trea "sure. "
  "\nSing " lul la "by, " lul "la, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 
}

wordsBassOne = \lyricmode {
  _ _
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, \markup\italic my \markup\italic own, \markup\italic my \markup\italic child;
  \set stanza = "B.1"
  \markup\italic Lul -- \markup\italic la, \markup\italic lul -- \markup\italic la -- \markup\italic by; __
  ""
  \markup\italic Sing \markup\italic lul -- \markup\italic la -- \markup\italic by, \markup\italic my \markup\italic own, \markup\italic my \markup\italic child;
  \set stanza = "B.1"
  \markup\italic Lul -- \markup\italic la, \markup\italic lul -- \markup\italic la -- \markup\italic by; __
}

wordsBassTwo = \lyricmode {
  \set stanza = "B.2"
  \markup\italic Lul -- \markup\italic la -- \markup\italic by; __
  _
  \set stanza = "B.2"
  \markup\italic Lul -- \markup\italic la -- \markup\italic by; __
}

wordsBassOneMidi = \lyricmode {
  "Hum "  "Hum " 
  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; "  %%%
  "\nHum " 

  "\nAw "  "Aw " 
  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; "  %%%
  "\nHum " 

  \set stanza = "3."
  "\nShep" "herds " kneel "ing " "by " "his " "bed~ "
  "\nOf" "fer " hom "age " with "out " mea "sure; "
  "\nWise " "men, " "by " "a " "bright " "star " "led, "
  "\nBring " "him " "gifts " "of " rich "est " trea "sure. "

  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" "la, " lul la "by; "  %%%
  "\nHum " 
}

wordsBassTwoMidi = \lyricmode {
  "Hum "  "Hum " 
  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 

  "\nAw "  "Aw " 
  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 

  \set stanza = "3."
  "\nShep" "herds " kneel "ing " "by " "his " "bed~ "
  "\nOf" "fer " hom "age " with "out " mea "sure; "
  "\nWise " "men, " "by " "a " "bright " "star " "led, "
  "\nBring " "him " "gifts " "of " rich "est " trea "sure. "

  "\nSing " lul la "by, " "my " "own, " "my " "child; "
  "\nLul" la "by; " 
  "\nHum " 
}

flute = \relative {
  \global \voiceThree \teeny
  s2.*4
  \repeat volta 2 {
    s2. | r8^\markup{\italic Fl. "(v.2 only)"} des''(des' ces des4~ | 4) ges4.( ees8 |
    des4. des,8 des' ces | des4) r r  r8 f,(f' ees f4~ |
    f4) bes,2~( | 8 aes ges ees ges4 | ges8) r r4 r | % 290a
    s2.*7
    \alternative {{s2. s}{s}}
  }
  s2.*20
}

pianoRHone = \relative {
  \global
  ges'8(aes bes ces bes aes | des4. ges8 f ees | des4. 8 ces bes | ges4 aes2) |
  \repeat volta 2 {
    ges4 f ees | <des f>2 <des ges>4~ | ges8  aes ges f <ces ees>4~ |
    ees8 f des2 | ges f4~ | <des f>8 ees <des f>4 <f des'> ~ |
    des'8 c bes aes ges4~ | 8 aes8 2 | ges4 ces8 bes aes4~ | % 290a
    aes4 bes8 aes ges4~ | 4 <ges c> <f bes> | <des bes'>2. |
    ges2. | 8 <f aes> <fes aes>2\fermata | <ees ges>2. |
    <<{\apart r4 r8 ges' ^\markup{\teeny \column {"(v. 2: take small" "note instead" "of quavers)"}} f ees} \new Voice {s2 \teeny g4\laissezVibrer}>> |
    \alternative {
      {
        des4. 8 ces bes |
        <ees, ges>4 <ces aes'>2 |
      }
      {
        ges''8\repeatTie aes bes ces bes ges |
      }
    }
  }
  des2. | ges,4 f ees | <ces ees aes>2 bes'8 aes | <bes, ees ges>2. |
  <ees ges>8 <des f> ges4. aes8 | bes4. ces8 des4~ | 8 c bes aes bes4~ |
  bes8 c des2 | aes2. | \auto ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | \apart <ees ges>2. |
  <ces ees aes>4 ges' ges~( | 8 aes bes ces bes ges \time 4/4 | r8) des''8(ces bes ges ees aes4 | \auto ges1\fermata ) |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  <bes ges'>4(<bes f'>) <ces ees> |
  <ees aes>4 <des ges> <ges ces> |
  <<{\voiceFour f8 aes} \new Voice {\voiceTwo des,4}>> \voiceTwo <des ges>2 |
  ces2 <ces ees>4 |
  \repeat volta 2 {
    bes2 ces4 | s2 \hideNotes des4~ \unHideNotes | des s \hideNotes ces4 ~ |
    \unHideNotes ces2 aes4 | bes4 des8 ces des <aes ees'> | bes4. c8 des4 |
    f4 ges8 aes bes4~ | 4 ges f | <ces ees>8 <des f> <ees ges> <des ges> <ces ees>4 | % 290a
    <des f>2 <bes des>4 | ces2. | aes'4 ges f~ |
    <des f>4 <ces ees>8~<ces f> <ees ges>4 | d4 ces(bes\fermata) | des4 ces2 |
    <ces ees aes>4 <bes des ges>2 |
    \alternative {
      {
        ees8 f <des ges>2 | c4. ees8 f4 |
      }
      {
        ces'4 bes des |
      }
    }
  }
  <<{<ees, ges>2 ~ <ees f aes>4} \new Voice {ces'4 bes s}>> |
  <bes, des>2 ces4 | s2 <bes des>4 | s2. |
  ces4~ <ces ees> <bes des>8 ces | <bes bes'>4 <des aes'> <bes ges'> | <des f>4. <c ees>8 <bes des> <c ees> |
  <des f>4 <des ges>2 | <<{ees4 ges f} \new Voice {bes,8 c des2}>> | ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | r4 ces,2 |
  s4 <bes des>2 | bes2. | <ces ees aes>2 ces'2 | <ges bes>1\fermata |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\omit\p-\markup{\dynamic p \italic "legato sempre"} | s2. | s | s |
  \repeat volta 2 {
    s2.*14
    s2.\pp | % 290c++
    s2 s4\p | % 291a
    \alternative {{s2. | s2.}{s2.}}
  }
  s2.*8 |
  s4 s2\> | s2.\pp | % 291c+
  s2.*5 |
  s2.\pp | % 292b++
  s2 s4\omit\p-\markup{\dynamic p \italic espress.} | s2. s2 s\> | s1\pp |
}

pianoLHone = \relative {
  \global
  des2 ees4 | f8 des ees4 ges | aes ges aes8 bes | \parenthesize ces8 bes aes ges ees f |
  \repeat volta 2 {
    s2. | ces'2 s4 | s2. |
    s2.*3 |
    des2 8 bes~ | 8 c aes2 | <ges, ges'>2 ges8 aes | % 290a
    bes2 <ees, ees'>4 | aes2 <des, des'>4~ | 2 des'4 |
    <ees, ees'>2 bes''4 | aes4 <ges, ges'>2\fermata | ges'2.~ |
    ges8 f <ges, des'>2 |
    \alternative {
      {ges'8 aes bes4 aes8 bes | \parenthesize ces8 bes aes ges aes4 |}
      {<ges ces ees>4 <f bes des>2}
    }
  }
  ces'2. | des,2 ees4~ | 4 f <ges, ges'>8 <f f'> | <ees ees'>4 <des des'> <ces ces'> | % 291b
  <des des'>4 ges2 | <ges ges'>4 <f f'> <ees ees'> | bes'2.~ |
  bes4 bes' ges~ | <aes, ges'> <des aes'>2 | ges8 r r4 r |
  R2.*3 | % 292a
  R2. | r4 r r\fermata | ges2.~ |
  ges8 f <ges, des'>2 | d' ees4 | aes,8 ees' ges c ees4 f | <ges,, des' bes'>1\arpeggio\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  ges,2. | 2.~ | 4 ees2 | <aes ees'> des4 |
  \repeat volta 2 {
    <ges, ges'>2 ges'4~ | ges4 aes bes~ | 4 ees8 des ces bes |
    aes4 ges2~ | 4 f8 ees des ces | bes2 bes'4~ |
    bes8 aes ges f ees4 | aes des,2 | s2. | % 290a
    s2.*5 | ces2 aes4 |
    des4 s2
    \alternative {
      {<ges ces>4 ees2 | aes,4 des2 | }
      {s2.}
    }
  }
  ees4 des2 | ges,2.~ | 2 s4 | s2. | % 291b
  s2.*3 |
  s4 ees'2 | s2. | s |
  R2.*3 | % 292a
  R2. | r4 r r | ces2 aes4 |
  des4 s2 | ges,2. | aes2 des | s1 |
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice \alto
            \addlyrics {\wordsOne \wordsThree}
            \addlyrics \wordsTwo
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopOneAbove
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopTwoAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenor
            \new Voice \bassOne
            \addlyrics \wordsBassOne
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \flute
            \new Voice \partCombine #'(2 . 88) \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
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
  \bookOutputSuffix "repeat-piano"
  \score {
    \transpose ges ges
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \magnifyStaff #5/7
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice \alto
            \addlyrics {\wordsOne \wordsThree}
            \addlyrics \wordsTwo
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopOneAbove
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopTwoAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \magnifyStaff #5/7
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenor
            \new Voice \bassOne
            \addlyrics \wordsBassOne
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \flute
            \new Voice \partCombine #'(2 . 88) \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice \alto
            \addlyrics {\wordsOne \wordsThree}
            \addlyrics \wordsTwo
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopOneAbove
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopTwoAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenor
            \new Voice \bassOne
            \addlyrics \wordsBassOne
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \flute
            \new Voice \partCombine #'(2 . 88) \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice \alto
            \addlyrics {\wordsOne \wordsThree}
            \addlyrics \wordsTwo
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopOneAbove
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopTwoAbove
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenor
            \new Voice \bassOne
            \addlyrics \wordsBassOne
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenorAbove
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \flute
            \new Voice \partCombine #'(2 . 88) \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass1" \bassOneMidi
          >>
          \new Staff = "bass2" \with {
            instrumentName = #"Bass2"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass2" \bassTwoMidi
          >>
        >>
        \new Staff = flute \with {midiInstrument = "flute"} <<
            \new Voice \flute
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass1" \bassOneMidi
          >>
          \new Staff = "bass2" \with {
            instrumentName = #"Bass2"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass2" \bassTwoMidi
          >>
        >>
        \new Staff = flute \with {midiInstrument = "flute"} <<
            \new Voice \flute
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass1" \bassOneMidi
          >>
          \new Staff = "bass2" \with {
            instrumentName = #"Bass2"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass2" \bassTwoMidi
          >>
        >>
        \new Staff = flute \with {midiInstrument = "flute"} <<
            \new Voice \flute
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass1" \bassOneMidi
            \addlyrics \wordsBassOneMidi
          >>
          \new Staff = "bass2" \with {
            instrumentName = #"Bass2"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass2" \bassTwoMidi
          >>
        >>
        \new Staff = flute \with {midiInstrument = "flute"} <<
            \new Voice \flute
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass1" \bassOneMidi
          >>
          \new Staff = "bass2" \with {
            instrumentName = #"Bass2"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass2" \bassTwoMidi
            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new Staff = flute \with {midiInstrument = "flute"} <<
            \new Voice \flute
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
