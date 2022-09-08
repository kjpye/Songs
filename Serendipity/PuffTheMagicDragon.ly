\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Puff"
  subtitle    = "(The Magic Dragon)"
  subsubtitle = "as sung by Serendipity"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Peter Yarrow and Leonard ipton"
  arranger    = "Arr. Ross Hastings"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 16)

global = {
  \key c \major
  \time 2/2
}

TempoTrackA = {
  \tempo "Moderate Bounce" 2=100
%  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s1*2
  }
  s1*15
  s2 \tempo 2=50 s2 \tempo 2=100
}

TempoTrackB = {
    s1*14
  }

TempoTrackC = {
  s1 s2.
}

TempoTrackD = {
  \repeat volta 3 {
    s4
    s1*15
    s2 \tempo 2=25 s4 \tempo 2=100
  }
}

TempoTrackE = {
  s1*2 s2 \tempo 4=50 s2
}

TempoTrack = {
  \TempoTrackA
  \repeat segno 2 {
    \TempoTrackB
    \volta 1 {
      \TempoTrackC
      \TempoTrackD
    }
    \volta 2 {
      \TempoTrackE
    }
  }
}

TempoTrackNosegno = {
  \TempoTrackA
  \TempoTrackB
  \TempoTrackC
  \TempoTrackD
  \TempoTrackB
  \TempoTrackE
}

RehearsalTrackA = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "1a" } s1*2
  }
  s1*2
  \mark \markup { \box "1b" } s1*5
  \mark \markup { \box "2a" } s1*5
  \mark \markup { \box "2b" } s1*4
}

RehearsalTrackB = {
  \mark \markup { \box "3a" } s1*5
  \mark \markup { \box "3b" } s1*5 
  \mark \markup { \box "4a" } s1*4
}

RehearsalTrackC = {
  \mark \markup { \box "4b" } s1 s2.
}

RehearsalTrackD = {
  \repeat volta 3 {
    \partial 4 s4
    \mark \markup { \box "5a" } s1*4
    \mark \markup { \box "5b" } s1*4
    \mark \markup { \box "6a" } s1*4
    \mark \markup { \box "6b" } s1*3 s2.
  }
}

RehearsalTrackE = {
  \partial 1
  \mark \markup { \box "7a+" } s1*3
}

RehearsalTrack = {
  \RehearsalTrackA
  \repeat segno 2 {
    \RehearsalTrackB
    \volta 1 {
      \RehearsalTrackC
      \RehearsalTrackD
    }
    \volta 2 {
      \RehearsalTrackE
    }
  }
}

RehearsalTrackNosegno = {
  \RehearsalTrackA
  \RehearsalTrackB
  \RehearsalTrackC
  \RehearsalTrackD
  \RehearsalTrackB
  \RehearsalTrackE
}

ChordTrackA = \chordmode {
  \repeat volta 2 {
    s1*2
  }
  c1 | e:m
  f2 d4:m7 c:0 | c2. c4:maj7 | d2:m g | c4 g a:m c | d1:7
  d2:m g4 c:9 | c4 f:m d:7 c:7 | e1:m | f2 d4:m7 c:0 | c2. c4:9 % 2a
  d4:m7 f:m6 g2 | c4 g:7 c c:aug | f4 a:m6 g2:7 | c2 g:aug
}

ChordTrackB = \chordmode {
  c1 | e:m | f2 d4:m7 c:0 | c1 | d2:m g:7 % 3a
  c2 a:m | d:9 b4:m d:9 | g1:7 | c | e:m
  f2 d4:m7 c:0 | c1 | d4:m7 f:m6 g2:7 | c4 e:m a2:m % 4a
}

ChordTrackC = \chordmode {
  s4 d:9 s g:9 | s2.
}

ChordTrackD = \chordmode {
  \repeat volta 3 {
    g4:9
    c1 | e:m | f | c % 5a
    d2:m7 g:7 | c4 g a2:m | d g4 d:7 | g:7 d:m7 g2:7
    c1 | e:m | f | c % 6a
    d2:m7 g:7 | c4 g a2:m | d:9 g:9 | c:6 g4:aug
  }
}

ChordTrackE = \chordmode {
  d2:9 ees:9 | e:9 f:9 % 7a+
  c1
}

ChordTrack = {
  \ChordTrackA
  \repeat segno 2 {
    \ChordTrackB
    \volta 1 {
      \ChordTrackC
      \ChordTrackD
    }
    \volta 2 {
      \ChordTrackE
    }
  }
}

ChordTrackNosegno = {
  \ChordTrackA
  \ChordTrackB
  \ChordTrackC
  \ChordTrackD
  \ChordTrackB
  \ChordTrackE
}

sopranoTiny = \relative {
  c''4\omit\mp r8 8 4 4
  b2 g
  a2 c4 4 % 1b
  g2. 4
  f4 4 g f
  e4 g c4 8 8
  c4 a b c
  d1 % 2a
  c4 4 4 4
  b2 g
  a4 4 c c
  g2. 4
  f4 4 g f % 2b
  e4 g c-. c
  a4 c b d
  c4-.
}

sopranoA = \relative {
  c''4\mp^\markup Lightly r8 8 4 4
  b2 g
  a2 c4 4 % 1b
  g2. 4
  f4 4 g f
  e4 g c4 8 8
  c4 a b c
  d1 % 2a
  c4 4 4 4
  b2 g
  a4 4 c c
  g2. 4
  f4 4 g f % 2b
  e4 g c-. \breathe c
  a4 c b d
  c4-.
  r4 g2\fermata \<
}

sopranoB = \relative {
    c''4\f r r c % 3a
    e2 b
    a2 c4 4
    g2. 4
    f4 4 g f
    e4 g c4 8 8 % 3b
    c4 a b c
    \override Glissando.style = #'zigzag
    d2.\glissando g,4
    c4 r r c
    e2 b
    a2 c4 4 % 4a
    g2~4 r
    d'8^\markup\italic "(mockingly)" 8 c c b4-. g-.
    c8 8 b b a4-. c8 8
}

