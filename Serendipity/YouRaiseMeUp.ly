\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "You Raise Me Up"
  subtitle    = "Simplified version"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Rolf Løvland"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Brendan Graham"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
  \partial 2
}

TempoTrack = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2 s1*4 |
  \repeat volta 2 {
    \textMark \markup { \box "1b" } s1 s \time 2/4 s2 \time 4/4 s1 |
    \textMark \markup { \box "1c" } s1*3 |
    \textMark \markup { \box "2a" } s1*3 |
    \textMark \markup { \box "2b" } s1*3 |
    \textMark \markup { \box "2c" } s1*3 |
    \textMark \markup { \box "3a" } s1*3 |
    \textMark \markup { \box "3b" } s1*2 |
    \alternative {
      {s1}
      {
        \textMark \markup { \box "3c" } s1 |
      }
    }
  }
  s1*2 |
  \textMark \markup { \box "4a" } s1*3 |
  \textMark \markup { \box "4b" } s1*3 |
  \textMark \markup { \box "4c" } s1*3 |
  \textMark \markup { \box "5a" } s1*3 |
  \textMark \markup { \box "5b" } s1*4 |
  \textMark \markup { \box "5c" } s1*4 |
}

dynamicsWomen = {
  \dynamicUp
  \override DynamicTextSpanner.style = #'none
  s2 | s1*4
  \repeat volta 2 {
    s1 | s | s2 | s1 |
    s1 | s2 s8 s4\mp s8\mf | s1 |
    s1*9 | % 2
    s1*3 | % 3a
    s1*2
    \alternative {
      {s1}
      {s1}
    }
  }
  s1 | s\ff |
  s1*3 | % 4a
  s1*3 |
  s2. s8\< s\! | s1\ff | s |
  s1*11 |
}

soprano = \relative {
  \global
  s2 | s1 | s | s \section | s |
  \repeat volta 2 {
    s1 | s | s2 | s1 |
    R1 | r2 r8 a a d | fis4~8 d e d d b |
    a8 d4. r2 | R1 | r2 r8 a' b cis | % 2a
    b4~8 a a g a g | a4 fis8 r r b, a' g | fis4 r8 8 8 e d cis |
    d2 r8 a' b cis | d4. cis8 8 b a g | a4 fis r8 a e'8. d16 |
    d4 r8 cis8 8 b a g | a2 r | r4 fis8. a16 8. g16 fis8 e \section | % 3a
    fis4 a~8 b, a' g | fis4 r8 8 8. e16 d8 cis |
    \alternative {
      { d2. r4 }
      { d1 }
    }
  }
  r2 r8 bes'8 c d \section \key ees \major | ees4. d8 8 c bes aes |
  bes4 g r8 bes8 f'8. ees16 | 4 r8 d d c bes aes | bes2 r | % 4a
  r4 g8. bes16 8. aes16 g8 f | g4 bes~8 c, bes'8. aes16 | g4 r8 8 8. f16 ees8 d |
  ees2 r8 b'8 c d | ees4. d8 d c bes aes | bes4 g r8 bes f'8. ees16 |
  ees4 r8 d d c bes aes | bes2 r | r4 g8. bes16 8. aes16 g8 f | % 5a
  g4 bes~8 c, bes' aes | g4 r8 8 8 f ees d | ees1 | r2 r8 bes ees g |
  g2 r4 r8 aes | g4 d ees8(d) r ees | 1~ | 1\fermata |
  \bar "|."
}

wordsOne = \lyricmode {
  When I am down __ and oh, my soul's so wear -- y.
  Then I am still __ and wait here in the si -- lence
  un -- til you come and sit a -- while with me.
  You raise me up so I can stand on moun -- tains.
  You raise me up to walk with storm -- y seas.
  Strong when I am on your shoul -- ders.
  You raise me up to more than I can be. _

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  Strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  Strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.
  You raise me up to more than I can be.
}

wordsTwo = \lyricmode {
  There is no life, __ no life with -- out it's hun -- ger.
  But when you come __ and I am filled with won -- der,
  Some -- times I think I glimpse e -- ter -- ni -- ty.
  \repeat unfold 39 _
  be.
}

