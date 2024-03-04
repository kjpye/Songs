\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Light after Darkness."
  subtitle    = "Sankey No. 830"
  subsubtitle = "Sankey 880 No. 409"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 g aes | bes8.[a16] bes2 | c4 g bes | aes2. | 4 f g |
  \tag #'dash    {\slurDashed aes8.(g16) \slurSolid aes2 |}
  \tag #'v1      {            aes8.(g16)            aes2 |}
  \tag #'(v2 v3) {            aes8. g16             aes2 |}
  bes4 f aes | g2. | bes4 g aes |
  \tag #'dash    {\slurDashed bes8.(a16) \slurSolid bes2 |}
  \tag #'(v1 v2) {            bes8.(a16)            bes2 |}
  \tag #'v3      {            bes8. a16             bes2 |}
  ees4 d c | bes2. | c4 d ees |
  \tag #'dash    {\slurDashed ees8.(bes16) \slurSolid 2 |}
  \tag #'v3      {            ees8.(bes16)            2 |}
  \tag #'(v1 v2) {            ees8. bes16             2 |}
  g4 aes f | ees2. |
}

alto = \relative {
  \autoBeamOff
  g'4 ees f | g8.[fis16] g2 | 4 e g | f2. | 4 d ees |
  \tag #'dash    {\slurDashed f8.(e16) \slurSolid f2 |}
  \tag #'v1      {            f8.(e16)            f2 |}
  \tag #'(v2 v3) {            f8. e16             f2 |}
  d4 4 4 | ees2. | g4 ees f |
  \tag #'dash    {\slurDashed g8.(fis16) \slurSolid g2 |}
  \tag #'(v1 v2) {            g8.(fis16)            g2 |}
  \tag #'v3      {            g8. fis16             g2 |}
  ees4 4 4 | 2. | 4 aes4 4 |
  \tag #'dash    {\slurDashed g8.(16) \slurSolid ees2 |}
  \tag #'v3      {            g4                 ees2 |}
  \tag #'(v1 v2) {            g8. 16             ees2 |}
  ees4 d d | ees2. |
}

tenor = \relative {
  \autoBeamOff
  bes4 4 4 | ees4 2 | e4 c c | 2. | bes4 4 4 |
  \tag #'dash    {\slurDashed bes8.(16) \slurSolid 2 |}
  \tag #'v1      {            bes4                 2 |}
  \tag #'(v2 v3) {            bes8. 16             2 |}
  g4 bes4 4 | 2. | ees4 bes4 4 |
  \tag #'dash    {\slurDashed ees8.(16) \slurSolid 2 |}
  \tag #'(v1 v2) {            ees4                 2 |}
  \tag #'v3      {            ees8. 16             2 |}
  c4 bes aes | g2. | aes4 bes c |
  \tag #'dash    {\slurDashed bes8.(16) \slurSolid g2 |}
  \tag #'v3      {            bes4                 g2 |}
  \tag #'(v1 v2) {            bes8. 16             g2 |}
  bes4 f aes | g2. |
}

bass = \relative {
  \autoBeamOff
  ees4 4 4 | 4 2 | c4 4 4 | f2. | bes,4 4 4 |
  \tag #'dash    {\slurDashed bes8.(16) \slurSolid 2 |}
  \tag #'v1      {            bes4                 2 |}
  \tag #'(v2 v3) {            bes8. 16             2 |}
  bes4 4 4 | ees2. | 4 4 4 |
  \tag #'dash    {\slurDashed ees8.(16) \slurSolid 2 |}
  \tag #'(v1 v2) {            ees4                 2 |}
  \tag #'v3      {            ees8. 16             2 |}
  ees4 4 4 | 2. | aes4 f ees |
  \tag #'dash    {\slurDashed ees8.(16) \slurSolid 2 |}
  \tag #'v3      {            ees4                 2 |}
  \tag #'(v1 v2) {            ees8. 16             2 |}
  bes4 4 4 | ees2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Light af -- ter dark -- ness,
  Gain af -- ter loss,
  Strength af -- ter weak -- ness,
  Crown af -- ter cross;
  Sweet af -- ter bit -- ter,
  Hope af -- ter fears,
  Home af -- ter \nom wan -- der -- ing, \yesm
  Praise af -- ter tears.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sheaves af -- ter sow -- ing,
  Sun af -- ter rain,
  Sight af -- ter \nom mys -- te -- ry, \yesm
  Peace af -- ter pain;
  Joy af -- ter sor -- row,
  Calm af -- ter blast,
  Rest af -- ter \nom wea -- ri -- ness, \yesm
  Sweet rest at last.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Near af -- ter dis -- tant,
  Gleam af -- ter gloom,
  Love af -- ter \nom lon -- li -- ness, \yesm
  Life af -- ter tomb;
  Af -- ter long \nom ag -- o -- ny, \yesm
  Rap -- ture of bliss,
  Right was the path -- way
  Lead -- ing to this.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Light " af "ter " dark "ness, "
  "\nGain " af "ter " "loss, "
  "\nStrength " af "ter " weak "ness, "
  "\nCrown " af "ter " "cross; "
  "\nSweet " af "ter " bit "ter, "
  "\nHope " af "ter " "fears, "
  "\nHome " af "ter " wan der "ing, "
  "\nPraise " af "ter " "tears.\n"

  \set stanza = "2."
  "\nSheaves " af "ter " sow "ing, "
  "\nSun " af "ter " "rain, "
  "\nSight " af "ter " mys te "ry, "
  "\nPeace " af "ter " "pain; "
  "\nJoy " af "ter " sor "row, "
  "\nCalm " af "ter " "blast, "
  "\nRest " af "ter " wea ri "ness, "
  "\nSweet " "rest " "at " "last.\n"

  \set stanza = "3."
  "\nNear " af "ter " dis "tant, "
  "\nGleam " af "ter " "gloom, "
  "\nLove " af "ter " lon li "ness, "
  "\nLife " af "ter " "tomb; "
  "\nAf" "ter " "long " ag o "ny, "
  "\nRap" "ture " "of " "bliss, "
  "\nRight " "was " "the " path "way "
  "\nLead" "ing " "to " "this. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
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
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
