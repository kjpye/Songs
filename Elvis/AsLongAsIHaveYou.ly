\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "As Long as I Have You"
%  subtitle    = "subtitle"
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

  poet        = "Fred Wise"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
  \partial 8
}

TempoTrack = {
  \global
  \tempo Slowly 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "72a" s8 s1*2 s2.
  \textMark \markup\box "72b" s4
  \repeat volta 2 {
    s1*2
    \textMark \markup\box "72c" s1*3
    \textMark \markup\box "72d" s1*3
    \textMark \markup\box "73a" s1*3
    \textMark \markup\box "73b" s1*3
    \textMark \markup\box "73c" s1
    \alternative {
      {s1*2}
      {\textMark \markup\box "73d" s1*4}
    }
  }
}

ChordTrack = \chordmode {
  s8 | s1*3 |
  \repeat volta 2 {
    f2 d:m bes c:7 | g:m7 c:7 f1 s2 d:m | bes c:7 g:m7 c:7 f f:7 |
    bes2 a4.:m d8:m cis2:dim d:m d:m7 g:7 | c1:7 f2 d:m bes c:7 | g:m7 c:7
    \alternative { {f1*2} {f1*4} }
  }
}

melody = \relative {
  \global
  r8 | R1*2 | r2. 
  \tuplet 3/2 {r8 f' g} |
  \repeat volta 2 {
    a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} | d4~\tuplet 3/2 {8 8 c} d4. c8 |
    g'4. 8 a4. 8 | f2. \tuplet 3/2 {r8 f g} | a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} |d4~\tuplet 3/2 {8 8 c} d4. c8 | g'4. 8 a4. 8 | c2. f,4 |
    d'4~\tuplet 3/2 {8 8 8} c a4 f8 | bes4. 8 a4. g8 | f4. g8 a g4 f8 | % 73a
    e4. f8 g4 \tuplet 3/2 {r8 f g} | a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} d4~\tuplet 3/2 {8 8 d} d4. c8 |
    g'4. 8 a4. 8 |
    \alternative {
      {f1 | r2 r4 \tuplet 3/2 {r8 f g} |}
      {f1~ | 1 | R | R\fermata |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  Let the
  \repeat volta 2 {
    stars __ fade and fall __
    and I won’t __ care at all
    As long as I have you.
    Ev -- ’ry kiss __ brings a thrill __
    amd I know __ that it will
    As long as I have you.
    Let’s think __ of the fu -- ture,
    for -- get the past. % 73a
    You’re not my first love
    but you’re my last.
    Take the love __ that I bring,
    ’cause I’ll have __ ev -- ’ry -- thing
    As long as I have
    \alternative {
      { you. Let the }
      { you. __ }
    }
  }
}

midiWords = \lyricmode {
  "Let " "the "
  \repeat volta 2 {
    "stars "  "fade " "and " "fall " 
    "\nand " "I " "won’t "  "care " "at " "all "
    "\nAs " "long " "as " "I " "have " "you. "
    "\nEv" "’ry " "kiss "  "brings " "a " "thrill " 
    "\namd " "I " "know "  "that " "it " "will "
    "\nAs " "long " "as " "I " "have " "you. "
    "\nLet’s " "think "  "of " "the " fu "ture, "
    "\nfor" "get " "the " "past. " % 73a
    "\nYou’re " "not " "my " "first " "love "
    "\nbut " "you’re " "my " "last. "
    "\nTake " "the " "love "  "that " "I " "bring, "
    "\n’cause " "I’ll " "have "  ev ’ry "thing "
    "\nAs " "long " "as " "I " "have "
    \alternative {
      { "you.\n" "\nLet " "the " }
      { "you. "  }
    }
  }
}

pianoRHone = \relative {
  \global
  c'8^\( | \vo g'4. 8 a4. 8 | f1\) | \ov r4 <c f a c>4--\arpeggio <d f a d>--\arpeggio \break \bar "|"
  \vo \tuplet 3/2 {r8 f g} |
  \repeat volta 2 {
    a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} | d4~\tuplet 3/2 {8 8 c} d4. c8 |
    g'4. 8 a4. 8 | f4 c'\arpeggio(d\arpeggio) \tuplet 3/2 {r8 f, g} | a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} |d4~\tuplet 3/2 {8 8 c} d4. c8 | g'4. 8 a4. 8 | c2.\arpeggio f,4 |
    d'4~\tuplet 3/2 {8 8 8} c a4 f8 | bes4. 8 <d, f a>4. <e g>8 | <d f>4. <e g>8 <f a> <e g>4 <d f>8 | % 73a
    e4. f8 g4~ \tuplet 3/2 {g8 f g} | a4~\tuplet 3/2 {8 g f} d4~\tuplet 3/2 {8 8 c} d4~\tuplet 3/2 {8 8 d} d4. c8 |
    g'4. 8 a4. 8 |
    \alternative {
      {f1 | \ov r4 <c f a c>4\arpeggio <d f a d>\arpeggio \tuplet 3/2 {r8 f g} |}
      {\vo f1 | \ov r4 <c f a c>\arpeggio r <d f a d>\arpeggio | r4 <c f a c>\arpeggio r <d f a d>\arpeggio | <f a f'>1\fermata\arpeggio |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s8 | r4 <b d f>-- r <b e>-- | r <a c>-- r <a d>-- | s2.
  r4 |
  \repeat volta 2 {
    r4 <a c> r <f a> | r <f bes> r q |
    r4 <bes d f> r <bes e> | <a c> <c f a>\arpeggio <d f a>\arpeggio r | % 72c
    r4 <a c> r <f a> |
    r4 <f bes> r q | r <bes d f> r <bes e> | <c f a>2.\arpeggio <a ees'>4 |
    <d f bes>2 <c e>4. <a d>8 | r4 <bes e g> a2 | r4 <a c> b2 | % 73a
    r4 <g bes> <bes c> r | r <a c> r <f a> | r <f bes> r q |
    r4 <bes d f> r <bes e> |
    \alternative {
      {r4 <a c> r <a d> | s1 |}
      {r4 <a c> r <a d> | s1*3 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\mp | s1*2 | s2.
  s4\mp |
  \repeat volta 2 {
    s1*7 s2. s4\< |
    s1\! | s1*6 |
    \alternative {
      {s1*2}
      {s1*4}
    }
  }
}

pianoLH = \relative {
  \global
  r8 | g,2 <c, c'> | <f c'> <f d'> | <f c'> <f d'>4
  c4 |
  \repeat volta 2 {
    f2 d | <bes bes'> <c c'> |
    g'2 q | f2. c4 | f2 d | % 72c
    <bes bes'>2 <c c'> | g' q | f4 c' d c |
    <<{\vo r4 f r e8 d} % 73a
      \new Voice {\vt bes2 a4. d,8}>> \ov
    <cis cis'>2 <d d'>4 a' | d2 g4 g, |
    c4. d8 e4 c, | f2 d | <bes bes'> <c c'> | % 73b
    g'2 q |
    \alternative {
      {<f c'>2 <f d'> | <f c'> <f d'>4 c |}
      {<f c'>2 <f d'> | <f c'> <f d'> | <f c'> <f d'> | <f c' a'>1\fermata\arpeggio}
    }
  }
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
          \set PianoStaff.connectArpeggios = ##t
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
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
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
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
