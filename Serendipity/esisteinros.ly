\version "2.19.80"

commonlyrics = \lyricmode {
  There is a flow- er spring- ing
  From ten- der roots it grows,
  From Ed- en beau- ty bring- ing
  From Jes- se's stem it grows,

  On his green branch it blows:
  A bud that in cold win- ter
  At mid- night will un- close.

  Pure Ma- ry, maid- en hol- y,
  The Dream by proph- ets seen,
  Who in a stab- le low- ly
  A- bove her child did lean

  So gent- le and ser- ene:
  This was E- sia- as' vis- ion,
  The tree of liv- ing green.

  To Ma- ry, rose of heav- en,
  With liv- ing hearts we say
  Let our sins be for- giv- en,
  And grief be turned a- way

  U- pon this Christ- mas Day:
  To Jes- us, child of win- ter,
  For grace and hope we pray.
}  

tempotrack = {
  \key f \major
  \time 4/4
  \partial 2 s1
  \unfoldRepeats {
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
  }
  \bar "|."
}

SopranoMusic = \relative c'' {
  \key f \major
  \time 4/4
  \partial 2 c2
  \unfoldRepeats {
    \repeat volta 3 {
      c4 c d c 
      \time 3/2 c2 a bes
      \time 3/4 a4 g2
      f2 e4
      \time 4/4 f2 c' % 5
      c4 c d c
      \time 3/2 c2 a bes
      \time 3/4 a4 g2
      f2 e4 % 10
      \time 4/4 f2 r4 a
      g4 e f d
      c2. c'4
      c4 c d c
      \time 3/2 c2 a bes % 15
      \time 3/4 a4 g2
      f2 e4
    } \alternative {
      {
	\time 4/4 f2 c'
      }
      {
	\time 4/4 f,1
      }
    }
  }
  \bar "|."
}

SopranoLyrics = \commonlyrics

AltoMusic = \relative c'' {
  \key f \major
  \time 4/4
  \partial 2 a2
  \unfoldRepeats {
    \repeat volta 3 {
      a4 f f f
      \time 3/2 e2 d d
      \time 3/4 c2 d4~
      d8 a c2
      \time 4/4 c'2 a % 5
      a4 f f f
      \time 3/2 e2 d d
      \time 3/4 c2 d4~
      d8 a c2 % 10
      \time 4/4 c2 r4 f
      d4 c c b
      c8(d e2) e4
      g f f f
      \time 3/2 e2 d d
      \time 3/4 f4 d(e)
      f4(g) c,4
    } \alternative {
      {
	\time 4/4 c2 a'
      }
      {
	\time 4/4 c1
      }
    }
  }
  \bar "|."
}

AltoLyrics = \commonlyrics

TenorMusic = \relative c' {
  \key f \major
  \time 4/4
  \partial 2 c2
  \unfoldRepeats {
    \repeat volta 3 {
      c4 a bes a
      \time 3/2 g2 a a
      \time 3/4 a4(c) bes
      a2 g4
      \time 4/4 a2 c % 5
      c4 a bes a
      \time 3/2 g2 f f
      \time 3/4 a4(c) bes
      a2 g4 % 10
      \time 4/4 a2 r4 c
      bes4 a a g
      g2. g4
      g4 a bes a
      \time 3/2 g2 fis g % 15
      \time 3/4 c4 bes a~
      a4 g2
    } \alternative {
      {
	\time 4/4 a2 c
      }
      {
	\time 4/4 a1
      }
    }
  }
  \bar "|."
}

TenorLyrics = \commonlyrics

BassMusic = \relative c {
  \key f \major
  \time 4/4
  \partial 2 f2
  \unfoldRepeats {
    \repeat volta 3 {
      f4 f bes a
      \time 3/2 c,2 d bes
      \time 3/4 f'4 e d~
      d4 c2
      \time 4/4 f2 f % 5
      f4 f bes f
      \time 3/2 c2 d bes
      \time 3/4 f'4 ees d~
      d4 c2 % 10
      \time 4/4 f2 r4 f
      g4 a f g
      c,2. c4
      e4 f bes, f'
      \time 3/2 c2 d g, % 15
      \time 3/4 a4 bes c~
      c4 c2
    } \alternative {
      {
	\time 4/4 f2 f
      }
      {
	\time 4/4 f1
      }
    }
  }
  \bar "|."
}

BassLyrics = \commonlyrics

\header {
  title = "Es Ist Ein Ros"
}
\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}
