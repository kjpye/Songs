\version "2.25.0"

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

  composer    = "Thomas Morley (c. 1557-1602)"
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
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

RehearsalTrack = {
  \repeat volta 2 {
    \repeat volta 2 {
  \set Score.currentBarNumber = #1
      \textMark \markup { \box "1a" } s1*5
      \textMark \markup { \box "1b" } s1*6
      \textMark \markup { \box "2a" } s1
      \alternative { {s1} {s1} }
    }
    \repeat volta 2 {
      \set Score.currentBarNumber = #15
      s1*3 s2.*2
      \textMark \markup { \box "2b" } s2.*7
      \alternative { {s1} {s2.} }
    }
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    \repeat volta 2 {
      \time 4/4
      d4 d8 d d4 e
      d2 d
      d4 d8 d g4 fis
      e2 d
      R1
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
  }
  \bar "|."
}

dynamicsSop = {
  \repeat volta 2 {
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
}

alto = \relative c'' {
  \global
  \repeat volta 2 {
    \repeat volta 2 {
      b4 b8 b b4 c
      b2 b
      b4 b8 b b4 a
      a2 a
      R1
      R1
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
}

dynamicsAlto = {
  \repeat volta 2 {
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
}

tenorOne = \relative c'' {
  \global
  \repeat volta 2 {
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
}

dynamicsTenorOne = {
  \repeat volta 2 {
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
}

tenorTwo = \relative c' {
  \global
  \repeat volta 2 {
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
}

dynamicsTenorTwo = {
  \repeat volta 2 {
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
}

bass= \relative c' {
  \global
  \repeat volta 2 {
    \repeat volta 2 {
      g4 g8 g g4 c,
      g'2 g
      g4 g8 g g4 d
      a2 d
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
      R1
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
}

dynamicsBass = {
  \repeat volta 2 {
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
}

wordsSopA = \lyricmode {
  \set stanza = "1."
  My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
  fa la la la la la la la la la la la la,
  fa la la la la la la, la.
  Smile less dear love there -- fore,
  And you shall love me more
  Fa la la
  la la la la la la la,
  fa la la la la la la la la.
  Smile
  la.
}

wordsSopB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn -- eth, O how my heart it burn -- eth
%  fa la la la la la la la la la la la la,
%  fa la la la la la la, la.
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Dear love call in their light,
  Or else you'll burn me quite
%  Fa la la
%  la la la la la la la,
%  fa la la la la la la la la.
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Dear
%  la.
  _
}


wordsSopSingle = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
    fa la la la la la la la la la la la la,
    fa la la la la la
    \alternative { { la, } { la, } }
  }
  \repeat volta 2 {
    Smile less dear love there -- fore,
    And you shall love me more
    Fa la la
    la la la la la la la,
    fa la la la la la la la
    \alternative { { la. } { la. } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    When she her sweet eye turn -- eth, O how my heart it burn -- eth
    fa la la la la la la la la la la la la,
    fa la la la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
    Dear love call in their light,
    Or else you'll burn me quite
    Fa la la
    la la la la la la la,
    fa la la la la la la la
    \alternative { { la. } { la. } }
  }
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    "My " bon "ny " "lass " "she " smi "leth " "when " "she " "my " "heart " be guil "eth "
    "\nfa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la,\n" } }
  }
  \repeat volta 2 {
    "\nSmile " "less " "dear " "love " there "fore, "
    "\nAnd " "you " "shall " "love " "me " "more "
    "\nFa " "la " "la "
    "\nla " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.n" } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    "\nWhen " "she " "her " "sweet " "eye " turn "eth, " "O " "how " "my " "heart " "it " burn "eth "
    "\nfa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la "
    \alternative { { "la,n" } { "la.n" } }
  }
  \repeat volta 2 {
    "\nDear " "love " "call " "in " "their " "light, "
    "\nOr " "else " "you'll " "burn " "me " "quite "
    "\nFa " "la " "la "
    "\nla " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.n" } { la. } }
  }
}


wordsAltoA = \lyricmode {
  \set stanza = "1."
  My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
  Fa la la la la la la la fa.
  fa la la la la la la la la.
  Smile less dear love there -- fore,
  And you shall love me more
  Fa la la la la la la la,
  fa la la la la la la la la la la.
  Smile
  la.
}

wordsAltoB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn -- eth, O how my heart it burn -- eth
%  Fa la la la la la la la fa.
%  fa la la la la la la la la.
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Dear love call in their light,
  Or else you'll burn me quite
%  Fa la la la la la la la,
%  fa la la la la la la la la la la.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  Dear
%  la.
  _
}

wordsAltoSingle = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
    Fa la la la la la la la fa.
    fa la la la la la la
    \alternative { { la. } { la. } }
  }
  \repeat volta 2 {
    Smile less dear love there -- fore,
    And you shall love me more
    Fa la la la la la la la,
    fa la la la la la la la la la
    \alternative { { la. } { la. } }
  }
  
  \set stanza = "2."
  \repeat volta 2 {
    When she her sweet eye turn -- eth, O how my heart it burn -- eth
    Fa la la la la la la la fa.
    fa la la la la la la
    \alternative { { la. } { la. } }
  }
  \repeat volta 2 {
    Dear love call in their light,
    Or else you'll burn me quite
    Fa la la la la la la la,
    fa la la la la la la la la la
    \alternative { { la. } { la. } }
  }
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    "My " bon "ny " "lass " "she " smi "leth " "when " "she " "my " "heart " be guil "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "fa. "
    "\nfa " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.\n" } }
  }
  \repeat volta 2 {
    "\nSmile " "less " "dear " "love " there "fore, "
    "\nAnd " "you " "shall " "love " "me " "more "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.n" } }
  }
  
  \set stanza = "2."
  \repeat volta 2 {
    "\nWhen " "she " "her " "sweet " "eye " turn "eth, " "O " "how " "my " "heart " "it " burn "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "fa. "
    "\nfa " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.\n" } }
  }
  \repeat volta 2 {
    "\nDear " "love " "call " "in " "their " "light, "
    "\nOr " "else " "you'll " "burn " "me " "quite "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { la. } }
  }
}

