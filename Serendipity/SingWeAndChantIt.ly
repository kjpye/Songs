\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sing We and Chant It"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Thomas Morley (1557—1602)"
  arranger    = "Adap. & Arr. Roger Emerson"
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
  \key f \major
  \time 3/4
}

TempoTrack = {
  \tempo Allegro 4=144
  s2.
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "2a" } s2.*4
    \mark \markup { \box "2b" } s2.*4
  }
  \repeat volta 2 {
    \mark \markup { \box "3a" } s2.*3
    \mark \markup { \box "3b" } s2.*3
    \mark \markup { \box "4a" } s2.*3
    \mark \markup { \box "4b" } s2.*3
    \mark \markup { \box "5a" } s2.*3
  }
  \repeat volta 2 {
    \mark \markup { \box "5b" } s2.*4
    \mark \markup { \box "6a" } s2.*4
  }
  \repeat volta 2 {
    \mark \markup { \box "6b" } s2.*3
    \mark \markup { \box "7a" } s2.*3
    \mark \markup { \box "7b" } s2.*3
    \mark \markup { \box "8a" } s2.*3
    \mark \markup { \box "8b" } s2.*3
  }
}

dynamicsSopRepeat = {
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*4 s2.\f s2.*2 s2.\p s2.*2 }
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*4 s2.\f s2.*2 s2.\p-\markup\italic "rit. (last time only)" s2.*2 }
}

dynamicsSopSingle = {
  s2.\f | s2.*7 |
  s2.\p | s2.*7 |
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*4 s2.\f s2.*2 s2.\p s2.*2 }
  s2.\f | s2.*7 |
  s2.\p | s2.*7 |
  s2.\f s2.*3 s2.\p s2.*4 s2.\f s2.*2 s2. s2.*2
  s2.\f s2.*3 s2.\p s2.*4 s2.\f s2.*2 s2.\p-\markup\italic rit. s2.*2
}

soprano = \relative {
  \global
  \repeat volta 2 {
    c''4 4 bes | c2 4 | 4. bes8 a4 | g2 4 |
    a8. bes16 c8 d bes4 | a8 bes c2 | 4 bes g | a2 r4 |
  }
  \repeat volta 2 {
    a4 bes c | d2 4 | 4 ees c | % 3a
    d2 4 | c c bes | c2 4 |
    c4 bes g | a2 4 | R2. | % 4a
    c2 bes4 | a4. bes8 g4 | f2 r4 |
    c'4 bes2 | a4 g2 | a2. | % 5a
  }
  \repeat volta 2 {
    c4 c bes | c2 4 | 4. bes8 a4 | g2 4 |
    a8. bes16 c8 d bes4 | a8 bes c2 | 4 bes g | a2 r4 | % 6a
  }
  \repeat volta 2 {
    a4 bes c | d2 4 | 4 ees c |
    d2 4 | c c b | c2 4 | % 7a
    c4 bes g | a2 4 | R2. |
    c2 bes4 | a4. bes8 g4 | f2 r4 | % 8a
    c'4 bes2 | a4 g2 | a2. |
  }
}

wordsSop = \lyricmode {
  \repeat volta 2 {
    Sing we and chant it, while love doth grant it,
    Fa la la la la la la la,
    fa la la la.
  }
  \repeat volta 2 {
    Not long youth last -- eth, and old age hast -- eth;
    Now is best lei -- sure to take our pleas -- ure.
    Fa la la la la la,
    fa la la la la.
  }
  \repeat volta 2 {
    All things in -- vite us now to de -- light us,
    Fa la la la la la la la,
    fa la la la.
  }
  \repeat volta 2 {
    Hence, care be pack -- ing, no mirth be lack -- ing,
    Let spare no treas -- ure to live in pleas -- ure.
    Fa la la la la la.
    fa la la la la.
  }
}

