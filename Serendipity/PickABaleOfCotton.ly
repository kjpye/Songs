\version "2.25.0"

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
  \key g \major
  \time 2/2
}

TempoTrack = {
  \tempo Lively 2=76
  s1
  \set Score.tempoHideNote = ##t
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
      {s2. |}
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
  s1 | s | s | s\mf | s |
}

soprano = \relative {
  \global
  R1 | R | R | b'4^\markup\italic unis. g g8 g b4 | g8 g g g e d r4 |
  b'4-> g4 8 8 b4-> | d,8 8 fis fis g4-- r \time 3/2 | r2 \once\override NoteHead.style = #'cross d1\glissando \time 2/2 | b'4 g4 8 8 b4 |
  g8 8 8 8 e8 d8 r4| b'4-> g4-> 8 8 b4 | d,8 8 fis fis g2-> ~ \time 3/2 |
  g2~2~8 \parenthesize\breathe r r4 \time 2/2 | b2 c4 d~ | 2 r | b c4 d~ | % 3a
  d2 r | b c4 d8-> r | g, g g g e d r4 | b'2 c4 d^\markup\italic ten. \caesura |
  R1 | r4 <g, b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <a c>-. | r <b d> <c e>-- r | % 4a
  r4 <g b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <c e>-. | r <b d> <a c>2-- |
  r4 <g b>-. r <a c>-. | r <b d> <c e>-- r | r <g b>-. r <c e>-. | % 5a
  r4 <b d> <c e>2~ | 8 r r4 r2 | R1 | b2 c4 d~ |
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
  d2-- ees4--( f~ |
  2.) r4 <<{\voiceOne f2^\markup div. bes\longfermata} \new Voice {\voiceTwo d,2 ees8 f4.\longfermata}>> \oneVoice |
  \override NoteHead.style = #'cross r4^\markup unis. a,-> bes-> r |
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
  \repeat volta 2 {
    O Lord -- ee, Pick a bale o' cot -- ton
    O Lord -- ee
    \alternative {
      { Pick a bale a day }
      { }
    }
  }
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

dynamicsAlto = {
  s1 | s | s | s\mf | s |
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
  bes2-- c4--( d~ | 2.) r4 | % 12b
  <<{\voiceOne d2 c8(d4.\longfermata)} \new Voice {\voiceTwo bes2 2\longfermata}>> \oneVoice |
  \override NoteHead.style = #'cross r4^\markup unis. a-> bes-> r |
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
  \repeat volta 2 {
    O Lord -- ee, Pick a bale o' cot -- ton
    O Lord -- ee
    \alternative { { Pick a bale a day } {} }
  }
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

dynamicsTenor = {
  s1 | s | s | s\mf | s |
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
  d2-- ees4--(f~ | 2.) r4 | <d f>2^\markup div. <c ees>8(<d f>4.\longfermata) | r4 \override NoteHead.style = #'cross a-> bes-> r |
  
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
  \repeat volta 2 {
    O Lord -- ee, O.
    O
    \alternative { { Lord -- ee O! } {} }
  }
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

dynamicsBass = {
  s1 | s | s | s\mf | s |
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
  bes2-- c4--(d~ | 2.) r4 | % 12b
  <<{\voiceOne d2^\markup div. c8(d4.\longfermata)} \new Voice {\voiceTwo bes2 2\longfermata}>> \oneVoice |
  r4^\markup unis. \override NoteHead.style = #'cross a4-> bes-> r4 |
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
  \repeat volta 2 {
    O Lord -- ee, O.
    O
    \alternative { { Lord -- ee O! } {} }
  }
  Pick a bale a day! __
  \repeat volta 2 {
    Pick a pick a pick a pick a
    pick a bale o' cot -- ton
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

pianoRHone = \relative {
  \global
  r4 <g c d g>-. \acciaccatura cis''8 d4->_\markup {\tiny L.H.} r |
  R1 |
  r4 <g,,, c d g>-. \acciaccatura cis''8 d4->_\markup {\tiny L.H.} r |
}

pianoRHtwo = \relative {
  \global

}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f |
}

pianoLHone = \relative {
  \global
  g,2 r
}

pianoLHtwo = \relative {
  \global

}

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
            \addlyrics \wordsSop
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
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
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
            \addlyrics \wordsBass
          >>
%                                % Joint soprano/alto staff
%          \new Staff = women \with {
%            instrumentName = #"Soprano/Alto"
%            shortInstrumentName = #"SA"
%            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
%            \new Voice \partCombine \soprano \alto
%            \new NullVoice \soprano
%%            \addlyrics \words
%          >>
%                                % Joint tenor/bass staff
%          \new Staff = men \with {
%            instrumentName = #"Tenor/Bass"
%            shortInstrumentName = #"TB"
%            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
    }
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
