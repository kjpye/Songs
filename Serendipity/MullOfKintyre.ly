\version "2.25.18"

\include "kjp.ly"
today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mull of Kintyre"
  subtitle    = "as sung by Serendipity"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "McCartney - Laine"
  arranger    = "arr. Clive Sansom"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
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
  \key a \major
  \time 3/4
% \partial 4
}

TempoTrack = {
  \tempo Moderato 2.=44
  s2.
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
  \repeat volta 2 {
    \textMark \markup\box "1a" s2.*4
  }
  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    s2.
    \textMark \markup\box "1b" s2.*5
    \textMark \markup\box "2a" s2.*6
    \textMark \markup\box "2b" s2.*5
    \textMark \markup\box "3a" s2.*5
    \textMark \markup\box "3b" s2.*5
    \textMark \markup\box "4a" s2.*2
  }
  \set Score.currentBarNumber = #48
  \repeat segno 2 {
    \textMark \markup\box "5b" s2.*5
    \textMark \markup\box "6a" s2.*3
    \alternative {
      {
        s2.*2
        \textMark \markup\box "6b" s2.*5
        \textMark \markup\box "7a" s2.*5
        \textMark \markup\box "7b" s2.*5
        \textMark \markup\box "8a" s2.*4
      }
      { }
    }
  }
  \set Score.currentBarNumber = #78
  \textMark \markup\box "8b.3" s2.*4
}

dynamicsSop = {
  \repeat volta 2 { s2.*4 }
  s2.\mf |
  s2.*5 |
  s2.*6 | % 2a
  
}

soprano = \relative c' { % 5-33
  \global
  \repeat volta 2 { R2.*4 }
  \repeat volta 2 {
    e4. fis8 a4 % 5
    cis2 cis4
    cis4 b a
    b8 a~a4 fis
    e4. fis8 a4
    cis2 cis4% 10
    cis4 b a
    b4 a r8 fis
    e4. fis8 b4
    a2.~
    a2.~ % 15
    a4 r r \section
    e4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    a2. % 20
    fis4 a4. gis8
    fis8 e~ e4 d
    e4 a fis
    e2.
    e4 a4. fis8
    e8 cis~4 e
    a4 cis b
    a4. b8 cis4
    d4. cis8 b4
    a4 fis r8 e
    e4. fis8 b4
    a2.~
    a4 r r \section % 33
  }
  \repeat segno 2 {
    \key d \major
    a4. b8 d4
    fis2 fis4
    fis4 e d
    e8 d~d4 b
    a4. b8 d4
    fis2 fis4
    fis4 e d
    e4 d r8 b
    \alternative {
      {
        a4. b8 e4
        d2.~
        d2.~
        d4 r r \section
        a4 d4. b8
        a8 fis~fis4 a
        d4 fis e
        d2.
        b8 d~d4 cis
        b4 a g
        a4 d b
        a2.
        a4 d b
        a4 fis a
        d8 fis~fis4 e
        d4 r8 e fis4
        g4. fis8 e4
        d4 b r8 a
        a4. b8 e4
        d2.~
        d4 r r
      }
      {
        a4. b8 e4
        d2.~
        d2.~
        d2.^\fermata
      }
    }
  }
  \bar "|."
}

alto = \relative c' {
  \global
  \repeat volta 2 { R2.*4 }
  \repeat volta 2 {
    cis4.^\mf cis8 e4
    a2 a4
    fis4 fis fis
    fis8 fis~fis4 d
    cis4. cis8 e4
    a2 a4
    fis4 fis fis
    fis4 fis r8 d
    cis4. cis8 e4
    e2.~
    e2.~
    e4 r r
    e4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    a2.
    fis4 a4. gis8
    fis8 e~e4 d
    e4 a fis
    e2.
    cis4 e4. cis8
    cis8 a~a4 cis
    e4 a e
    e4. e8 a4
    a4. a8 fis4
    fis4 d r8 d
    d4. d8 e4
    a2.~
    a4 r r
  }
  \repeat volta 2 {
    \key d \major
    fis4. fis8 fis4
    fis2 fis4
    g4 4 4
    g8 g~g4 g
    fis4. fis8 fis4
    fis2 fis4
    g4 g g
    g4 g r8 g
    \alternative {
      {
        fis4. fis8 fis4
        fis2.~
        fis2.~
        fis4 r r \bar "||"
        fis4 a4. g8
        fis8 d~d4 fis
        fis4 a g
        fis2.
        g8 b~b4 a
        g4 d d
        fis4 a g
        fis2.
        fis4 a g
        fis4 d fis
        fis8 a~a4 g
        fis4 r8 g a4
        b4. a8 g4
        g4 d r8 d
        cis4. e8 g4
        fis2.~
        fis4 r r
      }
      {
        fis4. fis8 fis4
        fis2.(
        g2.
        fis2.^\fermata)
      }
    }
  }
}

