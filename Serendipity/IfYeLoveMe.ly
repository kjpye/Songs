\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "If Ye Love Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Thomas Tallis"
  arranger    = "(c. 1505—1585)"
%  opus        = "opus"

  poet        = "Ed. Peter Le Huray"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "122a" } s1*3
  \textMark \markup { \box "123a" } s1*4
  \textMark \markup { \box "123b" } s1*4
  \textMark \markup { \box "124a" } s1*2
  \repeat volta 2 {
    s1*2
    \textMark \markup { \box "124b" } s1*4
    \textMark \markup { \box "125a" } s1*4
    \textMark \markup { \box "125b" } s1*2
  }
  \alternative {{s1}{s1}}
}

soprano = \relative {
  \global
  f'2. 4
  g2 a~
  a4 a g f
  bes2 a % 123a
  r4 a a a
  c2 bes4 a~(
  a8 bes g4) a2
  R1 % 123b
  r4 g f f
  bes2. a4~
  a4 f a g~
  g4 f2 e4 % 124a
  f2 r
  \repeat volta 2 {
    R1
    R1
    r4 f c'2~ % 124b
    c4 bes a g
    f4 a g2
    g2 r
    R1 % 125a
    r4 c2 f,4
    c'4 bes a2
    g4 f e d
    c4 f2 c4 % 125b
    d4 bes(c2)
  }
  \alternative {
    { c1         }
    { c1\fermata }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth,
  truth.
}

wordsSopSingle = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth.
}

wordsSopMidi = \lyricmode {
  "If " "ye " "love " "me, "  "keep " "my " com mand "ments, "
  "\nand " "I " "will " "pray " "the " Fa "ther, "
  "\nand " "he " "shall " "give " "you "  a no "ther "  com for "ter, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of "  "truth, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of "  "truth. "
}

alto = \relative {
  \global
  c'2. d4
  e2 f~
  f4 4 e d
  f2 2~ % 123a
  f2 r
  R1
  r4 d d d
  f2 e4 d~( % 123b
  d4 c) d d
  bes4 4 f'2
  f4 c f e
  d4(bes c4.) 8 % 124a
  c2 r
  \repeat volta 2 {
    r2 f
    bes2. a4
    g4 f f e % 124b
    f2 4 c
    d4 4 2
    e2 e
    e4 a2 g4~( % 125a
    g8 f) f4 r f~
    f4 bes, f' f
    e4 c'2 f,4
    c'4 bes a g~ % 125b
    g8 f f2 e4
  }
  \alternative {
    { f1         }
    { f1\fermata }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  with you for -- e -- ver,
  e'en the spirit of __ truth,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth.
}

wordsAltoSingle = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  with you for -- e -- ver,
  e'en the spirit of __ truth,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth,
  that he __ may bide with you for e -- ver,
  with you for -- e -- ver,
  e'en the spirit of __ truth,
  e'en the spirit of truth,
  e'en the spirit of truth,
  e'en the spirit of __ truth,
}

wordsAltoMidi = \lyricmode {
  "If " "ye " "love " "me, "  "keep " "my " com mand "ments, "
  "\nand " "I " "will " "pray " "the " Fa "ther, "
  "\nand " "he " "shall " "give " "you "  a no "ther "  com for "ter, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nwith " "you " for e "ver, "
  "\ne'en " "the " "spirit " "of "  "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of "  "truth, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nwith " "you " for e "ver, "
  "\ne'en " "the " "spirit " "of "  "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of "  "truth, "
}

tenor = \relative {
  \global
  a2. f4
  c'2 2~
  c4 4 4 a
  c2 2~ % 123a
  c2 r4 a
  a4 4 d4. c8
  bes2 a~
  a2 r % 123b
  r2 r4 bes
  g4 4 d'2
  c4 a c2(
  bes8 a) f4 g4. 8 % 124a
  f2 c'
  \repeat volta 2 {
    f2. e4
    d4 c bes c
    c4(a) g g % 124b
    a4 d c g
    a4 4 b2
    c4 g'2 c,4
    g'4 f e d % 125a
    c1
    a4 d2 c4~
    c4 f, c' bes
    a4 d c g % 125b
    a4 f g g
  }
  \alternative {
    { c2 2 }
    { c1\fermata }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the siprit of truth.
  the spirit of __ truth, that
  truth.
}

wordsTenorSingle = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the siprit of truth.
  the spirit of __ truth,
  that he __ may bide with you for e -- ver,
  that he __ may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the siprit of truth.
  the spirit of __ truth.
}

wordsTenorMidi = \lyricmode {
  "If " "ye " "love " "me, "  "keep " "my " com mand "ments, "
  "\nand " "I " "will " "pray " "the " Fa "ther, "
  "\nand " "he " "shall " "give " "you " a no "ther "  com for "ter, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "siprit " "of " "truth. "
  "\nthe " "spirit " "of "  "truth, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "siprit " "of " "truth. "
  "\nthe " "spirit " "of "  "truth. "
}

