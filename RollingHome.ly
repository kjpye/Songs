\version "2.14.2"

\header {
  title = "Rolling Home"
}

global = {
  \time 3/4
  \key d \major
  \tempo 4=100
}

soprano = \relative c' {
  \global
  \oneVoice
  r2 fis8. g16
  a4. b8 a gis
  a8 fis r4 d'8 d
  cis4. b8 g a
  b2 b8 cis % 5
  d4. fis,8 g a
  cis8 b r4 b8 a
  g4. fis8 g a
  fis4 r d16(e) fis(g)
  a4. a8 a b % 10
  a8 fis r4 d'8 cis
  cis4. b8 g a
  b2 b8 cis
  d4. fis,8 g a
  cis8 b r4 b8 a
  g4. fis8 g a
  fis4 r d16(e) fis(g)
  a4 r a8. b16
  a4 r d8. cis16
  cis4. b8 g8. a16
  b4 r b8 cis
  d4. fis,8 g a
  cis8 b r4 cis8. b16
  a4 ~ \times 2/3 {a8 e(fis)} \times 2/3 {g8(fis) e}
  d2.
}

alto = \relative c' {
  \global
  c4
  
}

tenor = \relative c' {
  \global
  c4
  
}

bass = \relative c {
  \global
  c4
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  Call all hands to man the caps- tan,
  See the ca- ble run down clear,
  heave a- way, and with a will, boys,
  For old Eng- land we will steer;
  And we'll sing in joy- full cho- rus
  In the watch- es of the night,
  And we'll sight the shopres of Eng- land
  When the grey dawn brings the light.
  Roll- ing home, roll- ing home,
  roll- ing home a- cross the sea;
  Roll- ing home to dear old Eng- land,
  roll- ing home, dear land, to thee.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Up a- loft a- mid the rigg- ing,
Blows the loud ex- ult- ing gale,
Like a bird's wide out- stretched pin- ions
Spreads on high each swell- ing sail;
And the wild waves cleft be- hind us,
Seem to mur- mur as they flow,
There are lov- ing hearts that wait you
In the land to which you go,
}

verseThree = \lyricmode {
  \set stanza = "3."
  Man- y thou- sand miles be- hind us,
  man- y thou- sand miles be- fore,
  Anc- ient o- cena heaves to waft us
  To the will- re- mem- bered shore.
  Cheer up, ack, bright smiles a- wait you
  From the fair- est of the fair,
  And her lov- ing eyes will greet you
  With kind wel- comes e- v'ry- where.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
%      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
%    \new Staff \with {
%      midiInstrument = "choir aahs"
%      instrumentName = \markup \center-column { T B }
%    } <<
%      \clef bass
%      \new Voice = "tenor" { \voiceOne \tenor }
%      \new Voice = "bass" { \voiceTwo \bass }
%    >>
  >>
  \layout { }
  \midi { }
}
