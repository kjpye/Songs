\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Old Mother Hubbard"
  subtitle    = "A comic quartette"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Alfred Wheeler"
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

global = {
  \key f \major
  \time 6/8
}

TempoTrack = {
  \tempo "Quick and lively." 4.=100
  \set Score.tempoHideNote = ##t
  s2.*7 | \tempo "accel." 4.=105 s2. | \tempo 4.=110 s2. |
  \tempo 4.=115 s2. | \tempo 4.=95 s2.*22 |
  \repeat volta 2 {
    s2.*12 |
    \alternative {
      {s2.*8 | }
      {s2. | }
    }
  }
  s2.*7 |
  \tempo \markup {"(" \note {4.} #UP = 96 about)} 4.=96 s2. | % 6b
  s2.*23 |
  \tempo 4.=80 s2.*3 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*3
  \textMark \markup { \box "1b" } s2.*3
  \textMark \markup { \box "2a" } s2.*3
  \textMark \markup { \box "2b" } s2.*4
  \textMark \markup { \box "2c" } s2.*3
  \textMark \markup { \box "3a" } s2.*3
  \textMark \markup { \box "3b" } s2.*4
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "4a" } s2.*5
  \repeat volta 2 {
    \textMark \markup { \box "4b" } s2.*6
    \textMark \markup { \box "4c" } s2.*6
    \alternative {
      {
        \textMark \markup { \box "5a" } s2.*4
        \textMark \markup { \box "5b" } s2.*4
      }
      {
        \textMark \markup { \box "5c" } s2.
      }
    }
  }
  s2.*3
  \textMark \markup { \box "6a" } s2.*4
  \textMark \markup { \box "6b" } s2.*4
  \textMark \markup { \box "6c" } s2.*3
  \textMark \markup { \box "7a" } s2.*3
  \textMark \markup { \box "7b" } s2.*3 
  \textMark \markup { \box "7c" } s2.*3
  \textMark \markup { \box "8a" } s2.*4
  \textMark \markup { \box "8b" } s2.*3
  \textMark \markup { \box "8c" } s2.*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2. | s\ff | s2.*4 |
  s2.*4 | s2.\omit\pp^\markup{\dynamic pp \upright mysteriously} | s2.*5 | % 2
  s2.\ff | s2.*10 | % 3
  s2. | s | s4. s\ff | s2. | s |
  \repeat volta 2 {
    s2.*12 |
    \alternative { { s2.*8 } { s2. } }
  }
  s2.*3 |
  s2.*11 | % 6
  s2.*9 | % 7
  s2. | s | s4. s\< | s\> s\! | s2.*7 | % 8
}

soprano = \relative {
  \global
  R2. | f''8 8 8 c c c | a a a f f f |
  c'8 c c c c c | c c c c c c | a a a a a a |
  a8 a a a a a | g g g g g g | g g g g g g | % 2a
  g8 4 r r8 | e'8 8 8 8 8 8 | f-> f f e e r | r4 r8 r4 e8 |
  f8-> f f e e r | r4 r8 r4 e8 | d e f e-> c4 |
  g8 g g g g g | g g g g g g | g g g g g g | % 3a
  a8 b c b g4 | R2. | R | b8 c d a b c |
  b8 c d a b c | b8 g4 r4 r8 | R2. | R |
  R2. | R | r4 r8 g'8 g g | 4. g, | 2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    R2.*4 g4 e8 f g a | g4 e'4. d8 |
    c4 r g | g r r8 c | d4 r g, | g r r8 d | e4 r c | c r r |
    \alternative {
      {
        g'4 e8 f g a | g4 e'4. d8 | c4 r g | 2. | % 5a
        d'4 b8 c d e | d4 b a | g r r | R2. |
      }
      {
        g4 e8 f g a
      }
    }
  }
  g4 e'4. d8 | 2 c4 | c b a |
  g4 e8 f g a | g4 e' d | c2.~ | 4 r r \section \key f \major \time 6/8 | % 6a
  c4. c | f4~16 c c4. | a a | d4~16 a a4. |
  c4 g8 g a bes | a f4~4 a8 | g a b b c d |
  e8 c4~4 8 | f4. c4 d8 | c a bes c4 a8 | % 7a
  bes8 c bes a c a | g4.~4 c8^\markup "(Try to imitate a dog.)" | a f f f4 c8 |
  f4.~4 a8 | bes4 g8 a4 f8 | g a f e4 c8 |
  c'8->^\markup "(imitate a howl)" c-> c-> ~ 4.~ | 4.~4 f,8 | f'-> f-> f->~4.~ | 4.~4 8 | % 8a
  d8 d c bes4 d8 | bes8 8 a g4 bes8 | a c a g f g |
  f8 f' f f f f | 2.~ | 2.~ | 4. r4 r8 |
  \bar "|."
}

