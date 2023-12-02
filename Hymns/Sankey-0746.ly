\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only a Little While!"
  subtitle    = "Sankey No. 746"
  subsubtitle = "Sankey 880 No. 403"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. P. A. Crozier."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*4
  \textMark \markup { \box \bold "B" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 4 2 4 | bes2.~2 a4 | g g g g2 4 | c2.~2 4 |
  \tag #'dash    {c4  bes a \slurDashed a(g) \slurSolid f |}
  \tag #'(v2 v3) {c'4 bes a             a(g)            f |}
  \tag #'v1      {c'4 bes a             a g             f |}
  bes2 4 2 g4 | f f f f2 4 | 2.~2. |
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 ees2 4 | f2.~2 fis4 | g g g f2 4 | ees2.~2 4 |
  \tag #'dash    {ees4 4 4 \slurDashed 4(4) \slurSolid 4 |}
  \tag #'(v2 v3) {ees4 4 4             2               4 |}
  \tag #'v1      {ees4 4 4             4 4             4 |}
  d2 4 ees2 4 | d c d ees2 4 | d2.~2. |
}

tenor = \relative {
  \autoBeamOff
  bes4 4 4 a2 4 | bes2.~2 c4 | bes4 4 4 b2 4 | c2.(g2) 4 |
  \tag #'dash    {a4 g c \slurDashed c(d) \slurSolid a |}
  \tag #'(v2 v3) {a4 g c             c(d)            a |}
  \tag #'v1      {a4 g c             c d             a |}
  bes2 aes4 g2 bes4 | 4 a bes c2 a4 | bes2.~2. |
}

bass = \relative {
  \autoBeamOff
  bes,4 4 4 c2 4 | d2.~2 4 | ees4 4 4 d2 4 | c2.~2 4 |
  \tag #'dash    {f4 4 4 \slurDashed 4(4) \slurSolid 4 |}
  \tag #'(v2 v3) {f4 4 4             2               4 |}
  \tag #'v1      {f4 4 4             4 4             4 |}
  g2 f4 ees2 4 | f4 4 4 2 f,4 | bes2.~2. |
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
  On -- ly a lit -- tle while
  Of walk -- ing with wea -- ry feet, _
  Pa -- tient -- ly \nom o -- ver \yesm the thorn -- y way
  That leads to the gold -- en street.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Suf -- fer, if 'tis God's will,
  And work for Him while we may;
  From Cal -- va -- ry's cross to Zi -- on's crown
  Is on -- ly a lit -- tle way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly a lit -- tle while!
  For tell -- ing a few short days,
  And then comes the rest, the qui -- et rest,
  E -- ter -- ni -- ty's end -- less praise.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ly " "a " lit "tle " "while "
  "\nOf " walk "ing " "with " wea "ry " "feet, " ""
  "\nPa" tient "ly " \nom o "ver " \yesm "the " thorn "y " "way "
  "\nThat " "leads " "to " "the " gold "en " "street.\n"

  \set stanza = "2."
  "\nSuf" "fer, " "if " "'tis " "God's " "will, "
  "\nAnd " "work " "for " "Him " "while " "we " "may; "
  "\nFrom " Cal va "ry's " "cross " "to " Zi "on's " "crown "
  "\nIs " on "ly " "a " lit "tle " "way.\n"

  \set stanza = "3."
  "\nOn" "ly " "a " lit "tle " "while! "
  "\nFor " tell "ing " "a " "few " "short " "days, "
  "\nAnd " "then " "comes " "the " "rest, " "the " qui "et " "rest, "
  "\nE" ter ni "ty's " end "less " "praise.\n"
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
            }
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