sopranoC = \relative {
  a'4 c b d % 4b
  c2.
}

sopranoD = \relative {
      \repeat volta 3 {
        g'4\mf
        c4 4 4 4 % 5a
        b4 g2 r4
        R1
        R1
        f4 4 g f % 5b
        e4 g c r
        R1
        b4(c d2)
        e1~( % 6a
        e2 b)
        c2(a
        c2.) g4
        f4 4 g f % 6b
        e4 g c c
        a4 c b d
        c4-- r g4\fermata\<
      }
}

sopranoE = \relative {
      gis'2\<^\markup\italic accel. a
      ais2 b
      c1\ff\fermata
}

soprano = \relative {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \sopranoA \bar "||"
  \repeat segno 2 {
    \sopranoB
    \alternative {
      \volta 1 {
        \sopranoC \break
        \sopranoD
      }
      \volta 2 \volta #'() {
        \section
        \sectionLabel "Coda"
        \sopranoE
      }
    }
  }
  \bar "|."
}

sopranoNosegno = {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \sopranoA \bar "||"
  \sopranoB
  \sopranoC \bar "||" \break
  \sopranoD \bar "||" \partial 1
  \set Score.currentBarNumber = #85
  \sopranoB
  \sopranoE
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsSopA = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!
}

emptySopA = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsSopB = \lyricmode {
  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
}

emptySopB = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsSopC = \lyricmode {
  land called Ho -- nah Lee, __
}

emptySopC = \lyricmode {
  _ _ _ _ _
}

wordsSopVOne = \lyricmode {
  To -- geth -- er they would trav -- el
  Jack -- ie kept a look -- out _
  "" "" ""
  _ Pi -- rate ships would low'r their flag
  when Puff roared out his name. _
}

wordsSopVTwo = \lyricmode {
  A drag -- on lives for -- ev -- er
  Paint -- ed wings and gi -- ant rings
  Ah! __ Ah! __ Ah! __
  And Puff that might -- y drag -- on, ""
  he ceased his fear -- less roar.
  _
}

wordsSopVThree = \lyricmode {
  His head was bent in sor -- row
  Puff no long -- er went to play
  "" "" ""
  So Puff that might -- y drag -- on,
  sad -- ly slipped in -- to his cave.
  Oh!
}

wordsSopD = \lyricmode {
  land called Ho -- nah Lee.
}

emptySopD = \lyricmode {
  _ _ _ _ _
}

wordsSopOne = {
  \wordsSopA
  \wordsSopB
  \wordsSopC
  \wordsSopVOne
  \wordsSopD
}

wordsSopTwo = {
  \emptySopA
  \emptySopB
  \emptySopC
  \wordsSopVTwo
  \emptySopD
}

wordsSopThree = {
  \emptySopA
  \emptySopB
  \emptySopC
  \wordsSopVThree
  \emptySopD
}

wordsSopNosegnoOne = {
  \wordsSopA
  \wordsSopB
  \wordsSopC
  \wordsSopVOne
  \emptySopB
  \emptySopD
}

wordsSopNosegnoTwo = {
  \emptySopA
  \emptySopB
  \emptySopC
  \wordsSopVTwo
  \emptySopB
  \emptySopD
}

wordsSopNosegnoThree = {
  \emptySopA
  \emptySopB
  \emptySopC
  \wordsSopVThree
  \wordsSopB
  \wordsSopD
}

wordsSopSingle = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee, __

  To -- geth -- er they would trav -- el
  Jack -- ie kept a look -- out _
  Ah! __ Ah! __ Ah! __
  _ Pi -- rate ships would low'r their flag
  when Puff roared out his name. _

  A drag -- on lives for -- ev -- er
  Paint -- ed wings and gi -- ant rings
  Ah! __ Ah! __ Ah! __
  And Puff that might -- y drag -- on, ""
  he ceased his fear -- less roar.
  _

  His head was bent in sor -- row
  Puff no long -- er went to play
  Ah! __ Ah! __ Ah! __
  So Puff that might -- y drag -- on,
  sad -- ly slipped in -- to his cave.
  Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee, __
}

wordsSopMidi = \lyricmode {
  "Puff, " "the " mag "ic " drag "on "
  "\nlived " "by " "the " "sea. "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nLit" "tle " Jack "ie " Pa "per "
  "\nloved " "that " ras "cal " "Puff "
  "\nAnd " "brought " "him " "strings " "and " seal "ing " "wax "
  "\nand " oth "er " fan "cy " "stuff. " "Oh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee,\n" 

  "\nTo" geth "er " "they " "would " trav "el "
  "\nJack" "ie " "kept " "a " look "out " ""
  "\nAh! "  "Ah! "  "Ah! " 
  "" "\nPi" "rate " "ships " "would " "low'r " "their " "flag "
  "\nwhen " "Puff " "roared " "out " "his " "name.\n" ""

  "\nA " drag "on " "lives " for ev "er "
  "\nPaint" "ed " "wings " "and " gi "ant " "rings "
  "\nAh! "  "Ah! "  "Ah! " 
  "\nAnd " "Puff " "that " might "y " drag "on, " " "
  "\nhe " "ceased " "his " fear "less " "roar.\n"
  ""

  "\nHis " "head " "was " "bent " "in " sor "row "
  "\nPuff " "no " long "er " "went " "to " "play "
  "\nAh! "  "Ah! "  "Ah! " 
  "\nSo " "Puff " "that " might "y " drag "on, "
  "\nsad" "ly " "slipped " in "to " "his " "cave. "
  "\nOh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee, " 
}

altoTiny = \relative {
  e'4\omit\mp r8 8 4 4
  g2 b,
  c2 f4 fis % 1b
  g4(f e) e
  d4 c b d
  c4 d e e8 g
  fis2 2
  f4 a g(f) % 2a
  e4 f fis g
  g2 b,
  c4 f f fis
  g4(f e) d
  c4 4 b d % 2b
  c4 f g-. gis
  a4 4 f f
  e4-.
}