wordsSop = \lyricmode {
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board,
  Old moth -- er Hub -- bard, she went to the cup -- board,
  She went to the cup -- board,
  She went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  she went to the cup -- board,
  she went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board.
  What did she go there for? % 4a
  \repeat volta 2 {
    She went to get her dog -- gie a bone,
    bow -- wow, a bone, bow -- wow, a bone, bow -- wow,
    \alternative {
      {
        She went to get her dog -- gie a bone, bow -- wow,
        bone for her lit -- tle bow -- wow, wow, wow.
      }
      {
        She went to get her
      }
    }
  }
  dog -- gie a bone, bow -- wow, wow, wow,
  bone for the lit -- tle bow -- wow, wow, wow. __ % 6a
  Sold, sold, sold __ a -- gain,
  Sold, sold, sold __ a -- gain,
  Sold was old moth -- er Hub -- bard, __
  The la -- dy that went to the cup -- board, __
  and sold was the poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone, __
  Bow, wow, wow, wow, wow, wow, wow, __
  How sad, how sad, you poor lit -- tle dog,
  Bow, wow, wow, wow, __
  Bow, wow, wow, wow, __
  oh poor lit -- tle dog, oh poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone,
  bow, wow, wow, wow, wow, wow. __
}

wordsSopMidi = \lyricmode {
  "Old " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nshe " "went " "to " "the " cup "board, "
  "\nshe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board. "
  "\nWhat " "did " "she " "go " "there " "for? " % 4a
  \repeat volta 2 {
    "\nShe " "went " "to " "get " "her " dog "gie " "a " "bone, "
    "\nbow" "wow, " "a " "bone, " bow "wow, " "a " "bone, " bow "wow, "
    \alternative {
      {
        "\nShe " "went " "to " "get " "her " dog "gie " "a " "bone, " bow "wow, "
        "\nbone " "for " "her " lit "tle " bow "wow, " "wow, " "wow. "
      }
      {
        "\nShe " "went " "to " "get " "her "
      }
    }
  }
  "\ndog" "gie " "a " "bone, " bow "wow, " "wow, " "wow, "
  "\nbone " "for " "the " lit "tle " bow "wow, " "wow, " "wow. "  % 6a
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold " "was " "old " moth "er " Hub "bard, " 
  "\nThe " la "dy " "that " "went " "to " "the " cup "board, " 
  "\nand " "sold " "was " "the " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, " 
  "\nBow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, " 
  "\nHow " "sad, " "how " "sad, " "you " "poor " lit "tle " "dog, "
  "\nBow, " "wow, " "wow, " "wow, " 
  "\nBow, " "wow, " "wow, " "wow, " 
  "\noh " "poor " lit "tle " "dog, " "oh " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, "
  "\nbow, " "wow, " "wow, " "wow, " "wow, " "wow. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*3 | s2.\omit\ff | s2. | s |
  s2.*4 | s2.\omit\pp | s2.*5 | % 2
  s2. | s\omit\ff | s2.*9 | % 3
  s2. | s | s4. s\ff | s2. | s |
  \repeat volta 2 {
    s2.*5 | s2 s4\< | s\> s2\! | s2.*5 |
    \alternative { { s2. | s4 s2\< | s\> s4\! | s2.*5 } { s2. } }
  }
  s2.*3 |
  s2.*11 | % 6
  s2.*9 | % 7
  s2. | s | s4. s\< | s\> s\! | s2.*4 | s4. s\< | s\! s\> | s2.\! | % 8
}

