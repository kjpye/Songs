\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Father Knoweth!"
  subtitle    = "Sankey No. 568"
  subsubtitle = "N. H. No. 118"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. W."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4. ees8 d4 f | d'4. c8 bes4 a | a g ees g | f1 |
  f4. ees8  d4 f | d'4. c8 bes4 a | 4 g g c | 1 |
  d4. c8 bes4 d | f4. ees8 d4 c | d4. c8 bes4 c | a1 |
  bes4. f8 g4 a | bes4. c8 d4 f | ees4. c8 bes4 a | bes1 |
}

alto = \relative {
  \autoBeamOff
  d'4. c8 bes4 d | f4. ees8 d4 f | f ees bes ees | d1 |
  d4. c8 bes4 d | f4. 8 4 4 | 4 ees e e | f1 |
  f4. ees8 d4 f | 4. 8 4 4 | fis4. 8 g4 e | f2(ees) |
  d4. 8 ees4 4 | d4. f8 4 aes | g4. 8 f4 ees | d1 |
}

tenor = \relative {
  \autoBeamOff
  f4. 8 4 4 | 4. a8 bes4 4 | 4 4 g bes | 2(f) |
  f4. 8 4 4 | 4. a8 bes4 4 | 4 4 c bes | a1 |
  bes4. 8 4 4 | d4. c8 bes4 a | 4. d8 4 c | 1 |
  bes4. 8 4 f | 4. a8 bes4 4 | 4. ees8 d4 c | bes1 |
}

bass = \relative {
  \autoBeamOff
  bes,4. 8 4 4 | 4. f'8 g4 d | ees4 4 4 4 | bes1 |
  bes4. 8 4 4 | 4. c8 d4 4 | ees4 4 c c | f1 |
  bes,4. 8 4 4 | bes'4. a8 bes4 f | d4. 8 g4 c, | f1 |
  bes,4. 8 ees4 c | bes4. f'8 bes4 d, | ees4. 8 f4 4 | bes,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Pre -- cious thought— my Fa -- ther know -- eth!
  In His love I rest:
  For what -- e'er my Fa -- ther do -- eth
  Must be al -- ways best;
  Well I know the heart that plan -- neth
  Naught but good for me:
  Joy and sor -- row in -- ter -- wov -- en,
  Love in all I see.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pre -- cious thought— my Fa -- ther know -- eth!
  Car -- eth for His child;
  Bids me nes -- tle clo -- ser to Him.
  When the storms beat wild;
  Tho' my earth -- ly hopes are sjat -- tered,
  And the tear -- drops fall,
  Yet He is Him -- self my sol -- ace,
  Yea, my "\"all" in "all.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, to trust Him then more ful -- ly!
  Just to sim -- ply moev
  In the con -- cious calm en -- joy -- ment
  Of the Fa -- ther's love;
  Know -- ing that life's che -- quered path -- way
  Lead -- eth to His rest;
  Sat -- is -- fied the way He tak -- eth
  Must be al -- ways best.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " "thought— " "my " Fa "ther " know "eth! "
  "\nIn " "His " "love " "I " "rest: "
  "\nFor " what "e'er " "my " Fa "ther " do "eth "
  "\nMust " "be " al "ways " "best; "
  "\nWell " "I " "know " "the " "heart " "that " plan "neth "
  "\nNaught " "but " "good " "for " "me: "
  "\nJoy " "and " sor "row " in ter wov "en, "
  "\nLove " "in " "all " "I " "see.\n"

  \set stanza = "2."
  "\nPre" "cious " "thought— " "my " Fa "ther " know "eth! "
  "\nCar" "eth " "for " "His " "child; "
  "\nBids " "me " nes "tle " clo "ser " "to " "Him. "
  "\nWhen " "the " "storms " "beat " "wild; "
  "\nTho' " "my " earth "ly " "hopes " "are " sjat "tered, "
  "\nAnd " "the " tear "drops " "fall, "
  "\nYet " "He " "is " Him "self " "my " sol "ace, "
  "\nYea, " "my " "\"all " "in " "all.\"\n"

  \set stanza = "3."
  "\nOh, " "to " "trust " "Him " "then " "more " ful "ly! "
  "\nJust " "to " sim "ply " "moev "
  "\nIn " "the " con "cious " "calm " en joy "ment "
  "\nOf " "the " Fa "ther's " "love; "
  "\nKnow" "ing " "that " "life's " che "quered " path "way "
  "\nLead" "eth " "to " "His " "rest; "
  "\nSat" is "fied " "the " "way " "He " tak "eth "
  "\nMust " "be " al "ways " "best. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
