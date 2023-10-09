\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sound the Battle Cry!"
  subtitle    = "Sankey No. 703"
  subsubtitle = "Sankey 880 No. 511"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. F. Sherwin."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
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
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4\omit\mf f d8. ees16 f4 | g4 ees' d8. c16 bes4 | c d c8. a16 f4 |
  g4 8[a] f2 | 4 4 d8. ees16 f4 | g ees' d8. c16 bes4 |
  d4 f bes,8. a16 bes8 c | d4 c bes2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4->^\f bes-> d-> bes-> |
  c8. b16 c8. ees16 d4 bes | d a bes g | c8. bes16 a8. g16 <<{f2} \new Voice {\voiceThree \teeny s4 f16 g a bes}>> | d4 bes \bar "|" \break
  d4 bes | c8. b16 c8. ees16 d4 bes | d f bes,8. a16 bes8 c | d4 c bes2 |
}

alto = \relative {
  \autoBeamOff
  d'4\omit\mf 4 bes8. c16 d4 | ees4 g f8. ees16 d4 | f4 4 8. 16 4 |
  e4 4 f2 | d4 d bes8. c16 d4 | ees g f8. ees16 d4 |
  f4 4 d8. 16 8 ees | f4 ees d2 | f4->\f d-> f-> d-> |
  ees8. d16 ees8. g16 f4 d | fis4 4 g g | e8. g16 f8. ees16 f2 | 4 d
  f4 d | ees8. d16 ees8. g16 d4 d | f f d8. c16 d8 ees | f4 ees d2 |
}

tenor = \relative {
  \autoBeamOff
  bes4\omit\mf 4 f8. 16 bes4 | 4 4 8. 16 4 | a bes a8. c16 a4 |
  bes4 8[c] a2 | bes4 4 8. 16 4 | 4 4 8. 16 4 |
  bes4 4 8. 16 8 8 | 4 a bes2 \section | bes4->\omit\f 4-> 4-> 4-> |
  a8. 16 8. 16 bes4 4 | a d d bes | g8. c16 8. bes16 a2 | bes4 4
  bes4 4 | a8. 16 8. 16 bes4 f | bes4 4 8. c16 bes8 8 | 4 a bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,4\omit\mf 4 8. 16 4 | ees4 4 bes8. 16 4 | f'4 4 8. 16 4 |
  c4 4 f2 | bes,4 4 8. 16 4 | ees4 4 bes8. 16 4 |
  bes4 d g8. 16 8 8 | f4 4 bes,2 \section bes'4->\omit\f 4-> 4-> 4-> |
  f8. 16 8. 16 bes4 4 | d, d g g | c,8. 16 8. 16 f2 | bes4 4
  bes4 4 | f8. 16 8. 16 bes4 bes, | bes d g8. 16 8 8 | f4 4 bes,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Rouse then, sol -- diers! ral -- ly round the ban -- ner!
  Rea -- dy, stea -- dy, pass the word a -- long;
  On -- ward! for -- ward! shout a -- loud Ho -- san -- na!
  Christ is cap -- tain of the migh -- ty throng!
  
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sound the bat -- tle cry,
  See! the foe is nigh;
  Raise the stand -- ard high
  For the Lord!
  Gird your ar -- mour on,
  Stand firm ev -- 'ry one,
  Rest your cause up -- on
  His ho -- ly Word!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Strong to meet the foe,
  March -- ing on we go,
  While our cause we know
  Must pre -- vail;
  Shield and ban -- ner bright
  Gleam -- ing in the light,
  Bat -- tling for the right,
  We ne'er can fail!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Thou God of all,
  Hear us when we call;
  Help us one and all,
  By Thy grace;
  When the bat -- tle's done,
  And the vic -- t'ry won,
  May we wear the crown
  Be -- fore Thy face!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sound " "the " bat "tle " "cry, "
  "\nSee! " "the " "foe " "is " "nigh; "
  "\nRaise " "the " stand "ard " "high "
  "\nFor " "the " "Lord! "
  "\nGird " "your " ar "mour " "on, "
  "\nStand " "firm " ev "'ry " "one, "
  "\nRest " "your " "cause " up "on "
  "\nHis " ho "ly " "Word! "
  "\nRouse " "then, " sol "diers! " ral "ly " "round " "the " ban "ner! "
  "\nRea" "dy, " stea "dy, " "pass " "the " "word " a "long; "
  "\nOn" "ward! " for "ward! " "shout " a "loud " Ho san "na! "
  "\nChrist " "is " cap "tain " "of " "the " migh "ty " "throng!\n"

  \set stanza = "2."
  "\nStrong " "to " "meet " "the " "foe, "
  "\nMarch" "ing " "on " "we " "go, "
  "\nWhile " "our " "cause " "we " "know "
  "\nMust " pre "vail; "
  "\nShield " "and " ban "ner " "bright "
  "\nGleam" "ing " "in " "the " "light, "
  "\nBat" "tling " "for " "the " "right, "
  "\nWe " "ne'er " "can " "fail! "
  "\nRouse " "then, " sol "diers! " ral "ly " "round " "the " ban "ner! "
  "\nRea" "dy, " stea "dy, " "pass " "the " "word " a "long; "
  "\nOn" "ward! " for "ward! " "shout " a "loud " Ho san "na! "
  "\nChrist " "is " cap "tain " "of " "the " migh "ty " "throng!\n"

  \set stanza = "3."
  "\nO " "Thou " "God " "of " "all, "
  "\nHear " "us " "when " "we " "call; "
  "\nHelp " "us " "one " "and " "all, "
  "\nBy " "Thy " "grace; "
  "\nWhen " "the " bat "tle's " "done, "
  "\nAnd " "the " vic "t'ry " "won, "
  "\nMay " "we " "wear " "the " "crown "
  "\nBe" "fore " "Thy " "face! "
  "\nRouse " "then, " sol "diers! " ral "ly " "round " "the " ban "ner! "
  "\nRea" "dy, " stea "dy, " "pass " "the " "word " a "long; "
  "\nOn" "ward! " for "ward! " "shout " a "loud " Ho san "na! "
  "\nChrist " "is " cap "tain " "of " "the " migh "ty " "throng! "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
            \new NullVoice = "aligner" \alto
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
