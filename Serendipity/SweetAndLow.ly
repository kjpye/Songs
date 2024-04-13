\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet and Low"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sir J. Barnby"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Lord Tennyson"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 6/8
}

TempoTrack = {
  \tempo Larghetto 8=100
  s2.
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "1a" } s2.*4
  \textMark \markup { \box \bold "1b" } s2.*5
  \textMark \markup { \box \bold "2a" } s2.*5
  \textMark \markup { \box \bold "2b" } s2.*5
  \textMark \markup { \box \bold "2c" } s2.*5
  \textMark \markup { \box \bold "3a" } s2.*3
  \textMark \markup { \box \bold "3b" } s2.*4
  \textMark \markup { \box \bold "3c" } s2.*5
}

dynamicsSop = {
  s2.\pp | s | s | s |
  s8.\< s\> s\< s\> | s4.\< s\sf | s2.\p | s | s\mf |
  s2. | s\pp | s | s | s4.\> s\! | % 2a
  s4.\p s\omit\dim-\markup\italic "dim. e rall." | s2. | s\pp\> | s\! | s\pp |
  s2. | s | s | s | s4\< s8\! s4. |
  s2.\p | s | s\mf | % 3a
  s2. | s\pp | s | s\f |
  s4.\> s\! | s4\p s2\omit\dim-\markup\italic "rall. e dim." | s2. | s\pp\> | s\! |
}

soprano = \relative {
  \global
  e'4 8 a4. | g4 8 c4.  8 b g a4 fis8 | a4.(g4) r8 |
  e4. a | g4 e8 a4.\fermata | d8 b c a4 b8 | a4.(g4) r8 | g b a g(a) g |
  g8(c) a g4. | 8 b a g(a) g | 8(c) fis,\> g4. | c8 8 8 4 b8  a4.(aes) | % 2a
  g4 8 8. a16 g8 | 4 8 8. a16 g8 | c2.~ | 4.~4 r8 | e,4 8 a4. |
  g4 8 c4. | 8 b a g8. 16 fis8 | a4.(g4) r8 | e4. a4 8 | g4 e8 a4.->\fermata |
  d8 b c a8. 16 b8 | a4.(g4) r8 | 8 b a g a g | % 3a
  g8 c a g4. | 8(b) a g(a) g | g c fis,-> g4. | c8 8 8 4 b8 |
  a4.(aes\fermata) | g4 8 8. a16 g8 | 4 8 8. a16 g8 | c2.~ | 4.~4\fermata r8 |
  \bar "|."
}

wordsSop = \lyricmode {
  Sweet and low, sweet and low,
  Wind of the west -- ern sea, __Low, low, breathe and blow,
  Wind of the west -- ern sea, __
  O -- ver the roll -- ing wa -- ters go,
  Come from the dy -- ing moon and blow,
  Blow him a -- gain to me, __
  While my lit -- tle one,
  while my lit -- tle one sleeps. __
  Sleep and rest, sleep and rest,
  Fa -- ther will come to thee soon; __
  Rest, rest on mo -- ther's breast,
  Fa -- ther will come to thee soon __
  Fa -- ther will come to his babe in the nest,
  Sil -- ver sails all out of the west,
  Un -- der the sil -- ver moon. __
  Sleep, my lit -- tle one,
  sleep, my pret -- ty one, sleep. __
}

wordsSopMidi = \lyricmode {
  "Sweet " "and " "low, " "sweet " "and " "low, "
  "\nWind " "of " "the " west "ern " "sea, " "__Low, " "low, " "breathe " "and " "blow, "
  "\nWind " "of " "the " west "ern " "sea, " 
  "\nO" "ver " "the " roll "ing " wa "ters " "go, "
  "\nCome " "from " "the " dy "ing " "moon " "and " "blow, "
  "\nBlow " "him " a "gain " "to " "me, " 
  "\nWhile " "my " lit "tle " "one, "
  "\nwhile " "my " lit "tle " "one " "sleeps. " 
  "\nSleep " "and " "rest, " "sleep " "and " "rest, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon; " 
  "\nRest, " "rest " "on " mo "ther's " "breast, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon " 
  "\nFa" "ther " "will " "come " "to " "his " "babe " "in " "the " "nest, "
  "\nSil" "ver " "sails " "all " "out " "of " "the " "west, "
  "\nUn" "der " "the " sil "ver " "moon. " 
  "\nSleep, " "my " lit "tle " "one, "
  "\nsleep, " "my " pret "ty " "one, " "sleep. " 
}