altoAA = \relative {
  e'4\mp r8 8 4 4
  g2 b,
  c2 f4 fis % 1b
  g4(f e) e
  d4 c b d
  c4 d e e8 g
  fis2 2
  f4 a g(f) % 2a
  e4 f fis g
  g2 b,
  c4 f f fis
  g4(f e) d
  c4 4 b d % 2b
  c4 f g-. \breathe gis
  a4 4 f f
  e4-.
}

altoA = \relative {
  \altoAA
  r4 dis'2\fermata\<
}

altoB = \relative {
    e'4\f r r g % 3a
    g2 e
    c2 f4 fis
    g4(f e) e
    d4 c b d
    c4 d e a8 g % 3b
    fis4 e d c
    \override Glissando.style = #'zigzag
    b2.\glissando f'4
    e4 r r g
    g2 e
    c2 f4 fis % 4a
    g4(f e) r
    a8^\markup\italic "(mockingly)" a aes aes g4-. g-.
    g8 8 e e e4-. a8 g
  }

altoC = \relative {
  fis'4 4 f f % 4b
  e2 r4
}

altoD = \relative {
  \repeat volta 3 {
    g'4\mf
    e4 4 4 4 % 5a
    g4 e2 r4
    R1
    R1
    d4 4 b d % 5b
    c4 d e r
    R1
    g4(a b2)
    g1~( % 6a
    g2 e)
    f1(
    e2.) g4
    f4 d b d % 6b
    e4 g c c
    c4 a g b
    c4-- r g\fermata\<
  }
}

altoE = \relative {
  e'2\< f
  fis2 g
  c1\ff\fermata
}

alto = \relative {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \altoA
  \repeat segno 2 {
    \altoB
    \volta 1 {
      \altoC
      \altoD
    }
    \volta 2 {
      \altoE
    }
  }
  \bar "|."
}

altoNosegno = \relative {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \altoA
  \altoB
  \altoC
  \altoD
  \altoB
  \altoE
  \bar "|."
}

wordsAltoA = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!
}

emptyAltoA = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsAltoB = \lyricmode {
  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
}

emptyAltoB = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsAltoC = \lyricmode {
  land called Ho -- nah Lee, __
}

emptyAltoC = \lyricmode {
  _ _ _ _ _
}

wordsAltoVOne = \lyricmode {
  To -- geth -- er they would trav -- el
  Jack -- ie kept a look -- out _
  _ _ _
  _ Pi -- rate ships would low'r their flag
  when Puff roared out his name. _
}

wordsAltoVTwo = \lyricmode {
  A drag -- on lives for -- ev -- er
  Paint -- ed wings and gi -- ant rings
  Ah! __ Ah! __ Ah! __
  And Puff that might -- y dra -- gon,
  _ he ceased his fear -- less roar. _
}

wordsAltoVThree = \lyricmode {
  His head was bent in sor -- row
  Puff no long -- er went to play
  _ _ _
  So Puff that might -- y drag -- on,
  sad -- ly slipped in -- to his cave.
  Oh!
}

wordsAltoD = \lyricmode {
  land called Ho -- nah Lee.
}

emptyAltoD = \lyricmode {
  _ _ _ _ _
}

wordsAltoOne = {
  \wordsAltoA
  \wordsAltoB
  \wordsAltoC
  \wordsAltoVOne
  \wordsAltoD
}

wordsAltoTwo = {
  \emptyAltoA
  \emptyAltoB
  \emptyAltoC
  \wordsAltoVTwo
  \emptyAltoD
}

wordsAltoThree = {
  \emptyAltoA
  \emptyAltoB
  \emptyAltoC
  \wordsAltoVThree
  \emptyAltoD
}

wordsAltoNosegnoOne = {
  \wordsAltoA
  \wordsAltoB
  \wordsAltoC
  \wordsAltoVOne
  \emptyAltoB
  \emptyAltoD
}

wordsAltoNosegnoTwo = {
  \emptyAltoA
  \emptyAltoB
  \emptyAltoC
  \wordsAltoVTwo
  \emptyAltoB
  \emptyAltoD
}

wordsAltoNosegnoThree = {
  \emptyAltoA
  \emptyAltoB
  \emptyAltoC
  \wordsAltoVThree
  \wordsAltoB
  \wordsAltoD
}

wordsAltoSingle = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee, __

  To -- geth -- er they would trav -- el
  Jack -- ie kept a look -- out _
  Ah! __ Ah! __ Ah! __
  _ Pi -- rate ships would low'r their flag
  when Puff roared out his name. _

  A drag -- on lives for -- ev -- er
  Paint -- ed wings and gi -- ant rings
  Ah! __ Ah! __ Ah! __
  And Puff that might -- y dra -- gon,
  _ he ceased his fear -- less roar. _

  His head was bent in sor -- row
  Puff no long -- er went to play
  Ah! __ Ah! __ Ah! __
  So Puff that might -- y drag -- on,
  sad -- ly slipped in -- to his cave.
  Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee.
}

