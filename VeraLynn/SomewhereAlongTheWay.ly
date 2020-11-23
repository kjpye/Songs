\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Somewhere Along the Way"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sammy Gallop & Kurt Adams"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 2/2
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 4=80
  s1-\markup \upright \bold Slowly
  s1*7
  s2 \tempo 4=70 s-\markup \upright \bold rit.
  s1
  \repeat volta 2 {
    \tempo 4=80 s1-\markup \upright \bold {a tempo} % 71a
    s1*18
    s2. \tempo 4=10 s8 \tempo 4=80 s
    s1*10 
  }
  \alternative {
    {
      s1*2
    }
    {
      \tempo 4=70 s1-\markup \upright \bold rit.
      s2 \tempo 4=35 s
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "70a" } s1*4
  \mark \markup { \circle "70b" } s1*3
  \mark \markup { \circle "70c" } s1*3
  \repeat volta 2 {
    \mark \markup { \circle "71a" } s1*3
    \mark \markup { \circle "71b" } s1*3
    \mark \markup { \circle "71c" } s1*3
    \mark \markup { \circle "71d" } s1*3
    \mark \markup { \circle "72a" } s1*2
    \mark \markup { \circle "72b" } s1*3
    \mark \markup { \circle "72c" } s1*3
    \mark \markup { \circle "72d" } s1*2
    \mark \markup { \circle "73a" } s1*3
    \mark \markup { \circle "73b" } s1*3
    \mark \markup { \circle "73c" } s1*2
  }
  \alternative {
    {
      s1
      \mark \markup { \circle "73d" } s1
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  ees2./g g4:aug7
  aes2:6 bes4:13 bes:aug7
  ees2/g ees:m/ges
  bes2:7/f bes:9/f
  ees2:maj7 g4:7sus4 g:7 % 70b
  c2:m ees:m6
  bes2/d bes:m/des
  c2:m7 f4:9sus4 f:13 % 70c
  c2:m f4:7 f:aug7
  bes1:7
  \repeat volta 2 {
    ees1/g % 71a
    g1:aug7
    aes1:6
    bes1:7 % 71b
    g2:m7.5- c:aug7
    f1:7
    f2.:m/bes bes4:13 % 71c
    ees2 bes:13
    ees1/g
    g1:aug7 % 71d
    aes1:6
    bes1:7
    ges2:m7.5- c:aug7 % 72a
    f1:7
    f2.:m/bes bes4:7 % 72b
    ees1 
    g2:maj7 e:m7
    a2:m7 d:7 % 72c
    g1/b
    a2:m7 d:7
    g2:maj9 e:m9 % 72d
    a2:m7 d:7
    g1/b % 73a
    bes1:7
    ees1/g
    g1:aug7 % 73b
    aes1:6
    bes1:7
    g2:m7.5- c:aug7 % 73c
    f1:7
  }
  \alternative {
    {
      f2.:m/bes bes4:7
      ees2 bes:13 % 73d
    }
    {
      f2.:m/bes bes4:13
      ees2 ees:6.9
    }
  }
}

melody = \relative {
  \global
  R1*2 \bar "||"
  bes'8 bes bes2 r8 bes
  bes4 f2.
  g8 g g4~8 d8 ees f % 70b
  ees1
  f8 f f2 r8 f
  f4 c2 d4 % 70c
  ees8 f4 g8 a4 a
  bes1
  \repeat volta 2 {
    r8 ees, d ees \tuplet 3/2 {g8 f ees~} ees4 % 71a
    r8 ees d ees \tuplet 3/2 {g8 f ees~} ees4
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1 % 71b
    r8 bes a bes des4 c
    f,4 f2.
    r8 f e f aes4 g % 71c
    bes,2. r4
    r8 ees d ees \tuplet 3/2 {g f ees~} ees4
    r8 ees d ees \tuplet 3/2 {g f ees~} ees4 % 71d
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1
    r8 bes a bes des4 c % 72a
    f,4 f2.
    r8 f e f aes4 d, % 72b
    ees2~8 ees f ees \bar "||" \key g \major
    d2~8 e fis g
    b8 a \tuplet 3/2 {gis8 a c~}c b ais b % 72c
    d8 d d2.
    d,8 d d4~d8 ees f\fermata e
    d2~8 e fis g % 72d
    b8 a \tuplet 3/2 {gis a c~} c b ais b
    d8 d d2. \bar "||" \key ees \major % 73a
    d8 c bes2. \bar "||" 
    r8 ees, d ees \tuplet 3/2 {g f ees~}ees4
    r8 ees d ees \tuplet 3/2 {g f ees~}ees4 % 73b
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1
    r8 bes a bes des4 c % 73c
    f,4 f2.
  }
  \alternative {
    {
      r8 f e f aes4 d,
      ees2. r4 % 73d
    }
    {
      r8 f e f aes4 bes
      ees1\fermata
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Here I am with -- out you
  lost with -- out __ your warm em -- brace,
  still so mad a -- bout you,
  and won -- dering who took my place.

  I used to walk with you __
  a -- long the a -- ven -- ue, __
  our hearts were care -- free and gay.
  How could I know I'd lose you
  some -- where a -- long the way?
  The friends we used to know __
  would al -- ways smile, "\"Hel" -- "lo\"," __
  no love like our love, they'd say.
  The love slipped through our fin -- gers
  some -- where a -- long the way. __
  I should for -- get, __
  but with the lone -- li -- ness of night, __
  I start re -- mem -- ber __ ing ev -- 'ry -- thing, __
  You're gone, and yet, __
  There's still a feel -- ing deep in -- side __
  that you will al -- ways be part of me.
  So now I look for you __
  a -- long the a -- ven -- ue, __
  and as I wan -- der,
  I pray that some -- day soon I'll find you,
  some -- where a -- long the way.
  some -- where a -- long the way.
}

wordsSingle = \lyricmode {
  Here I am with -- out you
  lost with -- out __ your warm em -- brace,
  still so mad a -- bout you,
  and won -- dering who took my place.

  I used to walk with you __
  a -- long the a -- ven -- ue, __
  our hearts were care -- free and gay.
  How could I know I'd lose you
  some -- where a -- long the way?
  The friends we used to know __
  would al -- ways smile, "\"Hel" -- "lo\"," __
  no love like our love, they'd say.
  The love slipped through our fin -- gers
  some -- where a -- long the way. __
  I should for -- get, __
  but with the lone -- li -- ness of night, __
  I start re -- mem -- ber __ ing ev -- 'ry -- thing, __
  You're gone, and yet, __
  There's still a feel -- ing deep in -- side __
  that you will al -- ways be part of me.
  So now I look for you __
  a -- long the a -- ven -- ue, __
  and as I wan -- der,
  I pray that some -- day soon I'll find you,
  some -- where a -- long the way.

  I used to walk with you __
  a -- long the a -- ven -- ue, __
  our hearts were care -- free and gay.
  How could I know I'd lose you
  some -- where a -- long the way?
  The friends we used to know __
  would al -- ways smile, "\"Hel" -- "lo\"," __
  no love like our love, they'd say.
  The love slipped through our fin -- gers
  some -- where a -- long the way. __
  I should for -- get, __
  but with the lone -- li -- ness of night, __
  I start re -- mem -- ber __ ing ev -- 'ry -- thing, __
  You're gone, and yet, __
  There's still a feel -- ing deep in -- side __
  that you will al -- ways be part of me.
  So now I look for you __
  a -- long the a -- ven -- ue, __
  and as I wan -- der,
  I pray that some -- day soon I'll find you,
  some -- where a -- long the way.
}

midiWords = \lyricmode {
  "\nHere " "I " "am " with "out " "you "
  "\nlost " with "out "  "your " "warm " em "brace, "
  "\nstill " "so " "mad " a "bout " "you, "
  "\nand " won "dering " "who " "took " "my " "place. "

  "\nI " "used " "to " "walk " "with " "you " 
  "\na" "long " "the " a ven "ue, " 
  "\nour " "hearts " "were " care "free " "and " "gay. "
  "\nHow " "could " "I " "know " "I'd " "lose " "you "
  "\nsome" "where " a "long " "the " "way? "
  "\nThe " "friends " "we " "used " "to " "know " 
  "\nwould " al "ways " "smile, " "\"Hel" "lo\", " 
  "\nno " "love " "like " "our " "love, " "they'd " "say. "
  "\nThe " "love " "slipped " "through " "our " fin "gers "
  "\nsome" "where " a "long " "the " "way. " 
  "\nI " "should " for "get, " 
  "\nbut " "with " "the " lone li "ness " "of " "night, " 
  "\nI " "start " re mem "ber "  "ing " ev 'ry "thing, " 
  "\nYou're " "gone, " "and " "yet, " 
  "\nThere's " "still " "a " feel "ing " "deep " in "side " 
  "\nthat " "you " "will " al "ways " "be " "part " "of " "me. "
  "\nSo " "now " "I " "look " "for " "you " 
  "\na" "long " "the " a ven "ue, " 
  "\nand " "as " "I " wan "der, "
  "\nI " "pray " "that " some "day " "soon " "I'll " "find " "you, "
  "\nsome" "where " a "long " "the " "way. "

  "\nI " "used " "to " "walk " "with " "you " 
  "\na" "long " "the " a ven "ue, " 
  "\nour " "hearts " "were " care "free " "and " "gay. "
  "\nHow " "could " "I " "know " "I'd " "lose " "you "
  "\nsome" "where " a "long " "the " "way? "
  "\nThe " "friends " "we " "used " "to " "know " 
  "\nwould " al "ways " "smile, " "\"Hel" "lo\", " 
  "\nno " "love " "like " "our " "love, " "they'd " "say. "
  "\nThe " "love " "slipped " "through " "our " fin "gers "
  "\nsome" "where " a "long " "the " "way. " 
  "\nI " "should " for "get, " 
  "\nbut " "with " "the " lone li "ness " "of " "night, " 
  "\nI " "start " re mem "ber "  "ing " ev 'ry "thing, " 
  "\nYou're " "gone, " "and " "yet, " 
  "\nThere's " "still " "a " feel "ing " "deep " in "side " 
  "\nthat " "you " "will " al "ways " "be " "part " "of " "me. "
  "\nSo " "now " "I " "look " "for " "you " 
  "\na" "long " "the " a ven "ue, " 
  "\nand " "as " "I " wan "der, "
  "\nI " "pray " "that " some "day " "soon " "I'll " "find " "you, "
  "\nsome" "where " a "long " "the " "way. "
}

pianoRH = \relative {
  \global
  s1*8
  <f c' ees>8 <a d f>4 <bes ees g>8 <c f a>4 <cis f a> % 70c+
  s2. \ottava #1 <bes'' bes'>4 \ottava #0
  \repeat volta 2 {
    s1 % 71a
    s1
    s1
    s1 % 71b
    s1
    <a,, b f'>4 s2.
    s1 % 71c
    <g' bes>2 s
    s1
    s1 % 71d
    s1
    s1
    s1 % 72a
    <a, b f'>4 s2.
    s1 % 72b
    s1 \bar "||" \key g \major
    s1
    s1 % 72c
    s1
    s1
    s1 % 72d
    s1
    s1 \bar "||" \key ees \major % 73a
    s1 \bar "||"
    s1
    s1 % 73b
    s1
    s1
    s1 % 73c
    q4 s2.
  }
  \alternative {
    {
      s1
      <g ees'>2 s % 73d
    }
    {
      s1
      <g bes ees>2 <c f bes>2\arpeggio\fermata
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  r8 ees' d ees g f ees g
  f8 ees bes' aes <d, c'>2 \bar "||"
  bes'8 bes bes2 r8 bes
  bes4 f2.
  g8 g g4~8 d ees f % 70b
  ees1
  f8 f f2 r8 f
  f4 c2 d4 % 70c
  s1
  g2. s4
  \repeat volta 2 {
    r8 ees d ees \tuplet 3/2 {g8 f ees~}ees4 % 71a
    r8 ees d ees \tuplet 3/2 {g8 f ees~}ees4
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1 % 71b
    r8 bes a bes des4 c
    s4 <a, c f>4~<a f'>2
    r8 f' e f aes4 g % 71c
    s2 bes2
    r8 ees, d ees \tuplet 3/2 {g f ees~} ees4
    r8 ees d ees \tuplet 3/2 {g8 f ees~} ees4 % 71d
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1
    r8 bes a bes des4 c % 72a
    s4 <a, c f>4~<a f'>2
    r8 f' e f aes4 d, % 72b
    ees2~8 ees f ees \bar "||" \key g \major
    <b d>2~q8 e fis g
    b8 a \tuplet 3/2 {gis a c~}c b ais b % 72c
    d8 d d2.
    d,8 d d4~8 ees f\fermata e
    <b d>2~q8 e fis g % 72d
    b8 a \tuplet 3/2 {gis a c~}c b ais b
    d8 d d2. \bar "||" \key ees \major % 73a
    d8 c bes2. \bar "||"
    r8 ees, d ees \tuplet 3/2 {g f ees~}ees4
    r8 ees d ees \tuplet 3/2 {g f ees~} ees4 % 73b
    r8 f e f \tuplet 3/2 {aes4 g f}
    aes1
    r8 bes a bes des4 c % 73c
    s4 <a, c f>4~<a f'>2
  }
  \alternative {
    {
      r8 f' e f aes4 d,
      s2 bes' % 73d
    }
    {
      r8 f e f aes4 <d, bes'>
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  bes2.\arpeggio b4\arpeggio
  c4 r g' fis \bar "||"
  f4 ees f ees
  ees4 d <c ees> <c d>
  d4 c c b % 70b
  c4 b bes c
  c4 bes c bes
  bes4 a <g bes> <f a> % 70c
  s1
  <bes d>4 <a c fis> <aes c f> s
  \repeat volta 2 {
    bes2. 4 % 71a
    b2. b4
    c1
    c4 cis d f16 e ees d % 71b
    des2 <e aes>
    s2 d4 des
    c2 c8 ces bes4 % 71c
    s2 <c f>4 <d g>
    bes2. bes4
    b2. b4 % 71d
    c1
    c4 cis d f16 e ees d
    des2 <e aes> % 72a
    s2 d4 des
    c2 c8 ces bes4 % 72b
    g1 \bar "||" \key g \major
    a4 f g2
    <c e>2 fis % 72c
    aes2 \tuplet 3/2 {<d, g>4 fis e}
    <g, c>2 <fis c'>\fermata
    a4 fis g2 % 72d
    <c e>2 fis
    a4 g \tuplet 3/2 {<d fis>4 e d} \bar "||" \key ees \major % 73a
    <f bes>8 <ees aes> <d g>4 <des ges> <c f> \bar "||"
    bes2. bes4
    b2. b4 % 73b
    c1
    c4 cis d f16 e ees d
    des2 <e aes> % 73c
    s2 d4 des
  }
  \alternative {
    {
      c2 c8 ces bes4
      s2 <c f>4 <d g> % 73d
    }
    {
      c2 c8 cis g' ges
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*3
}

pianoLH = \relative {
  \global
  \oneVoice
  <g, ees'>2.\arpeggio <g f'>4\arpeggio
  s2 <bes aes'>2 \bar "||"
  <g' bes>2 <ges bes>
  <f aes>2 <bes, aes'>
  ees2 <g, f'> % 70b
  <c g'>2 <ees ges>
  d2 des
  c2 <f, ees'> % 70c
  c'2 s
  r8 f, r f r f4.
  \repeat volta 2 {
    <g ees'>2. q4 % 71a
    <g f'>2. q4
    <aes ees'>1\arpeggio
    <bes aes'>1 % 71b
    <g f'>2 <c bes'>
    s1
    <bes aes'>2 q % 71c
    s2 q
    <g ees'>2. q4
    <g f'>2. q4 % 71d
    <aes ees'>1\arpeggio
    <bes aes'>1
    <g f'>2 <c bes'> % 72a
    s1
    <bes aes'>2 q % 72b
    s1 \bar "||" \key g \major
    g2 e
    <a g'>2 <d c'> % 72c
    s1
    a2 d,\fermata
    g2 e % 72d
    <a g'>2 <d c'>
    s1 \bar "||" \key ees \major % 73a
    s1 \bar "||"
    <g, ees'>2. q4
    <g f'>2. q4 % 73b
    <aes ees'>1\arpeggio
    <bes aes'>1
    <g f'>2 <c bes'> % 73c
    s1
  }
  \alternative {
    {
      <bes aes'>2 q
      s2 <bes aes'> % 73d
    }
    {
      <bes aes'>2 q
      s1
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s1
  aes,2 s
  s1
  s1
  s1*4
  s2 ees'4 ees % 70c+
  s1
  \repeat volta 2 {
    s1*5
    ees1 % 71b++
    s1 % 71c
    bes4 f'8 ees s2
    s1*5
    ees1 % 72a+
    s1 % 72b
    bes4 b c r \bar "||" \key g \major
    s1
    s1 % 72c
    r4 g'2 g4
    s1*3
    r4 g2 g4 \bar "||" \key ees \major % 73a
    r4 bes a aes \bar "||"
    s1*5
    ees1 % 73c+
  }
  \alternative {
    {
      s1
      bes4 b8 c s2 % 73d
    }
    {
      s1
      \tuplet 3/2 {ees,8 g bes} \tuplet 3/2 {ees8 g bes} <bes ees g>2\arpeggio \fermata
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s1
  aes,2 s
  s1*6
  s2 r8 f r f % 70c+
  s1
  \unset PianoStaff.connectArpeggios
  \repeat volta 2 {
    s1*5
    f2 f,
    s1 % 71c
    ees'2 s
    s1*5
    f2 f,
    s1 % 72b
    ees'1 \bar "||" \key g \major
    s1
    s1 % 72c
    bes'1
    s1*3
    bes1 \bar "||" \key ees \major % 73a
    bes1 \bar "||"
    s1*5
    f2 f, % 73c+
  }
  \alternative {
    {
      s1
      ees'2 s % 73d
    }
    {
      s1
      ees1
    }
  }
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
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
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
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
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
