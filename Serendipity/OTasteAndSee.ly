\version "2.25.15"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Taste and See"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Psalm xxxiv, v. 8"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo "Andante sostenuto" 4=80
  s2.*34
  \set Score.tempoHideNote = ##t
  \tempo 4=40 s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s2.*5
  \textMark \markup { \box "2b" } s2.*7
  \textMark \markup { \box "2c" } s2.*5
  \textMark \markup { \box "3a" } s2.*5
  \textMark \markup { \box "3b" } s2.*6
  \textMark \markup { \box "3c" } s2.*7
}

solo = \relative {
  R2.*3 |
  d''4^\p^\markup\italic "SOLO (or a few Trebles)" b a |
  g2 8(a) |
  b4 d b % 2b
  e4 d2
  e4(d b
  a4) g e
  g2 d4
  e4 g a
  g2. \break |
  R2.*10
  e'4^\p^\markup SOLO (g fis % 3b
  e4) d b
  e2 b4
  a4 g a
  e2.~
  e8 r8 r4 r4
  R2.*7
}

wordsSolo = \lyricmode {
  O taste and see how __ gra -- cious the Lord is:
  blest __ is the man that trust -- eth in him.
  blest __ is the man that trust -- eth in him, __
}

wordsSoloMidi = \lyricmode {
  "O " "taste " "and " "see " "how "  gra "cious " "the " "Lord " "is: "
  "\nblest "  "is " "the " "man " "that " trust "eth " "in " "him. "
  "\nblest "  "is " "the " "man " "that " trust "eth " "in " "him, " 
}

soprano = \relative {
  \global
  R2.*12
  d''4^\p^\markup TREBLE ^\markup\italic FULL b a % 2c
  g2 8(a)
  b4 d b
  e4 d2
  e4(d b
  a4) g e % 3a
  g2 d4
  e4 g a
  g2.~
  g2.~
  g2.~
  g8 r8 r4 r4 % 3b
  R2.
  R2.
  e'4^\p(g fis
  e4) d b
  e4(b) d8(b) % 3c
  a4 g a
  e2 4
  a4(g) a
  e2 g4^\> ~
  g4 a2
  g2.\fermata^\pp
  \bar "|."
}

wordsSop = \lyricmode {
  O taste and see how __ gra -- cious the Lord is:
  blest __ is the man that trust -- eth in him,
  blest __ is the man that trust -- eth in him, __
  the man that trust -- eth in him.
}

wordsSopMidi = \lyricmode {
  "O " "taste " "and " "see " "how "  gra "cious " "the " "Lord " "is: "
  "\nblest "  "is " "the " "man " "that " trust "eth " "in " "him, "
  "\nblest "  "is " "the " "man " "that " trust "eth " "in " "him, " 
  "\nthe " "man " "that " trust "eth " "in " "him. "
}

alto = \relative {
  \global
  R2.*12
  <<R2. \new Voice {s2.^\markup ALTO} >>
  g'4^\p fis e % 2c+
  d4(g) fis
  b2 8 a
  g4 fis(g)
  a4(g e~ % 3a
  e4) d b
  c4(e) fis
  e4 d c
  e2.~
  e2.~ % 3b
  e8 r8 r4 r4
  R2.
  R2.
  g4^\p(b a
  g4) e fis
  g4(a) fis8(d) % 3c
  e4 d c
  e4(d) c
  e4(d) c
  b4(c) d^\> (
  e4) fis(e)
  d2.\fermata^\pp
  \bar "|."
}

wordsAlto = \lyricmode {
  O taste and see __ how gra -- cious the Lord is: __
  blest __ is the man __ that trust -- eth in him, __
  blest __ is the man __ that trust -- eth in him, __
  the man __ that trust -- eth __ in __ him.
}

wordsAltoMidi = \lyricmode {
  "O " "taste " "and " "see "  "how " gra "cious " "the " "Lord " "is: " 
  "\nblest "  "is " "the " "man "  "that " trust "eth " "in " "him, " 
  "\nblest "  "is " "the " "man "  "that " trust "eth " "in " "him, " 
  "\nthe " "man "  "that " trust "eth "  "in "  "him. "
}

tenor = \relative {
  \global
  R2.*12
  <<R2. \new Voice {s2.^\markup TENOR} >> % 2c
  R2.
  d'4^\p b a
  g2 8(a)
  b4 a b
  e4 d(c) % 3a
  a4 g fis
  g4(b) a
  e4 g a
  g2.~
  g2.~ % 3b
  g8 r8 r4 r4
  R2.
  R2.
  R2.
  e'4^\p( g fis
  e4) d b % 3c
  e4(b) d8(e)
  c4(b a
  c4 b) a
  g2 b4^\> ~
  b4 c2
  b2.\fermata^\pp
  \bar "|."
}

wordsTenor = \lyricmode {
  O taste and see how __ gra -- cious the Lord is: __
  blest __ is the man __ that trust -- eth in him, __
  blest __ is the man __ that trust -- eth,
  trust -- eth __ in __ him.
}

wordsTenorMidi = \lyricmode {
  "O " "taste " "and " "see " "how "  gra "cious " "the " "Lord " "is: " 
  "\nblest "  "is " "the " "man "  "that " trust "eth " "in " "him, " 
  "\nblest "  "is " "the " "man "  "that " trust "eth, "
  "\ntrust" "eth "  "in "  "him. "
}