wordsAltoMidi = \lyricmode {
  "Puff, " "the " mag "ic " drag "on "
  "\nlived " "by " "the " "sea. "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nLit" "tle " Jack "ie " Pa "per "
  "\nloved " "that " ras "cal " "Puff "
  "\nAnd " "brought " "him " "strings " "and " seal "ing " "wax "
  "\nand " oth "er " fan "cy " "stuff. " "Oh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee,\n" 

  "\nTo" geth "er " "they " "would " trav "el "
  "\nJack" "ie " "kept " "a " look "out " ""
  "\nAh! "  "Ah! "  "Ah! " 
  "" "\nPi" "rate " "ships " "would " "low'r " "their " "flag "
  "\nwhen " "Puff " "roared " "out " "his " "name.\n" ""

  "\nA " drag "on " "lives " for ev "er "
  "\nPaint" "ed " "wings " "and " gi "ant " "rings "
  "\nAh! "  "Ah! "  "Ah! " 
  "\nAnd " "Puff " "that " might "y " dra "gon, "
  "" "\nhe " "ceased " "his " fear "less " "roar.\n" ""

  "\nHis " "head " "was " "bent " "in " sor "row "
  "\nPuff " "no " long "er " "went " "to " "play "
  "\nAh! "  "Ah! "  "Ah! " 
  "\nSo " "Puff " "that " might "y " drag "on, "
  "\nsad" "ly " "slipped " in "to " "his " "cave. "
  "\nOh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee. "
}

tenorTiny = \relative {
  g4\omit\mp r8 8 4 c
  b2 e
  a,2 4 4 % 1b
  c2. b4
  a4 4 g g
  g4 4 a4 8 8
  a4(c) b(a)
  a4 c b(a) % 2a
  g4 gis a ais
  b4(cis) dis(e)
  a,4 c a a
  c2. bes4
  a4 aes g g % 2b
  g4 b c-. c
  c4 e d b
  c4-.
}

tenorAA = \relative {
  g4\mp r8 8 4 c
  b2 e
  a,2 4 4 % 1b
  c2. b4
  a4 4 g g
  g4 4 a4 8 8
  a4(c) b(a)
  a4 c b(a) % 2a
  g4 gis a ais
  b4(cis) dis(e)
  a,4 c a a
  c2. bes4
  a4 aes g g % 2b
  g4 b c-. \breathe c
  c4 e d b
  c4-.
}

tenorA = \relative {
  \tenorAA
  r4 b2\fermata
}

tenorB = \relative {
    c4\f r r e % 3a
    e2 2
    a,2 4 4
    c2. b4
    a4 4 g g
    g4 4 a r % 3b
    R1
    g4 4 4 4
    c4 r r e
    e2 2
    a,2 4 4 % 4a
    c2~4 r
    d8^\markup\italic "(mockingly)" 8 8 8 4-. b-.
    c8 8 8 8 4-. e8 8
}

tenorC = \relative {
  d'4 4 4 b % 4b
  c4 r r
}

tenorD = \relative {
  \repeat volta 3 {
    r4
    R1 % 5a
    r2 r4 \slurDashed g8\mf~8 \slurSolid
    a4 4 c8 4.
    g1
    R1 % 5b
    r2 c4 4
    c4 a b c
    d2~4 g,
    c4 4 4 4 % 6a
    \slurDashed b4(g2) 8~8 \slurSolid
    a4 4 c c
    g2. 4
    f4 4 g f % 6b
    e4 g c c
    c4 a g b
    c4-- r g4\fermata\<
  }
}

tenorE = \relative {
  c'2\<^\markup\italic accel. cis % 7a+
  d2 dis
  c1\ff\fermata
}

tenor = \relative {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \tenorA
  \repeat segno 2 {
    \tenorB
    \volta 1 {
      \tenorC
      \tenorD
    }
    \volta 2 {
      \tenorE
    }
  }
}

tenorNosegno = \relative {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \tenorA
  \tenorB
  \tenorC
  \tenorD
  \tenorB
  \tenorE
}

wordsTenorA = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!
}

emptyTenorA = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsTenorB = \lyricmode {
  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
}

emptyTenorB = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsTenorC = \lyricmode {
  land called Ho -- nah Lee, __
}

emptyTenorC = \lyricmode {
  _ _ _ _ _
}

wordsTenorVOne = \lyricmode {
  \nom on a \yesm boat with bil -- lowed sail,
  perched on Puff's gi -- gan -- tic tail, __
  "" No -- ble kings and \nom princ -- es \yesm
  would bow when -- e'er they came,
  "" Pi -- rate ships would low'r their flag
  when Puff roared out his name. _
}

wordsTenorVTwo = \lyricmode {
  but __ not so lit -- tle boys,
  _ make way for oth -- er toys. __
  "" One grey night it \nom hap -- pened, \yesm
  \nom Jack -- ie \yesm Pa -- per came no more
  And Puff that might -- y drag -- _ on,
  he ceased his fear -- less roar. _
}

wordsTenorVThree = \lyricmode {
  _ green scales fell like rain,
  _ a -- long the cher -- ry lane. __
  With -- out his life long friend __
  "" Puff could not be brave
  So Puff that might -- y drag -- on
  sad -- ly slipped in -- to his cave.
  Oh!
}

wordsTenorD = \lyricmode {
  land called Ho -- nah Lee.
}

emptyTenorD = \lyricmode {
  _ _ _ _ _
}

wordsTenorOne = {
  \wordsTenorA
  \wordsTenorB
  \wordsTenorC
  \wordsTenorVOne
  \wordsTenorD
}

wordsTenorTwo = {
  \emptyTenorA
  \emptyTenorB
  \emptyTenorC
  \wordsTenorVTwo
  \emptyTenorD
}

wordsTenorThree = {
  \emptyTenorA
  \emptyTenorB
  \emptyTenorC
  \wordsTenorVThree
  \emptyTenorD
}

wordsTenorNosegnoOne = {
  \wordsTenorA
  \wordsTenorB
  \wordsTenorC
  \wordsTenorVOne
  \emptyTenorB
  \emptyTenorD
}

wordsTenorNosegnoTwo = {
  \emptyTenorA
  \emptyTenorB
  \emptyTenorC
  \wordsTenorVTwo
  \emptyTenorB
  \emptyTenorD
}

wordsTenorNosegnoThree = {
  \emptyTenorA
  \emptyTenorB
  \emptyTenorC
  \wordsTenorVThree
  \wordsTenorB
  \wordsTenorD
}

