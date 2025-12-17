\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Big Hunk O’ Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Aaron Schroeder & Sid Wyche"
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
  \key g \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \global
  \tempo "Bright Rock" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "78a" s4 s1*3 s2. \section \break
  \textMark \markup\box "78b" s4 s1*3
  \textMark \markup\box "78c" s1*4
  \textMark \markup\box "78d" s1*4 s2 s8 \section
  \textMark \markup\box "79a" s4.
  \repeat volta 2 {
    s1*3
    \textMark \markup\box "79b" s1*3
    \textMark \markup\box "79c" s1*4
    \textMark \markup\box "79d" s1*3
    \alternative {
      {s1 |}
      {s2 s8 \section}
    }
  }
  \textMark \markup\box "80a" s4. s1*4
  \textMark \markup\box "80b" s1*3
  \textMark \markup\box "80c" s1*4
  \textMark \markup\box "80d" s1*5
}

ChordTrack = \chordmode {
  s4 s1*3 s2 s8 \section
  s4. | g1 | s1*3 c1:7 s g | s d2.:7 des4:7 c1:7 g s2 s8 \section
  s4.
  \repeat volta 2 {
    g8 r2.. s1 g8 r2.. | s1 g8 r2.. s1 | c:7 s g s | d2.:7 des4:7 c1:7 g |
    \alternative { {s1} {s2 s8} }
  }
  s4. g4 r2. s1 g8 r2.. s1 | g4 r2. g4 r2. g8 r4. g4 r | g1 c:7 s g | s d2.:7 des4:7 c1:7 g2 c:7 g1 |
}

melodyA = \relative {
  r4 | R1*3 | r2 r4 \section
  d''4 | 8 4. r2 | r8 d d d~d c bes g | g2 r |
  e'8 e d d bes8 8 8 8 | g4(a) g2 | r8 d' d d~d c bes g | g2 r |
  r2 r4 e8 g | a a fis8 8 d d cis8 8 | c2. g'4 | g1~ | 2 r8 \section
  bes8 8 g | % 79a
}

melodyB = \relative {
  \tag #'dash {bes'8 8 \slurDashed 8(g) \slurSolid bes8 8 r4 |}
  \tag #'v1   {bes8  8             8 g             bes8 8 r4 |}
  \tag #'v2   {bes8  8             8(g)            bes8 8 r4 |}
  \tag #'dash {r2 r8 \slurDashed g(g) \slurSolid g  |}
  \tag #'v1   {r2 r8             g g             g  |}
  \tag #'v2   {r2 r8             g4              g8 |}
  d' g, a bes g r r4 |
  r2 r4 r8 g | bes g bes g bes g bes g | e' e d d bes8 8 8 8 | % 79b
  g4(a) g2 | r8 d' d d~d c bes g | g2 r | r2 r4 e8 g |
  a8 a fis8 8 d d cis8 8 | c2. g'4 | g1~ |
}

