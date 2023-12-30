\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Pick a Bale o' Cotton"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
  arranger    = "Arr. Roger Ames"
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
  \numericTimeSignature
  \key g \major
  \time 2/2
}

TempoTrack = {
  \tempo Lively 2=76
  s1*7
  \set Score.tempoHideNote = ##t
  s1. | s1*4 | s1. | s1*6 |
  s2. \tempo 2=50 s4 \tempo 2=76 % 4b+3
  s1*23 |
  \once \set Score.tempoHideNote = ##f
  \tempo "Più mosso" 2=84 | s1 | s2. | s1 | s2. |
  \repeat volta 2 { s1 | s2. | s1 | s2. | } % 7
  \repeat volta 2 {
    s1 | s2. | s1 |
    \alternative { {s2.} {s1} }
  }
  s1 \once \set Score.tempoHideNote = ##f \tempo "Square dance tempo" 2=88 s1*3 |
  s1*2
  \repeat volta 2 { s1*2 \alternative { {s1*2} {s1} } }
  s1*13 |
  \repeat volta 2 { s1*4 | } % 11b
  s1*6 |
  s2 s8 \tempo 2=44 s4. \tempo 2=88 | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*5 |
  \textMark \markup { \box "2b" } s1 s1 s1. s1 |
  \textMark \markup { \box "2c" } s1*3 |
  \textMark \markup { \box "3a" } s1. s1*3 |
  \textMark \markup { \box "3b" } s1*4 |
  \textMark \markup { \box "4a" } s1*5 |
  \textMark \markup { \box "4b" } s1*4 |
  \textMark \markup { \box "5a" } s1*3 |
  \textMark \markup { \box "5b" } s1*4 |
  \textMark \markup { \box "6a" } s1*4 |
  \textMark \markup { \box "6b" } s1*4 |
  \textMark \markup { \box "7a" } s2. s1 s2. |
  \repeat volta 2 {
    s1 |
    \textMark \markup { \box "7b" } s2. s1 s2. |
  }
  \repeat volta 2 {
    \textMark \markup { \box "8a" } s1 s2. s1 |
    \alternative {
      { s2. |}
      {
        \textMark \markup { \box "8b" } s1 |
      }
    }
  }
  s1*4 |
  \textMark \markup { \box "9a" } s1*2 |
  \repeat volta 2 {
    s1*2 |
    \alternative {
      {
        \textMark \markup { \box "9b" } s1*2 |
      }
      {
        s1 |
      }
    }
  }
  \textMark \markup { \box "10a" } s1*4 |
  \textMark \markup { \box "10b" } s1*4 |
  \textMark \markup { \box "11a" } s1*5 |
  \repeat volta 2 {
    \textMark \markup { \box "11b" } s1*4 |
  }
  \textMark \markup { \box "12a" } s1*4 |
  \textMark \markup { \box "12b" } s1*4 |
}