alto = \relative {
  \global
  R2.*3 |
  c''8 8 8 g g g | e e e c c c | f f f f f f |
  f8 f f f f f | e e e e e e | e e e e e e | % 2a
  e8 4 r r8 | c'8 c c c c c | d-> d d c c r | r4 r8 r4 c8 |
  d8-> d d c c r | r4 r8 r4 c8 | b b b c-> 4 |
  R2. | e,8 e e d d d | e e e d d d | % 3a
  d8 d d d d4 | r4 r8 g g g | 4. d | g d8 d d |
  g4. d | g r4 r8 | R2. | R |
  R2. | R | r4 r8 g'8 g g | 4. g, | 2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    r4 g g | r g g | r g g | r g g | r g g | r a b |
    c4 g g | r g g | r g g | r b b | r g g | g r r |
    \alternative {
      {
        r4 g g | r a b | c g g | r g a | % 5a
        b4 d8 c b c | b4 g fis | g r r | R2. |
      }
      {
        r4 g g |
      }
    }
  }
  r4 a bes | r bes a | a f f |
  e4 8 f e f | e4 e' d | c2.~4 r r \section \key f \major \time 6/8 | % 6a
  a4. bes | c4~16 16 4. | f, g | f4~16 16 4. |
  g4 e8 e e e | f8 4~4 8 | f f f f f f |
  e8 4 4. | f4. 4 8 | 8 8 8 4 8 | % 7a
  e8 e e f a f | e4.~4 r8 | R2. |
  r4 r8 r4 a8 | bes4 g8 a4 f8 | g a f e4 r8 |
  r4 c'8 8 8 8 | 4.~4 r8 | r4 a8 bes bes c | f4 ees8 d4 r8 | % 8a
  a8 8 8 bes4 r8 | fis8 8 8 g4 f8 | 8 8 8 e f e |
  f8 r r r4 r8 | r4^\markup "(slow and sad)" r8 a4.( | c) bes | a r4 r8 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  Old moth -- er Hub -- bard, she went to the cup -- board,
  She went to the cup -- board,
  She went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  she went to the cup -- board.
  What did she go there for?
  What did she go there for?
  What did she go there for?
  \repeat volta 2 {
    bow -- wow, bow -- wow, bow -- wow, bow -- wow,
    bow -- wow, bow -- wow,
    wow, wow, wow,
    bow -- wow, bow -- wow, bow -- wow, bow -- wow wow,
    \alternative {
      {
        bow -- wow, bow -- wow, wow, wow, wow,
        bow -- wow, bone for the lit -- tle bow -- wowm wow, wow.
      }
      {
        bow -- wow,
      }
    }
  }
  bow -- wow, bow -- wow, wow, wow, wow,
  bone for the lit -- tle bow -- wow, wow, wow. __ % 6a
  Sold, sold, sold __ a -- gain,
  Sold, sold, sold __ a -- gain,
  Sold was old moth -- er Hub -- bard, __
  The la -- dy that went to the cup -- board, __
  And sold was the poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone, __
  How sad, how sad, you poor lit -- tle dog,
  Bow, wow, wow, wow, wow, __
  Bow, wow, wow, wow, wow, wow, wow,
  poor lit -- tle dog, poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone,
  Bow, __ wow, wow.
}

