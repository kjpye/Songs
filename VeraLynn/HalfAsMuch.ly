\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Half as Much"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Curley Williams"
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
  \tempo 2=56
}

TempoTrack = {
  \global
  \tempo 2=56
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "54a" } s1*4
  \repeat volta 2 {
    \mark \markup { \circle "54b" } s1*4
    \mark \markup { \circle "54c" } s1*4
    \mark \markup { \circle "55a" } s1*4
    \mark \markup { \circle "55b" } s1*4
    \mark \markup { \circle "55c" } s1*4
    \mark \markup { \circle "55d" } s1*4
    \mark \markup { \circle "56a" } s1*3
    \mark \markup { \circle "56b" } s1*3
  }
  \alternative {{\mark \markup { \circle "55c" } s1*2 }{s1*2}}
}

ChordTrack = \chordmode {
  bes1:7
  s1
  ees1
  s2 bes:7
  \repeat volta 2 {
    ees1 % 54b
    s1*3
    s1*2 % 54c
    bes1:7
    s1
    ees1 % 55a
    ees:7
    aes:1
    s1
    f1:7 % 55b
    s1
    bes1
    bes1:7
    ees1 % 55c
    s1*5
    bes1:7 % 55d++
    s1
    ees1 % 56a
    ees1:7
    aes
    s1 % 56b
    bes1:7
    s1
  }
  \alternative {
    {
      ees1 % 56c
      s2 bes:7
    }
    {
      ees2 aes4:6 aes:m6/ces
      ees1
    }
  }
}

