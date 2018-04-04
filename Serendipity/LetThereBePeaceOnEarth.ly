\version "2.18.2"

SopranoLyrics = \lyricmode {
  Let there be peace on earth,
  and let it be- gin with me;
  let there be peace on earth,
  the peace that was meant to be.
  With God as our Fath- er,
  we are fam- i- ly.
  Let us walk with each oth- er in per- fect har- mon- y.
  Let peace be- gin with me; let this be the mom- ent now.
  With ev- ery breath I take, let this be my sol- emn vow;
  to take each mom- ent and live each mom- ent in peace e- ter- nal- ly.
  Let there be peace on earth, and let it be- gin with me.
}  

MSopranoLyrics = \lyricmode {
  "Let " "there " "be " "peace " "on " "earth,"
  "/and " "let " "it " "be" "gin " "with " "me;"
  "/let " "there " "be " "peace " "on " "earth,"
  "/the " "peace " "that " "was " "meant " "to " "be."
  "/With " "God " "as " "our " "Fath" "er,"
  "/we " "are " "fam" "i" "ly."
  "/Let " "us " "walk " "with " "each " "oth" "er "
  "/in " "per" "fect " "har" "mon" "y."
  "/Let " "peace " "be" "gin " "with " "me; "
  "/let " "this " "be " "the " "mom" "ent " "now."
  "/With " "ev" "ery " "breath " "I " "take, "
  "/let " "this " "be " "my " "sol" "emn " "vow;"
  "/to " "take " "each " "mom" "ent " "and "
  "/live " "each " "mom" "ent " "in " "peace " "e" "ter" "nal" "ly."
  "/Let " "there " "be " "peace " "on " "earth, "
  "/and " "let " "it " "be" "gin " "with " "me."
}  

AltoLyrics = \lyricmode {
}  

TenorLyrics = \lyricmode {
}  

BassLyrics = \lyricmode {
}  

tempotrack = {
  \key c \major
  \time 3/4
}

SopranoMusic = \relative c' {
  \key c \major
  \time 3/4
  \tempo 4=150
  \voiceOne c2.
  c2 b4
  c2 d4
  e2 f4
  g4 c, a'
  g2 c,4 % 5
  d2.~
  d2 \oneVoice r4 \voiceOne
  e2.
  e2 e4
  fis2 g4 % 10
  a2 c4
  b4 g a
  b2 c4
  b2.~
  b4 \oneVoice r \voiceOne g % 15
  c2.
  a2 c4
  b4 g2~
  g2.
  a2 a4 % 20
  g2 f4
  g2.~
  g2 \oneVoice r4 \voiceOne
  g2 e4
  fis4 g a % 25
  b4 d,2~
  d2 d4
  c'2 c4
  b2 a4
  g2.~ % 30
  g2 \oneVoice r4 \voiceOne
  c,2.
  c2 b4
  c2 d4
  e2 f4
  g4 c, a'
  g2 c,4
  d2.~
  d2 \oneVoice r4 \voiceOne
  e2.
  e2 e4 fis2 g4 a2 c4
  b4 g a
  b2 c4
  b2.~
  b4 \oneVoice r \voiceOne g
  c2 c4
  c4 b c
  c2 c4
  c4 b c
  c2 c4
  b2 c4
  d2.~
  d2 \oneVoice r4 \voiceOne
  c2.
  b2 d4
  c2 a4
  g2 g4
  a4 b c
  d2 c4
  c2.-\fermata
  \bar "|."
}

AltoMusic = \relative c' {
  \key c \major
  \time 3/4
  \voiceTwo g2.
  a2 a4
  a2 a4
  b2 b4
  c4 c c
  c2 c4
  c2.(
  b2) s4
  c2.
  c2 c4
  dis2 e4
  dis2 dis4
  e4 e fis
  fis2 fis4
  f2.~
  f4 s f
  e2.
  c2 e4
  e4 e2~
  e2.
  f2 f4
  e2 d4
  e2.~
  e2 s4
  e2 c4
  c4 c c
  b4 b2~
  b2 b4
  e2 e4
  d2 c4
  b2.~
  b2 s4
  g2.
  a2 a4
  a2 g4
  b2 b4
  c4 c c
  c2 c4
  c2.(
  b2) s4
  c2.
  c2 c4
  dis2 e4
  fis2 fis4
  g4 e fis
  fis2 fis4
  f2.~
  f4 s f
  e2 e4
  e4 e e
  e2 e4
  e4 e e
  f2 f4
  f2 f4
  fis2.(
  aes2)s4
  g2.
  gis2 gis4
  a2 f4
  e2 e4
  f4 g f
  f2 f4
  e2.
  \bar "|."
}