wordsAltoMidi = \lyricmode {
  "Old " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nshe " "went " "to " "the " cup "board. "
  "\nWhat " "did " "she " "go " "there " "for? "
  "\nWhat " "did " "she " "go " "there " "for? "
  "\nWhat " "did " "she " "go " "there " "for? "
  \repeat volta 2 {
    "\nbow" "wow, " bow "wow, " bow "wow, " bow "wow, "
    "\nbow" "wow, " bow "wow, "
    "\nwow, " "wow, " "wow, "
    "\nbow" "wow, " bow "wow, " bow "wow, " bow "wow " "wow, "
    \alternative {
      {
        "\nbow" "wow, " bow "wow, " "wow, " "wow, " "wow, "
        "\nbow" "wow, " "bone " "for " "the " lit "tle " bow "wowm " "wow, " "wow. "
      }
      {
        "\nbow" "wow, "
      }
    }
  }
  "\nbow" "wow, " bow "wow, " "wow, " "wow, " "wow, "
  "\nbone " "for " "the " lit "tle " bow "wow, " "wow, " "wow. "  % 6a
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold " "was " "old " moth "er " Hub "bard, " 
  "\nThe " la "dy " "that " "went " "to " "the " cup "board, " 
  "\nAnd " "sold " "was " "the " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, " 
  "\nHow " "sad, " "how " "sad, " "you " "poor " lit "tle " "dog, "
  "\nBow, " "wow, " "wow, " "wow, " "wow, " 
  "\nBow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, "
  "\npoor " lit "tle " "dog, " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, "
  "\nBow, "  "wow, " "wow. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*5 | s2.\ff |
  s2.*4 | s2.\omit\pp | s2.*5 | % 2
  s2. | s\omit\ff | s2.*9 | % 3
  s2. | s | s4. s\ff | s2. | s |
  \repeat volta 2 {
    s2.*5 | s2 s4\< | s\> s2\! | s2.*5 |
    \alternative { { s2.*8 | } { s2. | } }
  }
  s2.*3 |
  s2.*11 | % 6
  s2.*9 | % 7
  s2. | s | s4. s\< | s\> s\! | s2.*4 | s4. s\< | s\! s\> | s2.\! | % 8
}

tenor = \relative {
  \global
  R2.*3 |
  R2. | R | f'8 8 8 c c c |
  a8 a a f f f | c' c c c c c | c c c c c c | % 2a
  c8 4 r4 r8 | g8 g g g g g | aes-> aes aes g g r | r4 r8 r4 g8 |
  aes8-> 8 8 g g r | r4 r8 r4 g8 |f8 e d e-> 4 |
  R2. | c'8 c c d d d | c c c d d d | % 3a
  c8 b a b b4 | R2. | R | R |
  R2. | R | R | b8 c d a b c |
  b8 c d a b c | b g4 r r8 | r4 r8 g g g | 4. g, | 2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    r4 e' e | r e e | r e e | r e e | r e e | r f f |
    e4 e e | r e e | r f f | r f f | r e e | e r r |
    \alternative {
      {
        r4 e e | r f f | e e e | r e g | % 5a
        g4 8 8 8 8 | 4 d c | b r r | R2. |
      }
      {
        r4 e e |
      }
    }
  }
  r4 f f | r e e | d d d |
  c4 8 8 8 8 | 4 g' f | e2.~ | 4 r r \section \key f \major \time 6/8 | % 6a
  f4. e | f4~16 16 e4. | c cis | d4~16 16 4. |
  e4 c8 c c c | 8 4~4 8 | bes c d d c bes |
  g'8 4 4. | c a4 bes8 | a c,8 8 4 8 | % 7a
  c8 8 8 8 8 8 | 4.~4 r8 | R2. |
  r4 r8 r4 f8 | 4 e8 4 d8 | 8 8 8 c4 r8 |
  r4 e8 f f g | c4 bes8 a4 r8 | r4 f8 g g a | d4 c8 bes4 r8 | % 8a
  f8 8 ees d4 r8 | d d c bes4 8 | c a' f e f g |
  f8 r4 r4 r8 | r4 r8 c4.( | ees) des | c r4 r8 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board, the cup -- board, the cup -- board,
  the cup -- board, the cup -- board,
  Old moth -- er Hub -- bard, she went to the cup -- board,
  She went to the cup -- board,
  She went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  she went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board.
  What did she go there for?
  \repeat volta 2 {
    bow -- wow, bow -- wow, bow -- wow, bow -- wow,
    bow -- wow, bow -- wow,
    wow, wow, wow,
    bow -- wow, bow -- wow, bow -- wow, bow -- wow wow,
    \alternative {
      {
        bow -- wow, bow -- wow, wow, wow, wow,
        bow -- wow, bone for the lit -- tle bow -- wow, wow, wow.
      }
      {
        bow -- wow,
      }
    }
  }
  bow -- wow, bow -- wow, wow, wow, wow,
  bone for the lit -- tle bow -- wow, wow, wow. __ % 6a
  Sold, sold, sold __ a -- gain,
  Sold, sold, sold __ a -- gain,
  Sold was old moth -- er Hub -- bard, __
  The la -- dy that went to the cup -- board, __
  And sold was the poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone, __
  How sad, how sad, you poor lit -- tle dog,
  Bow, wow, wow, wow, wow, wow, wow,
  Bow, wow, wow, wow, wow, wow, wow,
  poor lit -- tle dog, poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone,
  Bow, __ wow, wow.
}