melody = \relative {
  \global
  R1*3
  r2 g'4 bes
  \repeat volta 2 {
    ees2. c4 % 54b
    bes8 bes g g f4 ees
    bes1~
    bes4 g' g bes
    ees2. c4 % 54c
    bes4 g8 g f f ees4
    bes'1~
    bes4 bes g f
    ees2. f8 f % 55a
    g4 g f ees
    aes1~
    aes4 c c c
    f,2. a4 % 55b
    c4 c d ees
    d1~
    d2 g,4 bes
    ees2. c4 % 55c
    bes8 bes g g f4 ees
    bes1~
    bes4 g' g bes
    ees2. c4 % 55d
    bes4 g8 g f f ees4
    bes'1~
    bes4 bes g f
    ees2. f4 % 56a
    g4 g f ees
    aes1~
    aes2 c4 c % 56b
    bes4 bes bes bes
    d8 d c bes
    aes4 f
  }
  \alternative {
    {
      ees1~
      ees4 r g bes
    }
    {
      ees,1~
      ees2. r4
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  If you loved me half as much as I love you, __
  you would -- n't wor -- ry me
  half as much as you do. __
  You're nice to me
  when there's no one else a -- round, __
  you on -- ly build me up
  to let me down. __
  If you missed me half as much as I miss you, __
  you would -- n't stay a -- way
  half as much as you do. __
  I know that I would ne -- ver be this blue. __
  If you on -- ly loved me half as much as I love you. __
  If you
  you. __
}

wordsSingle = \lyricmode {
  If you loved me half as much as I love you, __
  you would -- n't wor -- ry me
  half as much as you do. __
  You're nice to me
  when there's no one else a -- round, __
  you on -- ly build me up
  to let me down. __
  If you missed me half as much as I miss you, __
  you would -- n't stay a -- way
  half as much as you do. __
  I know that I would ne -- ver be this blue. __
  If you on -- ly loved me half as much as I love you. __
  If you loved me half as much as I love you, __
  you would -- n't wor -- ry me
  half as much as you do. __
  You're nice to me
  when there's no one else a -- round, __
  you on -- ly build me up
  to let me down. __
  If you missed me half as much as I miss you, __
  you would -- n't stay a -- way
  half as much as you do. __
  I know that I would ne -- ver be this blue. __
  If you on -- ly loved me half as much as I love you. __
}

midiWords = \lyricmode {
  "\nIf " "you " "loved " "me " "half " "as " "much " "as " "I " "love " "you, " 
  "\nyou " would "n't " wor "ry " "me "
  "\nhalf " "as " "much " "as " "you " "do. " 
  "\nYou're " "nice " "to " "me "
  "\nwhen " "there's " "no " "one " "else " a "round, " 
  "\nyou " on "ly " "build " "me " "up "
  "\nto " "let " "me " "down. " 
  "\nIf " "you " "missed " "me " "half " "as " "much " "as " "I " "miss " "you, " 
  "\nyou " would "n't " "stay " a "way "
  "\nhalf " "as " "much " "as " "you " "do. " 
  "\nI " "know " "that " "I " "would " ne "ver " "be " "this " "blue. " 
  "\nIf " "you " on "ly " "loved " "me " "half " "as " "much " "as " "I " "love " "you. " 
  "\nIf " "you " "loved " "me " "half " "as " "much " "as " "I " "love " "you, " 
  "\nyou " would "n't " wor "ry " "me "
  "\nhalf " "as " "much " "as " "you " "do. " 
  "\nYou're " "nice " "to " "me "
  "\nwhen " "there's " "no " "one " "else " a "round, " 
  "\nyou " on "ly " "build " "me " "up "
  "\nto " "let " "me " "down. " 
  "\nIf " "you " "missed " "me " "half " "as " "much " "as " "I " "miss " "you, " 
  "\nyou " would "n't " "stay " a "way "
  "\nhalf " "as " "much " "as " "you " "do. " 
  "\nI " "know " "that " "I " "would " ne "ver " "be " "this " "blue. " 
  "\nIf " "you " on "ly " "loved " "me " "half " "as " "much " "as " "I " "love " "you. " 
}

pianoRH = \relative {
  \global
  s2 <d' aes' bes>4 q
  s2 <c aes'>4 <aes f'>
  s1
  s2 <aes d g>4 bes'
  \repeat volta 2 {
    s2. <ees, g c>4 % 54b
    s2 <aes, f'>4 <g ees'>
    s1
    r4 g'4 <ees g> <g bes>
    s2. <ees g c>4 % 54c
    s2. <g, ees'>4
    s1
    s4 <d' bes'> <bes g'> <aes f'>
    s1 % 55a
    s2 <aes d f>4 <g d' ees>
    s1
    s4 <ees' aes c> c' q
    s2. <c, ees a>4 % 55b
    s2 <f d'>4 <g ees'>
    s1
    <d aes'>2 <aes d g>4 bes'
    s2. <ees, g c>4 % 55c
    s2 <aes, f'>4 <g ees'>
    s1
    r4 g' <ees g> <g bes>
    s2. <ees g c>4 % 55d
    s2. <g, ees'>4
    s1
    s4 <d' bes'> <bes g'> <aes f'>
    s2. q4 % 56a
    s2 <aes d f>4 <g d' ees>
    s1
    s2 c'4 <ees, aes c> % 56b
    s2 <d aes' bes>4 q
    s2 <c aes'>4 <aes f'>
  }
  \alternative {
    {
      s1 % 56c
      s2 <aes d g>4 bes'
    }
    {
      s2. <aes ees' f>4
      <g bes ees g>2. r4
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  bes'4 bes s2
  d8 d <ees, c'> <d bes'> s2
  ees1~
  ees2 s
  \repeat volta 2 {
    ees'2. s4 % 54b
    bes8 bes g g s2
    r4 <ees g bes>2 q4
    s1
    ees'2. s4 % 54c
    bes4 g8 g f f s4
    bes1~
    bes4 s2.
    ees,2. f8 f % 55a
    g4 g s2
    aes1~
    aes4 s2.
    f2. r4 % 55b
    c'4 c s2
    d1
    s1
    ees2. s4 % 55c
    bes8 bes g g s2
    r4 <ees g bes>2 q4
    s1
    ees'2. s4 % 55d
    bes4 g8 g f f s4
    bes1~
    bes4 s2.
    ees,2. s4 % 56a
    g4 g s2
    aes1~
    aes2 s % 56b
    bes4 bes s2
    d8 d <ees, c'> <d bes'> s2
  }
  \alternative {
    {
      ees1~ % 56c
      ees2 s
    }
    {
      ees8 f g bes c ees s4
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  <d' aes'>2 s
  <f aes>4 r s2
  g,4 <g bes> r q
  r4 q s2
  \repeat volta 2 {
    r4 <ees' g>2 s4 % 54b
    r4 bes s2
    bes1
    s1
    r4 <ees g> s2 % 54c
    r4 <bes ees> aes s
    r4 <d aes'>2 q4~
    q4 s2.
    r4 <g, bes> e aes % 55a
    <bes des>2 s
    r4 <c ees>2 q4~
    q4 s2.
    r4 <a ees'>2 s4 % 55b
    <ees' a>2 s
    r4 f <d bes'> a'
    s1
    r4 <ees g>2 s4 % 55c
    r4 bes s2
    bes1
    s1
    r4 <ees g>2 s4 % 55d
    r4 <bes ees> aes s
    r4 <d aes'>2 q4~
    q4 s2.
    r4 <g, bes> r s % 56a
    <bes des>2 s
    r4 <c ees>2 q4
    r4 q4 s2 % 56b
    <d aes>2 s
    <f aes>4 r s2
  }
  \alternative {
    {
      g,4 <g bes>2 q4
      r4 q s2
    }
    {
      <g bes>2 <f' aes>4 s
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*3
  \repeat volta 2 {
    s1*30
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
  bes,4 r f r
  bes4 r f bes
  ees,4 r bes' r
  ees,4 r bes'2
  \repeat volta 2 {
    ees,4 r bes' r % 54b
    ees,4 r bes' r
    ees,4 r bes' r
    ees,4 r bes' r
    ees,4 r bes' r % 54c
    ees,4 r bes' r
    ees,4 r bes' r
    bes,4 r bes'2
    ees,4 r bes' r % 55a
    ees,4 r ees r
    aes4 r ees' r
    aes,4 r aes r
    c4 r f, r % 55b
    f4 r f r
    bes4 r f r
    bes4 bes, r bes
    ees4 r bes' r % 55c
    ees,4 r bes' r
    ees,4 r bes' r
    ees,4 r bes' r
    ees,4 r bes' r % 55d
    ees,4 r bes' r
    ees,4 r bes' r
    bes,4 r bes'2
    ees,4 r bes' r % 56a
    ees,4 r ees r
    aes4 r ees' r
    aes,4 r aes r % 56b
    bes4 r f r
    bes4 r bes, r
  }
  \alternative {
    {
      ees4 r bes' r
      ees,4 r bes'2
    }
    {
      ees,4 r aes ces
      <ees, ees'>4 <bes bes'> <ees, ees'>-> r
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
          >>
        >>
      >>
    >>
    \midi {}
  }
}
