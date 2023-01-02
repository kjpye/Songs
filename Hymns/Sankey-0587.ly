\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Search me, O God!"
  subtitle    = "Sankey No. 587"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Asa Hull."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. Bottome."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  a'4 | 8 g g4 bes | 8 a8 4 c | 4. a8 f a | g2 \bar "|" \break
  a4 | bes8 c d4. 8 | 8 c8 4 4 | 4. 8 bes g | f2
}

alto = \relative {
  \autoBeamOff
  f'4 | 8 e e4 g | 8 f8 4 a | 4. f8 8 8 | e2
  f4 | 8 8 4. 8 |8 8 4 4 | e4. 8 8 8 |f 2  
}

tenor = \relative {
  \autoBeamOff
  c'4 | 8 8 4 4 | 8 8 4 f4 | 4. c8 8 8 | 2
  c4 | bes8 a bes4. 8 | 8 a a4 4 | g4. 8 8 bes | a2
}

bass = \relative {
  \autoBeamOff
  f4 | c8 8 4 4 | f8 8 4 4 | 4. 8 a f | c2
  f4 | d8 c bes4. d8 | f8 8 4 4 | c4. 8 8 8 | f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Search me, O God, my ac -- tions try,
  And let my life ap -- pear
  As seen by Thine all -- search -- ing eye:
  To mine my ways make clear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Search all my sense, and know my heart,
  Who on -- ly canst make known;
  And let the deep, the hid -- den part
  to me be ful -- ly shown.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Throw light in -- to the dark -- ened cells,
  Where pas -- sion reigns with -- in;
  Quick -- en my con -- science till it feels
  The loath -- some -- ness of sin.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Search all my thoughts, the sec -- ret springs,
  The mo -- tives that con -- trol;
  The cham -- bers where pol -- lu -- ted things
  Hold em -- pire o'er the soul.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Search, till Thy fi -- ery glance has cast
  Its ho -- ly light through all,
  And I by grace am brought at last
  Be -- fore Thy face to fall.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Thus pros -- trate I shall learn of Thee
  What now I feeb -- ly prove—
  That God a -- lone in Christ can be
  Un -- utt -- er -- ab -- le love!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Search " "me, " "O " "God, " "my " ac "tions " "try, "
  "\nAnd " "let " "my " "life " ap "pear "
  "\nAs " "seen " "by " "Thine " all search "ing " "eye: "
  "\nTo " "mine " "my " "ways " "make " "clear.\n"

  \set stanza = "2."
  "\nSearch " "all " "my " "sense, " "and " "know " "my " "heart, "
  "\nWho " on "ly " "canst " "make " "known; "
  "\nAnd " "let " "the " "deep, " "the " hid "den " "part "
  "\nto " "me " "be " ful "ly " "shown.\n"

  \set stanza = "3."
  "\nThrow " "light " in "to " "the " dark "ened " "cells, "
  "\nWhere " pas "sion " "reigns " with "in; "
  "\nQuick" "en " "my " con "science " "till " "it " "feels "
  "\nThe " loath some "ness " "of " "sin.\n"

  \set stanza = "4."
  "\nSearch " "all " "my " "thoughts, " "the " sec "ret " "springs, "
  "\nThe " mo "tives " "that " con "trol; "
  "\nThe " cham "bers " "where " pol lu "ted " "things "
  "\nHold " em "pire " "o'er " "the " "soul.\n"

  \set stanza = "5."
  "\nSearch, " "till " "Thy " fi "ery " "glance " "has " "cast "
  "\nIts " ho "ly " "light " "through " "all, "
  "\nAnd " "I " "by " "grace " "am " "brought " "at " "last "
  "\nBe" "fore " "Thy " "face " "to " "fall.\n"

  \set stanza = "6."
  "\nThus " pros "trate " "I " "shall " "learn " "of " "Thee "
  "\nWhat " "now " "I " feeb "ly " "prove— "
  "\nThat " "God " a "lone " "in " "Christ " "can " "be "
  "\nUn" utt er ab "le " "love! "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 18)
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
