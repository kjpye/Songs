\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ten Minutes Ago"
  subtitle    = \markup {from \italic "Cinderella"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Rodgers"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Moderato, in 1" 2.=104
  s4 s2.*9
  s2. | s | s | \tempo 2.=95 s | s | s |
  s4 \tempo 2.=47 s \tempo 2.=95 s | \repeat volta 2 {
    \tempo "Waltz, in one" 2.=104
    \grace s8 s2.*4 |
    s2.*19 |
    s2.*19 | % 69
    s2.*18 | % 70
    s2.*4 | % 71a
    s2.*4 |
    \alternative {
      {s2.*4 |}
      {s2.*4}
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "67a" } s4 s2.*4
  \textMark \markup { \box "67b" }    s2.*5
  \textMark \markup { \box "67c" }    s2.*6
  \textMark \markup { \box "67d" }    s2.
  \repeat volta 2 {
    \grace s8                           s2.*4
    \textMark \markup { \box "68a" }    s2.*5
    \textMark \markup { \box "68b" }    s2.*4
    \textMark \markup { \box "68c" }    s2.*5
    \textMark \markup { \box "68d" }    s2.*5
    \textMark \markup { \box "69a" }    s2.*4
    \textMark \markup { \box "69b" }    s2.*5
    \textMark \markup { \box "69c" }    s2.*5
    \textMark \markup { \box "69d" }    s2.*5
    \textMark \markup { \box "70a" }    s2.*4
    \textMark \markup { \box "70b" }    s2.*5
    \textMark \markup { \box "70c" }    s2.*4
    \textMark \markup { \box "70d" }    s2.*5
    \textMark \markup { \box "71a" }    s2.*4
    \textMark \markup { \box "71b" }    s2.*4
    \alternative {
      { \textMark \markup \box "71c"    s2.*4 }
      { \textMark \markup \box "71d"    s2.*4 }
    }
  }
}

melody = \relative {
  \global
  r4
  R2.*15
  r4 r4\fermata d'
  \repeat volta 2 {
    \grace s8 g4 a g | d2 4 | cis d2~ | 4 e fis |
    g4 a g | d cis d | 2.~ | 4 r d | b' c b | % 68a
    a4 g a | b c b | a g a | b c b |
    a4 g b | a2.~ | 4 r d, | g a g | d2 4 |
    cis4 d2~ | 4 e fis | g a g | d cis d | 2.~ |
    d4 r d | b' c b | a g a | d-> r b | % 69a
    a4 g a | b c b | a b a | g2.~ | 4 a b |
    c4-> r e,~ | e e fis | g2 d4~ | d e fis | g c, c |
    c4 d e | d2.~ | 4 a' b | c r e,~ | e e fis |
    g2 b4~ | b b b | cis cis cis | cis b cis | % 70a
    d2.~ | 8 r d,4 4 | g a g | d2 4 | cis4 d2~ |
    d4 e fis | g a g | d cis d | 2.~ |
    d4 d d | b' c b | a g a | b c b | a g a |
    b4 c b | d,2 a'4 | g2.~ | 4 a b | % 71a
    c4 d c | e,2 a4 | g2. | fis |
    \alternative {
      {g2.~ | g | R | r4 r d |}
      {g2.~ | g~ | g~ | 4 r r |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s4
  s2.*15
  \repeat volta 2 {
    \alternative {
      {}
      {}
    }
  }
}

wordsOne = \lyricmode {
  Ten
  \repeat volta 2 {
    min -- utes a -- go I saw you __
    I looked up when you came through the door. __
    My head start -- ed reel -- ing.
    You gave me the feel -- ing the room had no ceil -- ing or floor. __
    Ten min -- utes a -- go I met you __
    And we mur -- mured our how -- do -- you -- do's. __
    I want -- ed to ring out the bells
    And fling out my arms and to sing out the news: __
    I have found her! __
    She's an an -- gel, __
    With the dust of the stars in her eyes. __
    We are danc -- ing, __ we are fly -- ing __
    And she's tak -- ing me back to the skies. __
    In the arms of my love I'm fly -- ing __
    O -- ver moun -- tain and mead -- ow and glen, __
    And I like it so well that for all I can tell
    I may nev -- er come down a -- gain! __
    I may nev -- er come down to earth a -- 
    \alternative {
      { gain. Ten }
      { gain! __  }
    }
  }
}

midiWords = \lyricmode {
  "Ten "
  \repeat volta 2 {
    "min" "utes " a "go " "I " "saw " "you " 
    "\nI " "looked " "up " "when " "you " "came " "through " "the " "door. " 
    "\nMy " "head " start "ed " reel "ing. "
    "\nYou " "gave " "me " "the " feel "ing "
    "\nthe " "room " "had " "no " ceil "ing " "or " "floor. " 
    "\nTen " min "utes " a "go " "I " "met " "you " 
    "\nAnd " "we " mur "mured " "our " "how-" "do-" "you-" "do's. " 
    "\nI " want "ed " "to " "ring " "out " "the " "bells "
    "\nAnd " "fling " "out " "my " "arms "
    "\nand " "to " "sing " "out " "the " "news: " 
    "\nI " "have " "found " "her! " 
    "\nShe's " "an " an "gel, " 
    "\nWith " "the " "dust " "of " "the " "stars " "in " "her " "eyes. " 
    "\nWe " "are " danc "ing, "  "we " "are " fly "ing " 
    "\nAnd " "she's " tak "ing " "me " "back " "to " "the " "skies. " 
    "\nIn " "the " "arms " "of " "my " "love " "I'm " fly "ing " 
    "\nO" "ver " moun "tain " "and " mead "ow " "and " "glen, " 
    "\nAnd " "I " "like " "it " "so " "well "
    "\nthat " "for " "all " "I " "can " "tell "
    "\nI " "may " nev "er " "come " "down " a "gain! " 
    "\nI " "may " nev "er " "come " "down " "to " "earth " a 
    \alternative {
      { "gain.\n" "\nTen " }
      { "gain! "   }
    }
  }
}

pianoRHone = \relative {
  \global
  r4 | <b' d>2. | <g b> | <eis b'> | <fis c'> |
  <b d>2. | <g b>4 <fis ais> <g b> | gis a b | <fis a> e' d | b2.~ |
  b2.~ | \voiceOne b4 a b | d b a | <e g>2.~ | q | d~ |
  <d d'>2\fermata^\markup L.H. r4 |
  \repeat volta 2 {
    \grace s8 r4 <b d g> <d g b> | r <b d g> <d g b> | r <c e g> q | r <c d fis> q |
    r4 <b d g> <d g b> | r <b d g> <d g b> | r <c e g> q | r <c d fis> q | r <g b d> q | % 68a
    r4 <a b dis> q | r <g b e> q | r <g c ees> q | r <g b d> q |
    r4 <g b e> q | \arpeggioBracket r4\arpeggio <c e g> q | r <c d fis> r | r <b d g>8 r <d g b> r | <g b d> r <b, d g> r <d g b> r |
    <e g e'>8 r <c e g> r <e g c> r | <fis c' fis> r <g c e> r <fis c' d> r | r4 <b, e g>8 r <d g b> r | <g b d> r <b, d g> r <d g b> r | <g c e> r <c, e g> r <e g c> r |
    <a c fis>8 r <fis c' d> r r4 | <d g b>8 r <d g c> r <d g b> r | <b dis a'> r <b d g> r <b d a> r | <b' e g b>4->\arpeggio r <b, e g b> | % 69a
    <c ees a>4 <c ees g> <c ees a> | <d g b> <d g c> <d g b> | <c fis a> <c fis b> <c fis a> | <b d g> q q | r <a c f a> <b d f b> |
    <c e g c>4-> <e' g>-. <g,, c e>~ | q q <fis c' e fis> | g'2 d4~ | 4 <g, b e> <fis b d fis> | <g c e g> <e g c> q |
    c'4 <fis, c' d> <fis c' e> | d'2.~ | <g, b d>4 <a c f a>-- <b d f a>-- | <c e g c>-> <e' g>-. <g,, c e>~ | q q <fis c' e fis> |
    g'2 b4~ | b <b, d g b> q | <cis g' b cis> q q | <cis g' a cis> <cis g' a b> <cis g' a cis> | % 70a
    <c d'>2.~\arpeggio | <c fis a d>8 r r4 r | b'2.~ | 4 <b, d g> <d g b> | e' <e, g d'> <e g c> |
    b'2 a4 | b2.~ | b | g'4 <g, c fis> <g c e> |
    d'2 c4 | b <d, g c> <d g b> | a' <b, dis g> <b dis a'> | b' <e, g c> <e g b> | a <c, ees g> <c ees a> |
    b'4 <d, g c> <d g b> | d'2 a4 | g2.( | <g, b d f g>4) <a' d f a> <b d f b> | % 71a
    <c e g c>4 <d e g d'> <c e g c> | <e, g c e>2 <a c e a>4 | <g c e g>2. | <fis c' d fis> |
    \alternative {
      {<g b d g>8-> r <b, b'>-. q-. 4-. | <d g b>8-.-> r <b b'>-. q-. 4-. | <g c g'>8-.-> r <e' e'>-. q-. 4-. | <c d fis d'>8-.-> r r4 r |}
      {<g b d g>4 \ottava #1 <b' d g b> <d g b d> | <cis g' bes ees>2 <c fis a d>4 | <g' b d g>2.~ | 4 \ottava #0 r r |}
    }
  }
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4 | s2.*4 |
  s2. | s | eis' | s | g2.~ |
  g2.~ | 2. | fis | s | s | c~ |
  c8 r r4 r |
  \repeat volta 2 {
    \grace s8 s2. | s | s | s |
    s2.*28 | % 68a
    s2. | s | \partCombineApart r4 <g b d> <g b> | s2. | s | % 69c
    s2. | r4 <a b> q | s2. | s | s |
    <g d'>4 <b d> <d g> ~ | q s2 | s2. | s | % 70a
    <fis a>4 <g b> <e g> | s2. | r4 <b d g> q | s2. | s |
    r4 <c d fis> q | r <b d g> q | r q q | s2. |
    r4 <fis' c'> <d fis> | s2. | s | s | s |
    s2. | r4 <\parenthesize fis, c'> <a c fis> | r <a c d f> q | s2. | % 71a
    s2.*4 |
    \alternative {
      {s2.*4}
      {s2.*4}
    }
  }
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\ppp | s2.-\markup\italic legato | s | s | s |
  s2.*5
  s2. | s | s | s-\markup\italic rall. | s | s |
  s2. \repeat volta 2 {
    \grace s8 s2.*4 |
    s2.*19 | % 68
    s2.*19 | % 69
    s2.*18 | % 70
    s2. | s | s | s4 s2\mf | % 71a
    s2.*4
    \alternative {
      {s4 s2\f | s2. | s | s\sf |}
      {s2. | s | s\< | s4 s2\! |}
    }
  }
}

pianoLHone = \relative {
  \global
  d'4 | g a g | d2 4 | cis d2~ | 4 e fis |
  g4 a g | d cis d | d2.~ | 4 \clef bass e d | \voiceOne cis2.~ |
  cis2. | <ees, cis'> | <d c'> | r4 d' e | g2. | r4 c, fis |
  s4 r4\fermata r |
  \repeat volta 2 {
    \appoggiatura cis,8 d2.~ | 2. | g | \arpeggioBracket fis\arpeggio |
    \appoggiatura cis8 d2.~ | d | g | fis | d | % 68a
    dis2. | e | ees | dis |
    <cis e>2. | <e g>\arpeggio^\markup R.H. | <d fis> | \appoggiatura cis8 d2.~ | d |
    g2. | fis2.\arpeggio | \acciaccatura c8 d2.~ | d | g |
    fis2.\arpeggio | d | dis\arpeggio | <e, e'>4-> r e' | % 69a
    ees2. | d | fis\arpeggio | g | g,4-> r r |
    <c, c'>4-> r r | g' r r | <b, b'> r r | d r r | a' r r |
    d,4 r r | g r r | d' g-- g,-- | <c, c'>4-> r r | <g g'> r r |
    <b b'>4 r r | <d d'> r r | <e e'> r r | <a, a'> r r | % 70a
    <d d'>4 r q | 8 r r4 r | \acciaccatura cis'8 d2.~ | d | g |
    fis2.\arpeggio | \acciaccatura cis8 d2.~ | d | g |
    fis2.\arpeggio | d | dis\arpeggio | e | ees |
    d2. | fis\arpeggio | <d, d'>4 r r | <g, g'> <a'' b fis'> <b fis'> | % 71a
    <e,, e'>4 <g' d'> <g c> | <a,, a'> <g'' c> q | <d, d'> <c'' d e> q | <d,, d'> <c'' d e> q |
    \alternative {
      {<g, d'>8-> r r4 r | \arpeggioNormal <e b' g'>8\arpeggio-.-> r r4 r | <a, a'>8-.-> r r4 r | <d d'>8-.-> r r4 r |}
      {<g g'>4 <d' g b> <g b d> | <a,, a'>2 <d d'>4 | <g g'>2 <d d'>4 | <g, g'>4-^ r r |}
    }
  }
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s4 s2.*8
  r4 dis e |
  b'4 a e | s2. | s | <cis b'>~ | q | <d fis> ~| % 67c
  q8 r r4\fermata r |
  \repeat volta 2 {
    \grace s8 g,4 r r | d r r | a' r r | \arpeggioBracket d,\arpeggio r r |
    g4 r r | d r r | a' r r | d,\arpeggio r r | g r r | % 68a
    b,4 r r | e r r | a r r | d, r r |
    a'4 r r | d, r r | d r r | g r r | d r r |
    a'4 r r | d,\arpeggio r r | g r r | d r r | a' r r |
    d,4\arpeggio r r | g r r | b,\arpeggio r r | s2. | % 69a
    a'4 r r | d, r r | d\arpeggio r r | g r r | s2. |
    s2.*5 |
    s2.*5 |
    s2.*4 | % 70a
    s2. | s | g4 r r | d r r | a' r r |
    d,\arpeggio r r | g r r | d r r | a' r r |
    d,4\arpeggio r r | g r r | b,\arpeggio r r | e r r | a r r |
    d,4 r r | d\arpeggio r r | s2. | s | % 71a
    s2.*4 |
    \alternative {
      {s2.*4}
      {s2.*4}
    }
  }
%  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff \with {
          printPartCombineTexts = ##f
          connectArpeggios = ##t
        }
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
%            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
%            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage")
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
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
%            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