TenorMusic = \relative c {
  \key c \major
  \time 3/4
  \voiceOne e2.
  e2 e4
  f2 f4
  f2 f4
  e4 e f
  g2 e4
  f2.~
  f2 s4
  g2.
  g2 g4
  a2 g4
  fis2 a4
  g4 b b
  b2 a4
  g2.(d'4) s b
  a2.
  e2 fis4
  g4 b2(
  bes2.)
  c2 c4
  b2 b4
  c2.~
  c2 s4
  c2 g4
  a4 g fis
  g4 g2~
  g2 g4
  g2 g4
  fis2 fis4
  g2.(
  f2) s4
  e2.
  e2 e4
  f2 f4
  f2 f4
  e4 e f
  e2 e4
  f2.~
  f2 s4
  g2.
  g2 g4
  b2 b4
  b2 a4
  b4 b b
  b2 a4
  g2.(
  d'4) s b
  g2 g4
  g4 g g
  gis2 gis4
  gis4 gis gis
  a2 a4
  gis2 a4
  c2.~
  c2 s4
  c2.
  d2 b4
  a2 c4
  c2 c4
  c4 c c
  b2 d4
  c2.
  \bar "|."
}

BassMusic = \relative c {
  \key c \major
  \time 3/4
  \voiceTwo c2.
  a2 a4
  d2 d4
  g,2 g4
  c4 c f % 5
  e2 a,4
  g2.~g2 \oneVoice r4 \voiceTwo
  c2.
  c2 c4
  b2 b4 % 10
  b2 b4
  e4 e e
  dis2 dis4
  d2.(
  g4) \oneVoice r \voiceTwo g, % 15
  a2.
  a2 a4
  e'4 e2(
  c2.)
  f2 f4 % 20
  g2 g4
  c,2.~
  c2 \oneVoice r4 \voiceTwo
  a2 a4
  d4 d d % 25
  g,4 g2~
  g2 g4
  a2 a4
  d2 d4
  g,2.~ % 30
  g2 \oneVoice r4 \voiceTwo
  c2.
  a2 a4
  d2 d4
  g,2 g4 % 35
  c4 c f,
  g2 g4
  g2.~
  g2 \oneVoice r4 \voiceTwo
  c2. % 40
  c2 c4
  b2 b4
  b2 b4
  e4 e e
  dis2 dis4
  d2.(
  g4) \oneVoice r \voiceTwo g,
  c2 c4
  c4 c c
  c2 c4
  c4 c c
  f2 f4
  f2 f4
  d2.(
  f2) \oneVoice r4 \voiceTwo
  e2.
  e2 e4
  f2 f4
  c2 c4
  f4 e d
  g2 g,4
  c2._\fermata
  \bar "|."
}

\header {
  title = "Let There Be Peace On Earth"
  composer = "Jill Jackson-Miller and Sy Miller"
}
\book {
  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = women <<
           \new Voice = sopranos { \SopranoMusic }
	   \new Voice = altos { \AltoMusic }
        >>
	\new Lyrics \lyricsto "sopranos" { \SopranoLyrics }
	\new Staff = men <<
	  \new Voice = tenors { \clef "bass" \TenorMusic }
	  \new Voice = basses { \clef "bass" \BassMusic }
        >>
      >>
      \context PianoStaff <<
      >>
    >>
    \layout {}
  }
  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = women <<
           \new Voice = sopranos { \SopranoMusic }
	   \new Voice = altos { \AltoMusic }
        >>
	\new Lyrics \lyricsto "sopranos" { \MSopranoLyrics }
	\new Staff = men <<
	  \new Voice = tenors { \clef "bass" \TenorMusic }
	  \new Voice = basses { \clef "bass" \BassMusic }
        >>
      >>
      \context PianoStaff <<
      >>
    >>
    \midi {}
  }
}
