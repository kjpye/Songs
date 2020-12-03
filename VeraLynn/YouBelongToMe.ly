\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "You Belong to Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \right-column { \line {Pee Wee King,}
                                          \line {Chilton Price}
                                          \line {& Redd Stewart}
                                        }
                        }
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
  \key bes \major
  \time 2/2
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 2=48
  s1-\markup \upright \bold Slowly
  s1*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "60a" } s1*4
  \repeat volta 2 {
    \mark \markup { \circle "60b" } s1*3
    \mark \markup { \circle "60c" } s1*3
    \mark \markup { \circle "61a" } s1*4
    \mark \markup { \circle "61b" } s1*3
    \mark \markup { \circle "61c" } s1*3
    \mark \markup { \circle "61d" } s1*4
    \mark \markup { \circle "62a" } s1*4
    \mark \markup { \circle "62b" } s1*3
    \mark \markup { \circle "62c" } s1*3
    \mark \markup { \circle "62d" } s1
  }
  \alternative {{s1}{s1}}
}

ChordTrack = \chordmode {
  bes1
  d1:m
  ees2 c:m7
  f2:13 f:7
  \repeat volta 2{
    bes1 % 60b
    d1:m
    ees1
    bes4 f:m6/aes g2:7 % 60c
    c2:m ees:m6
    bes2/f g:m
    c1:7 % 61a
    c2:m7 f4:6 f
    bes1
    d1:m
    ees1 % 61b
    bes4 f:m6/aes g2:7
    c2:m ees:m6
    bes2/f g:m % 61c
    c2:7 f:7.9-
    bes1
    bes2:7 bes4:dim7 bes:7 % 61d
    bes1:9
    aes2/ees ees
    s1
    c2:7 c4:dim7 c:7 % 61a
    g2:m7 c:7
    f1:7
    f1:9.5+
    bes1 % 62b
    d1:m
    ees1
    bes4 f:m6/aes g2:7 % 62c
    c2:m ees:m6
    bes2/f g:m
    c2:7 f:7.9- % 62d
  }
  \alternative {
    {
      bes2 ees4:6.9/f f:7
    }
    {
      bes1
    }
  }
}

