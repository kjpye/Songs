\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Can You Lose"
  subtitle    = "(What You Never Had)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ben Weisman"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Sid Wayne"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 2/2
  \partial 2.
}

TempoTrack = {
  \global
  \tempo "Moderately" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "107a" s2. s1*3 s4
  \textMark \markup\box "107b" s2.
  \repeat volta 2 {
    s1*3
  \textMark \markup\box "107c" s1*3
  \textMark \markup\box "108a" s1*3
  \textMark \markup\box "108b" s1*3
  \textMark \markup\box "108c" s1*3
  \textMark \markup\box "108d" s1*3
  \textMark \markup\box "109a" s1*4
  \textMark \markup\box "109b" s1*4
  \textMark \markup\box "109c" s1*4
  \alternative {
    { \textMark \markup\box "109d" s1*2 }
    { s1*2 }
  }
  }
}

ChordTrack = \chordmode {
  s2. | s1*3 | s4
  s2.
  \repeat volta 2 {
    e1:7 a:7 d2 g:7 |d c4:7 b:7 e1:7 a:7 |
    d2 g:7 d d:7 g1 | s fis:m b:7 | e:7 s a2.:7 d4:dim | a4:7 d c:7 b:7 e1:7 a:7 |
    d2 g:7 d c4:7 b:7 e1:7 a:7 | d2 g:7 d d:7 g1 s | fis:m b:7 e:7 a:7 |
    \alternative {
      { d2 g:7 d c4:7 b:7 |}
      { d2 g:7 d1 |}
    }
  }
}

