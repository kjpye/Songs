\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Say, Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Dowland (1563--1626)"
  arranger    = "Ed. John Leavitt"
%  opus        = "opus"

  poet        = "Traditional Text"
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
  \tempo Lively 4=138
  s4
%  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s1*14
    \alternative {
      {s1*3}
      {s2 \tempo 4=120 s2 | s1 | s2.}
    }
  }
}

RehearsalTrack = {
                                %  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "2a" } s4 s1*2
    \mark \markup { \box "2b" }    s1*3
    \mark \markup { \box "3a" }    s1*3
    \mark \markup { \box "3b" }    s1*3
    \mark \markup { \box "4a" }    s1*3
    \mark \markup { \box "4b" }    s1*2 s2.
  }
}

soprano = \relative {
  \global
  \repeat volta 2 {
    d''4^\mf | c b a g | a a g g |
    fis4 g a d | d cis d2 | a4^\p b c2 |
    r2 r4 r8 b^\mf | a4 g fis g | a b a c | % 3a
    b4 a gis a | b c b2 | r4 c^\p r a |
    r4 b r g | g g^\mf g g~ | g fis g g^\f | % 4a
    g4 4 4^\markup\italic "[last time rit.]" g | g g g2 | g2.
  }
}

wordsSopOne = \lyricmode {
  Say, Love, if e -- ver thou didst find,
  A wom -- an with a con -- stant mind,
  None but one,
  And what should that rare mir -- ror be,
  Some god -- dess or some queen is she,
}

chorus = \lyricmode {
  She, she, she, she, she, she and on -- ly she,
  She on -- ly queen of love and beau -- ty.
}

wordsSopTwo = \lyricmode {
  \set stanza = "2."
  To her then yield thy shafts and bow,
  That can com -- mand af -- fec -- tions so:
  Love is free,
  So are her thoughts that van -- quish thee,
  There is no queen of love but she,
}

wordsSopMidi = \lyricmode {
  "Say, " "Love, " "if " e "ver " "thou " "didst " "find, "
  "\nA " wom "an " "with " "a " con "stant " "mind, "
  "\nNone " "but " "one, "
  "\nAnd " "what " "should " "that " "rare " mir "ror " "be, "
  "\nSome " god "dess " "or " "some " "queen " "is " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty.\n"

  \set stanza = "2."
  "\nTo " "her " "then " "yield " "thy " "shafts " "and " "bow,\n"
  "\nThat " "can " com "mand " af fec "tions " "so: "
  "\nLove " "is " "free, "
  "\nSo " "are " "her " "thoughts " "that " van "quish " "thee, "
  "\nThere " "is " "no " "queen " "of " "love " "but " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty. "
}

alto = \relative {
  \global
  \repeat volta 2 {
    g'4^\mf | g g fis g | g fis g d |
    d4 c8(b) a4 a' | a4. g8 fis2 | f4^\p d c2 |
    r2 r4 r8 d^\mf | d4 d d d | d d d e | % 3a
    e4 e e e | e e e2 | e4^\p r d r |
    d4 r d r | c d^\mf e d | c4. 8 b4 d4^\f | % 4a
    e4 d c^\markup\italic "[last time rit.]" b  c d e2 | d2. 
  }
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Say, Love, if e -- ver thou didst find,
  A wom -- an with a con -- stant mind,
  None but one,
  And what should that rare mir -- ror be,
  Some god -- dess or some queen is she,
}

wordsAltoTwo = \lyricmode {
  \set stanza = "2."
  To her then yield thy shafts and bow,
  That can com -- mand af -- fec -- tions so:
  Love is free,
  So are her thoughts that van -- quish thee,
  There is no queen of love but she,
}

wordsAltoMidi = \lyricmode {
  "Say, " "Love, " "if " e "ver " "thou " "didst " "find, "
  "\nA " wom "an " "with " "a " con "stant " "mind, "
  "\nNone " "but " "one, "
  "\nAnd " "what " "should " "that " "rare " mir "ror " "be, "
  "\nSome " god "dess " "or " "some " "queen " "is " "she,\n"
  
  "\nShe, " "she, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty.\n"

  \set stanza = "2."
  "\nTo " "her " "then " "yield " "thy " "shafts " "and " "bow, "
  "\nThat " "can " com "mand " af fec "tions " "so: "
  "\nLove " "is " "free, "
  "\nSo " "are " "her " "thoughts " "that " van "quish " "thee, "
  "\nThere " "is " "no " "queen " "of " "love " "but " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty. "
}

tenor = \relative {
  \global
  \repeat volta 2 {
    b4^\mf | e d d b8 c~( | c a) d(c) b4 4 |
    a4 e' d fis | e e d2 | R1 |
    g,4^\p a b4. g8^\mf | fis4 g a b | a g fis a | % 3a
    gis4 a b c | b a gis2 | a4^\p r fis r |
    g4 r g r | e' d^\mf c b | a2 g4 b^\f | % 4a
    c4 b e^\markup\italic "[last time rit.]" d  e(d~8) g, c4  b2.
  }
  \bar "|."
}