wordsSingle = \lyricmode {
  When I am down __ and oh, my soul's so wear -- y.
  Then I am still __ and wait here in the si -- lence
  un -- til you come and sit a -- while with me.
  You raise me up so I can stand on moun -- tains.
  You raise me up to walk with storm -- y seas.
  Strong when I am on your shoul -- ders.
  You raise me up to more than I can be.

  There is no life, __ no life with -- out it's hun -- ger.
  But when you come __ and I am filled with won -- der,
  Some -- times I think I glimpse e -- ter -- ni -- ty.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  Strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  Strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  Strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.
  You raise me up to more than I can be.
}

wordsMidi = \lyricmode {
  "When " "I " "am " "down "  "and " "oh, " "my " "soul's " "so " wear "y. "
  "\nThen " "I " "am " "still "  "and " "wait " "here " "in " "the " si "lence "
  "\nun" "til " "you " "come " "and " "sit " a "while " "with " "me. "
  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "with " storm "y " "seas. "
  "\nStrong " "when " "I " "am " "on " "your " shoul "ders. "
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nThere " "is " "no " "life, "  "no " "life " with "out " "it's " hun "ger. "
  "\nBut " "when " "you " "come "  "and " "I " "am " "filled " "with " won "der, "
  "\nSome" "times " "I " "think " "I " "glimpse " e ter ni "ty.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nStrong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nStrong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nStrong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be. "
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be. "
}

alto = \relative {
  \global
  s2 | s1 | s | s \section | s |
  \repeat volta 2 {
    s1 | s | s2 | s1 |
    R1 | r2 r8 a a d | fis4~8 d e d d b |
    a8 d4. r2 | R1 | r2 r8 a' b cis | % 2a
    b4~8 a a g a g | e4 d8 r r b a' g | fis4 r8 8 8 e d cis |
    d2 r8 a' b cis | fis,4. 8 e8 g fis e | 4 d r8 a'8 8. 16 |
    fis4 r8 8 e8 g fis e | 4(d) r2 | r4 fis8. a16 8. g16 fis8 e \section | % 3a
    fis4 a~8 b, a' g | fis4 r8 8 8. e16 d8 cis |
    \alternative {
      { d2. r4 }
      { d1 }
    }
  }
  r2 r8 bes'8 c d \section \key ees \major | g,4. 8 f8 aes g f |
  f4 ees r8 bes'8 8. 16 | g4 r8 g f aes g f | f4(ees) r2 | % 4a
  r4 g8. bes16 8. aes16 g8 f | g4 bes~8 c, bes'8. aes16 | g4 r8 8 8. f16 ees8 d |
  ees2 r8 b'8 c d | g,4. 8 f aes g f | 4 ees r8 bes'8 8. 16 |
  g4 r8 g f aes g f | 4(ees) r2 | r4 g8. bes16 8. aes16 g8 f | % 5a
  g4 bes~8 c, bes' aes | g4 r8 8 8 f ees d | ees1 | r2 r8 bes ees g |
  g2 r4 r8 aes | g4 d ees8(d) r ees | c2(bes~ | bes1->\fermata) |
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s | s |
  \repeat volta 2 {
    s1 | s | s2 | s1 |
    s1 | s | s |
    s1*9 | % 2
    s1*3 | % 2a
    s1*2 |
    \alternative {
      {s1}
      {s1}
    }
  }
  s1 | s\ff |
  s1*3 | % 4a
  s1*3 |
  s2. s8\< s\! | s1\ff | s |
  s1*11 | % 5
}

tenor = \relative {
  \global
  r2 | R1 | R | R \section | R |
  \repeat volta 2 {
    R1 | R | R2 | R1 |
    R1 | R | R |
    r2 r8 cis d fis | a4 r8 d, b' a a fis | e2 r8 a b cis | % 2a
    d4~8 cis cis b a b | d4 a8 r r b a b | a4 r8 a a g fis e |
    fis2 r8 a b cis | d4. cis8 8 d cis b | d4 a r8 a e'8. d16 |
    d4 r8 cis cis d cis b | a2 r4 a8 cis | d4~8 cis8 8. b16 a8 g \section | % 3a
    a4 d~8 b a g | fis4 r8 8 8. e16 d8 cis |
    \alternative {
      {d2. r4}
      {d1}
    }
  }
  r2 r8 bes'8 c d \section \key ees \major ees4. d8 8 ees d c |
  ees4 bes r8 8 f'8. ees16 | 4 r8 d d ees d c | bes2 r4 bes8 d | % 4a
  ees4~8 d d8. 16 bes8 aes | bes4 ees~8 c bes8. aes16 | g4 r8 8 8. f16 ees8 d |
  ees2 r8 b' c d | ees4. d8 d ees d c | ees4 bes r8 bes f'8. ees16 |
  ees4 r8 d d ees d c | bes2 r4 bes8 d | ees4~8 d d8. c16 bes8 aes | % 5a
  bes4 ees~8 c bes aes | g4 r8 g g f ees d | ees1 | r2 r8 bes ees g |
  g2 r4 r8 aes | g4 f ees8(d) r ees | aes1( | g\fermata) |
  \bar "|."
}