wordsSopMidi = \lyricmode {
  \repeat volta 2 {
    "Sing " "we " "and " "chant " "it, " "while " "love " "doth " "grant " "it, "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la.\n"
  }
  \repeat volta 2 {
    "\nNot " "long " "youth " last "eth, " "and " "old " "age " hast "eth; "
    "\nNow " "is " "best " lei "sure " "to " "take " "our " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nAll " "things " in "vite " "us " "now " "to " de "light " "us, "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nHence, " "care " "be " pack "ing, " "no " "mirth " "be " lack "ing, "
    "\nLet " "spare " "no " treas "ure " "to " "live " "in " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la. "
    "\nfa " "la " "la " "la " "la. "
  }
}

dynamicsAltoRepeat = {
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2.*3 }
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2.-\markup\italic "rit. (last time only)" s2.*2 }
}

dynamicsAltoSingle = {
  s2.\f | s2.*7
  s2.\p | s2.*7
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2.*3 }
  s2.\f | s2.*7
  s2.\p | s2.*7
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2. s2.*2
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2.-\markup\italic rit. s2.*2
}

alto = \relative {
  \global
  \repeat volta 2 {
    a'4 a g | a2 4 | 4. g8 f4 | e2 4 |
    f4 4 e | f8 g a4 g~ | 8 f8 4 e | f2 r4 |
  }
  \repeat volta 2 {
    f4 g ees | f2 4 | f g a | % 3a
    bes2 4 | a g g8(f) | e2 4 |
    e4 f e | f2 4 | c'2 bes4 | % 4a
    a8. g16 f8 g e4 | f2 r4 | c'2 bes4 |
    a4 g e | f2 e4 | f2. | % 5a
  }
  \repeat volta 2 {
    a4 4 g | a2 4 | 4. g8 f4 | e2 4 |
    f4 4 e | f8 g a4 g~ | 8 f8 4 e | f2 r4 | % 6a
  }
  \repeat volta 2 {
    a4 g ees | f2 4 | f g a |
    bes2 4 | a g g8(f) | e2 4 | % 7a
    e4 f e | f2 4 | c'2 bes4 |
    a8. g16 f8 g e4 | f2 r4 | c'2 bes4 | % 8a
    a4 g e | f2 e4 | f2. |
  }
}

wordsAlto = \lyricmode {
  \repeat volta 2 {
    Sing we and chant it, while love doth grant it,
    Fa la la la la la,
    fa __ la la la la.
  }
  \repeat volta 2 {
    Not long youth last -- eth, and old age hast -- eth;
    Now is best lei -- sure to take our pleas -- ure.
    Fa la la la la la la la,
    fa la la la,
    fa la la la.
  }
  \repeat volta 2 {
    All things in -- vite us now to de -- light us,
    Fa la la la la la,
    fa __ la la la la.
  }
  \repeat volta 2 {
    Hence, care be pack -- ing, no mirth be lack -- ing,
    Let spare no treas -- ure to live in pleas -- ure.
    Fa la la la la la la la,
    fa la la la,
    fa la la la.
  }
}

wordsAltoMidi = \lyricmode {
  \repeat volta 2 {
    "Sing " "we " "and " "chant " "it, " "while " "love " "doth " "grant " "it, "
    "\nFa " "la " "la " "la " "la " "la, "
    "\nfa "  "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nNot " "long " "youth " last "eth, " "and " "old " "age " hast "eth; "
    "\nNow " "is " "best " lei "sure " "to " "take " "our " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la, "
    "\nfa " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nAll " "things " in "vite " "us " "now " "to " de "light " "us, "
    "\nFa " "la " "la " "la " "la " "la, "
    "\nfa "  "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nHence, " "care " "be " pack "ing, " "no " "mirth " "be " lack "ing, "
    "\nLet " "spare " "no " treas "ure " "to " "live " "in " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la, "
    "\nfa " "la " "la " "la.\n"
  }
}

dynamicsTenorRepeat = {
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s2.\p s2.*4 }
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s2.\p s2. s2.-\markup\italic "rit. (last time only)" s2.*2 }
}

dynamicsTenorSingle = {
  s2.\f | s2.*7
  s2.\p | s2.*7
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s2.\p s2.*4 }
  s2.\f | s2.*7
  s2.\p | s2.*7
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s2.\p s2. s2. s2.*2
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s2.\p s2. s2.-\markup\italic rit. s2.*2
}