wordsTenorMidi = \lyricmode {
  "Old " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, " "the " cup "board, "
  "\nthe " cup "board, " "the " cup "board, "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nshe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board. "
  "\nWhat " "did " "she " "go " "there " "for? "
  \repeat volta 2 {
    "\nbow" "wow, " bow "wow, " bow "wow, " bow "wow, "
    "\nbow" "wow, " bow "wow, "
    "\nwow, " "wow, " "wow, "
    "\nbow" "wow, " bow "wow, " bow "wow, " bow "wow " "wow, "
    \alternative {
      {
        "\nbow" "wow, " bow "wow, " "wow, " "wow, " "wow, "
        "\nbow" "wow, " "bone " "for " "the " lit "tle " bow "wow, " "wow, " "wow. "
      }
      {
        "\nbow" "wow, "
      }
    }
  }
  "\nbow" "wow, " bow "wow, " "wow, " "wow, " "wow, "
  "\nbone " "for " "the " lit "tle " bow "wow, " "wow, " "wow. "  % 6a
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold " "was " "old " moth "er " Hub "bard, " 
  "\nThe " la "dy " "that " "went " "to " "the " cup "board, " 
  "\nAnd " "sold " "was " "the " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, " 
  "\nHow " "sad, " "how " "sad, " "you " "poor " lit "tle " "dog, "
  "\nBow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, "
  "\nBow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, "
  "\npoor " lit "tle " "dog, " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, "
  "\nBow, "  "wow, " "wow. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*6 |
  s2. | s\omit\ff | s2.*2 | s2.\omit\pp | s2.*5 | % 2
  s2. | s\omit\ff | s2.*9 | % 3
  s2. | s | s4. s\ff | s2. | s |
  \repeat volta 2 {
    s2.*12 |
    \alternative { { s2.*8 | } { s2. | } }
  }
  s2.*3 |
  s2.*11 | % 6
  s2.*9 | % 7
  s2.*8 | s4. s\< | s\! s\> | s2.\! | % 8
}

