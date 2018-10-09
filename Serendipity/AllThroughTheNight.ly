% Original from John Lemcke

\version "2.10.25"
\header{
  title = "All Through The Night"
  subtitle = ""
  poet = ""
  composer = "Welsh Air"
  meter = ""
  opus = ""
  arranger = ""
  instrument = ""
  dedication = ""
  piece = ""
  head = ""
  copyright = ""
  footer = ""
  tagline = ""
}

#(set-global-staff-size 20)
#(set-default-paper-size "a4")

soprano = \context Voice = soprano
\repeat volta 2
{
  \set Staff.midiInstrument = "flute"
  \time 4/4
  \key g \major
  \clef treble
  \voiceOne
  g'4. fis'8 e'4 g' |
  a'4. g'8 fis'4 d' |
  e'2 fis'4. fis'8 |
  g'2. r4 |
  g'4. fis'8 e'4 g' |
  a'4. g'8 fis'4 d' |
  e'2 fis'4. fis'8 |
  g'2. r4 |
  c''4 b'4 c''4 d''4 |
  e''4. d''8 c''4 b'4 |
  c''4 b'4 a'4 g'4|
  b'4. a'8 g'4 fis'4 |
  g'4. fis'8 e'4 g' |
  a'4. g'8 fis'4 d' |
  e'2 fis'4. fis'8 |
  g'2. r4
}
alto = \context Voice = alto
\repeat volta 2 {
  \set Staff.midiInstrument = "oboe"
  \time 4/4
  \key g \major
  \clef treble
  \voiceTwo
  b4. d'8 e'4 d'4 |
  cis'4. cis'8 d'4 d'4 |
  c'2 d'4. c'8 |
  b2. r4 |
  b4. d'8 e'4 d'4 |
  cis'4. cis'8 d'4 d'4 |
  c'2 c'4. c'8 |
  b2. r4 |
  d'4 d'4 d'4 g'4 |
  fis'4. g'8 d'4 d'4 |
  fis'4 g'4 d'4 cis'4|
  d'4. d'8 d'4 d'8 c'8 |
  b4. d'8 e'4 d'4 |
  cis'4. cis'8 d'4 d'4 |
  c'2 c'4. c'8 |
  b2. s4
}
tenor = \context Voice = tenor
\repeat volta 2 {
  \set Staff.midiInstrument = "clarinet"
  \time 4/4
  \key g \major
  \clef bass
  \voiceThree
  g4. g8 g4 g4 |
  e4. a8 a4 g4 |
  g2 a4. a8 |
  g2. s4 |
  g4. g8 g4 g4 |
  e4. a8 a4 g4 |
  g2 a4. d8 |
  d2. s4 |
  a4 gis4 a4 b4 |
  c'4. b8 a4 g4 |
  d'4 d'4 a4 a4|
  g4. c'8 b4 a4 |
  g4. g8 g4 g4 |
  e4. a8 a4 g4 |
  g2 a4. d8 |
  d2. s4
}
bass = \context Voice = bass
\repeat volta 2 {
  \set Staff.midiInstrument = "bassoon"
  \time 4/4
  \key g \major
  \clef bass
  \voiceFour
  g,4. b,8 c4 b,4 |
  a,4. a,8 d4 b,4 |
  c4 (a,4) d4. d8 |
  g,2. r4 |
  g,4. b,8 c4 b,4 |
  a,4. a,8 d4 b,4 |
  c4_(a,4) d4. d8 |
  g,2. r4 |
  d4 d4 d4 d4 |
  d4. e8 fis4 g4 |
  a4 g4 fis4 e4|
  d4. d8 d4 d4 |
  g,4. b,8 c4 b,4 |
  a,4. a,8 d4 b,4 |
  c4_(a,4) d4. d8 |
  g,2. r4
}

verseOne = \lyricmode {
  While the moon her watch is kee -- ping
  All through the night
  While the wea -- ry world is slee -- ping
  All through the night
  O'er my bos -- om gent -- ly stea -- ling
  Vis -- ions of de -- light re -- veal -- ing
  Breathes a pure and ho -- ly fee -- ling
  All through the night.
}
verseTwo = \lyricmode {
  Love, to thee my thoughts are tur -- ning
  All through the night
  And for thee my heart is year -- ning,
  All through the night.
  Though sad fate our lives may se -- ver
  Par -- ting will not last for -- ev -- er,
  There's a hope that leaves me ne -- ver,
  All through the night.
}

% Print version with SA on one staff TB on another and words between
\score {
  <<
    \new Staff
         <<
      \soprano \\
      \alto
   >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Staff
    <<
      \tenor \\
      \bass
       >>
 >>
  \layout {
  }
}