wordsTenorSingle = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Lit -- tle Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee, __

  \nom on a \yesm boat with bil -- lowed sail,
  perched on Puff's gi -- gan -- tic tail, __
  "" No -- ble kings and \nom princ -- es \yesm
  would bow when -- e'er they came,
  "" Pi -- rate ships would low'r their flag
  when Puff roared out his name. _

  but __ not so lit -- tle boys,
  _ make way for oth -- er toys. __
  "" One grey night it \nom hap -- pened, \yesm
  \nom Jack -- ie \yesm Pa -- per came no more
  And Puff that might -- y drag -- _ on,
  he ceased his fear -- less roar. _

  _ green scales fell like rain,
  _ a -- long the cher -- ry lane. __
  With -- out his life long friend __
  "" Puff could not be brave
  So Puff that might -- y drag -- on
  sad -- ly slipped in -- to his cave.
  Oh!

  Puff. the dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the dra -- gon lived by the sea __
  La -- la la -- la la la,
  la -- la la -- la la in a
  land called Ho -- nah Lee.
}

wordsTenorMidi = \lyricmode {
  "Puff, " "the " mag "ic " drag "on "
  "\nlived " "by " "the " "sea. "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nLit" "tle " Jack "ie " Pa "per "
  "\nloved " "that " ras "cal " "Puff "
  "\nAnd " "brought " "him " "strings " "and " seal "ing " "wax "
  "\nand " oth "er " fan "cy " "stuff. " "Oh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nHo" "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee,\n" 

  \nom "on " "a " \yesm "boat " "with " bil -- "lowed " "sail, "
  "\nperched " "on " "Puff's " gi gan "tic " "tail,\n" 
  "" No "ble " "kings " "and " \nom princ "es " \yesm
  "\nwould " "bow " when "e'er " "they " "came, "
  "\n " Pi "rate " "ships " "would " "low'r " "their " "flag "
  "\nwhen " "Puff " "roared " "out " "his " "name.\n" ""

  "\nbut "  "not " "so " lit "tle " "boys, "
  "" "\nmake " "way " "for " oth "er " "toys. " 
  "\n " "One " "grey " "night " "it " \nom hap "pened, " \yesm
  \nom Jack -- "ie " \yesm Pa -- "per " "came " "no " "more "
  "\nAnd " "Puff " "that " might "y " drag "" "on, "
  "\nhe " "ceased " "his " fear "less " "roar.\n" ""

  "" "\ngreen " "scales " "fell " "like " "rain, "
  "" "\na" "long " "the " cher "ry " "lane. " 
  "\nWith" "out " "his " "life " "long " "friend " 
  "\n " "Puff " "could " "not " "be " "brave "
  "\nSo " "Puff " "that " might "y " drag "on "
  "\nsad" "ly " "slipped " in "to " "his " "cave. "
  "\nOh!\n"

  "\nPuff. " "the " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nHo" "nah " "Lee, "
  "\nOh, " "Puff, " "the " dra "gon " "lived " "by " "the " "sea " 
  "\nLa" "la " la "la " "la " "la, "
  "\nla" "la " la "la " "la " "in " "a "
  "\nland " "called " Ho "nah " "Lee. "
}

bassTiny = \relative {
  c4\omit\mp r8 8 4 4
  e2 e
  f2 d4 dis % 1b
  e4(d c) c
  d4 4 g, b
  c4 b a c8 e
  d2 2
  g4 4 g,2 % 2a
  c2 2
  e2 2
  f4 e d dis
  e4(d c) c
  d4 4 g, b % 2b
  c4 d e-. 4
  f4 fis g g,
  c4-.
}

bassAA = \relative {
  c4\mp r8 8 4 4
  e2 e
  f2 d4 dis % 1b
  e4(d c) c
  d4 4 g, b
  c4 b a c8 e
  d2 2
  g4 4 g,2 % 2a
  c2 2
  e2 2
  f4 e d dis
  e4(d c) c
  d4 4 g, b % 2b
  c4 d e-. \breathe 4
  f4 fis g g,
  c4-.
}

bassA = \relative {
  \bassAA
  r4 g2\fermata
}

bassB = \relative {
  c4\f r8 e g4 c % 3a
  b2 g
  f2 d4 dis
  e4(d c) c
  d4 d g, b
  c4 b a r % 3b
  R1
  g'4 f e d
  c4 r8 e g4 c
  b2 g
  f4(e) d dis % 4a
  e4(d c) g'^\markup "(Soli)"
  f4 4 g f
  e4 g c a8 8
}

bassC = \relative {
  c'4 a g g, % 4b
  c4 r r
}

bassD = \relative {
  \repeat volta 3 {
    r4
    R1 % 5a
    r2 r4 \slurDashed g8\mf ~8 \slurSolid
    f4 4 a a
    e1
    R1 % 5b
    r2 c'4 b
    a4 fis d fis
    f2~4 g
    c4 4 4 4 % 6a
    \slurDashed b4(g2) 8(8) \slurSolid
    a4 4 c c
    g2. 4
    f4 d b d % 6b
    c4 d e a
    d,4 4 g g,
    c4-- r g'4\fermata
  }
}

bassE = \relative {
  d2\<^\markup\italic accel.  dis
  e2 f
  <c c'>1\ff\fermata
}

bass = {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \bassA
  \repeat segno 2 {
    \bassB
    \volta 1 {
      \bassC
      \bassD
    }
    \volta 2 {
      \bassE
    }
  }
}

bassNosegno = {
  \global \dynamicUp
  \repeat volta 2 {R1*2}
  \bassA
  \bassB
  \bassC
  \bassD
  \bassB
  \bassE
}

wordsBassA = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!
}

emptyBassA = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsBassB = \lyricmode {
  Puff, the ma -- gic dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the ma -- gic dra -- gon lived by the sea __
  And fro -- licked in the au -- tumn mist in a
}

emptyBassB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

wordsBassC = \lyricmode {
  land called Ho -- nah Lee, __
}

emptyBassC = \lyricmode {
  _ _ _ _ _
}