alto = \relative {
  \global
  e'4 8 dis4. | e4 8 f4. | e8 8 8 d4 8 | 4.~4 r8 |
  e4. dis | e4 8 fis4.\fermata | g8 8 8 4 fis8 | fis4.(g4) r8 | f4. 4 8 |
  e4 dis8 e4. | f4. 4 8 | e4 dis8-> e4. | c8 e a gis4 8 | a4.(c,) | % 2a
  c4 e8 d8. 16 8 | c4 8 f8. 16 8 | e4.(fis | e~4) r8 | 4 8 dis4. |
  e4 8 f4. | e8 8 8 d8. 16 8 | 4.~4 r8 | e4. dis4 8 | e4 8 fis4.->\fermata |
  g8 8 8 8. 16 fis8 | 4.(g4) r8 | f4. 4 8 | % 3a
  e8 8 dis e4. | f4 8 4 8 | e4 dis8-> e4. | c8 e a gis4 8 |
  a4.(c,\fermata) | 4 e8 d8. 16 8 | c4 8 | f8. 16 8 | e4.(f | e4.~4\fermata) r8 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Sweet and low, sweet and low,
  Wind of the west -- ern sea, __Low, low, breathe and blow,
  Wind of the west -- ern sea, __
  O -- ver the wa -- ters go,
  Come from the moon and blow,
  Blow him a -- gain to me, __
  While my lit -- tle one,
  while my lit -- tle one sleeps. __
  Sleep and rest, sleep and rest,
  Fa -- ther will come to thee soon; __
  Rest, rest on mo -- ther's breast,
  Fa -- ther will come to thee soon __
  Fa -- ther will come to his babe,
  Sil -- ver sails out of the west,
  Un -- der the sil -- ver moon. __
  Sleep, my lit -- tle one,
  sleep, my pret -- ty one, sleep. __
}

wordsAltoMidi = \lyricmode {
  "Sweet " "and " "low, " "sweet " "and " "low, "
  "\nWind " "of " "the " west "ern " "sea, " "__Low, " "low, " "breathe " "and " "blow, "
  "\nWind " "of " "the " west "ern " "sea, " 
  "\nO" "ver " "the " wa "ters " "go, "
  "\nCome " "from " "the " "moon " "and " "blow, "
  "\nBlow " "him " a "gain " "to " "me, " 
  "\nWhile " "my " lit "tle " "one, "
  "\nwhile " "my " lit "tle " "one " "sleeps. " 
  "\nSleep " "and " "rest, " "sleep " "and " "rest, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon; " 
  "\nRest, " "rest " "on " mo "ther's " "breast, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon " 
  "\nFa" "ther " "will " "come " "to " "his " "babe, "
  "\nSil" "ver " "sails " "out " "of " "the " "west, "
  "\nUn" "der " "the " sil "ver " "moon. " 
  "\nSleep, " "my " lit "tle " "one, "
  "\nsleep, " "my " pret "ty " "one, " "sleep. " 
}

tenor = \relative {
  \global
  g4 8 fis4. | g4 8 a4. | g8 d' c b4 a8 | c4.(b4) r8 |
  g4. fis | g4 e'8 d4.\fermata | d8 8 c e4 d8 | c4.(b4) r8 | d8 b c d(c) d |
  c4 8 4. | b8 g a b(a) b | c(g) a-> g4. | a8 c e8 4 d8 | c4.(ees\fermata) | % 2a
  e4 c8 b8. 16 8 | c4 8 b8. 16 bes8 | bes4.(a4 aes8 | g4.~4) r8 | 4 8 fis4. |
  g4 8 a4. | g8 d' c b8. 16 a8 | c4.(b4) r8 | g4. fis4 8 | g4 e'8 d4.->\fermata |
  d8 8 c e8. 16 d8 | c4.(b4) r8 | d8 b c d c d | % 3a
  c8 8 8 4. | b8(g) a b(c) b | c g a-> g4. | a8 c e e4 d8 |
  c4.(ees\fermata) | e4 c8 b8. 16 8 | c4 8 b8. 16 bes8 | bes4.(a4 aes8 | g4.~4\fermata) r8 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Sweet and low, sweet and low,
  Wind of the west -- ern sea, __Low, low, breathe and blow,
  Wind of the west -- ern sea, __
  O -- ver the roll -- ing wa -- ters go,
  Come from the dy -- ing moon and blow,
  Blow him a -- gain to me, __
  While my lit -- tle one,
  while my lit -- tle one sleeps. __
  Sleep and rest, sleep and rest,
  Fa -- ther will come to thee soon; __
  Rest, rest on mo -- ther's breast,
  Fa -- ther will come to thee soon __
  Fa -- ther will come to his babe in the nest,
  Sil -- ver sails all out of the west,
  Un -- der the sil -- ver moon. __
  Sleep, my lit -- tle one,
  sleep, my pret -- ty one, sleep. __
}

