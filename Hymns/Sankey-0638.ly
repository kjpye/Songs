\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Just for Today"
  subtitle    = "Sankey No. 638"
  subsubtitle = "Sankey 880 No. 109"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Anon"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*6
  \textMark \markup { \box \bold "B" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 f4 ees | c'2 aes4(f) | ees2 d4(ees) | f1 | g2 a4 f | bes1 |
  bes2 c4 bes | ees2 bes | aes4(g) f(ees) | f1 | bes2 ees,4^\markup\italic rit.  f | ees1 |
}

alto = \relative {
  \autoBeamOff
  ees'2 d4 ees | 2 4(c) | 2 b4(c) | d1 | ees2 4 4 | d1 |
  ees2 4 4 | g2 4(ees) | d(ees) 2 | d1 | 2 c4 d | ees1 |
}

tenor = \relative {
  \autoBeamOff
  bes2 aes4 g | aes2 c4(aes) | g2 2 | bes1 | 4(c) c a | bes2(aes) |
  g2 aes4 g | bes2 ees4(bes) | 2 a | bes1 | 2 g4 aes | g1 |
}

bass = \relative {
  \autoBeamOff
  ees2 4 4 | aes,2 2 | c g4(c) | bes1 | ees4(c) f f | bes,1 |
  ees2 4 4 | 2 4(g) | f(ees) c2 | bes1 | g2 c4 bes | ees1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, for to -- mor -- row amd its needs
  I do not pray;
  Keep me, my God, from stain of sin—
  Just for to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let me do faith -- ful -- ly Thy work,
  And du -- ly pray;
  Let me ne kinf in word and deed,
  Just for to -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let me no wrong or i -- dle word,
  Un -- think -- ing, say:
  Set Thou a seal up -- on my lips—
  Just for to -- day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So for to -- mor -- row and its needs
  I do not pray;
  But keep me, guide me, hold me, Lord—
  Just for to -- day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "for " to mor "row " "amd " "its " "needs "
  "\nI " "do " "not " "pray; "
  "\nKeep " "me, " "my " "God, " "from " "stain " "of " "sin— "
  "\nJust " "for " to "day.\n"

  \set stanza = "2."
  "\nLet " "me " "do " faith ful "ly " "Thy " "work, "
  "\nAnd " du "ly " "pray; "
  "\nLet " "me " "ne " "kinf " "in " "word " "and " "deed, "
  "\nJust " "for " to "day.\n"

  \set stanza = "3."
  "\nLet " "me " "no " "wrong " "or " i "dle " "word, "
  "\nUn" think "ing, " "say: "
  "\nSet " "Thou " "a " "seal " up "on " "my " "lips— "
  "\nJust " "for " to "day.\n"

  \set stanza = "4."
  "\nSo " "for " to mor "row " "and " "its " "needs "
  "\nI " "do " "not " "pray; "
  "\nBut " "keep " "me, " "guide " "me, " "hold " "me, " "Lord— "
  "\nJust " "for " to "day. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
