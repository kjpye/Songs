\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Bonny Lass"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Morley (c. 1557-1603)"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
%  \mark \markup { \circle "1a" }
  s2 s2
}

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    d4 d8 d d4 e
    d2 d
    d4 d8 d g4 fis
    e2 d
    r1
    g4. g8 fis4. fis8
    e4 e d d
    d4 d d cis
    d2. c4
    b2 a2~
    a4 g g2~
    g2 fis
  }
  \alternative
  {
  {
    g1
  }
  {g2 r4 d'
  }
  }
  \repeat volta 2 {
    e4 d b cis
    d2 r4 fis
    e4 d d cis \time 3/4
    d2 r4
    d4. e8 fis4
    g2 fis4
    e2 d4
    d2 cis4
    d2 a4
    d2 c4
    b2 a4
    g4 g fis
  }
  \alternative {
  {
    \time 4/4 g2 r4 d'
  }
  {
    \time 3/4 g,2.
  }
  }
  \bar "|."
}

dynamicsSop = {
  \repeat volta 2 {
    s1^\f
    s1
    s1
    s1
    s1
    s1
    s1^\markup{cresc.}
    s1
    s1
    s2\> s\!
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \repeat volta 2 {
    s1
    s1
    s1
    \time 3/4 s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
  }
  \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 3/4 s2.
    }
  }
}

alto = \relative c'' {
  \global
  \repeat volta 2 {
    b4 b8 b b4 c
    b2 b
    b4 b8 b b4 a
    a2 a
    r1
    r1
    c4. 8 b4 b
    a4 a g e
    fis2. a4
    g2 e
    d2 d
    d2. c4
  }
  \alternative
  {
    {
      b1
    }
    {
      b2 r4 b'
    }
  }
  \repeat volta 2 {
    c4 a g a
    a2 r4 a
    a4 a g e
    \time 3/4 fis2 r4
    r2.
    g4. a8 b4
    c2 b4
    a2 g4
    fis2 e4
    d4. e8 fis4
    g4. fis8 e4
    d4 e d
  }
  \alternative {
  {
    \time 4/4 d2 r4 b'
  }
  {
    \time 3/4 d,2.
  }
  }
}

dynamicsAlto = {
  \repeat volta 2 {
    s1^\f
    s1
    s1
    s1
    s1
    s1
    s1
    s1^\markup{cresc.}
    s1
    s2\> s\!
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \repeat volta 2 {
    s1
    s1
    s1
    \time 3/4 s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
  }
  \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 3/4 s2.
    }
  }
}

tenorOne = \relative c'' {
  \global
  \clef "treble_8"
  \repeat volta 2 {
    g4 g8 g g4 g
    g2 g
    g4 g8 g d4 d
    cis2 d
    b4. b8 a4. a8
    g4 g a4. b8
    c4 c d d
    d4 d g,2
    d'2. e4
    d2 c~
    c2 b
    a1
  }
  \alternative
  {
  {
    d1
  }
  {
    g,2 r4 g
  }
  }
  \repeat volta 2 {
    c4 d e a,
    d2 r4 a
    a4 a b a
    \time 3/4 a2 r4
    b2 a4
    g2 d'4 g,2 g4
    a4 d g,
    d'4 a8 b c4
    g8 a b4 a
    g8 a b4 c
    d4 c a
  }
  \alternative {
  {
    \time 4/4 g2 r4 g
  }
  {
    \time 3/4 b2.
  }
  }
}

dynamicsTenorOne = {
  \repeat volta 2 {
    s1^\f
    s1
    s1
    s1
    s1
    s1
    s1^\markup{cresc.}
    s1
    s1
    s2\> s\!
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \repeat volta 2 {
    s1
    s1
    s1
    \time 3/4 s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
  }
  \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 3/4 s2.
    }
  }
}

tenorTwo = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 2 {
    d4 d8 d d4 c
    d2 d
    d4 d8 d b4 d
    e2 fis
    d4 e4. d8 d4~
    d4 cis d2
    g4. g8 g4 g
    fis4 d e2
    a,2 a
    d,2 e
    fis2 g
    a2 d    
  }
  \alternative
  {
  {
    d1
  }
  {
    d2 r4 g
  }
  }
  \repeat volta 2 {
    g4 fis e e
    fis2 r4 d
    cis4 d e e
    \time 3/4 d2 r4
    r4 g-> d->
    e2 b4
    e4. fis8 g4
    fis4 d e
    a,2 r4
    r4 r a
    d2 c4
    b4 a a
  }
  \alternative {
  {
    \time 4/4 g2 r4 g'
  }
  {
    \time 3/4 g,2.
  }
  }
}

dynamicsTenorTwo = {
  \repeat volta 2 {
    s1^\f
    s1
    s1
    s1
    s1
    s1
    s1^\markup{cresc.}
    s1
    s1
    s2\> s\!
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \repeat volta 2 {
    s1
    s1
    s1
    \time 3/4 s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
  }
  \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 3/4 s2.
    }
  }
}