wordsTenorOne = \lyricmode {
  Say, Love, if e -- ver thou didst find,
  A wom -- an with a con -- stant mind,
  None but she,
  And what should that rare mir -- ror be,
  Some god -- dess or some queen is she,
}

wordsTenorTwo = \lyricmode {
  \set stanza = "2."
  To her then yield thy shafts and bow,
  That can com -- mand af -- fec -- tions so:
  Love is free,
  So are her thoughts that van -- quish thee,
  There is no queen of love but she,
}

wordsTenorMidi = \lyricmode {
  "Say, " "Love, " "if " e "ver " "thou " "didst " "find, "
  "\nA " wom "an " "with " "a " con "stant " "mind, "
  "\nNone " "but " "she, "
  "\nAnd " "what " "should " "that " "rare " mir "ror " "be, "
  "\nSome " god "dess " "or " "some " "queen " "is " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty.\n"

  \set stanza = "2."
  "\nTo " "her " "then " "yield " "thy " "shafts " "and " "bow, "
  "\nThat " "can " com "mand " af fec "tions " "so: "
  "\nLove " "is " "free, "
  "\nSo " "are " "her " "thoughts " "that " van "quish " "thee, "
  "\nThere " "is " "no " "queen " "of " "love " "but " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty. "
}

bass = \relative {
  \global
  \repeat volta 2 {
    g,4^\mf | c g d' e | d d g, g' |
    d4 e fis d | a' a, d2 | R1 |
    e4^\p d g,4. 8^\mf | d'4 g, d' g | fis g d a | % 3a
    e'4 a, e' a | gis a e2 | a,4^\p r d r |
    g,4 r c r | c b^\mf c g | d' d g, g'^\f | % 4a
    e4 g c,^\markup\italic "[last time rit.]" g | c b c2 | g2.
  }
}

wordsBassOne = \lyricmode {
  Say, Love, if e -- ver thou didst find,
  A wom -- an with a con -- stant mind,
  None but she,
  And what should that rare mir -- ror be,
  Some god -- dess or some queen is she,
}

chorusBass = \lyricmode {
  She, she, she, she, she, she, she and on -- ly she,
  She on -- ly queen of love and beau -- ty.
}

wordsBassTwo = \lyricmode {
  \set stanza = "2."
  To her then yield thy shafts and bow,
  That can com -- mand af -- fec -- tions so:
  Love is free,
  So are her thoughts that van -- quish thee,
  There is no queen of love but she,
}

wordsBassMidi = \lyricmode {
  "Say, " "Love, " "if " e "ver " "thou " "didst " "find, "
  "\nA " wom "an " "with " "a " con "stant " "mind, "
  "\nNone " "but " "she, "
  "\nAnd " "what " "should " "that " "rare " mir "ror " "be, "
  "\nSome " god "dess " "or " "some " "queen " "is " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty.\n"

  \set stanza = "2."
  "\nTo " "her " "then " "yield " "thy " "shafts " "and " "bow, "
  "\nThat " "can " com "mand " af fec "tions " "so: "
  "\nLove " "is " "free, "
  "\nSo " "are " "her " "thoughts " "that " van "quish " "thee, "
  "\nThere " "is " "no " "queen " "of " "love " "but " "she,\n"

  "\nShe, " "she, " "she, " "she, " "she, " "she, " "she " "and " on "ly " "she, "
  "\nShe " on "ly " "queen " "of " "love " "and " beau "ty. "
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "repeat"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\wordsSopOne \chorus}
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics {\wordsAltoOne \chorusBass}
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \chorus}
            \addlyrics  \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\wordsBassOne \chorusBass}
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
         }
          <<
            \new Voice \partCombine \soprano \alto
          >>
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat-noacc"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\wordsSopOne \chorus}
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics {\wordsAltoOne \chorusBass}
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \chorus}
            \addlyrics  \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\wordsBassOne \chorusBass}
            \addlyrics \wordsBassTwo
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\wordsSopOne \chorus \wordsSopTwo \chorus}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics {\wordsAltoOne \chorusBass \wordsAltoTwo \chorusBass}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \chorus \wordsTenorTwo \chorus}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\wordsBassOne \chorusBass \wordsBassTwo \chorusBass}
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
  \bookOutputSuffix "singlepage"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\wordsSopOne \chorus \wordsSopTwo \chorus}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics {\wordsAltoOne \chorusBass \wordsAltoTwo \chorusBass}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \chorus \wordsTenorTwo \chorus}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\wordsBassOne \chorusBass \wordsBassTwo \chorusBass}
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
      >>
    >>
    \midi {}
  }
}