tenor = \relative {
  \global
  \repeat volta 2 {
    c'4 c bes | c2 4 | 4 4 4 | 2 4 |
    c4 4 4 | 4 4 4 | 8 a bes4 c | 2 r4 |
  }
  \repeat volta 2 {
    c4 bes g8(a) | bes2 4 | 4 4 c | % 3a
    d2 4 | c4 4 b | c4 g2 |
    g4 bes c | 2 4 | a2 bes4 | % 4a
    c4 f, c' | 2 bes4 | a8. bes16 c8 d e4 |
    f4 d c | a8 bes c2 | 2. | % 5a
  }
  \repeat volta 2 {
    c4 4 bes | c2 4 | 4 4 4 | 2 4 |
    c4 4 4 | 4 4 4 | 8 a bes4 c | 2 r4 | % 6a
  }
  \repeat volta 2 {
    c4 bes g8(a) | bes2 4 | 4 4 c |
    d2 4 | c4 c b | c g2 | % 7a
    g4 bes c | 2 4 | a2 bes4 |
    c4 f, c' | 2 bes4 | a8. bes16 c8 d e4 | % 8a
    f4 d c | a8 bes c2 | 2. |
  }
}

wordsTenor = \lyricmode {
  \repeat volta 2 {
    Sing we and chant it, while love doth grant it,
    Fa la la la la,
    fa la la la la la.
  }
  \repeat volta 2 {
    Not long youth last -- eth, and old age hast -- eth;
    Now is best lei -- sure to take our pleas -- ure.
    Fa la la la la,
    fa la la la la la la la,
    fa la la la la la.
  }
  \repeat volta 2 {
    All things in -- vite us now to de -- light us,
    Fa la la la la,
    fa la la la la la.
  }
  \repeat volta 2 {
    Hence, care be pack -- ing, no mirth be lack -- ing,
    Let spare no treas -- ure to live in pleas -- ure.
    Fa la la la la,
    fa la la la la la la la,
    fa la la la la la.
  }
}

wordsTenorMidi = \lyricmode {
  \repeat volta 2 {
    "Sing " "we " "and " "chant " "it, " "while " "love " "doth " "grant " "it, "
    "\nFa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nNot " "long " "youth " last "eth, " "and " "old " "age " hast "eth; "
    "\nNow " "is " "best " lei "sure " "to " "take " "our " pleas "ure. "
    "\nFa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nAll " "things " in "vite " "us " "now " "to " de "light " "us, "
    "\nFa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nHence, " "care " "be " pack "ing, " "no " "mirth " "be " lack "ing, "
    "\nLet " "spare " "no " treas "ure " "to " "live " "in " pleas "ure. "
    "\nFa " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
  }
}

dynamicsBassRepeat = {
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s4 s2\p s2.*4 }
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} | s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s4 s2\p s2. s2.-\markup\italic "rit. (last time only)" s2.*2 }
}

dynamicsBassSingle = {
  s2.\f | s2.*7
  s2.\p | s2.*7
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s4 s2\p s2.*4 }
  s2.\f | s2.*7
  s2.\p | s2.*7
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s4 s2\p s2. s2. s2.*2
  s2.\f s2.*3 s2.\p s2.*3 s2.\f s2. s4 s2\p s2. s2.-\markup\italic rit. s2.*2
}