wordsTenorOne = \lyricmode {
  \repeat volta 2 {
    When troub -- les come and my heart bur -- dened be.
    \repeat unfold 42 _
    I am strong when I am on your \break
    { \repeat unfold 11 _ }
    \alternative { { _ } { _ } }
  }
  \repeat unfold 21 _
  I am strong when I am on your shoul -- ders.
  \repeat unfold 31 _
  I am strong when I am on your shoul -- ders.
  \repeat unfold 20 _
}

wordsTenorTwo = \lyricmode {
  Each rest -- less heart beats so im -- per -- fect -- ly.
}

wordsTenorSingle = \lyricmode {
  When troub -- les come and my heart bur -- dened be.
  \repeat unfold 42 _
  I am strong when I am on your \break
  \repeat unfold 12 _
  Each rest -- less heart beats so im -- per -- fect -- ly.
  \repeat unfold 42 _
  I am strong when I am on your \break
  \repeat unfold 12 _
  \repeat unfold 21 _
  I am strong when I am on your shoul -- ders.
  \repeat unfold 31 _
  I am strong when I am on your shoul -- ders.
  \repeat unfold 20 _
}

wordsTenorSingleWords = \lyricmode {
  When trou -- bles come and my heart bur -- dened be.
  Then I am still __ and wait here in the si -- lence
  un -- til you come and sit a -- while with me.
  You raise me up so I can stand on moun -- tains.
  You raise me up to walk with storm -- y seas.
  I am strong when I am on your shoul -- ders.
  You raise me up to more than I can be.

  Each rest -- less heart beats so im -- per -- fect -- ly.
  But when you come __ and I am filled with won -- der,
  Some -- times I think I glimpse e -- ter -- ni -- ty.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  I am strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  I am strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.

  You raise me up so I can stand on moun -- tains.
  You raise me up to walk on storm -- y seas.
  I am strong when I am on your shoul -- ders. __
  You raise me up to more than I can be.
  You raise me up to more than I can be.
}

wordsTenorMidi = \lyricmode {
  "When " trou "bles " "come " "and " "my " "heart " bur "dened " "be. "
  "\nThen " "I " "am " "still "  "and " "wait " "here " "in " "the " si "lence "
  "\nun" "til " "you " "come " "and " "sit " a "while " "with " "me. "
  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "with " storm "y " "seas. "
  "\nI " "am " "strong " "when " "I " "am " "on " "your " shoul "ders. "
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nEach " rest "less " "heart " "beats " "so " im per fect "ly. "
  "\nBut " "when " "you " "come "  "and " "I " "am " "filled " "with " won "der, "
  "\nSome" "times " "I " "think " "I " "glimpse " e ter ni "ty.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nI " "am " "strong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nI " "am " "strong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be.\n"

  "\nYou " "raise " "me " "up " "so " "I " "can " "stand " "on " moun "tains. "
  "\nYou " "raise " "me " "up " "to " "walk " "on " storm "y " "seas. "
  "\nI " "am " "strong " "when " "I " "am " "on " "your " shoul "ders. " 
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be. "
  "\nYou " "raise " "me " "up " "to " "more " "than " "I " "can " "be. "
}