wordsBassVOne = \lyricmode {
  \nom on a \yesm boat with bil -- lowed sail,
  perched on Puff's gi -- gan -- tic tail, __
  "" No -- ble kings and \nom princ -- es \yesm
  would bow when -- e'er they came,
  "" Pi -- rate ships would low'r their flag
  when Puff roared out his name. _
}

wordsBassVTwo = \lyricmode {
  but __ not so lit -- tle boys,
  _ make way for oth -- er toys. __
  "" One grey night it \nom hap -- pened, \yesm
  \nom Jack -- ie \yesm Pa -- per came no more
  And Puff that might -- y drag -- _ on,
  he ceased his fear -- less roar. _
}

wordsBassVThree = \lyricmode {
  _ green scales fell like rain,
  _ a -- long the cher -- ry lane. __
  With -- out his life long friend __
  "" Puff could not be brave
  So Puff that might -- y drag -- on
  sad -- ly slipped in -- to his cave.
  Oh!
}

wordsBassD = \lyricmode {
  land called Ho -- nah Lee.
}

emptyBassD = \lyricmode {
  _ _ _ _ _
}

wordsBassOne = {
  \wordsBassA
  \wordsBassB
  \wordsBassC
  \wordsBassVOne
  \wordsBassD
}

wordsBassTwo = {
  \emptyBassA
  \emptyBassB
  \emptyBassC
  \wordsBassVTwo
  \emptyBassD
}

wordsBassThree = {
  \emptyBassA
  \emptyBassB
  \emptyBassC
  \wordsBassVThree
  \emptyBassD
}

wordsBassNosegnoOne = {
  \wordsBassA
  \wordsBassB
  \wordsBassC
  \wordsBassVOne
  \emptyBassB
  \emptyBassD
}

wordsBassNosegnoTwo = {
  \emptyBassA
  \emptyBassB
  \emptyBassC
  \wordsBassVTwo
  \emptyBassB
  \emptyBassD
}

wordsBassNosegnoThree = {
  \emptyBassA
  \emptyBassB
  \emptyBassC
  \wordsBassVThree
  \wordsBassB
  \wordsBassD
}

wordsBassSingle = \lyricmode {
  Puff, the mag -- ic drag -- on
  lived by the sea.
  And fro -- licked in the au -- tumn mist
  in a land called Ho -- nah Lee,
  Jack -- ie Pa -- per
  loved that ras -- cal Puff
  And brought him strings and seal -- ing wax
  and oth -- er fan -- cy stuff. Oh!

  Puff, the ma -- gic dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the ma -- gic dra -- gon lived by the sea __
  And fro -- licked in the au -- tumn mist in a
  land called Ho -- nah Lee, __

    \nom on a \yesm boat with bil -- lowed sail,
  perched on Puff's gi -- gan -- tic tail, __
  "" No -- ble kings and \nom princ -- es \yesm
  would bow when -- e'er they came,
  "" Pi -- rate ships would low'r their flag
  when Puff roared out his name. _

  but __ not so lit -- tle boys,
  _ make way for oth -- er toys. __
  "" One grey night it \nom hap -- pened, \yesm
  \nom Jack -- ie \yesm Pa -- per came no more
  And Puff that might -- y drag -- _ on,
  he ceased his fear -- less roar. _

  _ green scales fell like rain,
  _ a -- long the cher -- ry lane. __
  With -- out his life long friend __
  "" Puff could not be brave
  So Puff that might -- y drag -- on
  sad -- ly slipped in -- to his cave.
  Oh!

  Puff, the ma -- gic dra -- gon lived by the sea
  And fro -- licked in the au -- tumn mist
  Ho -- nah Lee,
  Oh, Puff, the ma -- gic dra -- gon lived by the sea __
  And fro -- licked in the au -- tumn mist in a
  land called Ho -- nah Lee, __
}

wordsBassMidi = \lyricmode {
  "Puff, " "the " mag "ic " drag "on "
  "\nlived " "by " "the " "sea. "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nin " "a " "land " "called " Ho "nah " "Lee, "
  "\nJack" "ie " Pa "per "
  "\nloved " "that " ras "cal " "Puff "
  "\nAnd " "brought " "him " "strings " "and " seal "ing " "wax "
  "\nand " oth "er " fan "cy " "stuff. " "Oh!\n"

  "\nPuff, " "the " ma "gic " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nHo" "nah " "Lee, "
  "\nOh, " "Puff, " "the " ma "gic " dra "gon " "lived " "by " "the " "sea " 
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist " "in " "a "
  "\nland " "called " Ho "nah " "Lee,\n" 

  \nom "on " "a " \yesm "boat " "with " bil -- "lowed " "sail, "
  "\nperched " "on " "Puff's " gi gan "tic " "tail, " 
  "\n " No "ble " "kings " "and " \nom princ "es " \yesm
  "\nwould " "bow " when "e'er " "they " "came, "
  "\n " Pi "rate " "ships " "would " "low'r " "their " "flag "
  "\nwhen " "Puff " "roared " "out " "his " "name.\n" ""

  "\nbut "  "not " "so " lit "tle " "boys, "
  "" "\nmake " "way " "for " oth "er " "toys. " 
  "\n " "One " "grey " "night " "it " \nom hap "pened, " \yesm
  \nom Jack -- "ie " \yesm Pa -- "per " "came " "no " "more "
  "\nAnd " "Puff " "that " might "y " drag "" "on, "
  "\nhe " "ceased " "his " fear "less " "roar.\n" ""

  "" "\ngreen " "scales " "fell " "like " "rain, "
  "" "\na" "long " "the " cher "ry " "lane. " 
  "\nWith" "out " "his " "life " "long " "friend " 
  "\n " "Puff " "could " "not " "be " "brave "
  "\nSo " "Puff " "that " might "y " drag "on "
  "\nsad" "ly " "slipped " in "to " "his " "cave. "
  "\nOh!\n"

  "\nPuff, " "the " ma "gic " dra "gon " "lived " "by " "the " "sea "
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist "
  "\nHo" "nah " "Lee, "
  "\nOh, " "Puff, " "the " ma "gic " dra "gon " "lived " "by " "the " "sea " 
  "\nAnd " fro "licked " "in " "the " au "tumn " "mist " "in " "a "
  "\nland " "called " Ho "nah " "Lee, " 
}