bass = \relative {
  \global
  \repeat volta 2 {
    f4 f g  | d2 4 | 4 g a8(bes) | c2 c,4 |
    f8. g16 a8 bes g4 | f f c' | 8 a g4 4 | f2 r4 |
  }
  \repeat volta 2 {
    f4 ees c | bes2 4 | bes' ees, f | % 3a
    bes2 bes,4 | f' e d | c2 4 |
    c4 d e | f2 4 | 2 g4 | % 4a
    f8. g16 a8 bes g4 | f f g | a4. f8 g4 |
    a4 bes c~ | 2 c,4 | f2. | % 5a
  }
  \repeat volta 2 {
    f4 f g | f2 4 | 4 g a8(bes) | c2 c,4 |
    f8. g16 a8 bes g4 | f f c' | 8 a g4 4 | f2 r4 | % 6a
  }
  \repeat volta 2 {
    f4 ees c | bes2 4 | bes' ees, f |
    bes2 bes,4 | f'4 e d | c2 4 | % 7a
    c4 d e | f2 4 | 2 g4 |
    f8. g16 a8 bes g4 | f f g | a4. f8 g4 | % 8a
    a4 bes c~ | c2 c,4 | f2. |
  }
}

wordsBass = \lyricmode {
  \repeat volta 2 {
    Sing we and chant it, while love doth grant it,
    Fa la la la la la la,
    fa la la la la la.
  }
  \repeat volta 2 {
    Not long youth last -- eth, and old age hast -- eth;
    Now is best lei -- sure to take our pleas -- ure.
    Fa la la la la la la la,
    fa la la la la la la la __ la la.
  }
  \repeat volta 2 {
    All things in -- vite us now to de -- light us,
    Fa la la la la la la,
    fa la la la la la.
  }
  \repeat volta 2 {
    Hence, care be pack -- ing, no mirth be lack -- ing,
    Let spare no treas -- ure to live in pleas -- ure.
    Fa la la la la la la la.
    fa la la la la la la la __ la la.
  }
}

wordsBassMidi = \lyricmode {
  \repeat volta 2 {
    "Sing " "we " "and " "chant " "it, " "while " "love " "doth " "grant " "it, "
    "\nFa " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nNot " "long " "youth " last "eth, " "and " "old " "age " hast "eth; "
    "\nNow " "is " "best " lei "sure " "to " "take " "our " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la " "la " "la "  "la " "la.\n"
    }
  \repeat volta 2 {
    "\nAll " "things " in "vite " "us " "now " "to " de "light " "us, "
    "\nFa " "la " "la " "la " "la " "la " "la, "
    "\nfa " "la " "la " "la " "la " "la.\n"
    }
  \repeat volta 2 {
    "\nHence, " "care " "be " pack "ing, " "no " "mirth " "be " lack "ing, "
    "\nLet " "spare " "no " treas "ure " "to " "live " "in " pleas "ure. "
    "\nFa " "la " "la " "la " "la " "la " "la " "la. "
    "\nfa " "la " "la " "la " "la " "la " "la " "la "  "la " "la.\n"
  }
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p \italic "for rehearsal only"} s2.*7 }
  \repeat volta 2 { s2.\f s2.*7 s2.\f s2. s2.\p s2.*4 }
  \repeat volta 2 { s2.-\markup{\dynamic f - \dynamic p} s2.*7 }
  \repeat volta 2 { s2.\f s2.*3 s2.\p s2.*3 s2.\f s2.*2 s2.\p s2.-\markup\italic "rit. (last time only)" s2.*2 }
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopRepeat}
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
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoRepeat}
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorRepeat}
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
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassRepeat}
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
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "repeat-noacc"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopRepeat}
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
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoRepeat}
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorRepeat}
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
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassRepeat}
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single-noacc"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc"
  \paper {
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-sop"
  \paper {
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} { \teeny \dynamicsAltoSingle}
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
            \new Dynamics \with {alignAboveContext = tenor} { \teeny \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \teeny \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-alto"
  \paper {
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} { \teeny \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
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
            \new Dynamics \with {alignAboveContext = tenor} { \teeny \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \teeny \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-tenor"
  \paper {
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} { \teeny \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} { \teeny \dynamicsAltoSingle}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \teeny \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-bass"
  \paper {
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} { \teeny \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} { \teeny \dynamicsAltoSingle}
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
            \new Dynamics \with {alignAboveContext = tenor} { \teeny \dynamicsTenorSingle}
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
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass

          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} { \dynamicsSopSingle}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \soprano \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} { \dynamicsAltoSingle}
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} { \dynamicsTenorSingle}
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} { \dynamicsBassSingle}
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