wordsTenorMidi = \lyricmode {
  "Sweet " "and " "low, " "sweet " "and " "low, "
  "\nWind " "of " "the " west "ern " "sea, " "__Low, " "low, " "breathe " "and " "blow, "
  "\nWind " "of " "the " west "ern " "sea, " 
  "\nO" "ver " "the " roll "ing " wa "ters " "go, "
  "\nCome " "from " "the " dy "ing " "moon " "and " "blow, "
  "\nBlow " "him " a "gain " "to " "me, " 
  "\nWhile " "my " lit "tle " "one, "
  "\nwhile " "my " lit "tle " "one " "sleeps. " 
  "\nSleep " "and " "rest, " "sleep " "and " "rest, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon; " 
  "\nRest, " "rest " "on " mo "ther's " "breast, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon " 
  "\nFa" "ther " "will " "come " "to " "his " "babe " "in " "the " "nest, "
  "\nSil" "ver " "sails " "all " "out " "of " "the " "west, "
  "\nUn" "der " "the " sil "ver " "moon. " 
  "\nSleep, " "my " lit "tle " "one, "
  "\nsleep, " "my " pret "ty " "one, " "sleep. " 
}

bass = \relative {
  \global
  c4 8 4. | 4 8 4. | 8 8 8 d4 8 | g4.~4 r8 |
  c,4. c | c4 8 c'4.\fermata | b8 g e c4 d8 | g4.~4 r8 | b8 g a b(a) b |
  c8(e,) fis g4. | g,4. 4 8 | c4 8\> 4. | a8 8 c e4 8 | f4.(fis\fermata) | % 2a
  g4 8 f8. 16 8 | e4 ees8 d8. 16 des8 | c2.~ | 4.~4 r8 | 4 8 4. |
  c4 8 4. | 8 8 8 d8. 16 8 | g4.~4 r8 | c,4. 4 8 | 4 8 c'4.->\fermata |
  b8 g e c8. 16 d8 | g4.~4 r8 | b8 g a b a b | % 3a
  c8 e, fis g4. | g,4 8 4 8 | c4 8-> 4. | a8 8 c e4 8 |
  f4.(fis\fermata) | g4 8 f8. 16 8 | e4 ees8 d8. 16 des8 | c2.~ | 4.~4\fermata r8 |
  \bar "|."
}

wordsBass = \lyricmode {
  Sweet and low, sweet and low,
  Wind of the west -- ern sea, __Low, low, breathe and blow,
  Wind of the west -- ern sea, __
  O -- ver the roll -- ing wa -- ters go,
  Come from the moon and blow,
  Blow him a -- gain to me, __
  While my lit -- tle one,
  while my lit -- tle one sleeps. __
  Sleep and rest, sleep and rest,
  Fa -- ther will come to thee soon; __
  Rest, rest on mo -- ther's breast,
  Fa -- ther will come to thee soon __
  Fa -- ther will come to his babe in the nest,
  Sil -- ver sails out of the west,
  Un -- der the sil -- ver moon. __
  Sleep, my lit -- tle one,
  sleep, my pret -- ty one, sleep. __
}

wordsBassMidi = \lyricmode {
  "Sweet " "and " "low, " "sweet " "and " "low, "
  "\nWind " "of " "the " west "ern " "sea, " "__Low, " "low, " "breathe " "and " "blow, "
  "\nWind " "of " "the " west "ern " "sea, " 
  "\nO" "ver " "the " roll "ing " wa "ters " "go, "
  "\nCome " "from " "the " "moon " "and " "blow, "
  "\nBlow " "him " a "gain " "to " "me, " 
  "\nWhile " "my " lit "tle " "one, "
  "\nwhile " "my " lit "tle " "one " "sleeps. " 
  "\nSleep " "and " "rest, " "sleep " "and " "rest, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon; " 
  "\nRest, " "rest " "on " mo "ther's " "breast, "
  "\nFa" "ther " "will " "come " "to " "thee " "soon " 
  "\nFa" "ther " "will " "come " "to " "his " "babe " "in " "the " "nest, "
  "\nSil" "ver " "sails " "out " "of " "the " "west, "
  "\nUn" "der " "the " sil "ver " "moon. " 
  "\nSleep, " "my " lit "tle " "one, "
  "\nsleep, " "my " pret "ty " "one, " "sleep. " 
}

pianoRHone = \relative {
  \global
  e'4 8 <dis a'>4. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s2. |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp | s | s | s |
  s2. | s4. s\sf | s2.\p | s | s\mf |
  s2. | s\pp | s | s\f | s | % 2a
  s4.\p s\omit\dim-\markup\italic "dim. e rall." | s2. | s\pp\> | s\! | s\pp
  s2. | s | s | s | s4\< s2\! |
  s2.\p | s | s\mf | % 3a
  s2. | s\pp | s | s\f |
  s4.\> s\! | s4\p s2\omit\dim-\markup\italic "rall. e dim." | s2. | s\pp\> | s\! |
}

pianoLHone = \relative {
  \global
  <c g'>4 8 <c fis>4. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s2.
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
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
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
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
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \magnifyStaff #4/7
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \magnifyStaff #4/7
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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

#(set-global-staff-size 20)

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
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
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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
