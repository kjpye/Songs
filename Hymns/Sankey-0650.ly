\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rings the Bells of Heaven!"
  subtitle    = "Sankey No. 650"
  subsubtitle = "Sankey 880 No. 89"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. O. Cushing."
%  meter       = \markup\smallCaps ""
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
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*3
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
  f'8. 16 g8. f16 d'4 bes | c8. bes16 g8. a16 bes2 | a8. bes16 c8. bes16 \bar "|" \break
  d8. c16 ees8. a,16 | bes2. r4 | f8. 16 g8. f16 d'4 bes | c8. bes16 g8. a16 bes2 |
  a8. bes16 c8. bes16 d8. c16 ees8. a,16 | bes2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4 4 f8. ees16 c8. a16 |
  bes4 4 d2 | g,4 4 c8. d16 c8. bes16 | a4 g f r | 8. 16 g8. f16 \bar "|" \break
  d'4 bes | c8. bes16 g8. a16 bes2 | a8. bes16 c8. bes16 d8. c16 ees8. a,16 | bes2. r4 |
}

alto = \relative {
  \autoBeamOff
  d'8. 16 ees8. d16 f4 d | ees8. 16 8. f16 g2 | f8. 16 8. 16
  f8. 16 8. ees16 | d2. r4 | 8. 16 ees8. d16 f4 d | ees8. 16 8. f16 g2 |
  f8. 16 8. 16 8. 16 8. ees16 | d2. r4 \section | f4 4 8. 16 8. ees16 |
  d4 g fis2 | g4 g e8. 16 8. 16 | f4 e f r | d8. 16 ees8. d16
  f4 d | ees8. 16 8. f16 g2 | f8. 16 8. 16 8. 16 8. ees16 | d2. r4 |
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 8. 16 4 4 | g8. 16 bes8. 16 ees2 | c8. bes16 a8. g16
  f8. a16 c8. 16 | bes2. r4 | 8. 16 8. 16 4 4 | g8. 16 bes8. 16 ees2 |
  c8. bes16 a8. g16 f8. a16 c8. 16 | bes2. r4 \section | 4 4 a8. c16 ees8. c16 |
  bes4 d4 2 | bes4 4 c8. 16 8. 16 | 4 bes a r | bes8. 16 8. 16
  bes4 4 | g8. 16 bes8. 16 ees2 | c8. bes16 a8. g16 f8. a16 c8. 16 | bes2. r4 |
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 8. 16 4 4 | ees8. 16 8. 16 2 | f8. 16 8. 16
  f8. 16 8. 16 | bes,2. r4 | 8. 16 8. 16 4 4 | ees8. 16 8. 16 2 |
  f8. 16 8. 16 8. 16 8. 16 | bes,2. r4 | bes'4 4 f8. 16 8. 16 |
  g4 4 d2 | ees4 4 c8. 16 8. 16 | f4 c f r | bes,8. 16 8. 16
  bes4 4 | ees8. 16 8. 16 2 | f8. 16 8. 16 8. 16 8. 16 | bes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Glo -- ry! glo -- ry! how the an -- gels sing;
  Glo -- ry! glo -- ry! how the loud harps ring;
  'Tis the ran -- somed ar -- my, like a migh -- ty sea,
  Peal -- ing forth the an -- them of the free.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Ring the bells of hea -- ven! there is joy to -- day,
  For a soul re -- turn -- ing from the wild!
  See! the Fa -- ther meets him out up -- on the way,
  Wel -- com -- ing His wea -- ry, wan -- dering child.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ring the bells of hea -- ven! there is joy to -- day,
  For the wan -- d'rer now is re -- con -- ciled;
  Yes, a soul is res -- cued from his sin -- ful way,
  And is born a -- new a ran -- somed child.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ring the bells of hea -- ven! spread the feast to -- day,
  An -- gels, swell the glad, tri -- umph -- ant strain!
  Tell the joy -- ful ti -- dings, bear it far a -- way!
  For a pre -- cious soul is born a -- gain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ring " "the " "bells " "of " hea "ven! " "there " "is " "joy " to "day, "
  "\nFor " "a " "soul " re turn "ing " "from " "the " "wild! "
  "\nSee! " "the " Fa "ther " "meets " "him " "out " up "on " "the " "way, "
  "\nWel" com "ing " "His " wea "ry, " wan "dering " "child. "
  "\nGlo" "ry! " glo "ry! " "how " "the " an "gels " "sing; "
  "\nGlo" "ry! " glo "ry! " "how " "the " "loud " "harps " "ring; "
  "\n'Tis " "the " ran "somed " ar "my, " "like " "a " migh "ty " "sea, "
  "\nPeal" "ing " "forth " "the " an "them " "of " "the " "free.\n"

  \set stanza = "2."
  "\nRing " "the " "bells " "of " hea "ven! " "there " "is " "joy " to "day, "
  "\nFor " "the " wan "d'rer " "now " "is " re con "ciled; "
  "\nYes, " "a " "soul " "is " res "cued " "from " "his " sin "ful " "way, "
  "\nAnd " "is " "born " a "new " "a " ran "somed " "child. "
  "\nGlo" "ry! " glo "ry! " "how " "the " an "gels " "sing; "
  "\nGlo" "ry! " glo "ry! " "how " "the " "loud " "harps " "ring; "
  "\n'Tis " "the " ran "somed " ar "my, " "like " "a " migh "ty " "sea, "
  "\nPeal" "ing " "forth " "the " an "them " "of " "the " "free.\n"

  \set stanza = "3."
  "\nRing " "the " "bells " "of " hea "ven! " "spread " "the " "feast " to "day, "
  "\nAn" "gels, " "swell " "the " "glad, " tri umph "ant " "strain! "
  "\nTell " "the " joy "ful " ti "dings, " "bear " "it " "far " a "way! "
  "\nFor " "a " pre "cious " "soul " "is " "born " a "gain. "
  "\nGlo" "ry! " glo "ry! " "how " "the " an "gels " "sing; "
  "\nGlo" "ry! " glo "ry! " "how " "the " "loud " "harps " "ring; "
  "\n'Tis " "the " ran "somed " ar "my, " "like " "a " migh "ty " "sea, "
  "\nPeal" "ing " "forth " "the " an "them " "of " "the " "free."
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
