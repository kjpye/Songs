\version "2.14.2"

\header {
  title = "Yo Ho Ho and a Bottle of Rum"
}

global = {
  \time 4/4
  \key ees \major
  \tempo 4=100
}

soprano = \relative c' {
  \global
  c4 d ees d8 c
  ees4 d c2
  c4 d ees d8 c
  ees8 ees4 d8 c2
f4 g8 g aes aes4 f8
aes4 g8 g f2
f4 g aes g8 f
aes8 aes4 g8 f4. fis8
g4 g ees c8 d
ees4 d c4. fis8
g4 g ees c8 d
ees4 d c4. bes8
ees4 ees f f
g4 g fis4. f8
g4 g a f
bes4 bes a4. aes8
bes4 bes a4. aes8
g4 g fis4. f8
g4 g ees c8 d
ees4 c d2
c4 d ees d8 c
ees8 ees4 d8 c2-\fermata
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
  Fif- teen men on a dead man's chest,
Yo- ho- ho and a bot- tle of rum!
Drink and the De- vil had done for the rest,
Yo- ho- ho and a bot- tle of rum!
The mate was fixed by the bo- sun's pike,
The bo- sun brained with a mar- lin spike,
And coo- key's throat was marked be- like
It had been marked by the fin- gers ten;
And there they lay, all good men,
Like break o' day in a boo- zing ken,
Yo- ho- ho and a bot- tle of rum!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  ha
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  ho
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
%    \new Lyrics \with {
%      \override VerticalAxisGroup #'staff-affinity = #CENTER
%    } \lyricsto "soprano" \verseTwo
%    \new Lyrics \with {
%      \override VerticalAxisGroup #'staff-affinity = #CENTER
%    } \lyricsto "soprano" \verseThree
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