bass = \relative {
  \global
  r2 | R1 | R | R \section | R |
  \repeat volta 2 {
    R1 | R | R2 | R1 |
    R1 | R | R |
    r2 r8 cis d fis | a4 r8 d, b' a a fis | e2 r8 a b cis | % 2a
    d4~8 cis cis b a b | fis4 a8 r r b a b | a4 r8 a a g fis e |
    fis2 r8 a b cis | b4. a8 8 g a g | fis4 a r8 a8 8. 16 |
    b4 r8 a a g a g | fis2 r2 | d'4~8 cis8 8. b16 a8 g \section | % 3a
    a4 d~8 b a g | fis4 r8 8 8. e16 d8 cis |
    \alternative {
      {d2. r4}
      {d1}
    }
  }
  r2 r8 bes'8 c d \section \key ees \major c4. bes8 8 aes bes aes |
  g4 bes r8 8 8. 16 | c4 r8 bes bes aes bes aes | g2 r2 | % 4a
  ees'4~8 d d8. 16 bes8 aes | bes4 ees~8 c bes8. aes16 | g4 r8 8 8. f16 ees8 d |
  ees2 r8 b' c d | c4. bes8 bes aes bes aes | g4 bes r8 bes8 8. 16 |
  c4 r8 bes bes aes bes aes | g2 r2 | ees'4~8 d d8. c16 bes8 aes | % 5a
  bes4 ees~8 c bes aes | g4 r8 g g f ees d | ees1 | r2 r8 bes ees g |
  g2 r4 r8 aes | g4 f ees8(d) r ees | aes2(f | ees1\fermata) |
  \bar "|."
}