bass = \relative {
  \global
  R2.*6 |
  R2. | c'8 8 8 g g g | e e e c c c | % 2a
  c8 4 r4 r8 | c c c c c c | b-> b b c c r | r4 r8 r4 c8 |
  b8-> b b c c r | r4 r8 r4 c8 | c c c c-> 4 |
  R2. | c8 c c b b b | c c c b b b | % 3a
  a8 g fis g8 4 | R2. | R | R |
  R2. | r4 r8 g' g g | 4. d | g d8 8 8 |
  g4. d | g r4 r8 | r4 r8 g g g | 4. g, | 2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    c2. | g | c | g | c | g |
    c2. | g | b | g | c | c4 g'8 f e d |
    \alternative {
      {
        c2. | g | c | c | % 5a
        d4 8 8 8 8 | 4 4 4 | g-> a-> g->  f-> e-> d->
      }
      {
        c2. |
      }
    }
  }
  g2. | a  f4 4 4 |
  g4 8 8 8 8 | 4 4 4 | c c c | c r r \section \key f \major \time 6/8 | % 6a
  f4. g | a4~16 16 g4. | f e | d4~16 16 4. |
  c4 8 b a g | f a4~4 f8 | g g g g g g |
  c8 4 bes4. | a4. 4 bes8 | a f g a4 f8 | % 7a
  g8 a g f a f| c'4.~4 r8 | r4 r8 r4 c'8 |
  a8 f f f4 e8 | d4 8 cis4 d8 | b b b c4 r8 |
  r4 c8 d d e | a4 g8 f4 r8 | R2. | R | % 8a
  f8 f f bes,4 r8 | d d d g,4 8 | c c c c c c |
  f8 r r r4 r8  r4 r8 f,4. | bes2. | f4. 8->^\markup "(savagely)" 8-> 8-> |
  \bar "|."
}

wordsBass = \lyricmode {
  Old moth -- er Hub -- bard, she went to the cup -- board,
  the cup -- board,
  Old moth -- er Hub -- bard, she went to the cup -- board,
  She went to the cup -- board,
  She went to the cup -- board.
  Old moth -- er Hub -- bard, she went to the cup -- board,
  she went to the cup -- board.
  What did she go there for?
  What did she go there for?
  What did she go there for?
  \repeat volta 2 {
    bones, bones, bones, bones, bones, bones,
    bones, bones, bones, bones, bones,
    bow -- wow wow wow wow
    \alternative {
      {
        wow, bones, bones, bones,
        bone for the lit -- tle bow -- wow, wow, wow, wow, wow, wow, wow, wow.
      }
      {
        wow,
      }
    }
  }
  bones, bones, wow, wow, wow,
  bone for the lit -- tle bow -- wow, wow, wow, wow, wow, wow.
  Sold, sold, sold __ a -- gain,
  Sold, sold, sold __ a -- gain,
  Sold was old moth -- er Hub -- bard, __
  The la -- dy that went to the cup -- board, __
  And sold was the poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone, __
  Bow, wow, wow, wow, wow,
  How sad, how sad, you poor lit -- tle dog,
  Bow, wow, wow, wow, wow, wow, wow,
  poor lit -- tle dog, poor lit -- tle dog,
  who did -- n't re -- ceive an -- y bone,
  Bow, wow, wow.
  Bow, wow, wow.
}

wordsBassMidi = \lyricmode {
  "Old " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nthe " cup "board, "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board, "
  "\nShe " "went " "to " "the " cup "board. "
  "\nOld " moth "er " Hub "bard, " "she " "went " "to " "the " cup "board, "
  "\nshe " "went " "to " "the " cup "board. "
  "\nWhat " "did " "she " "go " "there " "for? "
  "\nWhat " "did " "she " "go " "there " "for? "
  "\nWhat " "did " "she " "go " "there " "for? "
  \repeat volta 2 {
    "\nbones, " "bones, " "bones, " "bones, " "bones, " "bones, "
    "\nbones, " "bones, " "bones, " "bones, " "bones, "
    "\nbow" "wow " "wow " "wow " "wow "
    \alternative {
      {
        "\nwow, " "bones, " "bones, " "bones, "
        "\nbone " "for " "the " lit "tle " bow "wow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow. "
      }
      {
        "\nwow, "
      }
    }
  }
  "\nbones, " "bones, " "wow, " "wow, " "wow, "
  "\nbone " "for " "the " lit "tle " bow "wow, " "wow, " "wow, " "wow, " "wow, " "wow. "
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold, " "sold, " "sold "  a "gain, "
  "\nSold " "was " "old " moth "er " Hub "bard, " 
  "\nThe " la "dy " "that " "went " "to " "the " cup "board, " 
  "\nAnd " "sold " "was " "the " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, " 
  "\nBow, " "wow, " "wow, " "wow, " "wow, "
  "\nHow " "sad, " "how " "sad, " "you " "poor " lit "tle " "dog, "
  "\nBow, " "wow, " "wow, " "wow, " "wow, " "wow, " "wow, "
  "\npoor " lit "tle " "dog, " "poor " lit "tle " "dog, "
  "\nwho " did "n't " re "ceive " an "y " "bone, "
  "\nBow, " "wow, " "wow. "
  "\nBow, " "wow, " "wow. "
}