bass = \relative {
  \global
  R2.*12
  <<R2. \new Voice {s2.^\markup BASS} >> % 2c
  R2.
  R2.
  g4^\p fis e
  d2 e8(d)
  c4 b d % 3a
  c4 b(a)
  g4 4 c
  b2 a4
  e'4. 8 4
  e2.~ % 3b
  e8 r8 r4 r4
  R2.
  R2.
  R2.
  g4(b a
  g4) fis d % 3c
  g4(e) fis8(g)
  a4 g a
  e2.
  e2 g4^\> ~
  g4 a2
  g2.\fermata^\pp
  \bar "|."
}

wordsBass = \lyricmode {
  O taste and see how __ gra -- cious the Lord is: __
  blest is the man that trust -- eth in him, __
  blest __ is the man __ that trust -- eth in him,
  trust -- eth __ in him.
}

wordsBassMidi = \lyricmode {
  "O " "taste " "and " "see " "how "  gra "cious " "the " "Lord " "is: " 
  "\nblest " "is " "the " "man " "that " trust "eth " "in " "him, " 
  "\nblest "  "is " "the " "man "  "that " trust "eth " "in " "him, "
  "\ntrust" "eth "  "in " "him. "
}

pianoRHone = \relative {
  \global \vo
  s2.*3
  d''4^\markup\italic "(Voice unaccompanied)" b a
  g2 g8 a
  b4 d b % 2b
  e4 d2
  e4 d b
  a4 g e
  g2 d4
  e4 g a
  g2.
  d'4 b a % 2c
  g2 8 a
  b4 d b
  e4 d2
  e4 d b
  a4 g e % 3a
  g2 d4
  e4 g a
  g2.~
  g2.~
  g2.~
  g8 r8 r4 r4 % 3b
  R2.
  R2.
  e'4 g fis
  e4 d b
  e4 b d8 b % 3c
  a4 g a
  e2 4
  a4 g a
  e2 g4 ~
  g4 a2
  g2.\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global \ov
  <g' e'>4(<b g'> <a fis'>
  <g e'>4 <fis g> <e a>
  \vt <d g b>2.~
  q8) r8 r4 r4
  s2.*9
  g4 fis e % 2c+
  d4 g fis
  b2 8 a
  g4 fis g
  a4 g e~ % 3a
  e4 d b
  c4 e fis
  e4 d c
  e2.~
  e2.~ % 3b
  e8 r8 r4 r4
  R2.
  R2.
  g4 b a
  g4 e fis
  g4 a fis8 d % 3c
  e4 d c
  e4 d c
  e4 d c
  b4 c d^\>
  e4 fis e
  d2.\fermata\omit\pp
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.*11
  s2.-\markup\italic "(Voices alone)"
  s2.*19
  s2 s4\>
  s2.
  s2.\pp
}

pianoLHone = \relative {
  \global \vo
  b2 d4
  b2 a4
  <d, b'>2.~
  q8 r r4 r4
  R2.*10
  d'4 b a
  g2 8 a
  b4 a b
  e4 d c % 3a
  a4 g fis
  g4 b a
  e4 g a
  g2.~
  g2.~ % 3b
  g8 r8 r4 r4
  R2.
  R2.
  R2.
  e'4 g fis
  e4 d b % 3c
  e4 b d8 e
  c4 b a
  c4 b a
  g2 b4~
  b4 c2
  b2.\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  e2.~
  e4 d c
  g2.~
  g8 s8 s4 s4
  R2.*11
  g'4 fis e
  d2 e8 d
  c4 b d % 3a
  c4 b a
  g4 4 c
  b2 a4
  e'4. 8 4
  e2.~ % 3b
  e8 r8 r4 r4
  R2.
  R2.
  R2.
  g4 b a
  g4 fis d % 3c
  g4 e fis8 g
  a4 g a
  e2.
  e2 g4~
  g4 a2
  g2.\fermata
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice <<\dynamicsPiano \solo>>
            \new Voice <<\dynamicsPiano \pianoRHone>>
            \new Voice <<\dynamicsPiano \pianoRHtwo>>
            \new Voice <<\dynamicsPiano \pianoLHone>>
            \new Voice <<\dynamicsPiano \pianoLHtwo>>
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice <<\dynamicsPiano \solo>>
            \new Voice <<\dynamicsPiano \pianoRHone>>
            \new Voice <<\dynamicsPiano \pianoRHtwo>>
            \new Voice <<\dynamicsPiano \pianoLHone>>
            \new Voice <<\dynamicsPiano \pianoLHtwo>>
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice <<\dynamicsPiano \solo>>
            \new Voice <<\dynamicsPiano \pianoRHone>>
            \new Voice <<\dynamicsPiano \pianoRHtwo>>
            \new Voice <<\dynamicsPiano \pianoLHone>>
            \new Voice <<\dynamicsPiano \pianoLHtwo>>
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Treble"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice <<\dynamicsPiano \solo>>
            \new Voice <<\dynamicsPiano \pianoRHone>>
            \new Voice <<\dynamicsPiano \pianoRHtwo>>
            \new Voice <<\dynamicsPiano \pianoLHone>>
            \new Voice <<\dynamicsPiano \pianoLHtwo>>
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
