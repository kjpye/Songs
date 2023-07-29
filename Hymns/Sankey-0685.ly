\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Firmly Stand!"
  subtitle    = "Sankey No. 685"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. C. R. Blackall."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3 s2
  \textMark \markup { \box \bold "D" } s2 s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 aes | bes4 4 4 c8 d | ees4 bes4 4 8 c
  bes4 aes aes bes8 c | bes4 g4 4 8 aes | bes4 4 4 c8 d |
  es4 bes4 4 8 8 | c4 c d c8[d] | ees2.
  \section \sectionLabel \markup\smallCaps "Chorus."
  bes8 8 | ees4 8. 16 \bar "|" \break
  ees4 8 d | c4 8. 16 4 8. 16 |
  bes4 4 4 aes8[g] | f2. ees8 f |
  g4 8 8 bes4 8 8 | c4 c ees\fermata 8 c | bes4 8. aes16 g4 f | ees2.
}

alto = \relative {
  \autoBeamOff
  ees'8 f | g4 4 4 aes8 8 | g4 4 4 8 aes |
  f4 4 4 g8 aes | g4 ees4 4 8 f | g4 4 4 aes8 8 |
  g4 4 4 8 8 | aes4 4 4 4 | g2. \section 8 8 | 4 8. 16
  g4 8 bes | aes4 8. 16 4 8. 16 | g4 4 4 f8[ees] | d2. ees8 8 |
  ees4 8 8 g4 8 8 | aes4 4 4\fermata 8 8 | g4 ees8. f16 ees4 d | ees2.
}

tenor = \relative {
  \autoBeamOff
  bes8 8 | 4 ees4 4 8 bes | 4 ees4 4 8 8 |
  bes4 4 4 8 8 | 4 4 4 8 8 | 4 ees4 4 8 bes |
  bes4 ees4 4 8 8 | 4 4 bes4 4 | 2. \section ees8 8 | bes4 8. 16
  bes4 8 ees | 4 8. 16 4 8. 16 | 4 4 4 bes | 2. g8 aes |
  bes4 8 8 ees4 8 8 | 4 4 c4\fermata 8 ees | 4 bes8. c16 bes4 aes | g2.
}

bass = \relative {
  \autoBeamOff
  ees8 8 |4 4 4 8 8 | 4 4 4 8 8 |
  d4 bes4 4 8 8 | ees4 4 4 8 8 | 4 4 4 8 8 |
  ees4 4 4 8 8 aes4 4 f bes, | ees2. \section 8 8 | 4 8. 16
  ees4 8 g | aes4 8. 16 4 8. 16 | ees4 4 4 d8[ees] | bes2. ees8 8 |
  ees4 8 8 4 8 8 | aes4 4 4\fermata 8 8 | bes4 g8. aes16 bes4 bes, | ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let us stand on the Rock!
  Firm -- ly stand on the Rock!
  On the Rock of Christ a -- lone;
  If the strife we en -- dure,
  We shall stand se -- cure
  'Mid the throng who sur -- round the throne.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Firm -- ly stand for God, in the world's mad strife,
  Though the bleak winds roar, and the waves beat high;
  'Tis the Rock a -- lone giv -- eth strength and life,
  When the hosts of sin are nigh.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Firm -- ly stand for Right, with a mo -- tive pure,
  With a true heart bold, and a faith e'er strong;
  'Tis the Rock a -- lone giv -- eth tri -- umph sure,
  O'er the world's ar -- ray of wrong.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Firm -- ly stand for Truth! it will serve you best;
  Though it wait -- eth long, it is sure at last;
  'Tis the Rock a -- lone giv -- eth peace and rest
  When the storms of life are past.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Firm" "ly " "stand " "for " "God, " "in " "the " "world's " "mad " "strife, "
  "\nThough " "the " "bleak " "winds " "roar, " "and " "the " "waves " "beat " "high; "
  "\n'Tis " "the " "Rock " a "lone " giv "eth " "strength " "and " "life, "
  "\nWhen " "the " "hosts " "of " "sin " "are " "nigh. "
  "\nLet " "us " "stand " "on " "the " "Rock! "
  "\nFirm" "ly " "stand " "on " "the " "Rock! "
  "\nOn " "the " "Rock " "of " "Christ " a "lone; "
  "\nIf " "the " "strife " "we " en "dure, "
  "\nWe " "shall " "stand " se "cure "
  "\n'Mid " "the " "throng " "who " sur "round " "the " "throne.\n"

  \set stanza = "2."
  "\nFirm" "ly " "stand " "for " "Right, " "with " "a " mo "tive " "pure, "
  "\nWith " "a " "true " "heart " "bold, " "and " "a " "faith " "e'er " "strong; "
  "\n'Tis " "the " "Rock " a "lone " giv "eth " tri "umph " "sure, "
  "\nO'er " "the " "world's " ar "ray " "of " "wrong. "
  "\nLet " "us " "stand " "on " "the " "Rock! "
  "\nFirm" "ly " "stand " "on " "the " "Rock! "
  "\nOn " "the " "Rock " "of " "Christ " a "lone; "
  "\nIf " "the " "strife " "we " en "dure, "
  "\nWe " "shall " "stand " se "cure "
  "\n'Mid " "the " "throng " "who " sur "round " "the " "throne.\n"

  \set stanza = "3."
  "\nFirm" "ly " "stand " "for " "Truth! " "it " "will " "serve " "you " "best; "
  "\nThough " "it " wait "eth " "long, " "it " "is " "sure " "at " "last; "
  "\n'Tis " "the " "Rock " a "lone " giv "eth " "peace " "and " "rest "
  "\nWhen " "the " "storms " "of " "life " "are " "past. "
  "\nLet " "us " "stand " "on " "the " "Rock! "
  "\nFirm" "ly " "stand " "on " "the " "Rock! "
  "\nOn " "the " "Rock " "of " "Christ " a "lone; "
  "\nIf " "the " "strife " "we " en "dure, "
  "\nWe " "shall " "stand " se "cure "
  "\n'Mid " "the " "throng " "who " sur "round " "the " "throne. "
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

#(set-global-staff-size 20)

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