pianoRHone = \relative {
  \global
  <f' a c f>2.\fermata | <c f a c>4 8 4 8 | 4 8 4 8 |
  <c e g c>4 8 4 8 | 4 8 4 8 | <a c f a>4 8 4 8 |
  q4 8 4 8 | <g c e g>4 8 4 8 | 4 8 4 8 | % 2a
  q4. r4 r8 | <g c e>4. q | <aes d f>4. <g c e> | R2. |
  <aes d f>4. <g c e>4 r8 | R2. \voiceOne | d'8 e f e4. |
  \oneVoice R2. | <c e g>4. <d g> | <c e g> <d a> | % 3a
  \voiceOne a'8 b c \oneVoice <d, g b>4. | r4 r8 g g g | 4. d \oneVoice | b'8 c d a b c |
  b8 c d a b c | b4. \oneVoice r4 r8 | R2. \change Staff = pianolh | \voiceOne b,8 c d a b c |
  b8 c d a b c | b4. s \change Staff = pianorh | \oneVoice R2. | r4 r8 <g b d g>4. | <g' b d g>2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    r4 <g, c e> q | r q q | r q q | r q q | r <g e' g> q | r <a f' g> q |
    <c e g>4 <g e' g> q | r <g c e g> q | r <g d' f g> q | r <b f' g> q | r <g c e g> q | q r r |
    \alternative {
      {
        r4 <g e' g> q | r <g f' g> q | <c e g> <g e' g> q | r q <a e' g> | % 5a
        <b d g>2. | <d g b d>4 <d g b> <c fis a> | <b d g> r r | R2. |
      }
      {
        r4 <g e' g> q |
      }
    }
  }
  r4 <a f' g> <b f' g> | r <b d e> <a c e> | <a c a'> <b d b'> <c d a' c> |
  <e g c e>2. | \voiceOne g4 e \oneVoice <b d> | <e, g c>2.~ | 4 r r \section \key f \major \time 6/8 | % 6a
  <c'f a c>4. <c e bes' c> | <f c' f> <c e c'> | <c f a> <cis g' a> | <d f a d> <d f a> |
  <c e g c>4. \voiceOne g'8 a bes \oneVoice | <c, f a>8 <c f>4~4 <c f a>8 | <b f' g>4. <d f b> |
  <e g c>4. <g c e> | <f c' f> <f c'>4 <f d'>8 \voiceOne | c' a bes c4 a8 | % 7a
  bes8 c bes a c a \oneVoice | <c, e g>4.~4 c'8 | a f f f4 c8 |
  <c f>4.~4 <c f a>8 | <bes f' bes>4 <bes e g>8 <a e' a>4 <a d f>8 | \voiceOne g' a f \oneVoice <g, c e>4 c8 |
  <c c'>2.~ | 4.~4 f8 | <f f'>2.~ | 4.~4 f'8 | % 8a
  \voiceOne d4 c8 \oneVoice <f, b>4. | <d fis bes>4 <c f a>8 <bes g'>4 <bes f' bes>8 | <c f a>4. <bes c e g> |
  <a c f>4 r8 r4 r8 | r4 r8 <f a c>4. | <f c' ees> <f g bes des> | <f a c>4. r4 r8 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.*15 | b4. c |
  s2.*3 | % 3a
  d4. s | s2.*3 |
  g4. d | g s | s2. | s |
  s2.*5 \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    s2.*6 |
    s2.*6 |
    \alternative {
      { s2.*8 | }
      { s2. }
    }
  }
  s2.*3 |
  s2. | c,2 s4 | s2. | s \section \key f \major \time 6/8 | % 6a
  s2.*4 |
  s4. <c e> | s2.*2 |
  s2. | s | e4. f4 <c f>8 | % 7a
  <c e>4. <c f> | s2. | s |
  s2. | s | <g d'>4 8 s4. |
  s2.*4 | % 8a
  a'4. s | s2. | s |
  s2.*4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s\mf |
}

