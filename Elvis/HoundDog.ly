\version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hound Dog"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerry Lieber & Mike Stoller"
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
  \key bes \major
  \time 2/2
}

TempoTrack = {
  \global
  \tempo "Medium Bright Rock" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "20a" s1*3 s8
  \textMark \markup\box "20b" s2..
  \repeat volta 2 {
    s1*3
    \textMark \markup\box "20c" s1*4
    \textMark \markup\box "20d" s1*4
    \textMark \markup\box "21a" s1*4
    \textMark \markup\box "21b" s1*4
    \textMark \markup\box "21c" s1*3
    \alternative {
      { \textMark \markup\box "21d" s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
    s1*3 s8
    r2..
  \repeat volta 2 {
    bes1 | s | s |
    s1 | ees:7 | s | bes |
    s1 | f:7 | ees:7 | bes |
    r1 | bes | s | s | % 21a
    s1 | ees:7 | s | bes |
    s1 | f:7 | ees:7 |
    \alternative {
      { bes1 | s | }
      { bes2 ees:7 | bes1 | }
    }
  }
}

melody = \relative {
  \global
  R1*3 | r8 \section \break
  des''8 4 8 8 8 8
  \repeat volta 2 {
    bes2 2~ | 2 des8 8 f, g | bes1 |
    r8 des8 4 8 8 8 8 | bes2 2~ | 2 des8 8 f, g | bes1 |
    r4 des4~8 8 4 | c8 8 8 8 8 8 8 8 | des4 c bes8(c) bes4 | bes1 |
    r4 des8 8 8 8 4 | 4 2. | r4 des4 8 bes8 8 8 | bes1 | % 21a
    r4 des4 8 8 8 8 | 4 2. | r4 des4 8 bes8 8 8 | bes1 |
    r4 des4~8 8 4 | c8 8 8 8 8 8 8 8 | des4 c bes8(c) bes4 |
    \alternative {
      { bes1 | r8 des8 4 8 8 8 8 | }
      { bes1~ | 2. r4 | }
    }
  }
  \bar "|."
}

words = \lyricmode {
  You ain’t no -- thin’ but a
  \repeat volta 2 {
    Hound Dog, __
    cry -- in’ all the time.
    You ain’t no -- thin’ but a Hound Dog, __
    cry -- in’ all the time.
    Well, __ you ain’t nev -- er caught a rab -- bit
    and you ain’t no friend of mine.
    When they said you was high- -- classed,
    well, that was just a lie.
    When they said you was high- -- classed,
    well, that was just a lie.
    Well, __ you ain’t nev -- er caught a rab -- bit
    and you ain’t no friend of    
    \alternative {
      { mine. You ain’t noth -- in’ but a  }
      { mine. __ }
    }
  }
}

midiWords = \lyricmode {
  "You " "ain’t " no "thin’ " "but " "a "
  \repeat volta 2 {
    "\nHound " "Dog, " 
    "\ncry" "in’ " "all " "the " "time. "
    "\nYou " "ain’t " no "thin’ " "but " "a " "Hound " "Dog, " 
    "\ncry" "in’ " "all " "the " "time. "
    "\nWell, "  "you " "ain’t " nev "er " "caught " "a " rab "bit "
    "\nand " "you " "ain’t " "no " "friend " "of " "mine. "
    "\nWhen " "they " "said " "you " "was " high- "classed, "
    "\nwell, " "that " "was " "just " "a " "lie. "
    "\nWhen " "they " "said " "you " "was " high- "classed, "
    "\nwell, " "that " "was " "just " "a " "lie. "
    "\nWell, "  "you " "ain’t " nev "er " "caught " "a " rab "bit "
    "\nand " "you " "ain’t " "no " "friend " "of "    
    \alternative {
      { "mine.\n" "You " "ain’t " noth "in’ " "but " "a "  }
      { "mine. "  }
    }
  }
}

pianoRHone = \relative {
  \global
  <ees' a c>4 4 8 8 8 8 |
  <f g des'>4 <ees g c> <des g bes>8 <ees g c> <d g bes>4 |
  <d f bes>1 |
  r8 \section \break
  <f des'>8 4 8 8 8 8 |
  \repeat volta 2 {
    \vo bes2 2~ | 2 des8 8 f, g | bes1 |
    \ov r8 <f des'>8 4 8 8 8 8 | \vo bes2 2~ | 2 des8 8 f, g | bes1 |
    \ov r4 <f des'>4~8 8 4 | <e a c>8 8 8 8 8 8 8 8 | <f g des'>4 <ees g c> <des g bes>8(<ees g c>) <des g bes>4 | \vo bes'1 |
    \ov r4 <f des'>8 8 8 8 4 | 4 2. | r4 q4 8 <d bes'>8 8 8 | \vo bes'1 | % 21a
    \ov r4 <f des'>4 8 8 8 8 | <f g des'>4 2. | r4 <f g des'>4 8 <des g bes>8 8 8 | \vo bes'1 |
    \ov r4 <f des'>4~8 8 4 | <ees a c>8 8 8 8 8 8 8 8 | <f g des'>4 <ees g c> <des g bes>8 <ees g c> <des g bes>4 |
    \alternative {
      { <d f bes>1 | r8 <f des'>8 4 8 8 8 8 | }
      { <d f bes>2 <des g bes>4 4 | <d f bes>2 <bes' d f bes>4-> r | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1*3 | s8
  s2..
  \repeat volta 2 {
    r4 <bes d f> r q | r q r d | r q r q |
    s1 | r4 <bes des g> r q | r q r des | r <bes d f> r q |
    s1*3 | r4 q r q |
    s1*3 | r4 <bes d f> r q | % 21a
    s1*3 | r4 q r q |
    s1*3 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s | s | s8
  s2..\ff |
  \repeat volta 2 {
    s1*22 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
}

pianoLH = \relative {
  \global
  f,4 r a c | ees, r g bes | bes, d f g8 f | bes8 \section
  r8 r4 r2 |
  \repeat volta 2 {
    bes,4 r d f | bes, r d f | bes, r d f |
    bes,4 r d f | ees r g bes | ees, r g bes | bes, r d f |
    bes,4 r d f | f r a c | ees, r g bes | bes, r d f |
    bes,4 r r2 | bes4 r d f | bes, r d f | bes, r d f | % 21a
    bes,4 r d f | ees r g bes | ees, r g bes | bes, r d f |
    bes,4 r d f | f r a c | ees, r g bes |
    \alternative {
      { bes,4 d f g8 f | bes8 r r4 r2 | }
      { bes,4 f' ees2 | bes'4 f <bes, bes'>-> r | }
    }
  }
  \bar "|."
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
%        \new FretBoards \ChordTrack
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