wordsTenorOneA = \lyricmode {
  \set stanza = "1."
  My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
  Fa la la la la la la la la la la,
  fa la la la la, fa la la la la la la.
  Smile less dear love there -- fore,
  And you shall love me more
  Fa la la la la la la,
  fa la la, fa la la la la la la la la la la la la la la.
  Smile
  la.
}

wordsTenorOneB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn -- eth, O how my heart it burn -- eth
%  Fa la la la la la la la la la la,
%  fa la la la la, fa la la la la la la.
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  Dear love call in their light,
  Or else you'll burn me quite
%  Fa la la la la la la,
%  fa la la, fa la la la la la la la la la la la la la la.
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Dear
%  la.
  _
}

wordsTenorOneSingle = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
    Fa la la la la la la la la la la,
    fa la la la la, fa la la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
    Smile less dear love there -- fore,
    And you shall love me more
    Fa la la la la la la,
    fa la la, fa la la la la la la la la la la la la la
    \alternative { { la, } { la. } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    When she her sweet eye turn -- eth, O how my heart it burn -- eth
    Fa la la la la la la la la la la,
    fa la la la la, fa la la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
    Dear love call in their light,
    Or else you'll burn me quite
    Fa la la la la la la,
    fa la la, fa la la la la la la la la la la la la la
    \alternative { { la, } { la. } }
  }
}

wordsTenorOneMidi = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    "My " bon "ny " "lass " "she " smi "leth " "when " "she " "my " "heart " be guil "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la, " "fa " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }
  \repeat volta 2 {
    "\nSmile " "less " "dear " "love " there "fore, "
    "\nAnd " "you " "shall " "love " "me " "more "
    "\nFa " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la, " "fa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    "\nWhen " "she " "her " "sweet " "eye " turn "eth, " "O " "how " "my " "heart " "it " burn "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la, " "fa " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }
  \repeat volta 2 {
    "\nDear " "love " "call " "in " "their " "light, "
    "\nOr " "else " "you'll " "burn " "me " "quite "
    "\nFa " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la, " "fa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la,\n" } { la. } }
  }
}

wordsTenorTwoA = \lyricmode {
  \set stanza = "1."
  My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
  Fa la la la la la,
  fa la la la la la la la,
  fa la la la la la la la, la
  Smile less dear love there -- fore,
  And you shall love me more
  Fa la la la la la la la la la la,
  fa la la la la la la.
  Smile
  la.
}

wordsTenorTwoB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn -- eth, O how my heart it burn -- eth
%  Fa la la la la la,
%  fa la la la la la la la,
%  fa la la la la la la la, la
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Dear love call in their light,
  Or else you'll burn me quite
%  Fa la la la la la la la la la la,
%  fa la la la la la la.
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Dear
%  la.
  _
}

wordsTenorTwoSingle = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
    Fa la la la la la,
    fa la la la la la la la,
    fa la la la la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
    Smile less dear love there -- fore,
    And you shall love me more
    Fa la la la la la la la la la la,
    fa la la la la la
    \alternative { { la. } { la. } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    When she her sweet eye turn -- eth, O how my heart it burn -- eth
    Fa la la la la la,
    fa la la la la la la la,
    fa la la la la la la
    \alternative { { la, } { la, } }
  }
  \repeat volta 2 {
    Dear love call in their light,
    Or else you'll burn me quite
    Fa la la la la la la la la la la,
    fa la la la la la
    \alternative { { la. } { la. } }
  }
}

wordsTenorTwoMidi = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    "My " bon "ny " "lass " "she " smi "leth " "when " "she " "my " "heart " be guil "eth "
    "\nFa " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }
  \repeat volta 2 {
    "\nSmile " "less " "dear " "love " there "fore, "
    "\nAnd " "you " "shall " "love " "me " "more "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.\n" } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    "\nWhen " "she " "her " "sweet " "eye " turn "eth, " "O " "how " "my " "heart " "it " burn "eth "
    "\nFa " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la "
    \alternative { { "la,\n" } { "la,\n" } }
  }
  \repeat volta 2 {
    "\nDear " "love " "call " "in " "their " "light, "
    "\nOr " "else " "you'll " "burn " "me " "quite "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { la. } }
  }
}