pianoLHone = \relative {
  \global
  <f, f'>2.\fermata | 4. <c c'> | <a a'> <f f'> |
  <c' c'>4. g' | e c | <f f'> <c c'> |
  <a a'>4. <f f'> | <c' c'> g' | e c | % 2a
  c4. r4 r8 | <c c'>4. q | <b b'> <c c'> | R2. |
  <b b'>4. <c c'>4 r8 | R2. \voiceOne | f'8 e d e4. |
  R2. | <c g'>4. <b g'> | <c g'> <b g'> | % 3a
  \voiceOne d4. \oneVoice <g, d'> | R2. | R | R |
  R2. | r4 r8 g' g g | 4. d | \voiceOne b'8 c d a b c |
  b8 c d a b c | b4. \oneVoice r4 r8 | R2. | <g,, g'>4. <g' f'> | <g' d' f>2. \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    <c,, c'>2. | <g g'> | <c c'> | <g g'> | <c c'> | <g g'> |
    <c c'>2. | g' | b | g | c | 4 g'8 f e d |
    \alternative {
      {
        c2. | g | c | c | % 5a
        d2. | <d, d'> | <g g'>4-> <a a'>-> <g g'>-> | <f f'>-> <e e'>-> <d d'>->
      }
      {
        <c c'>2. |
      }
    }
  }
  <g g'> | <a a'> | <f f'> |
  <g g'>2. \voiceOne | e''4 g \oneVoice <g, f'> | c g e | c r r \section \key f \major \time 6/8 | % 6a
  <f f'>4. <g g'> | <a a'> < g g'> | <f f'> <e e'> | <d d'> d |
  c4. <bes' bes'>8 <a a'> <g g'> | <f f'> <a a'>4~4 <f f'>8 | <g g'>4. q |
  <c c'>4. <bes bes'> | <a a'> a4 bes8 | a f g a4 f8 | % 7a
  <g g>8 <a a'> <g g'> <f f'> a f | c'4.~4 r8 | r4 r8 r4 c8 |
  <a a'> <f f'> q q4 <e e'>8 | <d d'>4 8 <cis cis'>4 <d d'>8 | <b b'>4 8 <c c'>4 r8 |
  r4 <c' e>8 <d f>4 <e g>8 | <a c>4 <g bes>8 <f a>4 r8 | r4 q8 <g bes>4 <a c>8 <d f>4 <c ees>8 <bes d>4 r8 | % 8a
  \voiceOne f'4 ees8 \oneVoice <bes d>4. | <d,, d'>4. <g g'>4 8 | c4. <c, c'> |
  <f f'>4 r8 r4 r8 | r4 r8 <f, f'>4. | <bes bes'>2. | <f f'>4. r4 r8 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*15 | c4. c |
  s2.*3 | % 3a
  a8 g fis s4. | s2. | s | s |
  s2. | s | s | g'4. d |
  g4. d | g s | s2. | s | s \section \key c \major \time 3/4 | % 4a
  \repeat volta 2 {
    s2.*12
    \alternative {
      { s2.*8 }
      { s2. }
    }
  }
  s2.*3 |
  s2. g,2 s4 | s2. | s \section \key f \major \time 6/8 | % 6a
  s2.*7 |
  s2.*9 | % 7
  s2.*4 | % 8a
  f'4. s | s2. | s |
  s2.*4 |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
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
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
          \new Dynamics {\teeny \dynamicsPiano}
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
  \bookOutputSuffix "midi-sop"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
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
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
