\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The City of Gold."
  subtitle    = "Sankey No. 819"
  subsubtitle = "C. C. No. 229"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "aW. H. Doane.
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. aes16 | c4 des8 c8 4 bes8 aes | bes4 aes8 f ees4 8 des | ees4 aes8 g \bar "|" \break
  aes4 des8 c | bes2. ees,8. 16 | c'4 des8 c8 4 bes8 aes | bes4 aes8 f ees4 \bar "|" \break
  ees8 8 | f g aes4 c8 4\fermata bes8 | aes2.
  \section \sectionLabel \markup\smallCaps Refrain.
  c8. des16 | ees2. c8. bes16 |
  aes2. g8. aes16 | bes2. des8. c16 | bes2. ees,8. 16 |
  c'4 des8 c c4 bes8 aes | bes4 aes8 f ees4 8 8 | f8 g aes4 c8 4\fermata bes8 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'8. 16 | ees4 f8 ees8 4 des8 c | des4 8 8 c4 8 b | c4 ees8 8
  ees4 8 8 | 2. 8. 16 | 4 f8 ees8 4 des8 c | des4 8 8 c4
  c8 8 | des ees8 4 8 4\fermata des8 | c2. ees8. 16 | 4 8 8 4 8. 16 |
  ees4 f8 8 ees4 8. f16 | g4 8 8 4 ees8. 16 | ees2. 8. 16 |
  ees4 f8 ees8 4 des8 c | des4 8 8 c4 8 8 | des8 ees8 4 8 4\fermata des8 | c2.
  
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | 4 8 8 4 8 8 | f4 8 aes8 4 8 8 | 4 8 bes
  aes4 g8 aes | g2. 8. 16 | aes4 8 8 4 8 8 | f4 8 aes8 4
  aes8 8 | 8 bes aes4 8 ees4\fermata 8 | 2. aes8. bes16 | c4 8 8 4 ees8. des16 |
  c4 des8 8 c4 bes8. 16 | ees4 8 8 4 bes8. aes16 | g2. 8. 16 |
  aes4 8 8 4 8 8 | f4 8 aes8 4 8 8 | 8 bes aes4 8 ees4\fermata 8 | 2.
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4 8 8 4 8 8 | des4 8 8 aes4 8 8 | 4 c8 des
  c4 bes8 aes | ees'2. 8. 16 | aes,4 8 8 4 8 8 | des4 8 8 aes4
  aes8 8 | des8 8 c4 ees8 4\fermata 8 | aes,2. aes'8. 16 | 4 8 8 4 8. ees16 |
  aes,4 des8 8 aes4 ees'8. 16 | 4 8 8 4 8. 16 | 2. 8. 16 |
  aes,4 8 8 4 8 8 | des4 8 8 aes4 8 8 | des8 8 c4 ees8 4\fermata 8 | aes,2.
}

chorus = \lyricmode {
  There the sun __ nev -- er sets,
  and the leaves __ nev -- er fade:
  There the eyes of the faith -- ful their Sa -- viour be -- hold,
  In that beau -- ti -- ful Ci -- ty of Gold.
}

chorusMen = \lyricmode {
  \repeat unfold 42 \skip 1
  _ _ _ There the sun _ _ _ nev -- er sets,
  _ _ _ and the leaves _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  There's a ci -- ty that looks o'er the val -- ley of death,
  And its glo -- ries may nev -- er be told;
  There the sun nev -- er sets, and the leaves nev -- er fade,
  In that beau -- ti -- ful Ci -- ty of Gold.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There the King, our Re -- deem -- er, the Lord whom we love,
  All the faith -- ful with rap -- ture be -- hold;
  There the righ -- teous fo ev -- er will shine like the stars,
  In that beau -- ti -- ful Ci -- ty of Gold.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ev -- 'ry soul we have led to the foot of the cross,
  Ev -- 'ry lamb we have brought to the fold,
  Will be kept as bright jew -- els our crown to a -- dorn,
  In that beau -- ti -- ful Ci -- ty of Gold.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " ci "ty " "that " "looks " "o'er " "the " val "ley " "of " "death, "
  "\nAnd " "its " glo "ries " "may " nev "er " "be " "told; "
  "\nThere " "the " "sun " nev "er " "sets, " "and " "the " "leaves " nev "er " "fade, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun "  nev "er " "sets, "
  "\nand " "the " "leaves "  nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold.\n"

  \set stanza = "2."
  "\nThere " "the " "King, " "our " Re deem "er, " "the " "Lord " "whom " "we " "love, "
  "\nAll " "the " faith "ful " "with " rap "ture " be "hold; "
  "\nThere " "the " righ "teous " "fo " ev "er " "will " "shine " "like " "the " "stars, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun "  nev "er " "sets, "
  "\nand " "the " "leaves "  nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold.\n"

  \set stanza = "3."
  "\nEv" "'ry " "soul " "we " "have " "led " "to " "the " "foot " "of " "the " "cross, "
  "\nEv" "'ry " "lamb " "we " "have " "brought " "to " "the " "fold, "
  "\nWill " "be " "kept " "as " "bright " jew "els " "our " "crown " "to " a "dorn, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun "  nev "er " "sets, "
  "\nand " "the " "leaves "  nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "There's " "a " ci "ty " "that " "looks " "o'er " "the " val "ley " "of " "death, "
  "\nAnd " "its " glo "ries " "may " nev "er " "be " "told; "
  "\nThere " "the " "sun " nev "er " "sets, " "and " "the " "leaves " nev "er " "fade, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun, " "there " "the " "sun "
  "\nnev" "er " "sets, " nev "er " "sets, "
  "\nand " "the " "leaves, " "and " "the " "leaves " nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold.\n"

  \set stanza = "2."
  "\nThere " "the " "King, " "our " Re deem "er, " "the " "Lord " "whom " "we " "love, "
  "\nAll " "the " faith "ful " "with " rap "ture " be "hold; "
  "\nThere " "the " righ "teous " "fo " ev "er " "will " "shine " "like " "the " "stars, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun, " "there " "the " "sun "
  "\nnev" "er " "sets, " nev "er " "sets, "
  "\nand " "the " "leaves, " "and " "the " "leaves " nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold.\n"

  \set stanza = "3."
  "\nEv" "'ry " "soul " "we " "have " "led " "to " "the " "foot " "of " "the " "cross, "
  "\nEv" "'ry " "lamb " "we " "have " "brought " "to " "the " "fold, "
  "\nWill " "be " "kept " "as " "bright " jew "els " "our " "crown " "to " a "dorn, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
  "\nThere " "the " "sun, " "there " "the " "sun "
  "\nnev" "er " "sets, " nev "er " "sets, "
  "\nand " "the " "leaves, " "and " "the " "leaves " nev "er " "fade: "
  "\nThere " "the " "eyes " "of " "the " faith "ful " "their " Sa "viour " be "hold, "
  "\nIn " "that " beau ti "ful " Ci "ty " "of " "Gold. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

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