dynamicsSop = {
  s1 | s | s | s\mf | s | s | s | s2 s1\p\< | s\mf | s1*3 |
  s1. | s2\< s\! | s\> s\! | s\< s\! | % 3a
  s1 | s2\< s\f | s1\omit\p-\markup{\italic sub. \dynamic p} | s2.\f\< s4\! |
  s1 | s4 s2.\mp | s4 s\< s2\! | s4 s2.\pp | s1 | % 4a
  s4 s2.\mf | s4 s\< s2\! | s4 s2.\pp | s4 s\< s2\! |
  s4 s2.\mp | s1 | s4 s2.\mf | % 5a
  s2 s\< | s1\f | s | s\f |
  s2\> s\! | s1\f | s\mp | s4 s\< s2\! | % 6a
  s1\mf\> | s2. s4\p | s1 | s |
  s2. | s1 | s2. % 7a
  \repeat volta 2 {
    s1\omit\mf-\markup{\dynamic mf \italic leggiero} | s2. | s1 | s2. |
  }
  \repeat volta 2 {
    s2.\< s4\! | s2. | s1 | % 8a
    \alternative {
      \volta 1 { s2. }
      \volta 2 { s1 }
    }
  }
  s1\omit\p-\markup{\halign #RIGHT \italic sub. \dynamic p} | s1*3 |
  s1*2 | % 9a
  \repeat volta 2 {
    s1\mf | s\p
    \alternative {
      \volta 1 { s1*2 }
      \volta 2 { s1 }
    }
  }
  s1 | s\omit\f-\markup{\halign #RIGHT \italic più \dynamic f} | s1*6 | % 10
  s1*5 | % 11a
  \repeat volta 2 { s1\omit\ff-\markup{\halign #RIGHT {\italic spirited \dynamic ff}} | s1*3 }
  s1\f\< | s\! | s | s | % 12a
  s1 | s2.\< s4\! | s1\ff | s |
}

soprano = \relative {
  \global
  R1 | R | R | b'4 g g8 g b4 | g8 g g g e d r4 |
  b'4-> g4 8 8 b4-> | d,8 8 fis fis g4-- r \time 3/2 | r2 \once\override NoteHead.style = #'cross d1\glissando \time 2/2 | b'4 g4 8 8 b4 |
  g8 8 8 8 e8 d8 r4| b'4-> g4-> 8 8 b4 | d,8 8 fis fis g2-> ~ \time 3/2 |
  g2~2~8 \parenthesize\breathe r r4 \time 2/2 | b2 c4 d~ | 2 r | b c4 d~ | % 3a
  d2 r | b c4 d8-> r | g, g g g e d r4 | b'2 c4 d^\markup\italic ten. \caesura |
  R1 | r4^\markup\italic div. <g, b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <a c>-. | r <b d> <c e>-- r | % 4a
  r4 <g b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <c e>-. | r <b d> <a c>2-- |
  r4 <g b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <c e>-. | % 5a
  r4 <b d> <c e>2~ | 8 r r4 r2 | R1 | b2^\markup{\halign #RIGHT \italic unis.} c4 d~ |
  d2 r | b c4 d8 r | d,8-. d-. fis-. fis-. g2-- \breathe g8 g g g e d r4 | % 6a
  b'2 c4 d8 r | d,8 d fis fis g2 | R1 \section | R1 \time 3/4 |
  R2. \time 4/4 | R1 \time 3/4 | r4 r r \time 4/4 % 7a
  \repeat volta 2 {
    b8 g g g g4 b8 8 \time 3/4 |
    g8 g g g e d \time 4/4 | b'8 g g g g4 b8 b \time 3/4 | d,8 d fis fis g r \time 4/4 |
  }
  \repeat volta 2 {
    b2 c4 d \time 3/4 | g,8 g g g e d \time 4/4 | b'2 c4 d \time 3/4 | % 8a
    \alternative {
      {\time 3/4 d,8 d fis fis g4 \time 4/4}
      {\time 4/4 R1} % 8b
    }
  }
  d8 d fis fis g2~ \section | g1~ | g | R |
  R1 | R | % 9a
  \repeat volta 2 {
    b8 8 g g g g b b | g g g g e d r4 |
    \alternative {
      {b'8 b g g g g b b | d, d fis fis g4 r |}
      {b8 b g g g g b b}
    }
  }
  d,8 d fis fis g4 r | d'4(b) b(d) | d(b) b(d) \breathe | d(b) b(d) | % 10a
  r4 c4 b-.-> r | d(b) b(d-.) | r2 r4 d->(~ | d b) b d |
  r2 r4 a \section \key bes \major | bes1~ | 8 r r4 r2 | R1 | R | % 11a
  \repeat volta 2 {
    d4-> bes bes8 bes d4-> | bes8 8 8 8 g-> f r4 | d'-> bes4 8 8 d4-> | f,8 8 a a bes4-> r | % 11b
  }
  d2 ees4 f~ | 1~ | 2 r | f,8 8 a a bes4 r | % 12a
  d2--^\markup{\halign #CENTER \italic slower} ees4--( f~ |
  2.) r4 <<{\voiceOne f2^\markup div. bes\longfermata} \new Voice {\voiceTwo d,2 ees8 f4.\longfermata}>> \oneVoice |
  \override NoteHead.style = #'cross r4^\markup\italic unis. ^\markup\italic "a tempo" a,-> bes-> r |
  \bar "|."
}

wordsSop = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Oh Lord -- ee __ Oh Lord -- ee __
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord! __
  O Lord -- ee,
  O Lord -- ee, Pick a bale a day,
  Pick a bale o' cot -- ton
  O Lord -- ee! Pick a bale a day!
  \repeat volta 2 {
    Knew a lit -- tle man who could pick a bale o' cot -- ton,
    knew a lit -- tle man who could pick a bale a day.
  }
%  \repeat volta 2 {
    O Lord -- ee, Pick a bale o' cot -- ton
    O Lord -- ee
%    \alternative {
      { Pick a bale a day }
      { }
%    }
%  }
  Pick a bale a day! __
  \repeat volta 2 {
    Pick a pick a pick a pick a pick a bale o' cot -- ton!
    \alternative {
      {
        Pick a pick a pick a pick a pick a bale a day!
      }
      {
        Pick a pick a pick a pick a
      }
    }
  }
  pick a bale a day!
  Oh __ Lord! __
  Oh __ Lord! __
  Oh __ Lord! __
  Oh Lord!
  Oh __ Lord! __
  Oh __ Lord -- ee
  Oh Lord! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Oh Lord -- ee! __
  Pick a bale a day!
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsSopSingle = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Oh Lord -- ee __ Oh Lord -- ee __
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord! __
  O Lord -- ee,
  O Lord -- ee, Pick a bale a day,
  Pick a bale o' cot -- ton
  O Lord -- ee! Pick a bale a day!
  \repeat volta 2 {
    Knew a lit -- tle man who could pick a bale o' cot -- ton,
    knew a lit -- tle man who could pick a bale a day.
  }
%  \repeat volta 2 {
  O Lord -- ee, Pick a bale o' cot -- ton
  O Lord -- ee
  Pick a bale a day
  O Lord -- ee, Pick a bale o' cot -- ton
  O Lord -- ee
% }
  Pick a bale a day! __
  \repeat volta 2 {
    Pick a pick a pick a pick a pick a bale o' cot -- ton!
    \alternative {
      {
        Pick a pick a pick a pick a pick a bale a day!
      }
      {
        Pick a pick a pick a pick a
      }
    }
  }
  pick a bale a day!
  Oh __ Lord! __
  Oh __ Lord! __
  Oh __ Lord! __
  Oh Lord!
  Oh __ Lord! __
  Oh __ Lord -- ee
  Oh Lord! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Oh Lord -- ee! __
  Pick a bale a day!
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsSopMidi = \lyricmode {
  "Jump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nAh "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nOh " Lord "ee "  "Oh " Lord "ee " 
  "\nOh " Lord "ee! " "Pick " "a " "bale " "o' " cot "ton. "
  "\nOh " Lord "ee! "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord! " 
  "\nO " Lord "ee, "
  "\nO " Lord "ee, " "Pick " "a " "bale " "a " "day, "
  "\nPick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee! " "Pick " "a " "bale " "a " "day! "
  \repeat volta 2 {
    "\nKnew " "a " lit "tle " "man " "who " "could " "pick " "a " "bale " "o' " cot "ton, "
    "\nknew " "a " lit "tle " "man " "who " "could " "pick " "a " "bale " "a " "day. "
  }
%  \repeat volta 2 {
  "\nO " Lord "ee, " "Pick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee "
  "\nPick " "a " "bale " "a " "day "
  "\nO " Lord "ee, " "Pick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee "
% }
  "\nPick " "a " "bale " "a " "day! " 
  \repeat volta 2 {
    "\nPick " "a " "pick " "a " "pick " "a " "pick " "a " "pick " "a " "bale " "o' " cot "ton! "
    \alternative {
      {
        "\nPick " "a " "pick " "a " "pick " "a " "pick " "a " "pick " "a " "bale " "a " "day! "
      }
      {
        "\nPick " "a " "pick " "a " "pick " "a " "pick " "a "
      }
    }
  }
  "\npick " "a " "bale " "a " "day! "
  "\nOh "  "Lord! " 
  "\nOh "  "Lord! " 
  "\nOh "  "Lord! " 
  "\nOh " "Lord! "
  "\nOh "  "Lord! " 
  "\nOh "  Lord "ee "
  "\nOh " "Lord! " 
  \repeat volta 2 {
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "o' " cot "ton! "
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "a " "day! "
  }
  "\nOh " Lord "ee! " 
  "\nPick " "a " "bale " "a " "day! "
  "\nOh " "Lord, " 
  "\nOh " "Lord! " 
  "\nJUMP " "DOWN! "
}

dynamicsAlto = {
  s1 | s | s | s\mf | s | s | s | s2 s1\p\< | s\mf | s1*3 |
  s1. | s1 | s2.\< s4\! | s1 | % 3a
  s2\< s\! | s\< s\f | s1\omit\p-\markup{\italic sub. \dynamic p} | s2.\f\< s4\! |
  s1 | s4 s2.\mp | s4 s\< s2\! | s4 s2.\pp | s1 | % 4a
  s4 s2.\mf | s4 s\< s2\! | s4 s2.\pp | s4 s\< s2\! |
  s4 s2.\mp | s1 | s4 s2.\mf | % 5a
  s2 s\< | s1\f | s1 | s\f |
  s2\mp\< s\! | s1\f | s\mp | s4 s\< s2\! | % 6a
  s1\mf\> | s2. s4\p | s1 | s |
  s2. | s1 | s2. | % 7a
  \repeat volta 2 {
    s1\omit\mf-\markup{\dynamic mf \italic leggiero} |
    s2. | s1 | s2. |
  }
  \repeat volta 2 {
    s2.\< s4\! | s2. | s1 | % 8a
    \alternative {
      \volta 1 { s2. }
      \volta 2 { s1  }
    }
  }
  s1\omit\p-\markup{\halign #RIGHT \italic sub. \dynamic p} | s1*3 |
  s1 | s\f | % 9a
  \repeat volta 2 {
    s1\p | s\f |
    \alternative {
      \volta 1 { s1*2  }
      \volta 2 { s1    }
    }
  }
  s1 | s\omit\f-\markup{\halign #RIGHT \italic più \dynamic f} | s1*6 | % 10
  s1*5 | % 11a
  \repeat volta 2 {
    s1\omit\ff-\markup{\halign #RIGHT \italic spirited \dynamic ff} |
    s1*3 |
  }
  s1\f\< | s\! | s1*2 | % 12a
  s1 | s2.\< s4\! | s1\ff | s |
}

alto = \relative {
  \global
  R1 | R | R | b'4^\markup\italic unis. g g8 g b4 | g8 g g g e d r4 |
  b'4-> g4 8 8 b4-> | d,8 8 fis fis g4-- r \time 3/2 | r2 \once\override NoteHead.style = #'cross d1\glissando \time 2/2 | b'4 g4 8 8 b4 |
  g8 8 8 8 e d r4 | b'4-> g4-> 8 8 b4 | d,8 8 fis fis g2-> ~ \time 3/2 |
  g2~2~2~ \time 2/2 | g2 r | g8 g g g e-> d r4 | R1 | % 3a
  d8 d fis fis g4 r | b2 c4 d8 r | g,8 g g g e d r4 | b'2 c4 d^\markup\italic ten. \caesura |
  R1 | r4 d,4-. r e-. | r fis g-- r | r d-. r e-. | r fis g-- r | % 4a
  r4 d-. r e-. | r fis g-- r | r d-. r e-. | r fis e2-- |
  r4 d-. r e-. | r fis g-- r | r d-. r d-. | % 5a
  r4 fis g2~ | 8 r r4 r2 | R1 | g2 a4 b8 r |
  g8 g g g e d r4 | g2 a4 b8 r | d,8-. d-. fis-. fis-. g2-- \breathe | g8 g g g e d r4 | % 6a
  g2 a4 b8 r | r4 d,8 d fis fis g4 | R1 \section | R \time 3/4 |
  R2. \time 4/4 | R1 \time 3/4 | r4 r r \time 4/4 | % 7a 
  \repeat volta 2 {
    b8 g g g g4 b8 b \time 3/4 |
    g8 g g g e d \time 4/4 | b' g g g g4 b8 b \time 3/4 | d,8 d fis fis g r \time 4/4 |
  }
  \repeat volta 2 {
    g2 a4 b \time 3/4 | g8 g g g e d \time 4/4 | g2 a4 b \time 3/4 | % 8a
    \alternative {
      {\time 3/4 d,8 d fis fis g4 \time 4/4 |}
      {\time 4/4 R1} % 8b
    }
  }
  d8 d fis fis g2~ \section | g1~ | g | R |
  R1 | b4(g) g(b-.) | % 9a
  \repeat volta 2 {
    g8 g g g e(d) r4 | b'(g) g(b-.) |
    \alternative {
      {g8 g g g e(d) r4 | b'(g) g(b) |} % 9b
      {b4(g) g(b)}
    }
  }
  r4 fis-> g-> r | g2 g | g g \breathe | g g | % 10a
  r4 g4 g-.-> r | g2 g | r2 r4 g->~ | g2 4 4 |
  r4 fis g fis \section \key bes \major | f1~ | 8 r r4 r2  R1 | R | % 11a
  \repeat volta 2 {
    bes4-> f f8 f bes4-> | f8 f f f g-> f r4 | bes4-> f f8 f bes4-> | f8 f f f f4-> r |
  }
  bes2 c4 d~ | 1~ | 2 r f,8 8 8 8 bes4 r | % 12a
  bes2--^\markup{\halign #CENTER \italic slower} c4--( d~ | 2.) r4 | % 12b
  <<{\voiceOne d2^\markup div. c8(d4.\longfermata)} \new Voice {\voiceTwo bes2 2\longfermata}>> \oneVoice |
  \override NoteHead.style = #'cross r4^\markup\italic unis. ^\markup\italic "a tempo" a-> bes-> r |
}

wordsAlto = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Pick a bale o' cot -- ton
  Pick a bale a day!
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord! __
  O Lord -- ee,
  Pick a bale o' cot -- ton.
  O Lord -- ee, Pick a bale a day,
  Pick a bale o' cot -- ton
  O Lord -- ee! Pick a bale a day!
  \repeat volta 2 {
    Knew a lit -- tle man who could pick a bale o' cot -- ton,
    knew a lit -- tle man who could pick a bale a day.
  }
%  \repeat volta 2 {
    O Lord -- ee, Pick a bale o' cot -- ton
    O Lord -- ee
                                %    \alternative {
  { Pick a bale a day }
  {}
%}
%  }
  Pick a bale a day! __
  Oh __ Lord __
  \repeat volta 2 {
    Pick a bale a day! __
    Oh __ Lord __
    \alternative {
      {
        Pick a bale a day!
        Oh __ Lord __
      }
      {
        Oh __ Lord! __
      }
    }
  }
  Oh Lord!
  Oh Lord!
  Oh Lord!
  Oh Lord!
  Oh Lord.
  Oh Lord
  Oh __ Lord -- ee
  Oh Lord, Oh Lord! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Oh Lord -- ee! __
  Pick a bale a day!
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsAltoSingle = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Pick a bale o' cot -- ton
  Pick a bale a day!
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord,
  Pick pick Oh Lord! __
  O Lord -- ee,
  Pick a bale o' cot -- ton.
  O Lord -- ee, Pick a bale a day,
  Pick a bale o' cot -- ton
  O Lord -- ee! Pick a bale a day!
  \repeat volta 2 {
    Knew a lit -- tle man who could pick a bale o' cot -- ton,
    knew a lit -- tle man who could pick a bale a day.
  }
%  \repeat volta 2 {
  O Lord -- ee, Pick a bale o' cot -- ton
  O Lord -- ee
  Pick a bale a day
  O Lord -- ee, Pick a bale o' cot -- ton
  O Lord -- ee
%  }
  Pick a bale a day! __
  Oh __ Lord __
  \repeat volta 2 {
    Pick a bale a day! __
    Oh __ Lord __
    \alternative {
      {
        Pick a bale a day!
        Oh __ Lord __
      }
      {
        Oh __ Lord! __
      }
    }
  }
  Oh Lord!
  Oh Lord!
  Oh Lord!
  Oh Lord!
  Oh Lord.
  Oh Lord
  Oh __ Lord -- ee
  Oh Lord, Oh Lord! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Oh Lord -- ee! __
  Pick a bale a day!
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsAltoMidi = \lyricmode {
  "Jump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nAh "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nPick " "a " "bale " "o' " cot "ton "
  "\nPick " "a " "bale " "a " "day! "
  "\nOh " Lord "ee! " "Pick " "a " "bale " "o' " cot "ton. "
  "\nOh " Lord "ee! "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord, "
  "\nPick " "pick " "Oh " "Lord! " 
  "\nO " Lord "ee, "
  "\nPick " "a " "bale " "o' " cot "ton. "
  "\nO " Lord "ee, " "Pick " "a " "bale " "a " "day, "
  "\nPick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee! " "Pick " "a " "bale " "a " "day! "
  \repeat volta 2 {
    "\nKnew " "a " lit "tle " "man " "who " "could " "pick " "a " "bale " "o' " cot "ton, "
    "\nknew " "a " lit "tle " "man " "who " "could " "pick " "a " "bale " "a " "day. "
  }
%  \repeat volta 2 {
  "\nO " Lord "ee, " "Pick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee "
  "\nPick " "a " "bale " "a " "day "
  "\nO " Lord "ee, " "Pick " "a " "bale " "o' " cot "ton "
  "\nO " Lord "ee "
%  }
  "\nPick " "a " "bale " "a " "day! " 
  "\nOh "  "Lord " 
  \repeat volta 2 {
    "\nPick " "a " "bale " "a " "day! " 
    "\nOh "  "Lord " 
    \alternative {
      {
        "\nPick " "a " "bale " "a " "day! "
        "\nOh "  "Lord " 
      }
      {
        "\nOh "  "Lord! " 
      }
    }
  }
  "\nOh " "Lord! "
  "\nOh " "Lord! "
  "\nOh " "Lord! "
  "\nOh " "Lord! "
  "\nOh " "Lord. "
  "\nOh " "Lord "
  "\nOh "  Lord "ee "
  "\nOh " "Lord, " "Oh " "Lord! " 
  \repeat volta 2 {
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "o' " cot "ton! "
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "a " "day! "
  }
  "\nOh " Lord "ee! " 
  "\nPick " "a " "bale " "a " "day! "
  "\nOh " "Lord, " 
  "\nOh " "Lord! " 
  "\nJUMP " "DOWN! "
}

dynamicsTenor = {
  s1 | s | s | s\mf | s | s | s | s2 s1\p\< | s\mf | s1*3 |
  s1. | s2\< s\! | s\> s\! | s\< s\! | % 3a
  s1 | s2\< s\! | s1\omit\p-\markup{\italic sub. \dynamic p} | s2.\f\< s4\! |
  s2 s\fp | s1*4 | % 4a
  s1\mf | s | s\pp | s |
  s1\mp | s | s\mf | % 5a
  s2 s\< | s1\f | s | s\f |
  s2\> s\! | s1\f | s\omit\p-\markup{\italic sub. \dynamic p} | s2 s\mf | % 6a
  s1 | s2 s\> | s1\p | s\mf |
  s2. | s1 | s2. | % 7a
  \repeat volta 2 {
    s1\mp | s2. | s1 | s2. |
  }
  \repeat volta 2 {
    s2. s4\mf | s2. | s1 | % 8a
    \alternative {
      \volta 1 { s2. }
      \volta 2 { s1  }
    }
  }
  s1\omit\p-\markup{\halign #RIGHT \italic sub. \dynamic p} | s1*3 |
  s1 | s\f | % 9a
  \repeat volta 2 {
    s1\p | s\f |
    \alternative {
      \volta 1 { s1*2 }
      \volta 2 { s1   }
    }
  }
  s1 | s\omit\f-\markup{\halign #RIGHT \italic più \dynamic f} | s1*2 | % 10a
  s1*2 | s2. s4\ff | s1 |
  s1*5 | % 11a
  \repeat volta 2 {
    s1\omit\ff-\markup{\halign #RIGHT \italic spirited \dynamic ff} | s1*3 |
  }
  s1 | s\f | s1\< | s\! | % 12a
  s1 | s2.\< s4\! | s1\ff | s |
}

tenor = \relative {
  \global
  R1 | R | R | b4^\markup\italic unis. g g8 g b4 | g8 g g g e d r4 |
  b'4-> g4 8 8 b4-> | d,8 8 fis fis g4-- r \time 3/2 | r2 \once\override NoteHead.style = #'cross d1\glissando \time 2/2 | b'4 g4 8 8 b4 |
  g8 8 8 8 e d r4 | b'4-> g-> 8 8 b4 | d,8 8 fis fis g2-> ~ \time 3/2 |
  g2~g~8 \parenthesize \breathe r8 r4 \time 2/2 | b2 c4 d~ | 2 r b2 c4 d~ | % 3a
  d2 r | b c4 d8-> r | g,8 8 8 8 e d r4 | b'2 c4 d^\markup\italic ten. \caesura |
  d,8 8 fis fis g2~ | 1~ | 1~ | 8 r r4 r2 | R1 | % 4a
  b8 b g4 8 8 b4 | g8 g g g e d r4 | b'8 8 g4 8 8 b4 | d,8 8 fis fis g4 r |
  b8 b g4 8 8 b4 | g8 g g g e d r4 | b'8 8 g4 8 8 b4 | % 5a
  d,8 d fis fis g2~ | 8 r r4 r2 | R1 | b2 c4 d~ |
  d2 r | b2 c4 d8 r | b2 c4 d~ | d r d,8 8 fis fis | % 6a
  g2 r | r d8 8 fis fis | g4 r r2 \section | d'2-> c \time 3/4 |
  r4 b-> c-> \time 4/4 | b2 c \time 3/4 | r4 d-.-> e-.-> \breathe | % 7a
  \repeat volta 2 {
    d2 c \time 3/4 |
    r4 b-.-> c-.-> \time 4/4 | b2 c \time 3/4 | r4 d-.-> e-.-> \time 4/4 |
  }
  \repeat volta 2 {
    \time 4/4 r2 r4 b \time 3/4 | c d c-.-> \time 4/4 | r2 r4 b-.-> \time 3/4 | % 8a
    \alternative {
      {\time 3/4 c4 d e-.-> \time 4/4 |}
      {\time 4/4 R1 |} % 8b
    }
  }
  d,8 8 fis fis g2~ \section | g1~ | g | R |
  R1 | dis'4(b) b(dis) | % 9a
  \repeat volta 2 {
    b8 8 8 8 g(fis) r4 | dis'4(b) b(dis-.) |
    \alternative {
      {b8 8 8 8 g(fis) r4 | dis'4(b) b(dis)|} % 9b
      {dis4(b) b(dis) |}
    }
  }
  r4 c-> b-> r | b2 c4 d | dis(b) b(dis) \breathe  R1  % 10a
  r4 ees d-.-> r | dis(b) b(d-.) | r2 r4 b-> ~ | 2 c4 d~ |
  d1~ \key bes \major \section | d~ | 8 r r4 r2 | R1 | R | % 11a
  \repeat volta 2 {
    d4-> bes4 8 8 d4-> | bes8 8 8 8 g-> f r4 | d'4-.-> bes4 8 8 d4-> | f,8 8 a a bes4-> r |
  }
  R1 | bes8 8 8 8 g f r4 | d'2 ees4 f~ | 2. r4 | % 12a
  d2--^\markup{\halign #CENTER \italic Slower} ees4--(f~ | 2.) r4 | <d f>2^\markup div. <c ees>8(<d f>4.\longfermata) | r4^\markup\italic unis. ^\markup\italic "a tempo" \override NoteHead.style = #'cross a-> bes-> r |
  
}

wordsTenor = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Oh Lord -- ee. __
  Oh Lord -- ee. __
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick a bale a day __
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day.
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day. __
  O Lord -- ee, O Lord --  ee
  O Lord -- ee __ Pick a bale a day!
  Pick a bale a day!
  Hmm Ba Ba -- Pa!
  Hmm Ba Ba -- Pa~
  \repeat volta 2 {
    Hmm Ba Ba -- Pa!
    Hmm Ba Ba -- Pa!
  }
%  \repeat volta 2 {
    O Lord -- ee, O.
    O
%    \alternative {
      { Lord -- ee O! }
      {}
%    }
%  }
  Pick a bale a day! __
  Oh __ Lord __
  \repeat volta 2 {
    Pick a bale a day! __
    Oh __ Lord __
    \alternative {
      {
        Pick a bale a day!
        Oh __ Lord __
      }
      {
        Oh __ Lord! __
      }
    }
  }
  Oh Lord!
  Oh Lord -- ee,
  Oh __ Lord! __
  Oh Lord.
  Oh __ Lord __
  Oh __ Lord -- ee! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Pick a bale o' cot -- ton!
  Oh Lord -- ee! __
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsTenorSingle = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Oh Lord -- ee. __
  Oh Lord -- ee. __
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee!
  Pick a bale a day __
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day.
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day. __
  O Lord -- ee, O Lord --  ee
  O Lord -- ee __ Pick a bale a day!
  Pick a bale a day!
  Hmm Ba Ba -- Pa!
  Hmm Ba Ba -- Pa~
  \repeat volta 2 {
    Hmm Ba Ba -- Pa!
    Hmm Ba Ba -- Pa!
  }
%  \repeat volta 2 {
  O Lord -- ee, O.
  O Lord -- ee O!
  O Lord -- ee, O.
  O
%  }
  Pick a bale a day! __
  Oh __ Lord __
  \repeat volta 2 {
    Pick a bale a day! __
    Oh __ Lord __
    \alternative {
      {
        Pick a bale a day!
        Oh __ Lord __
      }
      {
        Oh __ Lord! __
      }
    }
  }
  Oh Lord!
  Oh Lord -- ee,
  Oh __ Lord! __
  Oh Lord.
  Oh __ Lord __
  Oh __ Lord -- ee! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Pick a bale o' cot -- ton!
  Oh Lord -- ee! __
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsTenorMidi = \lyricmode {
  "Jump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nAh "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nOh " Lord "ee. " 
  "\nOh " Lord "ee. " 
  "\nOh " Lord "ee! " "Pick " "a " "bale " "o' " cot "ton. "
  "\nOh " Lord "ee! "
  "\nPick " "a " "bale " "a " "day " 
  "\nMe " "an' " "my " part "ner " "can " "pick " "a " "bale " "o' " cot "ton, "
  "\nme " "an' " "my " part "ner " "can " "pick " "a " "bale " "a " "day. "
  "\nMe " "an' " "my " part "ner " "can " "pick " "a " "bale " "o' " cot "ton, "
  "\nme " "an' " "my " part "ner " "can " "pick " "a " "bale " "a " "day. " 
  "\nO " Lord "ee, " "O " Lord  "ee "
  "\nO " Lord "ee "  "Pick " "a " "bale " "a " "day! "
  "\nPick " "a " "bale " "a " "day! "
  "\nHmm " "Ba " Ba "Pa! "
  "\nHmm " "Ba " Ba "Pa~ "
  \repeat volta 2 {
    "\nHmm " "Ba " Ba "Pa! "
    "\nHmm " "Ba " Ba "Pa! "
  }
%  \repeat volta 2 {
  "\nO " Lord "ee, " "O. "
  "\nO " Lord "ee " "O! "
  "\nO " Lord "ee, " "O. "
  "\nO "
%  }
  "\nPick " "a " "bale " "a " "day! " 
  "\nOh "  "Lord " 
  \repeat volta 2 {
    "\nPick " "a " "bale " "a " "day! " 
    "\nOh "  "Lord " 
    \alternative {
      {
        "\nPick " "a " "bale " "a " "day! "
        "\nOh "  "Lord " 
      }
      {
        "\nOh "  "Lord! " 
      }
    }
  }
  "\nOh " "Lord! "
  "\nOh " Lord "ee, "
  "\nOh "  "Lord! " 
  "\nOh " "Lord. "
  "\nOh "  "Lord " 
  "\nOh "  Lord "ee! " 
  \repeat volta 2 {
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "o' " cot "ton! "
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "a " "day! "
  }
  "\nPick " "a " "bale " "o' " cot "ton! "
  "\nOh " Lord "ee! " 
  "\nOh " "Lord, " 
  "\nOh " "Lord! " 
  "\nJUMP " "DOWN! "
}

dynamicsBass = {
  s1 | s | s | s\mf | s | s | s | s2 s1\p\< | s\mf | s1*3 |
  s1. | s1 | s2.\< s4\! | s1 | % 3a
  s2\< s\! | s\< s\f | s1\omit\p-\markup{\italic sub. \dynamic p} | s2.\f\< s4\! |
  s2 s\fp | s1*4 | % 4a
  s1\mf | s | s\pp | s |
  s1\mp | s | s\mf | % 5a
  s2 s\< | s1\f | s | s\f |
  s2\> s\! | s1\f | s\omit\p-\markup{\italic sub. \dynamic p} | s2 s\f | % 6a
  s1 | s2 s\> | s1\p | s\mf |
  s2. | s1 | s2. | % 7a
  \repeat volta 2 {
    s1\mp | s2. | s1 | s2. |
  }
  \repeat volta 2 {
    s2. s4\mf | s2. | s1 | % 8a
    \alternative {
      \volta 1 { s2. }
      \volta 2 { s1  }
    }
  }
  s1\omit\p-\markup{\halign #RIGHT \italic sub. \dynamic p} | s1*3 |
  s1*2 | % 9a
  \repeat volta 2 {
    s1\mf | s\p |
    \alternative {
      \volta 1 { s1*2 }
      \volta 2 { s1   }
    }
  }
  s1 | s\ff | s1*6 | % 10
  s1*5 | % 11a
  \repeat volta 2 {
    s1\omit\ff-\markup{\halign #RIGHT \italic spirited \dynamic ff} | s1*3 |
  }
  s1 | s\f | s\< | s\! | % 12a
  s1 | s2.\< s4\! | s1\ff | s |
}

bass = \relative {
  \global
  R1 | R | R | b4^\markup\italic unis. g g8 g b4 | g8 g g g e d r4 |
  b'4-> g4 8 8 b4-> | d,8 8 fis fis g4-- r \time 3/2 | r2 \once\override NoteHead.style = #'cross d1\glissando \time 2/2 | b'4 g4 8 8 b4 |
  g8 8 8 8 e d r4 | b'4-> g4-> 8 8 b4 | d,8 8 fis fis g2-> ~ \time 3/2 |
  g2~g~g~ \time 2/2 | g r | g8 8 8 8 e-> d r4 | R1 | % 3a
  d8 8 fis fis g4 r | b2 c4 d8-> r | g,8 8 8 8 e d r4 | b'2 c4 d^\markup\italic ten. \caesura |
  d,8 d fis fis b2~ | b1~ | b~ | 8 r r4 r2 | R1 | % 4a
  b8 8 g4 8 8 b4 | g8 8 8 8 e d r4 | b'8 8 g4 8 8 b4 | d,8 8 fis fis g4 r |
  b8 8 g4 8 8 b4 | g8 8 8 8 e d r4 | b'8 8 g4 8 8 b4 | % 5a
  d,8 8 fis fis g2~ | 8 r r4 r2 | R1 | g2 a4 b~ |
  b2 r | g a4 b8 r | g2 a4 b~ | b r d,8 8 fis fis | % 6a
  g2 r | r d8 8 fis fis | d d fis fis g4 r \section | b4-> 8 8 a4 8 8 \time 3/4 |
  r4 g-> a-> \time 4/4 |g4 8 8 a4 8 8 \time 3/4 | r4 b-.-> c-.-> \breathe \time 4/4 | % 7a
  \repeat volta 2 {
    b4 8 8 a4 8 8 |
    \time 3/4 r4 g-.-> a-.-> \time 4/4 | g4 8 8 a4 8 8 \time 3/4 | r4 b-.-> c-.-> \breathe | % 7b
  }
  \repeat volta 2 {
    r2 r4 g \time 3/4 | a b a-.-> \time 4/4 | r2 r4 g-.-> \time 3/4 | % 8a
    \alternative {
      {\time 3/4 a4 b c-.-> \time 4/4 |}
      {\time 4/4 R1 |} % 8b
    }
  }
  d,8 8 fis fis g2 ~ \section | g1~ | g | R |
  R1 | R | % 9a
  \repeat volta 2 {
    b8 8 g g g g b b | g g g g e d r4 |
    \alternative {
      {b'8 8 g g g g b b | d, d fis fis g4 r |} % 9b
      {b8 8 g g g g b b |}
    }
  }
  d,8 8 fis fis g4 r | b2-- c4-- d-- | g,8-> g g g e-> d r4 | b'2-- c4-- d-- | % 10a
  d,8 d fis fis g4 b-> ~ | 2 c4 d | g,8 g g g e d r4 | b'2 c4 d~ |
  d1~ \section \key bes\major | d1~ | 8 r r4 r2 | R1 | R | % 11a
  \repeat volta 2 {
    bes4-> g4 8 8 bes4-> | f8 f f f g-> f r4 | bes4-> f4 8 8 b4-> | f8 f f f b4-> r |
  }
  R1 | bes8 8 8 8 g f r4 | bes2 c4 d~ | 2. r4 | % 12a
  bes2--^\markup{\halign #CENTER \italic Slower} c4--(d~ | 2.) r4 | % 12b
  <<{\voiceOne d2^\markup div. c8(d4.\longfermata)} \new Voice {\voiceTwo bes2 2\longfermata}>> \oneVoice |
  r4^\markup\italic unis. ^\markup\italic "a tempo" \override NoteHead.style = #'cross a4-> bes-> r4 |
}

wordsBass = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Pick a bale o' cot -- ton.
  Pick a bale a day!
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee! Pick a bale a day __
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day.
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day. __
  O Lord -- ee, O Lord --  ee
  O Lord -- ee __ Pick a bale a day!
  Pick a bale o' pick a bale a day!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  \repeat volta 2 {
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  }
%  \repeat volta 2 {
    O Lord -- ee, O.
    O
%    \alternative {
      { Lord -- ee O! }
      {}
%    }
%  }
  Pick a bale a day! __
  \repeat volta 2 {
    Pick a pick a pick a pick a
    pick a bale o' cot -- ton
    \alternative {
      {
        Pick a pick a pick a pick a
        pick a bale a day!
      }
      {
        Pick a pick a pick a pick a
      }
    }
  }
  pick a bale a day!
  Oh Lord -- ee,
  Pick a bale o' cot -- ton!
  Oh Lord -- ee,
  Pick a bale a day.
  OH! __ Lord -- ee,
  Pick a bale o' cot -- ton
  Oh Lord -- ee! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Pick a bale o' cot -- ton!
  Oh Lord -- ee! __
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsBassSingle = \lyricmode {
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Ah
  Jump down, turn a -- round, pick a bale o' cot -- ton.
  Jump down, turn a -- round, pick a bale a day!
  Pick a bale o' cot -- ton.
  Pick a bale a day!
  Oh Lord -- ee! Pick a bale o' cot -- ton.
  Oh Lord -- ee! Pick a bale a day __
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day.
  Me an' my part -- ner can pick a bale o' cot -- ton,
  me an' my part -- ner can pick a bale a day. __
  O Lord -- ee, O Lord --  ee
  O Lord -- ee __ Pick a bale a day!
  Pick a bale o' pick a bale a day!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  \repeat volta 2 {
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  Hmm Ba -- Pa Hmm Ba -- Pa
  Ba -- Pa!
  }
%  \repeat volta 2 {
  O Lord -- ee, O.
  O Lord -- ee O!
  O Lord -- ee, O.
  O
%  }
  Pick a bale a day! __
  \repeat volta 2 {
    Pick a pick a pick a pick a
    pick a bale o' cot -- ton
    \alternative {
      {
        Pick a pick a pick a pick a
        pick a bale a day!
      }
      {
        Pick a pick a pick a pick a
      }
    }
  }
  pick a bale a day!
  Oh Lord -- ee,
  Pick a bale o' cot -- ton!
  Oh Lord -- ee,
  Pick a bale a day.
  OH! __ Lord -- ee,
  Pick a bale o' cot -- ton
  Oh Lord -- ee! __
  \repeat volta 2 {
    Jump down, turn a -- round, Pick a bale o' cot -- ton!
    Jump down, turn a -- round, Pick a bale a day!
  }
  Pick a bale o' cot -- ton!
  Oh Lord -- ee! __
  Oh Lord, __
  Oh Lord! __
  JUMP DOWN!
}

wordsBassMidi = \lyricmode {
  "Jump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nAh "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "o' " cot "ton. "
  "\nJump " "down, " "turn " a "round, " "pick " "a " "bale " "a " "day! "
  "\nPick " "a " "bale " "o' " cot "ton. "
  "\nPick " "a " "bale " "a " "day! "
  "\nOh " Lord "ee! " "Pick " "a " "bale " "o' " cot "ton. "
  "\nOh " Lord "ee! " "Pick " "a " "bale " "a " "day " 
  "\nMe " "an' " "my " part "ner " "can " "pick " "a " "bale " "o' " cot "ton, "
  "\nme " "an' " "my " part "ner " "can " "pick " "a " "bale " "a " "day. "
  "\nMe " "an' " "my " part "ner " "can " "pick " "a " "bale " "o' " cot "ton, "
  "\nme " "an' " "my " part "ner " "can " "pick " "a " "bale " "a " "day. " 
  "\nO " Lord "ee, " "O " Lord  "ee "
  "\nO " Lord "ee "  "Pick " "a " "bale " "a " "day! "
  "\nPick " "a " "bale " "o' " "pick " "a " "bale " "a " "day! "
  "\nHmm " Ba "Pa " "Hmm " Ba "Pa "
  "\nBa" "Pa! "
  "\nHmm " Ba "Pa " "Hmm " Ba "Pa "
  "\nBa" "Pa! "
  \repeat volta 2 {
  "\nHmm " Ba "Pa " "Hmm " Ba "Pa "
  "\nBa" "Pa! "
  "\nHmm " Ba "Pa " "Hmm " Ba "Pa "
  "\nBa" "Pa! "
  }
%  \repeat volta 2 {
  "\nO " Lord "ee, " "O. "
  "\nO " Lord "ee " "O! "
  "\nO " Lord "ee, " "O. "
  "\nO "
%  }
  "\nPick " "a " "bale " "a " "day! " 
  \repeat volta 2 {
    "\nPick " "a " "pick " "a " "pick " "a " "pick " "a "
    "\npick " "a " "bale " "o' " cot "ton "
    \alternative {
      {
        "\nPick " "a " "pick " "a " "pick " "a " "pick " "a "
        "\npick " "a " "bale " "a " "day! "
      }
      {
        "\nPick " "a " "pick " "a " "pick " "a " "pick " "a "
      }
    }
  }
  "\npick " "a " "bale " "a " "day! "
  "\nOh " Lord "ee, "
  "\nPick " "a " "bale " "o' " cot "ton! "
  "\nOh " Lord "ee, "
  "\nPick " "a " "bale " "a " "day. "
  "\nOH! "  Lord "ee, "
  "\nPick " "a " "bale " "o' " cot "ton "
  "\nOh " Lord "ee! " 
  \repeat volta 2 {
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "o' " cot "ton! "
    "\nJump " "down, " "turn " a "round, " "Pick " "a " "bale " "a " "day! "
  }
  "\nPick " "a " "bale " "o' " cot "ton! "
  "\nOh " Lord "ee! " 
  "\nOh " "Lord, " 
  "\nOh " "Lord! " 
  "\nJUMP " "DOWN! "
}

pianoRHone = \relative {
  \global
  r4 <g c d g>-. \acciaccatura cis''8 d4->_\markup {\tiny L.H.} r |
  R1 |
  r4 <g,,, c d g>-. \acciaccatura cis''8 d4->_\markup {\tiny L.H.} r |
  R1 | R1 |
  r4 <g,,, c d g> \acciaccatura cis''8 d4-> r4 | % 2b
  R1 | R1. | r4 <g,,, c d g> \acciaccatura cis''8 d4-> r4 |
  R1 | r4 <g,,, c d g> \acciaccatura cis''8 d4-> r4 | R1 | % 2c
  R1. | r4 <g,,, c d g> <g'' cis d>-> r | r <g,, c d g> r2 | R1 | % 3a
  r4 q <g'' cis d>->_\markup {\tiny L.H.} <g,, c d g>-> | % 3b
  r4 q-> r2 | r4 q <g'' cis d>-> <g,, c d g>-> | r q-> r2 |
  R1 | r4 <d' g b>-. r <e a c>-. | % 4a
  r4 <fis b d>(<g c e>8->) r r4 |
  r4 <d g b>-. r <e a c>-. |
  r4 <fis b d>(<g c e>8->) r r4 |
  r4 <d g b>-. r <e a c>-. | % 4b
  r4 <fis b d>(<g c e>8->) r r4 |
  r4 <d g b>-. r <e a c>-. |
  r4 <fis b d>-. <e a c>2-- |
  r4 <d g b>-. r <e a c>-. | r <fis b d>(<g c e>8->) r r4 | r4 <d g b>-. r <e a c>-. | % 5a
  r4 <fis b d>(<g c e>8->) r r4 | % 5b
  \repeat unfold 5 {r <a b d b'\laissezVibrer>-- r <a b d b'\laissezVibrer>-- |}
  r <a b d b'\laissezVibrer>-- r <a b d b'> |
  r4 <c d fis c'>4-> r <a b d b'>-> |
  r4 <a b d b'>4-- r q-- | % 6b
  r4 q-> r q-> |
  r <c d fis c'>-> <a b d b'>-> r \section |
  r4 <g, b c d>8-. q-. r4 <f a c d>8-. q-. |
  r4 <g a b d>-> <a b c e>-> | r4 <g a b d>8-. q-. r4 <f a c d>8-.-> <a b c e>-.-> | r4 <g a b d>-.-> <a b c e>-.-> | % 7a
  \repeat volta 2 {
    r4 <g a b d>8-. q-. r4 <f a c d>8-. q-. |
    r4 <g a b d>4-.-> <a b c e>-.-> | % 7b
    r4 <g a b d>8-. q-. r4 <f a c d>8-. q-. |
    r4 <g a b d>-.-> <a b c e>-.-> |
  }
  \repeat volta 2 {
    r4 <g a b d>8-. q-. r4 q8-. q-. | % 8a
    r4 <g a b d>-> q-> |
    r4 <g a b d>8-. q-. r4 q8-. q-. |
    \alternative {
      \volta 1 { \time 3/4 r4 <g a b d>-> <a b c e>-> \time 4/4 | }
      \volta 2 { \time 4/4 c1 | } % 8b %%%%% Breaks without these time signatures?????
    }
  }
  R1 \section | b''4(g) 8 8(b4) | g4-> 8-. 8-. e(d) r4 | b'4(g) 8-. 8(b4->) |
  r4 fis->(g-.) r | b(g) 8 8(b4->) | % 9a
  \repeat volta 2 {
    g4 8-. 8-. e->(d) r4 | b'(g) 8 8(b4) |
    \alternative {
      \volta 1 { g4 8 8 e->(d) r4 | b'(g) 8 8(b4) | }
      \volta 2 { b4(g) 8 8(b4) | }
    }
  }
  r4 fis->(g) r | % 10a
  <d g d'>4(b') <d, g b> <d g d'> |
  d4(b) b <d d'>-> |
  <d g d'>4(b') <d, g b> <d g d'> |
  r4 <c ees g c>(<b d g b>) r | % 10b
  <d g d'>4(b') <d, g b>(<d g d'>) |
  r2 r4 <d g d'>->~ |
  q4(b'4) <d, g b>->(<d g d'>) |
  d4-> <d fis>-> <b g'>-> <c ees a>-> \section \key bes \major | % 11a
  <bes bes'>1 |
  r4 <g c ees>-> <f bes d>-> r |
  <bes bes'>1 |
  r4 <g c e>-> <f bes d>-> r |
  \repeat volta 2 {
    <bes bes'>1 | r4 <g c e>-> <f bes d>-> r | <bes bes'>1 | r4 <g c e>-> <bes d f>-> r |
  }
  <d, f bes d>4-> <bes bes'>4 8 8 <d d'>4-> | % 12a
  bes'4 8 8 g->(f) r4 |
  <d f bes d>4-> <bes bes'>4 8 8 <d d'>4-> |
  f8-> f-> a-> a-> bes4-> r |
  <d, f bes d>4-> <bes bes'>4 8-> 8 <d d'>4-> | % 12b
  <bes bes'>4-> 4-> <g g'>8->(<f f'>4.) |
  <d' d'>2 <ees ees'>8(<f f'>4.\fermata) |
  <f, f'>4-> <a a'>-> <bes bes'>-> r |
}

pianoRHtwo = \relative {
  \global
  s1*7 | s1. | s1*4 |
  s1. | s1*31 |
  s2. | s1 | s2. | % 7a
  \repeat volta 2 { s1 s2. s1 s2. }
  \repeat volta 2 {
    s1 s2. s1 |
    \alternative { { \time 3/4 s2. } { \time 4/4 s1 } }
  }
  s1*4 |
  s1*2 | % 9a
  \repeat volta 2 { s1*2 |
    \alternative { { s1*2 } { s1 } }
  }
  s1*2 | g'2 2 | s1 | % 10a
  s1*4 |
  s1 | \apart r4 <d' f> r q | s1 | r4 q r q | s1 | % 11a
  \repeat volta 2 { r4 q r q | s1 | r4 q r q | s1 | }
  s1*8 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*6 | s1. | s1*4 |
  s1. | s1\mf | s1*6 | % 3
  s1 | s\mp | s | s\pp | s | s\mf | s | s\pp | s |
  s1\mp | s | s\mf | s | s\omit\f-\markup{\dynamic f \italic pesante} | s | s | % 5
  s1\omit\p-\markup{\italic sub. \dynamic p} | s\f | s | s | % 6a
  s2. s4\> | s2. s4\p | s1 | s\omit\mf-\markup{\dynamic mf \tiny \italic "Raucously, Joyously"} |
  s2. | s1 | s2. | % 7a
  \repeat volta 2 {
    s1\mp | s2. | s1 | s2. |
  }
  \repeat volta 2 {
    s1 | s2. | s1 | % 8a
    \alternative {
      \volta 1 { s2. }
      \volta 2 { s1  }
    }
  }
  s1 | s1\omit\ff^\markup{\dynamic ff "SOLO: with a flourish!"} | s | s |
  s1*2 | % 9a
  \repeat volta 2 {
    s1 | s1-\markup\italic sim. |
    \alternative {
      \volta 1 { s1*2 }
      \volta 2 { s1   }
    }
  }
  s1 | s\omit\f-\markup{\italic più \dynamic f} | s1*6 | % 10
  s4 s2.\< | s1\omit\ff-\markup{\dynamic ff \italic Solo} | s1*3 | % 11a
  \repeat volta 2 {
    s1*4 |
  }
  s1-\markup\italic Solo | s1*3 | % 12a
  s1-\markup\italic slower | s\< | s\ff | s-\markup\italic "a tempo" |
}

pianoLHone = \relative {
  \global
  g,2 r | R1 | g2 r | R1 | R1 |
  g2 r | R1 | R1. | g2 r |
  R1 | g2 r | R1 |
  R1. | <g cis d>2-> r | q r | R1 | % 3a
  q2 r | q r | q r | q r |
  R1 | g4-. r d-. r | cis'2--(d8->) r r4 | g,-. r d-. r | cis'2--(d8->) r r4 | % 4a
  g,4-. r d-. r | cis'2_\fp(d8->) r r4 g,4-. r d-. r | R1 |
  g4-. r d-. r | cis'2--(d8->) r r4 | g,4-. r d-. r | % 5a
  cis'2(d8->) r r4 |
  \repeat unfold 6 {g,4-. r d-. r |}
  r4 d-> g-> r |
  g4-. r d-. r | g-. r d-. r | r d-> g-> r \section d'1-> | % 6b
  <g, d'>2.-> | d'1-> | q2. | % 7a
  \repeat volta 2 {
    d1->
    q2.-> | d1-> | q2.-> |
  }
  \repeat volta 2 {
    d1-> | q2. | d1-> |
    \alternative {
      \volta 1 { \time 3/4 q2.-> }
      \volta 2 { \time 4/4 R1 } % 8b
    }
  }
  R1 \section | dis'4(b) 8 8(dis4) | b4-> 8-. 8-. g(fis) r4 | dis'4(b) 8 8(dis4) |
  r4 c->(b) r | dis(b) 8 8(d4->) | % 9a
  \repeat volta 2 {
    b4 8-. 8-. g->(fis) r4 | dis'4(b) 8 8(dis4) |
    \alternative {
      \volta 1 { b4 8 8 g->(fis) r4 | dis'(b) 8 8(d4) | }
      \volta 2 { d4(b) 8 8(d4) | }
    }
  }
  r4 c->(b) r | dis4(b) b dis | dis(b) b dis-> | 4(b) b dis | % 10a
  r4 e(d) r | dis(b) b(d) | r2 r4 dis-> ~ | dis(b) b->(d) |
  r4 ees-> d-> c-> \section \key bes \major | <bes, bes'>4 r q r | q r <g g'> r | <bes bes'> r q r | q r <g g'> r | % 11a
  \repeat volta 2 {
    <bes bes'>4 r q r | q r <f f'> r | <bes bes'> r q r | r <f f'>-> <bes bes'>-> r | 
  }
  q4 r <f f'> r | bes4 8 8 g->(f) r4 | <bes bes'>4 r <f f'> r | f8-> f-> a-> a-> bes4-> r | % 12a
  <bes bes'>4 r <f f'> r | % 12b
  <bes, bes'>4-> q-> <g g'>8->(<f f'>4.) |
  <d' d'>2 <ees ees'>8(<f f'>4.\fermata) |
  <f, f'>4-> <a a'>-> <bes bes'>-> r |
}

pianoLHtwo = \relative {
  \global
  s1*7 | s1. | s1*4 |
  s1. | s1*30 | g,2 d |
  s2. | g2 d | s2. | % 7a
  \repeat volta 2 { g2 d | s2. | g2 d | s2. | }
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
    }
  }
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
    }
  }
}

#(set-global-staff-size 17)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \magnifyStaff #4/7
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