dynamicsAlto = {
}

tenor = \relative c' {
  \global
  \repeat volta 2 { R2.*4 }
  \repeat volta 2 {
    a4.^\mf a8 cis4
    e2 e4
    d4 d d
    d8 d~d4 a
    a4. a8 cis4
    e2 e4
    d4 d d
    d4 d r8 a
    a4. a8 cis4
    cis2.~
    cis2.~
    cis4 r r \bar "||"
    e,4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    a2.
    fis4 a4. gis8
    fis8 e~e4 d % 3a
    e4 a fis
    e2.
    a4 cis4. a8
    a8 e~e4 a
    cis4 e cis
    cis4. cis8 e4
    fis4. 8 d4
    d4 a r8 a
    b4. b8 b4
    cis2.~
    cis4 r r
  }
  \repeat segno 2 {
    \key d \major
    a4. a8 a4
    a2 a4
    b4 b b
    b8 b~b4 b
    a4. a8 a4
    a2 a4
    b4 b b
    b4 b r8 b
  }
  \alternative {
    {
      a4. a8 a4
      a2.~
      a2.~
      a4 r r \bar "||"
      a4 d4. b8
      a8 fis~fis4 a
      d4 fis e
      d2.
      b8 d~d4 cis
      b4 a g
      a4 d b
      a2.
      a4 d b
      a4 fis a
      d8 fis~fis4 e
      d4 r8 e fis4
      g4. fis8 e4
      e4 b r8 b
      a4. cis8 e4
      d2.~d4 r r
    }
    {
      a4. a8 a4
      a2.(
      b2.
      a2.^\fermata)
    }
  }
}

dynamicsTenor = {
}