bass = \relative {
  \global
  f2. d4
  c2 f~
  f4 f c d
  bes2 f'~ % 123a
  f1
  R1
  r2 d
  d4 d g4. f8 % 123b
  e2 d
  r4 g d d
  f2 4 c
  d4 d c c % 124a
  f2 r
  \repeat volta 2 {
    f2 bes~
    bes4 a g f
    e4 f c2 % 124b
    f4 4 4 e
    d4 4 g2
    c,2 r4 c'~
    c4 f, c' bes % 125a
    a2 f4 a~
    a8 f(g4) f2
    r2 r4 f~
    f4 bes, f' e % 125b
    d4 d c c
  }
  \alternative {
    { f1 }
    { f1\fermata }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the spirit of __ truth,
  truth.
}

wordsBassSingle = \lyricmode {
  If ye love me, __ keep my com -- mand -- ments,
  and I will pray the Fa -- ther,
  and he shall give you __ a -- no -- ther __ com -- for -- ter,
  that he __ may bide with you for e -- ver,
  may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the spirit of __ truth,
  that he __ may bide with you for e -- ver,
  may bide with you for e -- ver,
  e'en the spirit of truth, the spirit of truth,
  e'en the spirit of truth, the spirit of __ truth.
}

wordsBassMidi = \lyricmode {
  "If " "ye " "love " "me, "  "keep " "my " com mand "ments, "
  "\nand " "I " "will " "pray " "the " Fa "ther, "
  "\nand " "he " "shall " "give " "you "  a no "ther "  com for "ter, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nmay " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of "  "truth, "
  "\nthat " "he "  "may " "bide " "with " "you " "for " e "ver, "
  "\nmay " "bide " "with " "you " "for " e "ver, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of " "truth, "
  "\ne'en " "the " "spirit " "of " "truth, " "the " "spirit " "of "  "truth. "
}

pianoRHone = \relative {
  \global
  f'2. 4
  g2 a~
  a4 a g f
  bes2 a % 123a
  r4 a a a
  c2 bes4 a~(
  a8 bes g4) a2
  R1 % 123b
  r4 g f f
  bes2. a4~
  a4 f a g~
  g4 f2 e4 % 124a
  f2 r
  \repeat volta 2 {
    R1
    R1
    r4 f c'2~ % 124b
    c4 bes a g
    f4 a g2
    g2 r
    R1 % 125a
    r4 c2 f,4
    c'4 bes a2
    g4 c2 f,4
    c'4 bes a g~ % 125b
    g8 f f2 e4
  }
  \alternative {
    { f1         }
    { f1\fermata }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c'2. d4
  e2 f~
  f4 4 e d
  f2 2~ % 123a
  f2 r
  R1
  r4 d d d
  f2 e4 d~( % 123b
  d4 c) d d
  bes4 4 f'2
  f4 c f e
  d4(bes c4.) 8 % 124a
  c2 r
  \repeat volta 2 {
    r2 f
    bes2. a4
    g4 f f e % 124b
    f2 4 c
    d4 4 2
    e2 e
    e4 a2 g4~( % 125a
    g8 f) f4 r f~
    f4 bes, f' f
    e4 f4 e d
    c4 f2 c4 % 125b
    d4 bes(c2)
  }
  \alternative {
    { c1         }
    { c1\fermata }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  a2. f4
  c'2 2~
  c4 4 4 a
  c2 2~ % 123a
  c2 r4 a
  a4 4 d4. c8
  bes2 a~
  a2 r % 123b
  r2 r4 bes
  g4 4 d'2
  c4 a c2(
  bes8 a) f4 g4. 8 % 124a
  f2 c'
  \repeat volta 2 {
    f2. e4
    d4 c bes c
    c4(a) g g % 124b
    a4 d c g
    a4 4 b2
    c4 g'2 c,4
    g'4 f e d % 125a
    c1
    a4 d2 c4~
    c4 f, c' bes
    a4 d c g % 125b
    a4 f g g
  }
  \alternative {
    { c2 2 }
    { c1\fermata }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  f2. d4
  c2 f~
  f4 f c d
  bes2 f'~ % 123a
  f1
  R1
  r2 d
  d4 d g4. f8 % 123b
  e2 d
  r4 g d d
  f2 4 c
  d4 d c c % 124a
  f2 r
  \repeat volta 2 {
    f2 bes~
    bes4 a g f
    e4 f c2 % 124b
    f4 4 4 e
    d4 4 g2
    c,2 r4 c'~
    c4 f, c' bes % 125a
    a2 f4 a~
    a8 f(g4) f2
    r2 r4 f~
    f4 bes, f' e % 125b
    d4 d c c8 8
  }
  \alternative {
    { f1 }
    { f1\fermata }
  }
  \bar "|."
}

#(set-global-staff-size 20)

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
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
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
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
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
            \addlyrics {\tiny \wordsTenorSingle}
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
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
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
            \addlyrics {\tiny \wordsTenorSingle}
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
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
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
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
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
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
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
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = piano \with {
            midiInstrument = "church organ"
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
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = piano \with {
            midiInstrument = "church organ"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = piano \with {
            midiInstrument = "church organ"
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
        \new PianoStaff = piano \with {instrumentName = "Organ"} <<
          \new Staff = piano \with {
            midiInstrument = "church organ"
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
