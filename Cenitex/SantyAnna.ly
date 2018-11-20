\version "2.14.2"

\header {
  title = "Santy Anna"
}

global = {
  \time 4/4
  \key aes \major
  \tempo 4=118
}

soprano = \relative c' {
  \global
  \partial 4 c4
  \repeat volta 5 {
    f4. g8 aes4 bes
    c4 bes8 aes bes4 ees
    c4. f,8 f4. g8
    aes4 bes2 bes4
    c4. aes8 bes4. g8
    aes4 g8 f ees4 f8(g)
    aes4. f8 g4. ees8
  } \alternative {
    {c4 f f c}
    {c4 f f2-\fermata}
  }
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
  Oh San- ty An- na won the _ day
  Way- Ah, me San- ty An- na.
  Oh San- ty An- na won the _ day.
  All on the plains of Mex- i- co.
  He
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  He beat the Proo- shans fair- _ _ ly.
  Way- Ah, me San- ty An- na.
  And whacked the Bri- tish near- _ _ ly. 
  All on the plains of Mex- i- co.
  He
}

verseThree = \lyricmode {
  \set stanza = "3."
  He was a ror- ty gin- er- _ al;
  Way- Ah, me San- ty An- na.
  A ror- ty snor- ty gin- er- _ al.
  All on the plains of Mex- i- co.
  They
}

verseFour = \lyricmode {
  \set stanza = "4."
  They took him out and shöt _ _ him.
  Way- Ah, me San- ty An- na.
  Oh when shall we for- get _ _ him.
  All on the plains of Mex- i- co.
  Oh
}

verseFive = \lyricmode {
  \set stanza = "5."
  Oh San- ty An- na won the _ day
  Way- Ah, me San- ty An- na.
  And Gin'- ral Tay- lor run a- _ way.
  All on the plains of _ _ _ _ Mex- i- co.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      % instrumentName = \markup \center-column { S A }
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
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
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