bass = \relative c {
  \global
  \repeat volta 2 { R2.*4 }
  \repeat volta 2 {
    e4.^\mf fis8 a4
    cis2 cis4
    cis4 b a
    b8 a~a4 fis
    e4. fis8 a4
    cis2 cis4
    cis4 b a
    b4 a r8 fis
    e4. fis8 a4
    a2.~
    a2.~
    a4 r r \bar "||"
    e4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    a2.
    fis4 a4. gis8
    fis8 e~e4 d
    e4 a fis
    e2.
    e4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    a4. b8 cis4
    d4. cis8 b4
    a4 fis r8 e
    e4. fis8 b4
    a2.~
    a4 r r
  }
  \repeat segno 2 {
    \key d \major
    d,4. d8 d4
    d2 d4
    g,4 g g
    g8 g~g4 g
    d'4. d8 d4
    d2 d4
    g,4 g g
    g4 g r8 g
  }
  \alternative {
    {
      d'4. d8 d4
      d2.~
      d2.~
      d4 r r \bar "||"
      fis4 a4. g8
      fis8 d~d4 fis
      fis4 a g
      fis2.
      g8 b~b4 a
      g4 d d
      fis4 a g
      fis2.
      fis4 a g
      fis4 d fis
      fis8 a~a4 g
      fis4 r8 g a4
      b4. a8 g4
      g4 d r8d
      cis4. e8 g4
      fis2.~fis4 r r
    }
    {
      d4. d8 d4
      d2.(
      g,2.
      d'2.^\fermata)
    }
  }
}

dynamicsBass = {
}

dynamicsPiano = {
  \repeat volta 2 {
    s2.^\mf
    s2.
    s2.
    s2.
  }
  s2.
}

pianoRH = \relative {
  \repeat volta 2 { s2.*3 | <b d gis>2. }
  \repeat volta 2 {
    s2.*29
  }
  \repeat segno 2 {
    \key d \major
    s2.*8
    \alternative {
      {
        s2. % 38 ???
        s2.
        s2.
        s2. \bar "||"
        <fis' a>4 <a d>4. <g b>8
        <fis a>8 <d fis> ~ q4 <fis a>4
        <fis d'> <a fis'> <g e'>
        <fis d'>2.
        <g b>8 <b d>~q4 <a cis>
        <g b>4 <d a><d g>
        <fis a>4 <a d> <g b>
        <fis a>2.
        <fis a>4 <a d> <g b>
        <fis a>4 <d fis> <fis a>
        <fis d'>8 <a fis'>~q4 <g e'>
        <fis d'> <g e'> <a fis'>
        <b g'>4. <a fis'>8 <g e'>4
        <g d'>4 <d b'> r8 <d a'>
        <cis a'>4. <e b'>8 <g e'>4
        <fis d'>2.~
        q4 r r
      }
      {
        s2.
        s2.
        s2.
        s2.
      }
    }
  }
}

pianoRHOne = \relative {
  \global \vo
  \repeat volta 2 {
    e'4. fis8 a4 | cis2. | b4. cis8 e4 | s2. |
  }
  \repeat volta 2 {
    e,4. fis8 a4
    cis2 cis4
    cis4 b a
    b8 a~a4 fis
    e4. fis8 a4
    cis2 cis4 % 10
    cis4 b a
    b4 a r8 fis
    a4. fis8 b4
    a2.~
    a2.~ % 15
    a4 r r \bar "||"
    e4 a4. fis8
    e8 cis~cis4 e
    a4 cis b
    <cis, e a>2. % 20
    fis4 a4. g8
    fis8 e~e4 d
    e4 a fis
    e2.
    e4 a4. fis8 % 25
    e cis~cis4 e
    a4 cis b
    a4. b8 cis4
    d4. cis8 b4
    a4 fis r8 e % 30
    e4. fis8 b4
    a2.~
    a4 r r
  }
  \repeat segno 2 {
    \key d \major
    a4. b8 d4 % 48 in original
    fis2 fis4
    fis4 e d % 50
    e8 d~d4 b
    a4. b8 d4
    fis2 fis4
    fis4 e d
    e4 d r8 b % 55
  }
  \alternative {
    {
      a4. b8 e4 % 56 in original
      d2.~
      d2.~
      d4 r r
      s2. % 60
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
    }
    {
      a4. b8 e4
      d2.~
      d2.~
      <fis, a d>2.^\fermata
    }
  }
}

pianoRHTwo = \relative {
  \vt
  \repeat volta 2 {
    r4 <a cis> <cis e> | r <e a> q | r <d gis> <gis b> | s2. |
  }
  \repeat volta 2 {
    r4 <a, cis> <cis e>
    r4 <e a> q
    r4 <d fis> q
    r4 q <a d>
    r4 <a cis> <cis e>
    r4 <e a> q % 10
    r4 <d fis> q
    r4 q <a d>
    r4 <a cis> <cis e>
    r4 q q
    r4 q q % 15
    r4 q q
    r4 q <a cis>
    r4 <e a> <a cis>
    r4 <e' a> <cis e>
    s2. % 20
    r4 <d fis> <a d>
    r4 <fis a> q
    r4 <cis' e> <a cis>
    r4 q q
    r4 <cis e> <a cis> % 25
    r4 <e a> <a cis>
    r4 <e a> <cis e>
    q2 <e a>4
    r4 <fis a> < fis> 
    r4 <a d> <fis a> % 30
    r4 <gis d'> <d' gis>
    r4 <cis e> q
    r4 <cis e> q
  }
  \repeat segno 2 {
    \key d \major
    r4 <d fis> <fis a>
    r4 <a d> q
    r4 <g b> q
    r4 q <d g>
    r4 <d fis> <fis a>
    r4 <a d> q
    r4 <g b> q
    r4 q <d g>
  }
  \alternative {
    {
      r4 <d fis> <fis a>
      r4 <fis a> q
      r4 q q
      r4 q q
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
    }
    {
      r4 <d fis> <fis a>
      r4 q q
      r4 <g b> q
      s2.
    }
  }
}

pianoLH = \relative {
  \global \vo
  \repeat volta 2 {
    a,2.
    e'2.
    e,2.
    e4 fis gis
  }
  \repeat volta 2 {
    a2.
    e'2.
    d2.
    d,2.
    a'2.
    e'2.
    d2.
    d,2.
    a'2.
    e'2.
    a,2.
    e'2.
    a,2.
    a2.
    a2.
    a4 b cis
    d2.
    d,2.
    a'2.
    e'2.
    a,2.
    a2.
    a2.
    a4 b cis
    d2.
    d,2.
    e'2.
    a,2. e'2.
  }
  \repeat segno 2 {
    \key d \major
    d2.
    a'2.
    g2.
    g,2.
    d'2.
    a'2.
    g2.
    g,2.
    \alternative {
      {
        d'2.
        a'2.
        d,2.
        a'2. \bar "||"
        <d, a'>2 q4
        q2 q4
        q2 q4
        q2 q4
        <g, d'>2 q4
        q2 q4
        <d' a'>2 q4
        q2 q4
        q2 q4
        q2 q4
        q2 q4
        q2 q4
        <g, d'>2 q4
        q2 q4
        <a e'>2 q4
        <d a'>2 q4
        q2 q4
      }
      {
        d2.
        a'2.
        g2.
        d4 d,2^\fermata
      }
    }
  }
}

wordsSopOne = \lyricmode {
  Mull of Kin -- tyre oh mist rol -- ling in
  from the sea, my de -- sire is al -- ways to be here
  oh Mull of Kin -- tyre.
  Far have I trav -- elled __ and much have I seen,
  dark dis -- tant moun -- tains __ with val -- leys of green,
  past pain -- ted des -- erts, __ the sun -- set’s on fire
  as he car -- ries me home to the Mull of Kin -- tyre. __

  \repeat segno 2 {
    Mull of Kin -- tyre oh mist rol -- ling in
    from the sea, my de -- sire is al -- ways to be here
    oh Mull of Kin --
    \alternative {
      {
        tyre.
        Sweep through the heath -- er __ like deer in the glen,
        car -- ry me back to the days I knew then.
        Nights when we sang like a heav -- en -- ly choir
        of the life and the times of the Mull of Kin -- tyre. __
        Mull of Kin -- tyre oh mist rol -- ling in
        from the sea, my de -- sire is al -- ways to be here
        oh Mull of Kin --
      }
      {
        tyre.
      }
    }
  }
}

wordsSopTwo = \lyricmode {
  \repeat unfold 26 _
  Smiles in the sun -- shine __ and tears in the rain,
  still take me back where __ my mem -- ’ries re -- main.
  Flick -- er -- ing em -- bers __ grow high -- er and high’r
  as they car -- ry me back to the Mull of Kin -- tyre. __
}
  
wordsSop = \lyricmode {
  Mull of Kin -- tyre oh mist rol -- ling in
  from the sea, my de -- sire is al -- ways to be here
  oh Mull of Kin -- tyre.
  Far have I trav -- elled __ and much have I seen,
  dark dis -- tant moun -- tains __ with val -- leys of green,
  past pain -- ted des -- erts, __ the sun -- set’s on fire
  as he car -- ries me home to the Mull of Kin -- tyre. __

  Mull of Kin -- tyre oh mist rol -- ling in
  from the sea, my de -- sire is al -- ways to be here
  oh Mull of Kin -- tyre.
  Smiles in the sun -- shine __ and tears in the rain,
  still take me back where __ my mem -- ’ries re -- main.
  Flick -- er -- ing em -- bers __ grow high -- er and high’r
  as they car -- ry me back to the Mull of Kin -- tyre. __

  Mull of Kin -- tyre oh mist rol -- ling in
  from the sea, my de -- sire is al -- ways to be here
  oh Mull of Kin -- tyre.
  Sweep through the heath -- er __ like deer in the glen,
  car -- ry me back to the days I knew then.
  Nights when we sang like a heav -- en -- ly choir
  of the life and the times of the Mull of Kin -- tyre. __

  Mull of Kin -- tyre oh mist rol -- ling in
  from the sea, my de -- sire is al -- ways to be here
  oh Mull of Kin -- tyre.
}

wordsMidi = \lyricmode {
  "Mull " "of " Kin "tyre " "oh " "mist " rol "ling " "in "
  "\nfrom " "the " "sea, " "my " de "sire " "is " al "ways " "to " "be " "here "
  "\noh " "Mull " "of " Kin "tyre. "
  "\nFar " "have " "I " trav "elled "  "and " "much " "have " "I " "seen, "
  "\ndark " dis "tant " moun "tains "  "with " val "leys " "of " "green, "
  "\npast " pain "ted " des "erts, "  "the " sun "set’s " "on " "fire "
  "\nas " "he " car "ries " "me " "home " "to " "the " "Mull " "of " Kin "tyre. " 

  "\nMull " "of " Kin "tyre " "oh " "mist " rol "ling " "in "
  "\nfrom " "the " "sea, " "my " de "sire " "is " al "ways " "to " "be " "here "
  "\noh " "Mull " "of " Kin "tyre. "
  "\nSmiles " "in " "the " sun "shine "  "and " "tears " "in " "the " "rain, "
  "\nstill " "take " "me " "back " "where "  "my " mem "’ries " re "main. "
  "\nFlick" er "ing " em "bers "  "grow " high "er " "and " "high’r "
  "\nas " "they " car "ry " "me " "back " "to " "the " "Mull " "of " Kin "tyre. " 

  "\nMull " "of " Kin "tyre " "oh " "mist " rol "ling " "in "
  "\nfrom " "the " "sea, " "my " de "sire " "is " al "ways " "to " "be " "here "
  "\noh " "Mull " "of " Kin "tyre. "
  "\nSweep " "through " "the " heath "er "  "like " "deer " "in " "the " "glen, "
  "\ncar" "ry " "me " "back " "to " "the " "days " "I " "knew " "then. "
  "\nNights " "when " "we " "sang " "like " "a " heav en "ly " "choir "
  "\nof " "the " "life " "and " "the " "times " "of " "the " "Mull " "of " Kin "tyre. " 

  "\nMull " "of " Kin "tyre " "oh " "mist " rol "ling " "in "
  "\nfrom " "the " "sea, " "my " de "sire " "is " al "ways " "to " "be " "here "
  "\noh " "Mull " "of " Kin "tyre. "
}

wordsAlto = \lyricmode {
  Mull of Kin -- tyre
}

wordsTenor = \lyricmode {
  Mull of Kin -- tyre
}

wordsBass = \lyricmode {
  Mull of Kin -- tyre
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
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
          \addlyrics \wordsSopOne
          \addlyrics \wordsSopTwo
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \addlyrics \wordsSopOne
          \addlyrics \wordsSopTwo
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" { \clef "treble_8" \tenor }
          \addlyrics \wordsSopOne
          \addlyrics \wordsSopTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \addlyrics \wordsSopOne
          \addlyrics \wordsSopTwo
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
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
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsSop
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice  \tenor
          \addlyrics \wordsSop
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsSop
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
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
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsSop
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsSop
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsSop
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
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
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
          \new Voice \bass
          \addlyrics {\tiny \wordsSop}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \teeny \dynamicsPiano
        \new Staff <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
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
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsSop
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
          \new Voice \bass
          \addlyrics {\tiny \wordsSop}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \teeny \dynamicsPiano
        \new Staff <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
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
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsSop
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
          \new Voice \bass
          \addlyrics {\tiny \wordsSop}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \teeny \dynamicsPiano
        \new Staff <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
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
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
          \new Voice \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsSop
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
        >>
        \new Dynamics \teeny \dynamicsPiano
        \new Staff <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \addlyrics \wordsMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        } <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRH
          \new Voice \pianoRHOne
          \new Voice \pianoRHTwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
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