melody = \relative {
  \global
  s1*4
  \repeat volta 2 {
    r4 bes'8 c d c bes d % 60b
    a4 a8 a~2
    r4 g8 a bes a g bes
    f4 f8 f~2 % 60c
    r4 ees8 f ees d c ees
    d4 f8 bes~2
    r4 d8 c bes4. c8 % 61a
    f,1
    r4 bes8 c d c bes d
    a4 a8 a~2
    r4 g8 a bes a g bes % 61b
    f4 f8 f~2
    r4 ees8 f ees d c ees
    d4 f8 bes~2 % 61c
    r4 c8 bes a4. c8
    bes1 \bar "||"
    bes4 f e f % 61d
    c'2. bes4
    aes2 g2~
    g1
    c4 g fis g % 62a
    d'2. c4
    a2. c4
    g1
    r4 bes8 c d c bes d % 62b
    a4 a8 a~2
    r4 g8 a bes a g bes
    f4 f8 f~2 % 62c
    r4 ees8 f ees d c ees
    d4 f8 bes~2
    r4 c8 bes a4. c8 % 62d
  }
  \alternative {
    {
      bes2. r4
    }
    {
      bes2. r4
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  See the py -- ra -- mids a -- long the Nile, __
  watch the sun -- rise on a tro -- pic isle, __
  just re -- mem -- ber darl -- ing,
  all the while, __ you be -- long to me.
  See the mar -- ket place in old Al -- giers, __
  send me pho -- to -- graphs and sou -- ven -- irs, __
  just re -- mem -- ber when a dream ap -- pears, __
  you be -- long to me.

  I'll be so a -- lone with -- out you, __
  may -- be you'll be lone -- some too, and blue.
  Fly the o -- cean in a sil -- ver plane, __
  see the jun -- gle when it's wet with rain, __
  just re -- mem -- ber till you're home a -- gain, __
  you be -- long to me.

  me.
}

wordsSingle = \lyricmode {
  See the py -- ra -- mids a -- long the Nile, __
  watch the sun -- rise on a tro -- pic isle, __
  just re -- mem -- ber darl -- ing,
  all the while, __ you be -- long to me.
  See the mar -- ket place in old Al -- giers, __
  send me pho -- to -- graphs and sou -- ven -- irs, __
  just re -- mem -- ber when a dream ap -- pears, __
  you be -- long to me.

  I'll be so a -- lone with -- out you, __
  may -- be you'll be lone -- some too, and blue.
  Fly the o -- cean in a sil -- ver plane, __
  see the jun -- gle when it's wet with rain, __
  just re -- mem -- ber till you're home a -- gain, __
  you be -- long to me.

  See the py -- ra -- mids a -- long the Nile, __
  watch the sun -- rise on a tro -- pic isle, __
  just re -- mem -- ber darl -- ing,
  all the while, __ you be -- long to me.
  See the mar -- ket place in old Al -- giers, __
  send me pho -- to -- graphs and sou -- ven -- irs, __
  just re -- mem -- ber when a dream ap -- pears, __
  you be -- long to me.

  I'll be so a -- lone with -- out you, __
  may -- be you'll be lone -- some too, and blue.
  Fly the o -- cean in a sil -- ver plane, __
  see the jun -- gle when it's wet with rain, __
  just re -- mem -- ber till you're home a -- gain, __
  you be -- long to me.
}

midiWords = \lyricmode {
  "See " "the " py ra "mids " a "long " "the " "Nile, " 
  "\nwatch " "the " sun "rise " "on " "a " tro "pic " "isle, " 
  "\njust " re mem "ber " darl "ing, "
  "\nall " "the " "while, "  "you " be "long " "to " "me. "
  "\nSee " "the " mar "ket " "place " "in " "old " Al "giers, " 
  "\nsend " "me " pho to "graphs " "and " sou ven "irs, " 
  "\njust " re mem "ber " "when " "a " "dream " ap "pears, " 
  "\nyou " be "long " "to " "me. "

  "\nI'll " "be " "so " a "lone " with "out " "you, " 
  "\nmay" "be " "you'll " "be " lone "some " "too, " "and " "blue. "
  "\nFly " "the " o "cean " "in " "a " sil "ver " "plane, " 
  "\nsee " "the " jun "gle " "when " "it's " "wet " "with " "rain, " 
  "\njust " re mem "ber " "till " "you're " "home " a "gain, " 
  "\nyou " be "long " "to " "me. "

  "\nSee " "the " py ra "mids " a "long " "the " "Nile, " 
  "\nwatch " "the " sun "rise " "on " "a " tro "pic " "isle, " 
  "\njust " re mem "ber " darl "ing, "
  "\nall " "the " "while, "  "you " be "long " "to " "me. "
  "\nSee " "the " mar "ket " "place " "in " "old " Al "giers, " 
  "\nsend " "me " pho to "graphs " "and " sou ven "irs, " 
  "\njust " re mem "ber " "when " "a " "dream " ap "pears, " 
  "\nyou " be "long " "to " "me. "

  "\nI'll " "be " "so " a "lone " with "out " "you, " 
  "\nmay" "be " "you'll " "be " lone "some " "too, " "and " "blue. "
  "\nFly " "the " o "cean " "in " "a " sil "ver " "plane, " 
  "\nsee " "the " jun "gle " "when " "it's " "wet " "with " "rain, " 
  "\njust " re mem "ber " "till " "you're " "home " a "gain, " 
  "\nyou " be "long " "to " "me. "
}

pianoRH = \relative {
  \global
  s1*4
  \repeat volta 2 {
    s1*3
    <b d f>4 <c d f>8 <b d f>~q2 % 60c
    s1
    s1
    s1*5
    <b d f>4 <c d f>8 <b d f>8~q2 % 61b+
    s1*3
    <d f bes>1 % 61c++
    s1*4
    <e bes' c>4 <bes ees g> <a dis fis> <bes ees g> % 62a
    s1
    <ees f a>2. <ees a c>4
    <a, cis ees g>1
    s1*3
    <bes d f>4 <c d f>8 <b d f>8~2 % 62c
    s1*3
  }
  \alternative {
    {
      <d f bes>2 s
    }
    {
      q2 <bes' d bes'>4 r
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  r4 bes'8 c d c bes d
  <f, a>4 q8 q~2
  r4 g8 a bes g bes d
  <a f'>1
  \repeat volta 2 {
    r4 bes8 c d c bes d % 60b
    <f, a>4 q8 q~2
    r4 g8 a bes a g bes
    s1 % 60c
    r4 ees,8 f ees d c ees
    <f, bes d>4 <bes d f>8 <d bes'>8~2
    r4 d'8 c bes4. c8 % 61a
    f,1
    r4 bes8 c d c bes d
    <d, f a>4 q8 <f a>8~2
    r4 g8 a bes a g bes % 61b
    s1
    r4 ees,8 f ees d c ees
    <f, bes d>4 <bes d f>8 <d bes'>8~2 % 61c
    r4 c'8 bes a4. c8
    s1 \bar "||"
    bes4 f <f cis e> <a, d f> % 61d
    c'2. <d, aes' bes>4
    <c ees aes>2 g'2~
    g1
    s1 % 62a
    d'2. <e, bes' c>4
    s1
    s1
    r4 bes'8 c d c bes d % 62b
    <d, f a>4 q8 <f a>8~2
    r4 g8 a bes a g bes
    s1 % 62c
    r4 ees,8 f ees d c ees
    <f, bes d>4 <b d f>8 <d bes'>8~2
    r4 c'8 bes a4. c8 % 62d
  }
  \alternative {
    {
      s2 <c f>
    }
    {
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  <d' f>1
  d4 d8 d~4 cis8 c
  <g bes>2 ees'
  d'4 b8 d c2
  \repeat volta 2 {
    <d, f>1 % 60b
    d4 d8 d~4 cis8 c
    <g bes>1
    s1 % 60c
    g2 <ges bes>
    s4. g'8~4 f
    <bes, ees>2 r4 q % 61a
    r4 g8 q <a d>4 <a c>
    <d f>1
    s4. d8~4 cis8 c
    <g bes>1 % 61b
    s1
    g2 <ges bes>
    s4. g'8~4 f % 61c
    <bes, e>2 r4 <ees ges>
    s1
    <aes, d>2 s % 61d
    <d aes'>4 q r4 s
    s2 <bes ees>2~
    q2 q4 q
    s1 % 62a
    <f' bes>4 q r s
    s1
    s1
    <d f>1 % 62b
    s4. d8~4 cis8 c
    <g bes>1
    s1 % 62c
    g2 <ges bes>
    s4. g'8~4 f
    <bes, e>2 r4 <ees fis> % 62d
  }
  \alternative {
    {
      s2 g4 a
    }
    {
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*3
  \repeat volta 2 {
    s1*31
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  <bes, f'>1
  s1
  <ees, bes'>2 <c' g'>
  s1
  \repeat volta 2 {
    <bes f'>1 % 60b
    d,4 a' f'2
    <ees, bes'>1
    <bes bes'>4 <aes aes'> g g' % 60c
    <c, g' ees'>2\arpeggio <ees c'>
    <f d'>2 <g g'>
    <c, c'>2 g' % 61a
    q2 <f f'>
    <bes f'>1
    d,4 a' f'2
    <ees, bes'>1 % 61b
    <bes bes'>4 <aes aes'> g g'
    <c, g' ees'>2\arpeggio <ees c'>
    <f d'>2 <g g'> % 61c
    <c, c'>2 f
    s1
    <bes, bes'>4 r q r % 61d
    <f' f'>4 r <bes, bes'> r
    ees4 bes' ees g
    \tuplet 3/2 {g4 d f} g2
    <c,, c'>4 r q r % 62a
    <g' g'>4 r <c, c'> r
    f4 c' g' f
    f, cis' a' g
    <bes, f'>1 % 62b
    d,4 a' f'2
    <ees, bes'>1
    <bes bes'>4 <aes aes'> g g' % 62c
    <c, g' ees'>2\arpeggio <ees c'>
    <f d'>2 <g g'>
    <c, c'>2 f % 62d
  }
  \alternative {
    {
      s2 <f' ees'>
    }
    {
      s2 <bes d>4 r
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s1
  d,4 a' f'2
  s1
  ees'1
  \repeat volta 2 {
    s1*15
    f,4 c' bes a % 61c++
    s1*15
  }
  \alternative {
    {
      bes,4 f' s2
    }
    {
      bes,4 f' s2
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s1
  d,1
  s1
  f'2. f,4
  \repeat volta 2 {
    s1*15
    bes1 % 61c++
    s1*15
  }
  \alternative {
    {
      bes2 s
    }
    {
      bes2 s
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