melodyC = \relative {g'2 r8 bes8 8 g |}
melodyD = \relative {g'2\repeatTie r8 \section}

melodyE = \relative {
  bes'8 8 g | bes4 4 4 g | bes8 8 r4 r8 g g g | d' g, bes4 4 g | bes8 r r4 r8 g g g | % 80a
  bes4 g8 bes~8 g g g | bes4 g8 bes~4 g8 g | e' e d4 bes4 4 |
  bes8 8 8 8 8 8 8 8 | g4(a) g2 | r8 d' d d~d c bes g | g2 r |
  r2 r4 e8 g | a a fis8 8 d d cis8 8 | c2. g'4 | g1~ | 2. r4 |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative {\melodyC \melodyD}
  }
  \melodyE
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \melodyE
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Hey, ba -- by!
  I ain’t ask -- in’ much of you.
  No no no no no no no no, ba -- by,
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __
  Don’t be a % 79a
  \repeat volta 2 {
    stin -- gy \nom lit -- tle \yesm ma -- ma;
    \nom You ’bout \yesm to starve me half to death.
    Now you could spare a kiss or two and still have plen -- ty left.
    Oh, no, no, ba -- by.
    I ain’t ask -- in’ much of you.
    Just a big -- a big -- a big -- a hunk o’ love will do. __
    \alternative { {\set stanza = "2." You’re just a} {""} }
  }
  \set stanza = "3."
  I got a wish -- bone in my pock -- et. % 80a
  I got a rab -- bit’s foot ’round my wrist.
  And I’d have ev -- ’ry -- thing my luck -- y charms could bring __
  if you gim -- me just one sweet kiss,
  oh, no no no no no no, ba -- by.
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __
}

wordsTwo = \lyricmode {
  \repeat unfold 43 \skip 1
  nat -- ’ral born bee -- hive.
  Filled __ with hon -- ey to the top.
  But I ain’t greed -- y, ba -- by,
  all I want is all you got.
}

wordsSingle = \lyricmode {
  Hey, ba -- by!
  I ain’t ask -- in’ much of you.
  No no no no no no no no, ba -- by,
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __
  Don’t be a stin -- gy lit -- tle ma -- ma; % 79a
  You ’bout to starve me half to death.
  Now you could spare a kiss or two and still have plen -- ty left.
  Oh, no, no, ba -- by.
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __

  \set stanza = "2."
  You’re just a nat -- ’ral born bee -- hive.
  Filled __ with hon -- ey to the top.
  But I ain’t greed -- y, ba -- by,
  all I want is all you got.
  Oh, no, no, ba -- by.
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __

  \set stanza = "3."
  I got a wish -- bone in my pock -- et. % 80a
  I got a rab -- bit’s foot ’round my wrist.
  And I’d have ev -- ’ry -- thing my luck -- y charms could bring __
  if you gim -- me just one sweet kiss,
  oh, no no no no no no, ba -- by.
  I ain’t ask -- in’ much of you.
  Just a big -- a big -- a big -- a hunk o’ love will do. __
}

midiWords = \lyricmode {
  "Hey, " ba "by! "
  "\nI " "ain’t " ask "in’ " "much " "of " "you. "
  "\nNo " "no " "no " "no " "no " "no " "no " "no, " ba "by, "
  "\nI " "ain’t " ask "in’ " "much " "of " "you. "
  "\nJust " "a " big "a " big "a " big "a " "hunk " "o’ " "love " "will " "do. " 
  "\nDon’t " "be " "a " stin "gy " lit "tle " ma "ma; " % 79a
  "\nYou " "’bout " "to " "starve " "me " "half " "to " "death. "
  "\nNow " "you " "could " "spare " "a " "kiss " "or " "two " "and " "still " "have " plen "ty " "left. "
  "\nOh, " "no, " "no, " ba "by. "
  "\nI " "ain’t " ask "in’ " "much " "of " "you. "
  "\nJust " "a " big "a " big "a " big "a " "hunk " "o’ " "love " "will " "do. " 

  \set stanza = "2."
  "\nYou’re " "just " "a " nat "’ral " "born " bee "hive. "
  "\nFilled "  "with " hon "ey " "to " "the " "top. "
  "\nBut " "I " "ain’t " greed "y, " ba "by, "
  "\nall " "I " "want " "is " "all " "you " "got. "
  "\nOh, " "no, " "no, " ba "by. "
  "\nI " "ain’t " ask "in’ " "much " "of " "you. "
  "\nJust " "a " big "a " big "a " big "a " "hunk " "o’ " "love " "will " "do. " 

  \set stanza = "3."
  "\nI " "got " "a " wish "bone " "in " "my " pock "et. " % 80a
  "\nI " "got " "a " rab "bit’s " "foot " "’round " "my " "wrist. "
  "\nAnd " "I’d " "have " ev ’ry "thing " "my " luck "y " "charms " "could " "bring " 
  "\nif " "you " gim "me " "just " "one " "sweet " "kiss, "
  "\noh, " "no " "no " "no " "no " "no " "no, " ba "by. "
  "\nI " "ain’t " ask "in’ " "much " "of " "you. "
  "\nJust " "a " big "a " big "a " big "a " "hunk " "o’ " "love " "will " "do. " 
}

pianoRHone = \relative {
  \global \vo
  e'8 g | a a fis8 8 d d cis8 8 | \ov <e, bes' c>2. <bes' e g>4 |
  <b d g>1~ | 2 r4 \section
  d'4 | <d, g b d>8 4.~2 | r8 <g b d>8 8 8~8 <e a c> <d g bes> <b d g> | q1 | % 78b
  <g' b e>8 q <g b d>8 q <d g bes> q q q | <bes e g>4 <c e a> <b e g>2 | % 78c
  r8 <e bes' d>8 8 8~8 <e c'> <d bes'> <bes g'> | <b d g>1 |
  <b' d g>8 4. r4 <g, b d>8 <b d g> | \vo a'8 a fis8 8 d d cis8 8 | % 78d
  \ov <e, bes' c>2. <bes' e g>4 | <b d g>1~ | 2 r8 \section
  \vo bes'8 8 g | % 79a
  \repeat volta 2 {
    bes8 8 8 g bes8 8 r4 | \ov r2 r8 g g g \vo | d' g, a bes g r r4 |
    \ov r2 r4 r8 g \vo | bes g bes g bes g bes g | \ov e' e d d bes8 8 8 8 |
    <bes, e g>4 <c e a> <bes e g>2 | r8 <e bes' d> q q~q <e c'> <d bes'> <bes g'> | % 79c
    <b d g>1 | <b' d g>8 4. r4 <g, b e>8 <b d g> | \vo
    a'8 a fis8 8 d d cis8 8 | \ov <e, bes' c>2. <bes' e g>4 | <b d g>1~
    \alternative {
      {q2 r8 bes'8 8 g |}
      {q2\repeatTie r8 \section}
    }
  }
  bes8 8 g | bes4 4 4 g | bes8 8 r4 r8 g g g | \vo d' g, bes4 4 g | \ov bes8 r r4 r8 g g g | % 80a
  \vo bes4 g8 bes~8 g g g | bes4 g8 bes~4 g8 g | e' e d4 bes4 4 |
  bes8 8 8 8 8 8 8 8 | \ov <bes, e g>4 <c e a> <bes e g>2 | % 80c
  r8 <e bes' d>8 8 8~8 <e c'> <d bes'> <bes g'> | <b d g>1 |
  <b' d g>8 4. r4 <g, b e>8 <b d g> | \vo a'8 8 fis8 8 d d cis8 8 | % 80d
  \ov <e, bes' c>2. <bes' e g>4 | <b d g>2 <g' bes e>4 4 | <g b d g>2 4 r |
}

pianoRHtwo = \relative {
  \global \vt
  r4 | <c' fis> <a c> <fis c'> f | s1*2 | s2 s4 \section
  s4 | s1*3 |
  s1*4 |
  s1 | <c' fis>4 <a c> <fis c'> f | s1*2 | s2 s8
  r8 r4 | % 79a
  \repeat volta 2 {
    <d' g>8 r r4 r2 | s1 | <d g b>8 r r4 r2 |
    s1 | <d g>8 r r4 r2 | s1 |
    s1*4 |
    <c fis>4 <a c> <fis c'> f | s1*2 |
    \alternative {
      {s1 |}
      {s2 s8}
    }
  }
  r8 r4 | <d' g> r r2 | s1 | <d g b>8 r r4 r2 | s1 | % 80a
  <d g>4 r r2 | q4 r r2 | <g b>8 r r4 <d g>4 r |
  q8 r r4 r2 | s1*3 |
  s1 | <c fis>4 <a c> <fis c'> f | s1*3 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f s1*3 s2. s4 | s1*11 | s2 s8
  s4. |
  \repeat volta 2 {
    s1*13
    \alternative { {s1} {s2 s8} }
  }
  s4. s1*16 |
}

pianoLH = \relative {
  \global
  r4 | d, d' a aes | g e8 g c,4 c' | g b d e8 d | g4 e8 d g,4 \section
  r4 | g b d e8 d | g4 e d d, | g b d e8 d |
  g4 d e d | c c, e g | c g e c | g' b d e8 d |
  g4 d e d | d, d' a aes | g e8 g c,4 c' | g b d e | g d8 g,~8 \section
  r8 r4 | % 70a
  \repeat volta 2 {
    g8 r r4 r8 g bes c | cis d c bes g r r4 | g8 r r4 r8 g bes c |
    cis8 d c bes g d' g, r | g r r4 r2 | r g8 f e d |
    c4 e g a8 g | c4 g e c | g' b d e8 d | g4 d e d |
    d,4 d' a aes | g e8 g c,4 c' | g b d e |
    \alternative {
      {g4 d8 g,~g r r4 |}
      {g'4 d8 g,~g \section}
    }
  }
  r8 r4 g r r2 | r8 g bes b g r r4 | g8 r r4 r2 | r8 g bes b g r r4 | % 80a
  g4 r r2 | g4 r r2 | g8 r r4 g4 r |
  g8 r r4 g8 f e d | c4 e g a8 g | c4 g e c | g' b d e8 d |
  g4 d e d | d, d' a aes | g e8 g c,4 c' | g d' c c | g' d <g, g'> r |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
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
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melodySingle
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