melody = \relative {
  \global
  r2. | R1*3 | r4 \section \break
  fis'4 g a |
  \repeat volta 2 {
    b1 | r4 cis,8 8 b cis4 d8~ | 1 |
    r4 fis g a | b1 | r4 cis,8 8 b cis4 d8~ |
    d1~ | 4 d' \tuplet 3/2 {d d d} | 2. b4 | % 108a
    g2 \tuplet 3/2 {4 a b} | cis2. a4 | fis1 |
    fis4 e dis e | b'2. r8 bis | cis4 b a gis |
    g8 \caesura r8 fis8 8 g4 a | b1 | r4 cis,8 8 b cis4 d8~ |
    d1 | r4 fis g a | b1 | r4 cis, b8 cis4 d8~ | % 109a
    d1~ | 4 d' d d | 2. b4 | g4. 8 \tuplet 3/2 {4 a b} |
    cis2. a4 | fis2 \tuplet 3/2 {4 g a} | b1 | r4 cis,8 8 b cis4 d8~ |
    \alternative {
      { d1 | r4 fis g a |}
      { d,1\repeatTie ~ | 2. r4 |}
    }
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  How can you
  \repeat volta 2 {
    lose what you nev -- er had? __
    I tell my -- self when I’m feel -- in’ sad. __
    You don’t have the right to cry,
    you be -- lieved your own lie.
    It’s your fault be -- cause you thought that she was yours.
    Think it o -- ver once,
    think it o -- ver twice, __
    Wish I could take my own ad -- vice. __
    I know I should be glad, but why does it hurt so bad?
    How can you lose what you nev -- er had? __
    \alternative {
      { How can you }
      { }
    }
  }
}

midiWords = \lyricmode {
  "How " "can " "you "
  \repeat volta 2 {
    "lose " "what " "you " nev "er " "had? " 
    "\nI " "tell " my "self " "when " "I’m " feel "in’ " "sad. " 
    "\nYou " "don’t " "have " "the " "right " "to " "cry, "
    "\nyou " be "lieved " "your " "own " "lie. "
    "\nIt’s " "your " "fault " be "cause " "you " "thought " "that " "she " "was " "yours. "
    "\nThink " "it " o "ver " "once, "
    "\nthink " "it " o "ver " "twice, " 
    "\nWish " "I " "could " "take " "my " "own " ad "vice. " 
    "\nI " "know " "I " "should " "be " "glad, " "but " "why " "does " "it " "hurt " "so " "bad? "
    "\nHow " "can " "you " "lose " "what " "you " nev "er " "had?\n" 
    \alternative {
      { "\nHow " "can " "you " }
      { }
    }
  }
}

pianoRHone = \relative {
  \global
  <a d fis>4 <bes d g> <dis fis a> \section |
  \vo b'1 | a8 b a4 fis8 e4 d8~ | 2 b8 d b4 | \ov <fis a d>4 \section \break
  fis'4 g a |
  \repeat volta 2 {
    \vo b1 | r4 cis,8 8 b cis4 d8~ | 1 |
    r4 fis g a | b1 | r4 cis,8 8 b cis4 d8~ |
    d1~ | 4 d' \tuplet 3/2 {d d d} | 2. b4 | % 108a
    g2 \tuplet 3/2 {4 a b} | cis2. a4 | fis1 |
    fis4 e dis e | b'2. r8 bis | cis4 b a gis |
    g8 \caesura r8 fis8 8 g4 a | b1 | r4 cis,8 8 b cis4 d8~ |
    d1 | r4 fis g a | b1 | r4 cis, b8 cis4 d8~ | % 109a
    d1~ | 4 d' d d | 2. b4 | g4. 8 \tuplet 3/2 {4 a b} |
    cis2. a4 | fis2 \tuplet 3/2 {4 g a} | b1 | r4 cis,8 8 b cis4 d8~ |
    \alternative {
      { d1 | r4 fis g a |}
      { d,2\repeatTie f8 e d4 | \ov <a d fis a>2. r4 |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s2. \section <d' gis>4 q r q | <cis g'>2 <a d>8 <g a>4 <fis a>8~ | 4 4 f2 | s4
  s2. |
  \repeat volta 2 {
    <d' gis>4 4 r q | r4 g,4 4. <fis a>8~ | 4 4 r <f b> |
    <fis a>4 <a d> <bes e> <dis fis> | <d gis> q r q | r g,4 4. <fis a>8~ |
    q4 q r <f b> | <fis a> <d' fis a> <d a' c>2 | <d g b>4 4 r <d g> | % 108a
    <b d>4 4 d2 | <cis fis a>4 4 r <cis fis> | <a dis> q r q |
    <gis d'>2 gis | <d' gis>4 4 r q | <cis g'>2 <a e'>4 <b f'> |
    <a cis>8 r <a d>4 <bes e> <dis fis> | <d gis> q r q | r g,4 4. <fis a>8~ |
    q4 4 r <f b> | <fis a> <a d> <b e> <dis fis> | <d gis> q r q | r g,4 4. <fis a>8~ | % 109a
    q4 q r <f b> | <fis a> <d' fis a> <d g cis> <d a' cis> | <d g b> q r <d g> | <b d> q d2 |
    <cis fis a>4 2 <cis fis>4 | <a dis>4 2. | <d gis>4 4 r q | r g,4 4. <fis a>8~ |
    \alternative {
      { q4 q r <f b> | <fis a> <a d> <bes e> <dis fis> |}
      { <fis, a>4\repeatTie q <f b>2 | s1 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s1*3 | s4 s2.\mf |
}

pianoLHone = \relative {
  \global
  d4 c b \section | e,4. 8 4 r | a,4. 8 b4 cis | d4. 8 g4 4 | d \section
  r4 r2 |
  \repeat volta 2 {
    e4. 8 4 r | a4. 8 e4 a | d,4. 8 g4 r |
    d'4 r c b | e,4. 8 4 r | a4. 8 e4 a |
    d,4. 8 g4 r | d r e fis | g4. 8 d4 r | % 108a
    g4. 8 \tuplet 3/2 {b4 a g} | fis4. 8 4 r | b4. fis8 b a g fis |
    e4 r b' r | e, r b'8 cis b ais | a4 b cis d |
    e8 \caesura r d4 c b | e,4. 8 4 r | a4. 8 e4 a |
    d,4. 8 g4 r | d' r c b | e,4. 8 4 r | a4. 8 e4 a | % 109a
    d,4. 8 g4 r | d r e fis | g4. 8 d4 r | g4. 8 \tuplet 3/2 {b4 a g} |
    fis4. 8 4 r | b4. 8 4 r | e,4. 8 4 r | a4. 8 4 r |
    \alternative {
      {d,4. 8 g4 r | d d' c b |}
      {d,4. 8 g4 r | d a8 d~4 r |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
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
            \addlyrics \words
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice \melody
            \addlyrics \words
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice \melody
            \addlyrics \words
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice \melody
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
