\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Got the Sun in the Morning"
  subtitle    = "from Annie Get Your Gun"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irving Berlin"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Irving Berlin"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" } s1*3
  \mark \markup { \circle "1b" } s1*3
  \mark \markup { \circle "1c" } s1*3
  \mark \markup { \circle "1d" } s1*3
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "2c" } s1*3
  \mark \markup { \circle "2d" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "3d" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "4d" } s1*2
  \mark \markup { \circle "5a" } s1*2
  \mark \markup { \circle "5b" } s1*2
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "5d" } s1*3
}

ChordTrack = \chordmode {
%  c1:13
%  c1:6:9
%  g1:m7
%  c1:13
%  f1:6
%  ees1:6
}

soprano = \relative c' {
  \global
  r1
  r1
  r1
  r1 \bar "||"
  f8 f4 f8~f4. f8
  g8 g4 g8~g f d c
  d8 f4. ~ f2
  c'8 c c c~c4. c,8
  f4 f f8 f4.
  g4 e d8 c4 f8~
  f1~
  f2. r4
  aes8 aes4 aes8~aes4. aes8
  bes8 bes4 bes8~bes aes f ees
  f8 aes4.~aes2
  c8 c c c~c4. a8
  g4 g g8 e4.
  f4 g e8 d4 c8~
  c1~
  c1
  \repeat volta 2 {
    c4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 f8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f2 r
    c4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 e8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f2 r
    a4. a8~a2~
    a2 a8 fis a b~
    b8 b4 b8~b2~
    b2. r4
    g4. g8~g2~
    g2 g8 e g a~
    a8 a4 a8~a2~
    a2. r4
    c,4 e8 f~f f4.
    c4 e8 f~f2
    c4 e8 f~f f4 e8
    g8 f4 a8~a c c c
    c4 bes8 a bes a g f
    g4 d8 f~f2~
    f1~
    f4 r r8 c' c c
    c4 bes8 a bes a g f
    g4 f8 e f e d4~
    d2 e4. f8~
  }
  \alternative {
    {
      f2 r
    }
    {
      f2. r4
    }
  }
  \bar "|."
}

dynamicsSop = {
  s1*20
  \repeat volta 2 {
    s1*35
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

wordsSop = \lyricmode {
  Tak- ing stock __ of what I have __
  and what I have- n't, __
  what do I find？__
  The things I've got will keep me sat- is- fied. __
  Check- ing up __ on what I have __ and what I have- n't, __
  what do I find？__
  A health- y bal- ance on the cred- it side. __

  Got no dia- mond,
  got no pearl, __
  still I think __ I'm a luck- y girl. __
  Ι got the sun in the morn- ing and the moon at night. __

  Got no man- sion, got no yacht, __
  still I'm hap- py with what I've got, __
  Ι got the sun in the morn- ing and the moon at night. __
  
  Sun- shine __ gives me a love- ly day, __
  Moon- light __ give me the Milk- y Way. __
  Got no check- books,
  got no banks, __
  still I'd like __ to ex- press my thanks. __
  Ι got the sun in the morn- ing and the moon at night. __

  And with the sun in the morn- ing and the moon in the eve- ning,
  I'm __ all right. __
}

pianoRH = \relative c''' {
  \global
  s1
  s1
  r8 \grace b c4. a8 f d4
  <d, e a c>4. q8 r2 \bar "||"
  s1
  s1
  s1
  <e a c>8 q q <e gis c>8~q4. c8
  s1
  s1
  s1
  s2. r4
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  c8 c c c~c2
  c8 c c c~c2
  s1
  s1
  f,8 f4 f8~f4. f8
  g8 g4 g8~g f d c
  d8 f4.~f2
  s1
  f4 f f8 f4.
  g4 e d8 c4 f8~
  f1~
  f2. s4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  <e a>1
  <d g>1
  s1
  s1
  <a d>1
  <g c>1
  <a d>1
  s1
  q2 <a c>
  b2 bes4. <a d>8~
  q2 <bes d>4. <a c d>8~
  q2. s4
  \bar "|."
}

dynamicsPiano = {
  s1\mf
  s1*5
}

pianoLH = \relative c' {
  \global
  \oneVoice
  s1
  s1
  <g bes d f>1
  <c, bes'>4. q8 r8 c,4. \bar "||"
  <f c'>1
  <ees bes'>1
  <f c'>2 r8 c'4.
  <bes' d>8 q q q~q4. r8
  <f, c'>2 bes
  <g f'>2 <c, e'>4. f8~
  f8 c' d r f bes a g~
  g2. r4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  <bes d>1
  <a c>1
  s1
  s1 \bar "||"
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  r2 r8 c4.
  r2 r8 c4.
  s1
  s1 \bar "||"
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  r4 c8 f,~f4 s
  \bar "|."
}

\score {
  \new GrandStaff <<
    <<
      \new ChordNames { \ChordTrack }
      \new FretBoards { \ChordTrack }
    >>
    <<
      \new ChoirStaff <<
        \new Dynamics \dynamicsSop
        \new Staff <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
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
  \midi {}
}
