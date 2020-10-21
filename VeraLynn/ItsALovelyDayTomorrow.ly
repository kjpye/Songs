\version "2.20.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It's a Lovely Day Tomorrow"
%  subtitle    = "subtitle"
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
  \key g \major
  \time 2/2
  \tempo 4=120
  \partial 2
}

TempoTrack = {
  \global
  s2-\markup \roman \bold Moderato
  s1
  s1
  s1
  s1
  s1 % 34b
  s1
  s1-\markup \bold \roman rall.
  s1
  s1-\markup \bold \roman {a tempo}
  s1
  s1
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \partial 2
  \mark \markup { \box "34a" } s2 s1*4
  \mark \markup { \box "34b" } s1*4
  \mark \markup { \box "34c" } s1*4
  \mark \markup { \box "35a" } s1*4
  \mark \markup { \box "35b" } s1*4
  \mark \markup { \box "35c" } s1*4
  \repeat volta 2 {
    \mark \markup { \box "35d" } s1*4
    \mark \markup { \box "36a" } s1*4
    \mark \markup { \box "36b" } s1*4
    \mark \markup { \box "36c" } s1*4
    \mark \markup { \box "36d" } s1*4
    \mark \markup { \box "37a" } s1*4
    \mark \markup { \box "37b" } s1*3
    \mark \markup { \box "37c" } s1*3
  }
  \alternative {
    {
      \mark \markup { \box "37d" } s1*2
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  \partial 2
  s2
  a2:m a:m7
  ais1:dim
  g1/b
  c1:m6
  g2/d e:m7 % 34b
  a2:m7 a:m7/d
  g2:6 ais:dim
  a2:m7 d:7
  g2 g:maj7 % 34c
  a2:m7 d:7
  g2:6 g:maj7
  a2:m/d d:6
  g2 g:dim % 35a
  a2:m7 d:7
  g1
  g2:maj7 d:dim
  d1:7 % 35b
  s1
  g1:maj7
  gis1:dim
  d1:7 % 35c
  s1
  g2:6 a:m7/d
  g2 d:7
  \repeat volta 2 {
    g2/b e:m7 % 35d
    c2 g:6/d
    a1:9
    d1:7
    g1 % 36a
    s1
    c1
    a2:m7 ais:dim
    g1 % 36b
    c2 g/b
    a1:m7
    d1:7
    g2 e:m7 % 36c
    c2:6 g/d
    a2:7/e
    dis:7.11+
    d1:7
    g2/b e:m7 % 36d
    c2 g:6/d
    a1:9
    d1:7
    g1 % 37a
    g1/b
    c1
    c1/b
    a2:m a:m7% 37b
    ais1:dim
    g1/b
    c1:m6 % 37c
    g2/d e:m7
    a2:m7 a:m7/d
  }
  \alternative {
    {
      g2:6 ais:dim % 37d
      a2:m7 d:13
    }
    {
      g2:6 c/d
      g1
    }
  }
}

melody = \relative c' {
  \global
  r2
  R1*8
  r4 d d d % 34c
  d4 d \times 2/3 {d e d}
  g4. d8 d4. c8
  c4. b8 b4. a8
  g1~ % 35a
  g2 r
  r4 d' d d
  d4 d \times 2/3 {d e d}
  a'4. g8 g4. fis8 % 35b
  fis4. e8 e4. c8
  b1~
  b2. d4
  fis4. e8 e4. d8 % 35c
  d4. c8 c4. a8
  g1~
  g2 b4 c
  \repeat volta 2 {
    d2 g, % 35d
    c2 b
    b1
    a2. b4
    d4 b a g % 36a
    g'2 fis
    e1~
    e2 fis4 g
    d2 b % 36b
    e2 d
    c1~
    c2 cis4 d
    b2 g % 36c
    c2 b
    a1~
    a2 b4 c
    d2 g, % 36d
    c2 b
    b1
    a2. b4
    d4 b a g % 37a
    g'2 fis
    e1~
    e2 fis4 g
    a2 g % 37b
    fis4 g2 e4
    d2 g
    g,2. a4 % 37c
    b4 g b g
    e'2 g,
  }
  \alternative {
    {
      g1~ % 37d
      g2 b4 c
    }
    {
      g1~
      g2. r4
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

% Alternative beginning:
%
% The front page of your paper is bound to make you sad
% Especially if you're the worrying sort
% So turn the front page over where the news is not so bad
% There's consolation in the weather report

words = \lyricmode {
  When I was young my moth- er would watch me
  on the days when it would rain, __
  she'd see me so un- hap- py my
  nose a- gainst the drip- ping win- dow pane __
  and I would hear her sing- ing this re- frain: __
  It's a love- ly day to- mor- row, to- mor- row is a love- ly day, __
  come and feast your tear dimmed eyes __
  on to- mor- row's clear blue skies __
  If to- day your heart is wear- y,
  if ev- 'ry lit- tle thing looks grey, __
  just for- get your trou- bles and learn to say,
  to- mor- row is a love- ly day. __
  It's a day. __
}

midiWords = \lyricmode {
  "When " "I " "was " "young " "my " moth "er "
  "\nwould " "watch " "me " "on " "the " "days "
  "\nwhen " "it " "would " "rain, " 
  "\nshe'd " "see " "me " "so " un hap "py " "my "
  "\nnose " a "gainst " "the " drip "ping " win "dow " "pane " 
  "\nand " "I " "would " "hear " "her " sing "ing " "this " re "frain:\n" 
  "\nIt's " "a " love "ly " "day " to mor "row, "
  "\nto" mor "row " "is " "a " love "ly " "day, " 
  "\ncome " "and " "feast " "your " "tear-" "dimmed " "eyes " 
  "\non " to mor "row's " "clear " "blue " "skies " 
  "\nIf " to "day " "your " "heart " "is " wear "y, "
  "\nif " ev "'ry " lit "tle " "thing " "looks " "grey, " 
  "\njust " for "get " "your " trou "bles " "and " "learn " "to " "say, "
  "\nto" mor "row " "is " "a " love "ly " "day.\n" 
  "\nIt's " "a " love "ly " "day " to mor "row, "
  "\nto" mor "row " "is " "a " love "ly " "day, " 
  "\ncome " "and " "feast " "your " "tear-" "dimmed " "eyes " 
  "\non " to mor "row's " "clear " "blue " "skies " 
  "\nIf " to "day " "your " "heart " "is " wear "y, "
  "\nif " ev "'ry " lit "tle " "thing " "looks " "grey, " 
  "\njust " for "get " "your " trou "bles " "and " "learn " "to " "say, "
  "\nto" mor "row " "is " "a " love "ly " "day. " 
}

pianoRH = \relative c' {
  \global
  <fis fis'>4 <g g'>
  <a c e a>2\arpeggio <g c e g>\arpeggio
  <fis cis' fis>4 <g cis g'>2 <e g b e>4
  <d g d'>2\arpeggio <g d' g>\arpeggio
  s1
  s1 % 34b
  s1
  s1
  s1
  s1 % 34c
  s1
  <b d e g>4. <fis b d>8 q4. <e a c>8
  q4. <d fis b>8 q4. <c e a>8
  s1 % 35a
  s1
  s1
  s1
  <c' fis a>4. <c e g>8 q4. <c d fis>8 % 35b
  q4. <fis, c' e>8 q4. <e fis c'>8
  s1
  s1
  <a c fis>4. <g c e>8 q4. <fis c' d>8 % 35c
  q4. <e fis c'>8 q4. <c fis a>8
  s1
  s1
  \repeat volta 2 {
    s1 % 35d
    s1
    s1
    s1
    s1 % 36a
    s1
    s1
    s1
    s1 % 36b
    s1
    s1
    s1
    s1 % 36c
    s1
    s1
    s1
    s1 % 36d
    s1
    s1
    s1
    s1 % 37a
    s1
    s1
    s1
    <a' c e a>2\arpeggio <g c e g>\arpeggio % 37b
    <fis cis' fis>4 <g c g'>2 <e g c e>4
    <d g d'>2\arpeggio <g d' g>\arpeggio
    s1 % 37c
    s1
    s1
  }
  \alternative {
    {
      s1 % 37d
      <e g c d>2 s
    }
    {
      <b d e g>2 <g' c e>
      <g b d g>2.\arpeggio r4
    }
  }
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s2
  s1
  s1
  s1 g2. a4
  b4 g b g % 34b
  e'2 g,
  g4 d' fis g
  <c, d>1
  r4 <b d>4 d d % 34c
  d4 d \times 2/3 {d e d}
  s1
  s1
  g,1~ % 35a
  g2 r
  r4 <b d> d d
  d4 d \times 2/3 {d e d}
  s1 % 35b
  s1
  b1~
  b2. d4
  s1 % 35c
  s1
  g,1~
  g2 b4 c
  \repeat volta 2 {
    d2 g, % 35d
    <e c'>2 <d b'>
    <cis b'>1
    <c a'>2. b'4
    d4 b a g % 36a
    g'2 fis
    e1~
    e2 fis4 g
    d2 b % 36b
    e2 d
    c1~
    c2 cis4 d
    b2 g % 36c
    c2 b
    a1~
    a2 b4 c
    d2 g, % 36d
    <e c'>2 <d b'>
    <cis b'>1
    <c a'>2. b'4
    d4 b a g % 37a
    g'2 fis
    e1~
    e2 s
    s1 % 37b
    s1
    s1
    g,2. a4 % 37c
    b4 g b g
    e'2 g,
  }
  \alternative {
    {
      g4 d' fis g
      s2 b,4 c
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s2
  s1
  s1
  s1
  <a ees'>4 q2.
  <d g>2 q % 34b
  <g c>4 q <a, c e> q
  <b d e>2 <g' cis>
  g4 e fis2
  g2 <fis b> % 34c
  <e g c>2 <fis a c>
  s1
  s1
  <b, d>4 q r <ais cis> % 35a
  r4 <a c e> r <c d fis>
  d2 <g b>
  <fis b>2 <f gis b>
  s1 % 35b
  s1
  <fis a>2 <e g>4 <d fis>
  <d f>2. r4
  s1 % 35c
  s1
  <b d e>2 <a c e>
  <b d>2 fis'
  \repeat volta 2 {
    r4 <d g> e <b d> % 35d
    r4 <g' a> r <e g>
    r4 <e g>2 q4
    r4 <d fis>2 q4
    g1 % 36a
    r4 <g d'> e q
    r4 <g c> r q
    r4 q <g cis>2
    r4 <d g> e q % 36b
    r4 <g c> r <e g>
    r4 <e g>2 q4
    r4 <d fis> r2
    r4 <d g> r <b d> % 36c
    r4 <e a> r <d g>
    r4 <cis g'>2 q4
    r4 <c fis> fis2
    r4 <d g> r <b d> % 36d
    r4 <g' a> r <e g>
    r4 q2 q4
    r4 <d fis>2 q4
    g1 % 37a
    r4 <g d'> r q
    r4 <e g c>2 q4
    r4 q <fis fis'> <g c e g>
    s1 % 37b
    s1
    s1
    <a, ees'>4 q2. % 37c
    <d g>2 q
    <g c>4 q <a, c e> q
  }
  \alternative {
    {
      <b d e>2 <g' cis> % 37d
      s2 fis
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \partial 2
  s2\mf
  s1*24
}

pianoLH = \relative c, {
  \global
  \oneVoice
  r2
  s1
  s1
  s1
  c2 c
  d2 e % 34b
  a,2 <d, d'>
  <g g'>2 ais'
  a2 d,
  <g, g'>2 d' % 34c
  <a a'>2 d
  s1
  s1
  s1 % 35a
  g2 a
  <g, g'>2 d'
  <g, g'>2 d'
  s1 % 35b
  s1
  s1
  s2. r4
  s1 % 35c
  s1
  s1
  g2 d4 c
  \repeat volta 2 {
    b2 e % 35d
    c2 d
    a'4 r a r
    d4 r d, r
    <g d' b'>1\arpeggio % 36a
    b4 r b r
    c2 b
    a2 ais
    b,2 g' % 36b
    c2 b
    a1
    d,2 r
    g2 e % 36c
    c2 d
    e2 ees
    d2 d4 c
    b2 e % 36d
    c2 d
    a'4 r a r
    d4 r d, r
    <g d' b'>1\arpeggio % 37a
    b4 r b r
    c,1
    b1
    s1 % 37b
    s1
    s1
    c2 c % 37c
    d2 e
    a,2 <d, d'>
  }
  \alternative {
    {
      <g g'>2 ais' % 37d
      a2 d,4 c
    }
    {
      <g g'>2 d'
      <g, d' b'>2.\arpeggio r4
    }
  }
  \bar "|."
}

pianoLHone = \relative c {
  \global
  \voiceOne
  s2
  r4 a2 a4
  r4 g2 g4
  r4 g2 g4
  s1
  s1 % 34b
  s1
  s1
  s1
  s1 % 34c
  s1
  r4 d'2 d4
  r4 d2 d4
  d,2 e % 35a
  s1
  s1
  s1
  r4 d'2 d4 % 35b
  r4 d2 d4
  r4 d2 d4
  r4 d b' s
  r4 d,2 d4 % 35c
  r4 d2 d4
  r4 d2 d4
  s1
  \repeat volta 2 {
    s1 % 35d
    s1
    s1
    s1
    s1 % 36a
    s1
    s1
    s1
    s1 % 36b
    s1
    s1
    s1
    s1 % 36c
    s1
    s1
    s1
    s1 % 36d
    s1
    s1
    s1
    s1 % 37a
    s1
    s1
    s1
    r4 a2 a4 % 37b
    r4g2 g4
    r4 g2 g4
    s1 % 37c
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

pianoLHtwo = \relative c, {
  \global
  \voiceTwo
  s2
  a1
  ais1
  b1
  s1
  s1 % 34b
  s1
  s1
  s1
  s1 % 34c
  s1
  g'1
  d1
  g,1 % 35a
  s1
  s1
  s1
  d'1 % 35b
  d1
  g1
  gis2. s4
  a1 % 35c
  d,1
  g1
  s1
  \repeat volta 2 {
    s1 % 35d
    s1
    s1
    s1
    s1 % 36a
    s1
    s1
    s1
    s1 % 36b
    s1
    s1
    s1
    s1 % 36c
    s1
    s1
    s1
    s1 % 36d
    s1
    s1
    s1
    s1 % 37a
    s1
    s1
    s1
    a,1 % 37b
    ais1
    b1
    s1 % 37c
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
      s1
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
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
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \words }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
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
}

\book {
  #(define output-suffix "midi")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "mp3")
  \score {
    \articulate
    \context GrandStaff
    <<
%      <<
%        \new ChordNames { \unfoldRepeats \ChordTrack }
%        \new FretBoards { \unfoldRepeats \ChordTrack }
%      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
