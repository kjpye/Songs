\version "2.25.23"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Angel"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sid Tepper & Roy C. Bennett"
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
  \key ees \major
  \time 2/2
  \partial 2
}

TempoTrack = {
  \global
  \tempo Moderately 4=110
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "62a" s2 s1*4
  \repeat volta 2 {
    \textMark \markup\box "62b" s1*4
    \textMark \markup\box "62c" s1*4
    \textMark \markup\box "62d" s1*4
    \textMark \markup\box "63a" s1*4
    \textMark \markup\box "63b" s1*4
    \textMark \markup\box "63c" s1*5
    \textMark \markup\box "63d" s1*4
    \textMark \markup\box "63e" s1
    \alternative {
      { s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s2 s1*4 |
  \repeat volta 2 {
    ees1:maj7 c:m7 ees:maj7 c:m7 | f2.:m f4:m7 bes1:7 ees:maj7 f2:m7 bes:7 | ees1:maj7 c:m7 ees:maj7 c:m7 |
    f2.:m f4:m7 bes1:7 ees bes2:m7 ees:7 | aes1 s ees ees:7 | aes f:7 bes:7 s ees:maj7 | c:m7 ees:maj7 c:m7 f2.:m f4:m7 | bes1:7 
    \alternative {
      { ees1 f2.:m bes4:7 }
      { ees1 s }
    }
  }
}

melody = \relative {
  \global
  r2 | R1*4 \section |
  \repeat volta 2 {
    bes'2 g~ | 4 r4 g8 bes d bes | c2(g)~ | 4 r bes8 g bes g |
    c,2 f~ | 4 8 g bes(g4) f8 | g1 | R |
    bes2 g~ | 4 r g8 bes d bes | c2(g)~ | 4 r bes8 g bes g |
    c,2 f~ | 4 8 g bes g4 c,8 | ees1 | r2 r4 ees | % 63a
    ees'4 c8 d ees c4. | r8 c c d ees ees d c | d(bes4.)~2 | R1 |
    ees4 c8 d ees c4. | r4 c8 d ees d4 cis8 | d1 | R | bes2 g~ |
    g4 r g8 bes d bes | c2(g)~ | 4 r bes8 g bes g | c,2 f~ |
    f4 8 g bes(g4) c,8 |
    \alternative {
      { ees1 | R | }
      { ees1~ | ees\fermata | }
    }
  }
  \bar "|."
}

words = \lyricmode {
  \repeat volta 2 {
    An -- gel, __ with those an -- gel eyes, __
    come and take this earth boy __ up to par -- a -- dise.
    An -- gel, __ may I hold you tight? __
    Nev -- er kissed an an -- gel; __
    let me kiss one to -- night.
    If I said, “I love you,” would I be speak -- ing out of turn? __
    I’m on -- ly hu -- man, but I’m will -- ing to learn.
    An -- gel __ make my wish come true. __
    Let me be in heav -- en __
    here on earth with
    \alternative {
      { you. }
      { you. __ }
    }
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "\nAn" "gel, "  "with " "those " an "gel " "eyes, " 
    "\ncome " "and " "take " "this " "earth " "boy "  "up " "to " par a "dise. "
    "\nAn" "gel, "  "may " "I " "hold " "you " "tight? " 
    "\nNev" "er " "kissed " "an " an "gel; " 
    "\nlet " "me " "kiss " "one " to "night. "
    "\nIf " "I " "said, " "“I " "love " "you,” " "would " "I " "be " speak "ing " "out " "of " "turn? " 
    "\nI’m " on "ly " hu "man, " "but " "I’m " will "ing " "to " "learn. "
    "\nAn" "gel "  "make " "my " "wish " "come " "true. " 
    "\nLet " "me " "be " "in " heav "en " 
    "\nhere " "on " "earth " "with "
    \alternative {
      { "you.\n" }
      { "you. "  }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  bes'8(g bes g | c,2 f~ | 4) 8(g bes g4 c,8 | ees1) | r8 ees(f aes c4 d8 c) \section |
  \repeat volta 2 {
    bes2 g~ | 4 r4 g8 bes d bes | c2(g)~ | 4 r bes8 g bes g |
    c,2 f~ | 4 8 g bes(g4) f8 | g1 | r8 c4(ees8 d4 c) |
    bes2 g~ | 4 r g8 bes d bes | c2(g)~ | 4 r bes8 g bes g |
    c,2 f~ | 4 8 g bes g4 c,8 | ees1 | f8(c'4 8 bes4) ees, | % 63a
    <c' ees>4 <aes c>8 <bes d> <c ees> <aes c>4. | r8 <aes c> q <bes d> <c ees> q <bes d> <aes c> | <bes d>(<g bes>4.)~2~ | 4 <bes' des>8(<aes c> <g bes> <f aes> <ees g> <des f>) |
    <c ees>4 <aes c>8 <bes d> <c ees> <aes c>4. | r4 c8 d ees d4 cis8 | d1~ | 4 <d f>8(<c ees> <bes d>4 <aes c>) | bes2 g~ |
    g4 r g8 bes d bes | c2(g)~ | 4 r bes8 g bes g | c,2 f~ |
    f4 8 g bes(g4) c,8 |
    \alternative {
      { ees1 | r8 e(f aes c4 d8 c) | }
      { ees,1~ | ees2 <g' c f>\arpeggio\fermata | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  r2 | <f aes>2 <aes c>4 <aes ees'> | <aes d>2 4. aes8 | <g bes>1 | c2 <d fis> | \section
  \repeat volta 2 {
    <d g>2 <bes d> | <g bes ees> <ees' g> | <d g> <bes d> | <g bes ees> <c ees> |
    <f, aes>2 <aes c>4 <aes ees'> | <aes d>2 2 | <g bes d>1 | ees'2 <d fis> |
    <d g>2 <bes d> | <g bes ees> <ees' g> | <d g> <bes d> | <g bes ees> <c ees> |
    <f, aes>2 <aes c>4 <aes ees'> | <aes d>2 4. aes8 | <g bes>1 | <des' f>2 2 | % 63a
    r8 ees4.~2 | r4 ees2. | r4 bes8(c d bes4 d8 | des2) r |
    r8 ees4.~2 | <ees a>2 2 | r8 <aes c>4(8 <g bes>4 <fis a> | <f aes>4) r r2 | <d g> <bes d> |
    <g bes ees>2 <ees' g> | <d g> <bes d> | <g bes ees> <c ees> | <f, aes> <aes c>4 <aes ees'> |
    <aes d>2 4. aes8 |
    \alternative {
      { <g bes>1 | c2 <d fis> | }
      { <g, bes>1~ | 2 s | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mp | s1*3 | s1-\markup\italic rit. |
  \repeat volta 2 {
    s1\omit\mp-\markup{\dynamic mp \italic "a tempo"} | s1*29
    \alternative {
      { s1 | s1-\markup\italic rit. }
      { s1-\markup rall. | s1 }
    }
  }
}

pianoLH = \relative {
  \global
  r2 | f,8 c'4 8 f,4 c' | bes2 bes,4 bes' | <<{\vo r8 bes4(d8 c4 bes)} \new Voice {\vt ees,1}>> | \ov <f aes'>2 <bes aes'> \section |
  \repeat volta 2 {
    ees,8 bes'4 8 ees,4 ees' | c,8 g'4 8 c,4 g' | ees8 bes'4 8 ees,4 bes' | c,8 g'4 8 c,4 g' |
    f8 c'4 8 f,4 c' | bes2 bes,4 bes' | <<{\vo r8 bes4(d8 c4 bes)} \new Voice {\vt ees,1}>> \ov | \once\arpeggioParenthesis <f aes'>2\arpeggio <bes aes'> |
    ees,8 bes'4 8 ees,4 bes' | c,8 g'4 8 c,4 g' | ees8 bes'4 8 ees,4 bes' | c,8 g'4 8 c,4 g' |
    f8 c'4 8 f,4 c' | bes2 bes,4 bes' | ees,8 bes'4 8 d4 c | <bes aes'>2 <ees g> | % 63a
    aes,2 ees'4 ees, | aes2 ees'4 aes, | ees r bes' bes, | ees2 ees'8 ees, f g |
    aes2 ees'4 ees, | f2 f'4 f, | bes1 | bes,2 bes'4 bes, | ees8 bes'4 8 ees,4 bes' |
    c,8 g'4 8 c,4 g' | ees8 bes'4 8 ees,4 bes' | c,8 g'4 8 c,4 g' | f8 c'4 8 f,4 c' |
    bes2 bes,4 bes' |
    \alternative {
      { <<{\vo r8 bes4(d8 c4 bes)} \new Voice {\vt ees,1}>> \ov | \once\arpeggioParenthesis <f aes'>2\arpeggio <bes aes'>2 | }
      { <<{\vo r8 bes4(d8 c4 bes) | s2 \rh <ees' bes' d>\arpeggio\fermata_\markup \italic "L.H." | } \new Voice {\vt ees,,1 | ees\fermata | }>> }
    }
  }
}

#(set-global-staff-size 19)

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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
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
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
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
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
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
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
            \new Dynamics \dynamicsPiano
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