bass= \relative c' {
  \global
  \clef bass
  \repeat volta 2 {
    g4 g8 g g4 c,
    g'2 g
    g4 g8 g g4 d
    g2 d
    g4. g8 fis4. fis8
    e4 e d d
    e4 c g' g,
    d'4 fis d2
    d2. a4
    b2 c
    d1~
    d1
  }
  \alternative
  {
  {
    g,1
  }
  {
    g1
  }
  }
  \repeat volta 2 {
    r1
    r2 r4 d'
    a'4 fis g a
    \time 3/4 d,2 r4
    g2 fis4
    e2 d4
    c2 g4
    d'4 fis e
    d2 c4
    b4 g a
    b4 g a
    b4 c d
  }
  \alternative {
  {
    \time 4/4 g,2 r
  }
  {
    \time 3/4 g2.
  }
  }
}

dynamicsBass = {
  \repeat volta 2 {
    s1^\f
    s1
    s1
    s1
    s1
    s1
    s1^\markup{cresc.}
    s1
    s1
    s2\> s\!
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \repeat volta 2 {
    s1
    s1
    s1
    \time 3/4 s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
  }
  \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 3/4 s2.
    }
  }
}

wordsSopA = \lyricmode {
  \set stanza = "1."
  My bon- ny lass she smi- leth when she my heart be- guil- eth
  fa la la la la la la la la la la la la,
  fa la la la la la la, la.
  Smile less dear love there- fore,
  And you shall love me more
  Fa la la
  la la la la la la la,
  fa la la la la la la la la.
  Smile
  la.
}

wordsSopB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn- eth, O how my heart it burn- eth
  fa la la la la la la la la la la la la,
  fa la la la la la la, la.
  Dear love call in their light,
  Or else you'll burn me quite
  Fa la la
  la la la la la la la,
  fa la la la la la la la la.
  Dear
  la.
}

wordsAltoA = \lyricmode {
  \set stanza = "1."
  My bon- ny lass she smi- leth when she my heart be- guil- eth
  Fa la la la la la la la fa.
  fa la la la la la la la la.
  Smile less dear love there- fore,
  And you shall love me more
  Fa la la la la la la la,
  fa la la la la la la la la la la.
  Smile
  la.
}

wordsAltoB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn- eth, O how my heart it burn- eth
  Fa la la la la la la la fa.
  fa la la la la la la la la.
  Dear love call in their light,
  Or else you'll burn me quite
  Fa la la la la la la la,
  fa la la la la la la la la la la.
  Dear
  la.
}

wordsTenorOneA = \lyricmode {
  \set stanza = "1."
  My bon- ny lass she smi- leth when she my heart be- guil- eth
  Fa la la la la la la la la la la,
  fa la la la la, fa la la la la la la.
  Smile less dear love there- fore,
  And you shall love me more
  Fa la la la la la la,
  fa la la, fa la la la la la la la la la la la la la la.
  Smile
  la.
}

wordsTenorOneB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn- eth, O how my heart it burn- eth
  Fa la la la la la la la la la la,
  fa la la la la, fa la la la la la la.
  Dear love call in their light,
  Or else you'll burn me quite
  Fa la la la la la la,
  fa la la, fa la la la la la la la la la la la la la la.
  Dear
  la.
}

wordsTenorTwoA = \lyricmode {
  \set stanza = "1."
  My bon- ny lass she smi- leth when she my heart be- guil- eth
  Fa la la la la la,
  fa la la la la la la la,
  fa la la la la la la la, la
  Smile less dear love there- fore,
  And you shall love me more
  Fa la la la la la la la la la la,
  fa la la la la la la.
  Smile
  la.
}

wordsTenorTwoB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn- eth, O how my heart it burn- eth
  Fa la la la la la,
  fa la la la la la la la,
  fa la la la la la la la, la
  Dear love call in their light,
  Or else you'll burn me quite
  Fa la la la la la la la la la la,
  fa la la la la la la.
  Dear
  la.
}

wordsBassA = \lyricmode {
  \set stanza = "1."
  My bon- ny lass she smi- leth when she my heart be- guil- eth
  Fa la la la la la la la la la la,
  fa la la la la,
  fa la la la la, la.
%  Smile less dear love there- fore,
  And you shall love me more
  Fa la la la la la la la la la la
  la la la la la la la la la la. la.
}

wordsBassB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn- eth, O how my heart it burn- eth
  Fa la la la la la la la la la la,
  fa la la la la,
  fa la la la la, la.
%  Dear love call in their light,
  Or else you'll burn me quite
  Fa la la la la la la la la la la
  la la la la la la la la la la. la.
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSopA
        \new Lyrics \lyricsto "soprano" \wordsSopB
      >>
% Single alto staff
      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAltoA
        \new Lyrics \lyricsto "alto" \wordsAltoB
      >>
% Single tenor one staff
      \new Dynamics \dynamicsTenorOne
      \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
        \new Voice = "tenorone" \tenorOne
        \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
        \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
      >>
% Single tenor two staff
      \new Dynamics \dynamicsTenorTwo
      \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
        \new Voice = "tenortwo" \tenorTwo
        \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
        \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
      >>
% Single bass staff
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBassA
        \new Lyrics \lyricsto "bass" \wordsBassB
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}
