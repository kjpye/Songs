\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Yours"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Agustin Rodriguez"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Gonzalo Roig"
  meter       = "Tr. Jack Sherr"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo 4=120
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "48a" } s1*2
  \repeat volta 2 {
    s1
    \mark \markup { \circle "48b" } s1*3
    \mark \markup { \circle "48c" } s1*4
    \mark \markup { \circle "49a" } s1*4
    \mark \markup { \circle "49b" } s1*4
    \mark \markup { \circle "49c" } s1*4
    \mark \markup { \circle "49d" } s1*4
    \mark \markup { \circle "50a" } s1*4
    \mark \markup { \circle "50b" } s1*4
  }
  \alternative {
    {
      \mark \markup { \circle "50c" } s1*2
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  aes1
  s1
  \repeat volta 2 {
    aes1
    s1*4
    s2. f4:7 % 48c+
    bes1:m
    s1
    s1 % 49a
    bes2:m7 ees4:7 bes:m
    ees1:7
    s4 bes:m/ees ees:9.5- des/ees
    ees1:7 % 49b
    s1
    aes1
    s1
    aes1 % 49c
    s1
    s1
    s2. aes4:7
    f1:7 % 49d
    s1
    bes:m
    s1
    s1 % 50a
    bes2:m7 ees:7
    aes4. aes:7 a4:dim
    bes2:m f:7
    bes1:m % 50b
    des2:m/bes
    des:m
    aes1/ees
    s2 ees:7
  }
  \alternative {
    {
      aes1 % 50c
      s2 ees:7
    }
    {
      aes1
      s1
    }
  }
}

melody = \relative {
  \global
  R1*2
  \repeat volta 2 {
    c'2 des4 ees
    f2 ees4 d % 48b
    f2 ees~
    ees2 r
    c2 des4 ees % 48c
    aes2 g4 ees
    des1~
    des2. r4
    f2 e4 f % 49a
    aes2 g4 f
    aes2 g~
    g4 f f4. f8
    f2 g,2~ % 49b
    g2 f'
    ees1~
    ees2 r
    c2 des4 ees % 49c
    f2 ees4 d
    f2 ees~
    ees2 r
    c2 des4 ees % 49d
    f2 ees4 des
    f1~
    f2 r
    f2 e4 f % 50a
    aes2 g4 f
    f4 ees8 ges~ges f ees4
    des2 c4 ees
    des1 % 50b
    r4 des aes bes
    c4 des8 c~c2~
    c2 bes
  }
  \alternative {
    {
      aes1~ % 50c
      aes2 r
    }
    {
      aes'1~
      aes2. r4
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Yours till the stars lose their glo -- ry, __
  yours till the birds fail to sing! __
  Yours to the end of life's sto -- ry, __
  this pledge to you, dear, __ I bring! __
  Yours in the grey of De -- cem -- ber, __
  here, or on far dis -- tant shores! __
  I've ne -- ver loved a -- ny -- one
  the way __ I love you!
  How could I, when I was born to be __ just yours! __
  yours! __
}

midiWords = \lyricmode {
  "\nYours " "till " "the " "stars " "lose " "their " glo "ry, " 
  "\nyours " "till " "the " "birds " "fail " "to " "sing! " 
  "\nYours " "to " "the " "end " "of " "life's " sto "ry, " 
  "\nthis " "pledge " "to " "you, " "dear, "  "I " "bring! " 
  "\nYours " "in " "the " "grey " "of " De cem "ber, " 
  "\nhere, " "or " "on " "far " dis "tant " "shores! " 
  "\nI've " ne "ver " "loved " a ny "one "
  "\nthe " "way "  "I " "love " "you! "
  "\nHow " "could " "I, " "when " "I " "was " "born " "to " "be "  "just " "yours! " 
  "\nYours " "till " "the " "stars " "lose " "their " glo "ry, " 
  "\nyours " "till " "the " "birds " "fail " "to " "sing! " 
  "\nYours " "to " "the " "end " "of " "life's " sto "ry, " 
  "\nthis " "pledge " "to " "you, " "dear, "  "I " "bring! " 
  "\nYours " "in " "the " "frey " "of " De cem "ber, " 
  "\nhere, " "or " "on " "far " dis "tant " "shores! " 
  "\nI've " "never " "loved " a ny "one "
  "\nthe " "way "  "I " "love " "you! "
  "\nHow " "could " "I, " "when " "I " "was " "born " "to " "be "  "just " "yours! " 
}

pianoRH = \relative {
  \global
  \tuplet 3/2 {<c' ees aes>4 <ees aes c> <aes c ees>} <bes des g> <bes des f>
  <g bes des f>4 <g bes ees> <bes des f> <g bes ees>
  \repeat volta 2 {
    <aes, c>2 <bes des>4 <c ees>
    <des f>2 <c ees>4 <b d> % 48b
    <des f>2 s
    s1
    <aes c>2 <bes des>4 <c ees> % 48c
    <f aes>2 <ees g>4 <c ees>
    s1
    s1
    <des f>2 <c e>4 <des f> % 49a
    <f aes>2 <ees g>4 <des f>
    <f aes>2 <ees g>~
    q4 <bes des f> <a des f> <aes des f>
    <g des' f>2 <ees g>2~ % 49b
    a2 <g des' f>
    <aes c ees>1~
    q4 <ees' c' ees>8 q \tuplet 3/2 {q4 <d b' d> <des bes' ees>}
    <c aes' c>2 <des bes' des>4 <ees c' ees> % 49c
    <f des' f>2 <ees c' ees>4 <d b' d>
    <f des' f>2 <ees c' ees>~
    q1
    <c a' c>2 <des bes' des>4 <ees c' ees> % 49d
    <f a f'>2 <ees c' ees>4 <des bes' des>
    <f des' f>1~
    q4 r8 f e f bes des
    <des f>2 <c e>4 <des f> % 50a
    <f aes>2 <ees g>4 <des f>
    q4 <c ees>8 <ees ges>~q <des f> <c ees>4
    <bes des>2 <ees, a c>4 <ges c ees>
    s1 % 50b
    fes4 <fes aes d> <des fes aes> <des fes bes>
    <ees aes c>4 <fes bes des>8 <ees aes c>~2~
    q2 <des g bes>2
  }
  \alternative {
    {
      <c ees aes>1
      r4 <ees, c' ees>4 \tuplet 3/2 {q4 <f b d> <g bes des>}
    }
    {
      <c ees aes>1
      <aes' c ees aes>2. r4
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1
  s1
  \repeat volta 2 {
    s1
    s1 % 48b
    s1
    r8 <aes' c> <g bes> <f aes> <ees g> <des f> <c ees> <bes des>
    s1*2
    <bes des>1~
    q1
    s1*20
    <bes' des>1 % 50b
    s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1*2
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1
  s1
  \repeat volta 2 {
    s1
    s1 % 48b
    s2 <c' ees>2~
    q1
    s1*3
    r4 r8 f, e f bes d % 48c+++
    s1*20
    f2 bes8 aes g f
    s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1*2
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1\>
  \repeat volta 2 {
    s1\mp
    s1*22
    s4. s8\< s2 % 49c+++
    s1\mf
    s1*7
  }
  \alternative {
    {
      s1*2
    }
    {
      s1\<
      s1\f
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  aes,,2 b'
  bes2 ees,4 ees
  \repeat volta 2 {
    aes,4. ees'8 aes4 ees % 48b
    aes,4. ees'8 aes4 ees
    aes,4. ees'8 c'4 ees,
    aes,4. ees'8 c'4 ees,
    aes,4. ees'8 aes4 ees % 48c
    aes,4. ees'8 aes4 <a, a'>
    bes4. f'8 des'4 f,
    bes,4. f'8 des'4 f,
    bes,4. f'8 des'4 f, % 49a
    bes,4. bes'8 ees4 bes
    ees,4. bes'8 ees4 bes
    ees,1
    ees4. bes'8 des4 bes % 49b
    ees,4. bes'8 ees4 ees,
    aes,4. ees'8 c'4 ees,
    aes,4. ees'8 c'4 ees,
    aes,4. ees'8 aes4 ees % 49c
    aes,4. ees'8 aes4 ees
    aes,4. ees'8 c'4 ees,
    aes,4. ees'8 aes4 ges
    f4. c'8 f4 c % 49d
    f,4. c'8 f4 f,
    bes,4. f'8 des'4 f,
    bes,4. f'8 des'4 f,
    bes,4. f'8 des'4 f, % 50a
    bes,4. bes'8 ees4 ees,
    aes,2 aes'4 a
    bes4 f2.
    bes,4. f'8 des'4 f, % 50b
    bes,4 r des2
    ees2~8 ees aes c
    ees1
  }
  \alternative {
    {
      aes,,4. ees'8 f4 ees % 50c
      aes,4. ees'8 f4 ees
    }
    {
      s1*2
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s1
  s1
  \repeat volta 2 {
    s1*32
  }
  \alternative {
    {
      s1*2
    }
    {
      aes,,4. ees'8 f4 ees
      c'2. s4
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s1
  s1
  \repeat volta 2 {
    s1*32
  }
  \alternative {
    {
      s1*2
    }
    {
      aes,,1~
      aes4 ees' aes, s
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