pianoRHone = \relative {
  \global
  r8 a a d | fis4. d8 e4 d8 b | a d4.~8 cis d fis | <a, d a'>4. d8 <d b'>4 a'8 fis16 g32 fis \section | e2 r8 <a a'> q <cis cis'> |
  \repeat volta 2 {
    <d g d'>4. g8 <cis, cis'>8 <b b'> <a a'> <g g'> | % 1b
    <a d a'>2 \voiceOne d2~ \time 2/4 |
    <a d> \time 4/4 |
    \oneVoice <a, d fis>8 a d a' \voiceOne fis4. e8 |
    d4 <d a'> q q | % 1c
    q q q8 a q d |
    q4 q q q |
    q4 q q q | q q q q | q4 8 cis q4 q | % 2a
    q4 q q q | q q <b d g> <d g> | <d fis>8 a q a \voiceOne <cis e>4 4 | \oneVoice
    <fis, a d>2 r8 <a a'>8 <b b'> <cis cis'> | % 2c
    <d fis b d>4. <cis cis'>8 <cis a'> <b g'> <a fis'> <g e'> |
    <a e' a>8 a d a' q a, e' a |
    <d, fis b d>4. <cis cis'>8 <cis a'> <b g'> <a fis'> <g e'> | % 3a
    <a e' a>8 a d a' <cis, e a> a q a |
    <d fis a>4 4 <d g a> q8 fis \section |
    <d a'>4 4 <g a d>2 | % 3b
    <a, d fis>8 a <d fis> a <g d' e>2 |
    \alternative {
      {<fis a d>4 <a d> q8 <a' a'> q <cis cis'>}
      {<fis,, a d>4 <a d> <g b d> <e g d'>} % 3c
    }
  }
  <fis a d>2 r8 <bes bes'>-> <c c'>-> <d d'>-> \section \key ees \major |
  <ees g c ees>4. <d d'>8 <d bes'> <c aes'> <bes g'> <aes f'> |
  <bes f' bes>8 bes ees bes' q bes, f' bes | % 4a
  <ees, g c ees>4. <d d'>8 <d bes'> <c aes'> <bes g'> <aes f'> |
  <bes f' bes>8 bes ees bes' <d, f bes> bes q bes |
  <ees g bes>4 4 <ees aes bes>4 8 g | % 4b
  <ees bes'>4 4 <aes bes ees>2 |
  <bes, ees g>8 bes <ees g> bes <aes ees' f>2 |
  <g bes ees>4 4 <g d' f>8 <b b'> <c f c'> <d d'> | % 4c
  <ees g c ees>4. <d d'>8 <d bes'> <c aes'> <bes g'> <aes f'> |
  <bes f' bes>8 bes ees bes' q bes, f' bes |
  <ees, g c ees>4. <d d'>8 <d bes'> <c aes'> <bes g'> <aes f'> | % 5a
  <bes f' g>8 bes ees bes' <d, f bes> bes q bes |
  <ees g bes>4 4 <ees aes bes> q8 g16 f |
  <ees bes'>4 4 <aes bes ees>2 | % 5b
  <bes, ees g>8 bes <ees g> bes <aes ees' f>2 |
  <g c ees>4 <g c f>8 g' <aes, c ees>2~ |
  q2 r8 bes ees g |
  \voiceOne ees1 | 2 d | ees1 | ees1\fermata | % 5c
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2 | s1*4 |
  \repeat volta 2 {
    s1 | s2 <d' g a>4 4 \time 2/4 | d8 8 8 e \time 4/4 | s2 <g, d'>2 |
    s1*3 |
    s1*3 | % 2a
    s1 | s | s2 g |
    s1*3 |
    s1*3 | % 3a
    s1 | s |
    \alternative {
      {s1} {s1}
    }
  }
  s1 | s |
  s1*9 | % 4
  s1*3 | % 5a
  s1*4 |
  <g bes>2 f4 g | <aes bes>1 | <aes c>2 <f aes bes> | <g bes>1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1 | s | s \section | s |
  \repeat volta 2 {
    s1 | s | s2 | s1 |
    s1*3 |
    s1*9 | % 2
    s1*3 | % 3a
    s1*2 |
    \alternative { { s1 } { s1 } }
  }
  s1 | s\ff |
  s1*3 | % 4
  s1*3 |
  s2. s8\< s\! | s1\ff | s |
  s1*11 |
}

pianoLHone = \relative {
  \global
  r4 r | <d a'>1 | <d, a' d> | \voiceOne r8 d'4. r8 d4. \section | \oneVoice <a d>1 |
  \repeat volta 2 {
    b8 g' a d~4. b8 | % 1b
    \voiceOne a,8 fis' a d \oneVoice g,,4 fis \time 2/4 |
    \voiceOne r4 g' \time 4/4 |
    a,2 4 a, |
    <d d'>1~ | q | <d' a'>2 <d g a> | % 1c
    <d a'>2 <d, a'> | fis8 d' a'4 g,8 d' a'4 | a,8 e' a2. | % 2a
    g,8 d' b'2. | f,8 d' a'4 g,8 d' b'4 | \voiceOne r2 d, \oneVoice |
    d,8 a' d e fis2 | b,8 fis' b a \voiceOne r8 d,4. | r8 d4. <cis, cis'>2 \oneVoice |
    b'8 fis' b a \voiceOne r d,4. | r8 d4. \oneVoice a4 a, | d'2 b \section | % 3a
    <a fis'>4 <fis d'> \voiceOne g8 d' a' b | \oneVoice a,4. 8 4 a, | % 3b
    \alternative {
      {d8 a' d e fis2}
      {d,8 a' d a r2} % 3c
    }
  }
  <d, a'>2 r \section \key ees \major \voiceOne | c'8 g' c bes r ees,4. |
  r8 ees4. <d, d'>2 \oneVoice | c'8 g' c bes \voiceOne r ees,4. | r8 4. bes4 bes, \oneVoice | % 4a
  ees'2 c | <bes g'>4 <g ees'> \voiceOne aes8 ees' bes' c \oneVoice | bes,4. 8 4 bes, |
  ees4 16 f g bes <b, b'>4 4 | c'8 g' c bes \voiceOne r8 ees,4. | r8 ees4. <d, d'>2 \oneVoice |
  c'8 g' c bes \voiceOne r8 ees,4. | r8 4. bes4 bes, \oneVoice | ees'2 c | % 5a
  <bes g'>4 <g ees'> \voiceOne aes8 ees' bes' c \oneVoice| bes,4. 8 4 bes, | c'4 bes <aes ees'>2~ | 2 r |
  bes1 | 2 bes, | ees2. d'4 | ees,1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2 | s1 | s | g,2 a | s1 |
  \repeat volta 2 {
    s1 | a2 s \time 2/4 | b2 \time 4/4 | s1 | % 1b
    s1*3 |
    s1*3 | % 2a
    s1 | s | a1 |
    s1 | s2 g | fis r |
    s2 g | fis s | s1 \section | % 3a
    s2 g | s1 |
    \alternative {
      {s1}
      {s1} % 3c
    }
  }
  s1 \section \key ees \major | c2 aes | 
  g2 r | s aes | g r | % 4a
  s1 | s2 aes | s1 |
  s1 | s2 aes | g r |
  s2 aes | g r | s1 | % 5a
  s2 aes | s1 | s | s |
  s1*4 |
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorOne
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorTwo
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \bookOutputSuffix "singlepage-women"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT {\tiny \wordsTenorSingleWords}
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \bookOutputSuffix "singlepage-men"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorSingleWords
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \bookOutputSuffix "singlepagewords"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \wordsTenorSingleWords
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \bookOutputSuffix "midi-women"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "midi-men"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
