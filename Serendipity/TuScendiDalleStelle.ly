% Original from John Lemcke

\version "2.12.1"

\include "english.ly"

\header {
  title = "Tu scendi dalle stelle"
  % Remove default LilyPond tagline
  tagline = ##f
}
#(set-global-staff-size 24)

\paper {
  #(set-paper-size "a4")
  line-width = 180\mm
  left-margin = 20\mm
  bottom-margin = 10\mm
  top-margin = 10\mm
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

soprano = \relative c'' {
  \global
  % Music follows here.
  c8 c4 d8 c4 bf8 bf a2 \breathe g8 a [(bf)] c c [(bf a)]
  \partial 8*5 g8 ~ g2 \breathe
  \set Score.voltaSpannerDuration = #(ly:make-moment 6 8)
  \repeat volta 2 { \partial 8
    \break a8 g4 a8 bf4 a8 g4. d'4 \breathe d8 c [(d)] c bf [(a g)]
  }
  \alternative {
    {\partial 8*5 a8 ~ a2}
    { a4. a4 c8 bf4 bf8 \autoBeamOff bf a g a4 a8 \breathe
      a4 c8 bf4 bf8 bf a g a8 ~ a2 \breathe
      g8 a bf c c[ (bf a)] g8 ~ g2 \breathe a8 }
  }
  \repeat volta 2 {
    g4 a8 bf4 a8 g4. \breathe d'4.c8 [(d)] c bf[ (a g)]
  }
    \alternative {
      { a4. ~ a4 \breathe a8 }
    {f2.}
  }


}

alto = \relative c' {
  \global
  % Music follows here.
  c'8 f,4 f8 f4 e8 e f2 e8 f [(g)] a a [(g f)]
  \partial 8*5 e8 ~ e2
  \set Score.voltaSpannerDuration = #(ly:make-moment 6 8)
  \repeat volta 2 { \partial 8
    f8 e4 f8 g4 f8 e4. bf'4 bf8 a [(bf)] a g [(f e)]
  }
  \alternative {
    {\partial 8*5 f8 ~ f2}
    { f4. f4 a8 g4 g8 \autoBeamOff g f e f4 f8 f4 a8 g4 g8 g f e f8 ~ f2
      e8 f g a a[ (g f)] e8 ~ e2 f8 }
  }
  \repeat volta 2 {
    e4 f8 g4 f8 e4. bf'4.a8 [(bf)] a g[ (f e)]
  }
  \alternative {
    { f4. ~ f4 f8 }
    {f2.}
  }

}

tenor = \relative c' {
  \global
  % Music follows here.

}

bass = \relative c {
  \global
  % Music follows here.
  \stemDown
  f8 a4 bf8 a4 g8 g f2
  \stemUp
  c8 c4 c8 c4.
  \partial 8*5 c4 (d8 c4)
  \stemNeutral
  \set Score.voltaSpannerDuration = #(ly:make-moment 6 8)
  \repeat volta 2 { \partial 8
    f8 \autoBeamOff c8 [(bf)] a8 g4 g8
    c [(d c)] bf [(a)] g8 a [(bf)] c c [(d e)]
  }
  \alternative {
    { \partial 8*5 f8 ~ f2 }
    { f4. c4 d8 c4 c8 \autoBeamOff c c d c4 c8 c4 d8 c4 c8 c c d c8 ~ c2
      c8 c c c c4.
      \stemUp
      c4 (d8 c4) f8
      \stemNeutral
    }
  }
  \repeat volta 2 {
    c8 [(bf)] a g4 g8 c [(d c)] bf [(a g)]
    a8 [(bf)] c c [(d e)]
  }
  \alternative {
    { f4. ~ f4 f8 }
    { f2. }
  }

}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Tu scen -- di dal -- le stel -- le o Re del cie --  lo,
  \repeat volta 2 { \partial 8
    e vie -- ni~in u -- na grot -- ta al fred -- do~al ge --
  }
  \alternative {
    {\partial 8*5 lo. }
    { lo. O Bam -- bi -- no mi -- o di -- vi -- no
      io ti ve -- do qui a tre -- mar:
      o Di -- o be -- a -- to! Ah }
  }
  \repeat volta 2 {
    quan -- to ti co -- sto' l'a -- ver -- mi~a -- ma --
  }
  \alternative {
    { to. Ah }
    { to. }
  }
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  A te che sei del mon -- do il Cre -- a -- to -- re,
  \repeat volta 2 { \partial 8
    or man -- can pan -- ni~e fuo -- co, O mi -- o Signo --
  }
  \alternative {
    {\partial 8*5 re, }
    {
      re, Ca -- ro e -- let -- to Par -- go -- let -- to;
      quan -- to ques -- ta po- \skip8  ver -- ta
      pi -- u m'in -- na -- mor -- a, Gia --
    }
  }
  \repeat volta 2 {
    cche Ti fe -- ce~a -- mor Po -- ve -- -ro~an -- co --
  }
  \alternative {
    { ra. Gia }
    { ra. }
  }
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    %    \new Lyrics \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \clef bass
      %      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceOne \bass }
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