wordsBassA = \lyricmode {
  \set stanza = "1."
  My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
  Fa la la la la la la la la la la,
  fa la la la la,
  fa la la la la, la.
%  Smile less dear love there -- fore,
  And you shall love me more
  Fa la la la la la la la la la la
  la la la la la la la la la la. la.
}

wordsBassB = \lyricmode {
  \set stanza = "2."
  When she her sweet eye turn -- eth, O how my heart it burn -- eth
%  Fa la la la la la la la la la la,
%  fa la la la la,
%  fa la la la la, la.
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
%  Dear love call in their light,
  Or else you'll burn me quite
%  Fa la la la la la la la la la la
%  la la la la la la la la la la. la.
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

wordsBassSingle = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    My bon -- ny lass she smi -- leth when she my heart be -- guil -- eth
    Fa la la la la la la la la la la,
    fa la la la la,
    fa la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
                                %  Smile less dear love there -- fore,
    And you shall love me more
    Fa la la la la la la la la la la
    la la la la la la la la la
    \alternative { { la. } { la. } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    When she her sweet eye turn -- eth, O how my heart it burn -- eth
    Fa la la la la la la la la la la,
    fa la la la la,
    fa la la la
    \alternative { { la, } { la. } }
  }
  \repeat volta 2 {
                                %  Dear love call in their light,
    Or else you'll burn me quite
    Fa la la la la la la la la la la
    la la la la la la la la la
    \alternative { { la. } { la. } }
  }
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  \repeat volta 2 {
    "My " bon "ny " "lass " "she " smi "leth " "when " "she " "my " "heart " be guil "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }
  \repeat volta 2 {
                                %  Smile less dear love there -- fore,
    "\nAnd " "you " "shall " "love " "me " "more "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    "\nla " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { "la.\n" } }
  }

  \set stanza = "2."
  \repeat volta 2 {
    "\nWhen " "she " "her " "sweet " "eye " turn "eth, " "O " "how " "my " "heart " "it " burn "eth "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la "
    \alternative { { "la,\n" } { "la.\n" } }
  }
  \repeat volta 2 {
                                %  Dear love call in their light,
    "\nOr " "else " "you'll " "burn " "me " "quite "
    "\nFa " "la " "la " "la " "la " "la " "la " "la " "la " "la " "la "
    "\nla " "la " "la " "la " "la " "la " "la " "la " "la "
    \alternative { { "la.\n" } { la. } }
  }
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopA
          \new Lyrics \lyricsto "soprano" \wordsSopB
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoA
          \new Lyrics \lyricsto "alto" \wordsAltoB
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassA
          \new Lyrics \lyricsto "bass" \wordsBassB
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopSingle
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoSingle
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneSingle
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoSingle
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassSingle
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopSingle
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoSingle
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneSingle
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoSingle
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassSingle
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
         \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopSingle
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAltoSingle}
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} {\teeny \dynamicsTenorOne}
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" {\tiny \wordsTenorOneSingle}
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} {\teeny \dynamicsTenorTwo}
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" {\tiny \wordsTenorTwoSingle}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBassSingle}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSopSingle}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoSingle
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} {\teeny \dynamicsTenorOne}
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" {\tiny \wordsTenorOneSingle}
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} {\teeny \dynamicsTenorTwo}
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" {\tiny \wordsTenorTwoSingle}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBassSingle}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor1"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSopSingle}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAltoSingle}
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneSingle
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} {\teeny \dynamicsTenorTwo}
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" {\tiny \wordsTenorTwoSingle}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \magnifyStaff #4/7
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBassSingle}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-tenor2"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSopSingle}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAltoSingle}
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} {\teeny \dynamicsTenorOne}
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" {\tiny \wordsTenorOneSingle}
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoSingle
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \magnifyStaff #4/7
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBassSingle}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSopSingle}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAltoSingle}
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} {\teeny \dynamicsTenorOne}
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" {\tiny \wordsTenorOneSingle}
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} {\teeny \dynamicsTenorTwo}
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" {\tiny \wordsTenorTwoSingle}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassSingle
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
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
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
        >>
      >>
    >>
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
        >>
      >>
    >>
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

\book {
  \bookOutputSuffix "midi-tenor1"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
        >>
      >>
    >>
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

\book {
  \bookOutputSuffix "midi-tenor2"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass

        >>
      >>
    >>
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

\book {
  \bookOutputSuffix "midi-bass"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor one staff
        \new Staff = tenorone \with {
          instrumentName = #"Tenor 1"
          shortInstrumentName = #"T1" 
          midiInstrumentName = #"choir aahs"
       }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorone} \dynamicsTenorOne
          \new Voice = "tenorone" \tenorOne
        >>
                                % Single tenor two staff
        \new Staff = tenortwo \with {
          instrumentName = #"Tenor 2"
          shortInstrumentName = #"T2"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenortwo} \dynamicsTenorTwo
          \new Voice = "tenortwo" \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrumentName = #"choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \clef bass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
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
