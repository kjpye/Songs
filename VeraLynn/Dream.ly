\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dream"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Johnny Mercer"
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
  \key f \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo \markup \bold \upright {slowly, with expression} 4=80
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "23a" } s1*4
  \repeat volta 2 {
    \mark \markup { \box "23b" } s1*4
    \mark \markup { \box "23c" } s1*4
    \mark \markup { \box "24a" } s1*4
    \mark \markup { \box "24b" } s1*4
    \mark \markup { \box "24c" } s1*4
    \mark \markup { \box "24d" } s1*4
    \mark \markup { \box "25a" } s1*3
    \mark \markup { \box "25b" } s1*3
  }
  \alternative {
    {
      \mark \markup { \box "25c" } s1*2
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  d1:m/a
  d1:m/gis
  d1:m/g
  c1
  \repeat volta 2 {
    f1:6 % 23b
    s1
    e1:7/b
    e1:7
    f1:6 % 23c
    s2 a:m7
    d1:7
    s1
    bes1 % 24a
    s2 bes:m
    f2 c4:aug f:maj7
    s1
    g2:7 g4:dim7 g:9 % 24b
    s2. g4:13
    g4:m7 c:7 g2:m7
    s2 c:7.9-
    f1:6 % 24c
    s1
    e1:7/b
    e1:7
    f1:6 % 24d
    s2 a:m7
    d1:7
    s1
    b1:6 % 25a
    s2 bes:m
    f2 e4:7 a:7
    s2 d:m7 % 25b
    g1:m7
    c:7.9-
  }
  \alternative {
    {
      f2 c:13sus4.9- % 25c
      c2:7sus4 c:7.9-
    }
    {
      f2 c:7.9-sus4
      f:6.9
    }
  }
}

melody = \relative {
  \global
  R1*4
  \repeat volta 2 {
    f'1~^\markup \italic {2nd time tacet} % 23b
    f4 g8 f g4 f
    e1~
    e1
    d1 % 23c
    r4 e8 d e4 d
    c1~
    c1
    bes1 % 24a
    r4 c8 bes c4 bes
    a4 c d e~
    e1
    b4 d e f~ % 24b
    f2. e4
    d4 e f g~
    g2 r
    f1 % 24c
    r4 g8 f g4 f
    e1~
    e2 r
    d1 % 24d
    r4 e8 d e4 d
    c1~
    c2 r
    bes1~^\markup \italic {sing both times} % 25a
    bes4 c8 bes c4 bes
    a4 c d e~
    e4 r f2 % 25b
    g1
    a1
  }
  \alternative {
    {
      f1~ % 25c
      f4 r r2
    }
    {
      f1~
      f2. r4
    }
  }
  \bar "|."
}

melodySingle = \relative {
  \global
  R1*4
  f'1~ % 23b
  f4 g8 f g4 f
  e1~
  e1
  d1 % 23c
  r4 e8 d e4 d
  c1~
  c1
  bes1 % 24a
  r4 c8 bes c4 bes
  a4 c d e~
  e1
  b4 d e f~ % 24b
  f2. e4
  d4 e f g~
  g2 r
  f1 % 24c
  r4 g8 f g4 f
  e1~
  e2 r
  d1 % 24d
  r4 e8 d e4 d
  c1~
  c2 r
  bes,1~ % 25a
  bes4 c8 bes c4 bes
  a4 c d e~
  e4 r f2 % 25b
  g1
  a1
  f1~ % 25c
  f4 r r2
  R1*24
  bes1~ % 25a
  bes4 c8 bes c4 bes
  a4 c d e~
  e4 r f2 % 25b
  g1
  a1
  f1~
  f2. r4
  \bar "|."
}

wordsRepeat = \lyricmode {
  Dream __ when you're feel -- in' blue, __
  dream that's the thing to do. __
  Just watch the smoke -- rings rise in the air, __
  you'll find your share __ of mem -- o -- ries there. __
  Dream when the day is through, __
  dream and they might come true, __
  things nev -- er are as bad as they seem, __
  so dream, dream, dream. __
  dream. __
}

wordsSingle = \lyricmode {
  Dream __ when you're feel -- in' blue, __
  dream that's the thing to do. __
  Just watch the smoke -- rings rise in the air, __
  you'll find your share __ of mem -- o -- ries there. __
  Dream when the day is through, __
  dream and they might come true, __
  things nev -- er are as bad as they seem, __
  so dream, dream, dream.

  things nev -- er are as bad as they seem, __
  so dream, dream, dream. __
  dream. __
}

midiWords = \lyricmode {
  "Dream "  "when " "you're " feel "in' " "blue, " 
  "\ndream " "that's " "the " "thing " "to " "do. " 
  "\nJust " "watch " "the " smoke "rings " "rise " "in " "the " "air, " 
  "\nyou'll " "find " "your " "share "  "of " mem o "ries " "there. " 
  "\nDream " "when " "the " "day " "is " "through, " 
  "\ndream " "and " "they " "might " "come " "true, " 
  "\nthings " nev "er " "are " "as " "bad " "as " "they " "seem, " 
  "\nso " "dream, " "dream, " "dream. " 

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  "\nthings " nev "er " "are " "as " "bad " "as " "they " "seem, " 
  "\nso " "dream, " "dream, " "dream. " 
}

pianoRH = \relative {
  \global
  <f' d' f>4( <e' g>8 <d f> <e g>4 <d f>)
  r4 <e g>8(<d f> <e g>4 <d f>)
  r4 <e g>8(<d f> <e g>4 <d f>)
  <g, c e>4 <e g c> r8 a e16 c a g \bar "||"
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    f''1~ % 23b
    f4 <e g>8 <d f> <e g>4 <d f>
    e1~
    e1
    d1~ % 23c
    d4 e8 d e4 d
    c1~
    c1
    bes1~ % 24a
    bes4 c8 bes c4 bes
    <c, f a>4 <f a c> <e gis c d> e'~
    e1
    <f, b>4 <f b d> <g bes des e> f'~ % 24b
    f2. <a, b e>4
    <f g bes d>4 s2.
    s1
    f'1~ % 24c
    f4 <e g>8 <d f> <e g>4 <d f>
    e1~
    e1
    d1~ % 24d
    d4 e8 d e4 d
    c1~
    c1
    bes1~ % 25a
    bes4 c8 bes c4 bes
    <c, f a>4 <a' c> <gis d'> <g cis e>~
    q2 <a f'> % 25b
    <f' g>1
    <des e a>1
  }
  \alternative {
    {
      s1 % 25c
      <f, g bes c>2\arpeggio s
    }
    {
      f'4 e8 f c'2
      s2 \oneVoice r
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    r4 <a' c>2 q4~ % 23b
    q4 a2 a4
    r4 gis2 fis8 fisis
    gis1
    r4 <f a>2 q4~ % 23c
    q4 <f c'> <g c>2
    r4 <d fis>2 e8 eis
    fis1
    r4 <d f>2 q4 % 24a
    q4 q <des f>2
    s2. <f a c>4~
    q4 q2 q4
    s2. <a b d>4~ % 24b
    q4 <a b d>2 f4
    s4 <g bes c e> <g bes d f> <bes d f g>~
    q2 <bes des e a>
    r4 <a c>2 q4~ % 24c
    q4 a2 a4
    r4 << {\voiceOne d2.~ \voiceTwo d1} \\ {gis,2 fis8 fisis gis1} >>
    r4 <f a>2 q4~ % 24d
    q4 <f c'> <g c>2
    r4 <d fis>2 e8 eis
    fis1
    r4 <d f>2 q4~ % 25a
    q4 q <des f>2
    s1
    r4 bes'8 a d4 c % 25b
    <bes d>1
    bes2 a
  }
  \alternative {
    {
      <a f'>2 <bes des f a>\arpeggio
      s2 <bes des e g>\arpeggio
    }
    {
      a4 r <des f g>2
      <d g c>2 s
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
}

pianoLH = \relative {
  \global
  \oneVoice
  a,2 a
  gis2 gis
  g2 g
  <c, c'>1
  \repeat volta 2 {
    f2 c % 23b
    f2 c
    b2 b'
    s1
    s1 % 23c
    s1
    d,2 a
    s1
    bes'2 f % 24a
    bes,2 bes'
    f2 c
    f2 c
    g'2 g, % 24b
    g'2 g,
    c2 g
    c4 c'2 c4
    f,2 c % 24c
    f2 c
    b4 b'2.
    s1
    s1 % 24d
    s1
    d,2 a
    s1
    bes'2 f % 25a
    bes,2 bes'
    f2 e
    a2 d % 25b
    s1
    s1
  }
  \alternative {
    {
      <f, c'>4 c'2 c4 % 25c
      g4 c2 c,4
    }
    {
      <f c'>4 r s2
      <f' a>2 f,,4 r
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    s1 % 23b
    s1
    s1
    r4 d c b
    c1~ % 23c
    c2 s
    s1
    r4 c bes a
    s1 % 24a
    s1
    s1
    s1
    s1*4 % 24b
    s1*3 % 24c
    r4 d c b
    c1~ % 24d
    c2 s
    s1
    r4 c bes a
    s1*3 % 25a
    s1 % 25b
    r4 d a'8 aes g4
    r4 c,2 c4
  }
  \alternative {
    {
      s1*2 % 25c
    }
    {
      s2 bes'
      s1
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    s1*3 % 23b
    e,1
    f2 c % 23c
    f2 c
    s1
    d1
    s1*4 % 24a
    s1*4 % 24b
    s1*3 % 24c
    e1
    f2 c % 24d
    f2 c
    s1
    d1 \bar "||"
    s1*3 % 25a
    s1 % 25b
    g1
    c,1
  }
  \alternative {
    {
      s1*2 % 25c
    }
    {
      s2 r4 c
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
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \addlyrics \wordsRepeat
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
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
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
