\version "2.19.80"

tempotrack = {
  \key f \major
  \time 2/4
  \repeat volta 3 {
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2.
    \time 4/4 s1 % 5
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2. % 10
    \time 4/4 s1
    s1
    s1
    s1
    \time 3/2 s1. % 15
    \time 3/4 s2.
    s2.
  } \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 4/4 s1
    }
  }
  \bar "|."
}

SopranoMusic = \relative c'' {
  \key f \major
  \time 2/4
  a16^\mp a a a g8-- g--
  \bar "|."
}

SopranoLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
}

AltoMusic = \relative c'' {
  \key f \major
  \time 2/4
  c8^\mp f d-- e--
  \bar "|."
}

AltoLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
}

TenorMusic = \relative c' {
  \key f \major
  \time 2/4
  f16^\mp g a c d8-- c--
  \bar "|."
}

TenorLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
}

BassMusic = \relative c {
  \key f \major
  \time 2/4
  f8^\mp d bes-- c--
  \bar "|."
}

BassLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
}


\header {
  title = "Waltzing Matilda"
  composer = "Marie Cowan"
  arranger = "Thomas Wood"
  poet = "A. B. (Banjo) Paterson"
}
\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}
