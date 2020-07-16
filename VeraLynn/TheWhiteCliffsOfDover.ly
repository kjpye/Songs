\version "2.21.3"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The White Cliffs of Dover"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Walter Kent and Nat Burton"
%  meter       = "meter"
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
  \tempo 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle "1a" }
  \mark \markup { \box "2a" } s1*3
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "2c" } s1*3
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "3d" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*4
  \repeat volta 2 {
    \mark \markup { \box "4d" } s1*4
    \mark \markup { \box "5a" } s1*3
    \mark \markup { \box "5b" } s1*3
    \mark \markup { \box "5c" } s1*4
  }
  \alternative {
    {
      \mark \markup { \box "5d" } s1*2
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  aes2 f:m
  c2:m f:7
  bes2:m7 bes:m
  ees1:7
}

melody = \relative c' {
  \global
  R1*3
  r2 r4 r8 c8 \bar "||" % 2b
  \times 2/3 {ees4 ees ees} aes4. aes8
  \times 2/3 {g4 ees f} g2
  \times 2/3 {f4 des ees} f4. f8 % 2c
  ees2. c8 d
  ees4 ees g f8 g
  ees4 ees c4. c8 % 3a
  bes4 bes f' ees8 d
  ees2. ees4
  des8 ees f des c4. c8 % 3b
  bes8 c des bes aes4 aes
  aes'1~
  aes4 aes, aes aes % 3c
  bes2 bes
  f'2\fermata c4 ees
  aes2 aes % 3d
  g4 ees2 aes,4
  f'2 f4 f
  ees4 c2 aes4
  des2 des % 4a
  c4 bes aes bes
  c1~
  c4 r c ees
  aes2 aes % 4b
  g4 ees2 aes,4
  f'2 f4 f
  ees4 c2 aes4
  des2 des % 4c
  c4 bes aes bes
  aes1~
  aes2. aes4
  \repeat volta 2 {
    \times 2/3 {f'4 des ees} f f % 4d
    f2. g4
    \times 2/3 {ees4 c des} ees4. ees8
    c2. aes4
    \times 2/3 {f'4 des ees} f f % 5a
    aes2. f8 g
    aes4 g8 aes g4. f8
    bes,2 c4 ees \bar "||" % 5b
    aes2 aes
    g4 ees2 aes,4
    f'2 f4 f % 5c
    ees4 c2 aes4
    des2 des
    c4 bes aes bes
  }
  \alternative {
    {
      aes1~ % 5d
      aes4 r r2
    }
    {
      aes1~
      aes2. r4
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I'll nev- er for- get the peo- ple I met brav- ing those an- gry skies.
  I re- mem- ber well as the sha- dows fell, the light of hope in their eyes.
  And tho' I'm far a- way I still can hear them say "\"Thumbs" "up!\"" __
  For when the dawn comes up:
  There'll be
  blue birds o- ver the white cliffs of Dov- er
  to- mor- row, just you wait and see. __

  There'll be love and laugh- ter and peace ev- er af- ter,
  to- mor- row, when the world is free. __
  The shep- herd will tend his sheep,
  the val- ley will bloom a- gain,
  and Jim- my will go to sleep in his own lit- tle room a- gain.

  There'll be blue- birds o- ver the white cliffs of Do- ver to- mor- row,
  just you wait and see. __

  see. __
}

midiWordsOne = \lyricmode {
  "I'll " nev "er " for "get " "the " peo "ple " "I " "met " brav "ing " "those " an "gry " "skies. "
  "I " re mem "ber " "well " "as " "the " sha "dows " "fell, " "the " "light " "of " "hope " "in " "their " "eyes. "
  "And " "tho' " "I'm " "far " a "way " "I " "still " "can " "hear " "them "
  "say " "\"Thumbs " "up!\"" 
  "For " "when " "the " "dawn " "comes " "up: "
  "There'll " "be "
  "blue " "birds " o "ver " "the " "white " "cliffs " "of " Dov "er "
  to mor "row, " "just " "you " "wait " "and " "see. " 

  "There'll " "be " "love " "and " laugh "ter " "and " "peace " ev "er " af "ter, "
  to mor "row, " "when " "the " "world " "is " "free. " 
  "The " shep "herd " "will " "tend " "his " "sheep, "
  "the " val "ley " "will " "bloom " a "gain, "
  "and " Jim "my " "will " "go " "to " "sleep " "in " "his " "own " lit "tle " "room " a "gain. "

  "There'll " "be " blue "birds " o "ver " "the " "white " "cliffs " "of " Do "ver " to mor "row, "
  "just " "you " "wait " "and " "see. " 
}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  \markup \italic { second time tacet}
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \markup \italic { second time sing }
}

midiWordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  "There'll " "be " blue "birds " o "ver " "the " "white " "cliffs " "of " Do "ver " to mor "row, "
  "just " "you " "wait " "and " "see. " 
}

pianoRH = \relative c'' {
  \global
  s2 <c f aes>
  s1
  s2 <des fes aes c>
  r8 <g, bes ees> <aes des f> <des fes aes c> <des ees g bes>4. c8 \bar "||" % 2a
  s1
  s2 <a ees' g>
  s1 % 2c
  s1
  s1
  <g c ees>4 q <ees g c>4. q8 % 3a
  s1
  s1
  s1 % 3b
  s2 <c f aes>4 q
  <c' f aes>2 \times 2/3 {<aes c f>4 q q}
  <d f c'>4 aes aes aes % 3c
  s1
  <g c f>2\arpeggio\fermata c,4 ees
  <c ees aes>2 q
  <g ees' g>4 <g c ees>2 <ees ges aes>4
  <f f'>2 <f aes f'>4 q
  <ees aes ees'>4 <ees aes c>2 <c ees aes>4
  s1 % 4a
  s1
  <ees aes c>4 <ees aes ees'> <aes c aes'> <ees aes c>
  <f aes des>4 <aes bes f'> <ees g c> <g c ees>
  <c ees aes>2 q % 4b
  <g ees' g>4 <g c ees>2 <ees ges aes>4
  <f f'>2 <f aes f'>4 q
  <ees aes ees'>4 <ees aes c>2 <c ees aes>4
  s1 % 4c
  s1
  <c ees aes>4 q <f aes bes> <aes bes f'>
  s2. <c ges' aes>4
  \repeat volta 2 {
    s1 % 4d
    s2. <f' b g'>4
    s1
    s1
    s2 <c' f>4 <bes f'> % 5a
    <c f aes>2. s4
    s1
    s2 <ees,, g c>4 <g c ees> \bar "||" % 5b
    <c ees aes>2 q
    <g ees' g>4 <g c ees>2 <ees ges aes>4
    <f f'>2 <f aes f'>4 q % 5c
    <ees aes ees'>4 <ees aes c>2 <c ees aes>4
    s1
    s1
  }
  \alternative {
    {
      <c ees aes>2 s % 5d
      <des aes' bes>2 <ees g c>4 <g c ees>
    }
    {
      <c, ees aes>4 <fes aes c> <des fes aes> <fes aes bes>
      <ees aes ees'>2. r4
    }
  }
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  \times 2/3 {ees4 ees ees} s2
  \times 2/3 {g4 ees f} g2
  \times 2/3 {<f aes c>4 <f aes> <g bes>} s2
  s1 \bar "||" % 2b
  \times 2/3 {ees4 ees ees} aes4. aes8
  \times 2/3 {g4 ees f} s2
  \bar "|."
  \times 2/3 {f4 des ees} f4. f8 % 2c
  <c ees>2. c8 d
  ees4 ees g f8 g
  s1 % 3a
  bes,4 bes f' ees8 d
  <des ees>2. ees4
  des8 ees f des c4. c8 % 3b
  bes8 c des bes s2
  s1
  s1 % 3c
  bes2 bes
  s1
  s1 % 3d
  s1
  s1
  s1
  <f, des'>2 q % 4a
  <f aes c>4\arpeggio <g bes> <f aes> <g bes>
  s1
  s1
  s1 % 4b
  s1
  s1
  s1
  <f des'>2 q % 4c
  <f aes c>4\arpeggio <g bes> <f aes> <g bes>
  s1
  ees'4 aes2 s4
  \repeat volta 2 {
    \times 2/3 {f'4 des ees} f f % 4d
    f2. s4
    \times 2/3 {ees c des} ees4. ees8
    c2. aes4
    \times 2/3 {f'4 des ees} s2 % 5a
    s2. f8 g
    aes4 g8 aes g4. f8
    <des, bes'>2 s \bar "||" % 5b
    s1
    s1
    s1 % 5c
    s1
    <f des'>2 q
    <f aes c>4 <g bes> <f aes> <g bes>
  }
  \alternative {
    {
      s2 ees'4 aes % 5d
      s1
    }
    {
      s1
      s1
    }
  }
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  <bes c>2 s
  <g c>2 \times 2/3 {<b f'>4 <bes e> <a ees'>}
  des2 s
  s1 \bar "||" % 2b
  <bes c>2 <aes f'>
  g2 s
  <aes bes>2 <g c> % 2c
  \times 2/3 {bes4 g bes} aes2
  <g c>2 <aes b>
  s1 % 3a
  s1
  s1
  <f aes>2 g4 ees % 3b
  e2 s
  s1
  s1 % 3c
  r4 <des aes'> r q
  s1 \bar "||"
  s1 % 3d
  s1
  s1
  s1
  r4 bes a aes % 4a
  des,2\arpeggio des
  s1
  s1
  s1 % 4b
  s1
  s1
  s1
  r4 bes' a aes % 4c
  des,2\arpeggio des
  s1
  <aes' ees'>2. s4
  \repeat volta 2 {
    f'2 f % 4d
    r4 <f aes>2 s4
    <ees bes'>2 <ees aes>
    <ees g>2 <ees ges>
    f2 s % 5a
    s2. <aes c>4
    q2 q4 ~ <aes d> % 5b
    aes4 f s2 % 5b \bar "||"
    s1
    s1
    s1 % 5c
    s1
    r4 bes a aes
    des,2 des
  }
  \alternative {
    {
      s2 <aes c> % 5d
      s1
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
  s1\mp
  s1*13
  s1\mf % 3b++
  s4 s2.\mp % 3c
  s1*8
  s1\< % 4a++
  s2 s\mf
  s1*8
  \repeat volta 2 {
    s1*14
  }
  \alternative {
    {
      s1*2
    }
    {
      s1*2
    }
  }
}

pianoLH = \relative c, {
  \global
  \oneVoice
  <a ees' c'>2\arpeggio s2
  <c ees'>2 s
  <bes' aes'>2 s
  ees2~ees8 bes, ees, r \bar "||" % 2b
  <aes' ees' c'>2\arpeggio <f c' aes'>\arpeggio
  <c c'>2 <f c'>4 f,
  <bes' f' des'>2\arpeggio <ees, des'> % 2c
  s2 c'
  <c, g' ees'>2\arpeggio <g' d'>
  c4 bes s2 % 3a
  f2 <bes f' d'>\arpeggio
  <ees, bes'>2 ees,4 r
  bes'2 <ees des'> % 3b
  <c g'>2 f4 ees
  d4 d \times 2/3 {d' d d}
  aes'4 r r2 % 3c
  <f, f'>2 <fes fes'>
  s2 r
  aes,4 c c' aes % 3d
  c,4 g' ees' c
  s2. <d, b'>4
  <ees c'>2 f
  bes2 bes, % 4a
  ees'2 ees,
  aes4 c f, f'
  bes,,4 des' <ees, des'>2
  aes,4 ees' c' aes % 4b
  c,4 g' ees' c
  s2. <d, b'>4
  <ees c'>2 f
  bes2 bes, % 4c
  ees'2 ees,
  aes,2 des4 des'
  c2 aes
  \repeat volta 2 {
    s1 % 4d
    <des, bes'>2 <d b'>
    <ees c'>2 s2
    aes,4 ees' c'2
    <des, aes'>2 <bes des'>\arpeggio % 5a
    <f' c' aes'>4\arpeggio g' f e
    <f, ees'>2 <aes, d'>\arpeggio
    ees''2 ees, % 5b \bar "||" % 5b
    aes,4 ees' c' aes
    c,4 g' ees' c
    s2. <d, b'>4
    <ees c'>2 f
    bes2 bes,
    ees'2 ees,
  }
  \alternative {
    {
      aes4 g ges2
      f4 fes ees2
    }
    {
      s1
      s2. r4
    }
  }
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s2 \times 2/3 {aes4 g f}
  s1 s1
  s1 \bar "||" % 2b
  s1
  s1
  s1 % 2c
  aes,,4 ees' s2
  s1
  s2 a2 % 3a
  s1
  s1
  s1 % 3b
  s1
  s1
  s1 % 3c
  s1
  des'2\fermata s
  s1 % 3d
  s1
  aes,4 a bes s
  s1
  s1 % 4a
  s1
  s1
  s1
  s1 % 4b
  s1
  aes4 a bes s
  s1
  s1 % 4c
  s1
  s1
  s1
  \repeat volta 2 {
    aes2 a % 4d
    s1
    s2 c
    s1
    s1 % 5a
    s1
    s1
    s1 \bar "||" % 5b
    s1
    s1
    aes4 a bes s % 5c
    s1
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      aes,4 <bes' des aes'>2.
      <aes ees' c'>2.\arpeggio s4
    }
    }
  \bar "|."
}

pianoLHtwo = \relative c, {
  \global
  \voiceTwo
  s2 <f c'>
  s1 s1
  s1 \bar "||" % 2b
  s1
  s1
  s1 % 2c
  aes,2 s
  s1
  s2 a'4 f, % 3a
  s1
  s1
  s1 % 3b
  s1
  s1
  s1 % 3c
  s1
  \acciaccatura ees'8 ees'4 ees,\fermata s2 \bar "||"
  s1 % 3d
  s1
  des2. s4
  s1
  s1 % 4a
  s1
  s1
  s1
  s1 % 4b
  s1
  des2. s4
  s1
  s1 % 4c
  s1
  s1
  s1
  \repeat volta 2 {
    des1 % 4d
    s1
    s2 aes'4 ees
    s1
    s1 % 5a
    s1
    s1
    s1 \bar "||" % 5b
    s1
    s1
    des2. s4 % 5c
    s1
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      aes1~
      aes2 \ottava #-1 aes,4 s
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          {
            \set Staff.connectArpeggios = ##t
            <<
              \new Voice \pianoRH
              \new Voice \pianoRHone
              \new Voice \pianoRHtwo
            >>
          }
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsTwo }
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWordsOne \midiWordsTwo }
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