pianoRHoneA = \relative {
  \repeat volta 2 {
    r2^\markup Vamp ^\markup\bold "Moderate Bounce" <e' g c>4-> r
    r4 <d f d'>4-> r <f a d>->
  }
  s1*15
  \override Glissando.style = #'zigzag
  s4 r \ottava #1 dis'''2\fermata \glissando ^\markup\italic "black key gliss." \ottava #0 \change Staff = pianolh
}

pianoRHoneAB = \relative {
    << \once\hideNotes g, \new Voice {\change Staff = pianorh r4 e'(<c' e> g)} >> % 3a
}

pianoRHoneB = \relative {
    \change Staff = pianorh r4 g(<e' g> b)
    r4 s <f' a> s
    g4^(f e2)
    <a, d f>4 <a c f> <g b f'> <g d' f>
    <g c e>2 r4 <c e a> % 3b
    r4 <c e fis a> <d f b> <e f a c>
    <d f g b>1
    r4 e,(<c' e> g)
    r4 g(<e' g> b)
    r4 s <f' a> s % 4a
    g4^(f e) r
    c8(f aes c <d, f b>4-.) r
    c8(g' b g <c, e a>4-.) r
  }

pianoRHoneC = \relative {
  r4 <e' fis a c>-> r <f a b d>-> % 4b
  r2 r4
}

pianoRHoneD = \relative {
  \repeat volta 3 {
    <f' a d>4->
    c'1( % 5a
    b1
    a1
    g1)
    d2^(g4 f % 5b
    <c e>4 <d g> <e c'>2)
    <d c'>4(<fis a> <g b> <fis c'>)
    <b d>4(<a c> <g b>2)
    c1( % 6a
    b1
    a1
    g1)
    f2^(g4 f % 6b
    <c e>4 <d g> <e c'>2)
    <c e a>2->
    <d f a b>->
    <e g a c>4-. r \ottava #1 dis'''\fermata^\markup\italic "black key gliss." \glissando \ottava #0
  }
}

pianoRHoneE = \relative {
  <e' gis>2-^ <f a>-^ % 7a+
  <fis ais>-^ <g b>-^
  e1\fermata
}

pianoRHone = {
  \global \dynamicUp
  \pianoRHoneA
  \repeat segno 2 {
    \pianoRHoneAB
    \pianoRHoneB
    \volta 1 {
      \pianoRHoneC
      \pianoRHoneD
    }
    \volta 2 {
      \pianoRHoneE
    }
  }
}

pianoRHoneNosegno = {
  \global \dynamicUp
  \pianoRHoneA
  \pianoRHoneAB
  \pianoRHoneB
  \pianoRHoneC
  \pianoRHoneD
  \pianoRHoneAB
  \pianoRHoneB
  \pianoRHoneE
}

pianoRHtwoA = \relative {
  \repeat volta 2 { s1*2 } s1*2
  s1*14
}

pianoRHtwoB = \relative {
  s1*2 % 3a
  s4 a_(s c4~ \voiceTwo
  c2. b4)
  s1*6
  s4 a(s c~ % 4a
  c2~4) r
  s1*2
}

pianoRHtwoC = {
  s1
  s2.
}

pianoRHtwoD = \relative {
  \repeat volta 3 {
    s4
    r2 <e' g>4 r % 5a
    r2 q4 r
    r2 <d f>4 r
    r2 <c e>4 r
    r4 c(b2) % 5b
    s1
    s1
    f'1
    r2 <e g>4 r % 6a
    r2 q4 r
    r2 <d f>4 r
    r2 <c e>4 r
    r4 c(b2) % 6b
    s1
    s1
    s2.
  }
}

pianoRHtwoE = \relative {
  s1 % 7a+
  s1
  s1 % 8a
}

pianoRHtwo = {
  \global \dynamicUp
  \pianoRHtwoA
  \repeat segno 2 {
    \pianoRHtwoB
    \volta 1 {
      \pianoRHtwoC
      \pianoRHtwoD
    }
    \volta 2 {
      \pianoRHtwoE
    }
  }
}

pianoRHtwoNosegno = {
  \global \dynamicUp
  \pianoRHtwoA
  \pianoRHtwoB
  \pianoRHtwoC
  \pianoRHtwoD
  \pianoRHtwoB
  \pianoRHtwoE
}

dynamicsPianoA = {
  \repeat volta 2 {
    s1\omit\f\omit\dim-\markup{\dynamic f \italic "sempre dim."}
    s1
  }
  s1\mp
  s1*14
  s4 s\ff s2\<
}

dynamicsPianoB = {
  s1\mf % 3a
  s1*13
}

dynamicsPianoC = {
  s1
  s2.\omit\f\omit\dim-\markup {\dynamic f \italic dim.}
}

dynamicsPianoD = {
  \repeat volta 3 {
    s4
    s1\mp % 5a
    s1*7
    s1\mp % 6a
    s1*6
    s4 s\ff s\<
  }
}

dynamicsPianoE = {
  s1\f-\markup\italic accel. \<
  s1
  s1\ff
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \dynamicsPianoA
  \repeat segno 2 {
    \dynamicsPianoB
    \volta 1 {
      \dynamicsPianoC
      \dynamicsPianoD
    }
    \volta 2 {
      \dynamicsPianoE
    }
  }
}

dynamicsPianoNosegno = {
  \override DynamicTextSpanner.style = #'none
  \dynamicsPianoA
  \dynamicsPianoB
  \dynamicsPianoC
  \dynamicsPianoD
  \dynamicsPianoB
  \dynamicsPianoE
}

pianoLHoneA = \relative {
  \repeat volta 2 {
    c4-. g'-. c-. bes,-.
    f'4-. bes-. g,-. b'-.
  }
  s1*15
  r4 <g,, g'>2\fermata
}

pianoLHoneB = \relative  {
  s4
  <c, g'>4 r r2 % 3a
  <e b'>4 r r2
  f4(c' d dis
  e4 d c2)
  d2 g,4 b
  c4 b a~<a a'> % 3b
  d2~<d, d'>~
  <g d'>4 <f f'> <e e'> <d d'>
  <c g'>4 r r2
  <a b'>4 r r2
  f'4(c' d dis % 4a
  e4 d c) r
  d4-. d,-. g-. g'-.
  e4-. e,-. a-.
}

pianoLHoneC = \relative {
  a-.
  r4 <d,, d'>-> r <g, g'> % 4b
  c'4-. g'-. c-.
}

pianoLHoneD = \relative {
  \repeat volta 3 {
    b4-.
    c,4-. g'-. c-. g-. % 5a
    e4-. g-. b-. g-.
    f4-. a-. c-. a-.
    \voiceOne e4-. g-. a-. g-.r4 a(g2) % 5b
    g2(a4 g)
    fis4(c' b a) \oneVoice
    <g, g'>2 g'8(f e d)
    c4-. g'-. c-. g-. % 6a
    e4-. g-. b-. g-.
    f4-. a-. c-. a-.
    e4-. g-. a-. g-.
    \voiceOne r4 a(g2) g2(a4 g) % 6b
    <d fis>2-^ <g, d' g>-^
    \oneVoice <c g'>4-. <g, g'>2\fermata
  }
}

pianoLHoneE = \relative {
  <d fis c'>2-^ <dis g cis>-^ % 7a+
  <e gis d'>2-^ <f a dis>-^
  c4-. g'-. c2\fermata % 8a
}

pianoLHone = {
  \global \dynamicUp
  \pianoLHoneA
  \repeat segno 2 {
    \pianoLHoneB
    \volta 1 {
      \pianoLHoneC
      \pianoLHoneD
    }
    \volta 2 {
      \pianoLHoneE
    }
  }
}

pianoLHoneNosegno = {
  \global \dynamicUp
  \pianoLHoneA
  \pianoLHoneB
  \pianoLHoneC
  \pianoLHoneD
  \pianoLHoneB
  \pianoLHoneE
}

pianoLHtwoA = \relative {
  \repeat volta 2 { s1*2 } s1*2
  s1*14
}

pianoLHtwoB = \relative {
  s1*14
}

pianoLHtwoC = \relative {
  s1
  s2.
}

pianoLHtwoD = \relative {
  \repeat volta 3 {
    s4
    s1*4
    d2(g,) % 5b
    c4(b a2)
    d1
    s1*5
    d2(g,) % 6b
    c4(b a2)
    s1
    s2.
  }
}

pianoLHtwoE = {
  s1*3
}

pianoLHtwo = {
  \global \dynamicUp
  \pianoLHtwoA
  \repeat segno 2 {
    \pianoLHtwoB
    \volta 1 {
      \pianoLHtwoC
      \pianoLHtwoD
    }
    \volta 2 {
      \pianoLHtwoE
    }
  }
}

pianoLHtwoNosegno = {
  \global \dynamicUp
  \pianoLHtwoA
  \pianoLHtwoB
  \pianoLHtwoC
  \pianoLHtwoD
  \pianoLHtwoB
  \pianoLHtwoE
}

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
            \addlyrics \wordsSopThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
            \addlyrics \wordsAltoThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
            \addlyrics \wordsTenorThree
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
            \addlyrics \wordsBassThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \partCombine {\tiny \repeat volta 2 {s1*2} \sopranoB}
                                    {\tiny \repeat volta 2 {s1*2} \altoA}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice { \tiny \partCombine {\tiny \repeat volta 2 {s1*2} \tenorTiny}
                                    {\tiny \repeat volta 2 {s1*2} \bassTiny}
                       }
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
  \bookOutputSuffix "nosegno"
  \score {
%    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrackNosegno }
%        \new FretBoards { \ChordTrackNosegno }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
            \addlyrics \wordsSopNosegnoOne
            \addlyrics \wordsSopNosegnoTwo
            \addlyrics \wordsSopNosegnoThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
            \addlyrics \wordsAltoNosegnoOne
            \addlyrics \wordsAltoNosegnoTwo
            \addlyrics \wordsAltoNosegnoThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
            \addlyrics \wordsTenorNosegnoOne
            \addlyrics \wordsTenorNosegnoTwo
            \addlyrics \wordsTenorNosegnoThree
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
            \addlyrics \wordsBassNosegnoOne
            \addlyrics \wordsBassNosegnoTwo
            \addlyrics \wordsBassNosegnoThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice { \voiceOne \repeat volta 2 {s1*2} \tiny \sopranoTiny }
            \new Voice { \voiceTwo \repeat volta 2 {s1*2} \tiny \altoTiny }
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\voiceOne \repeat volta 2 {s1*2} \tiny \tenorTiny}
            \new Voice {\voiceTwo \repeat volta 2 {s1*2} \tiny \bassTiny}
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
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
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
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
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
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
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
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
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrackNosegno
            \new Voice \RehearsalTrackNosegno
            \new Voice \sopranoNosegno
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoNosegno
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorNosegno
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassNosegno
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneNosegno
            \new Voice \pianoRHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
          \new Dynamics \dynamicsPianoNosegno
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneNosegno
            \new Voice \pianoLHtwoNosegno
            \new Voice {\tiny \repeat volta 2 {s1*2} \sopranoTiny}
            \new Voice {\tiny \repeat volta 2 {s1*2} \altoTiny}
          >>
        >>
      >>
    >>
    \midi {}
  }
}
