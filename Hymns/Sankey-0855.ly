\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All to Christ I Owe."
  subtitle    = "Sankey No. 855"
  subsubtitle = "Sankey 880 No. 53"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. T. Grape."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. M. Hall."
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*6
  \textMark \markup { \box \bold "C" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  g'8[aes] | bes4. c8 bes g | ees2 4 | f4. 8 ees f |
  \tag #'dash          {g2 \slurDashed 8(aes) \slurSolid |}
  \tag #'(v2 v3 v4 v5) {g2             8(aes)            |}
  \tag #'v1            {g2             8 aes             |}
  bes4. c8 bes g |
  \tag #'dash       {ees2 \slurDashed 8(f) \slurSolid |}
  \tag #'(v2 v4 v5) {ees2             8(f)            |}
  \tag #'(v1 v3)    {ees2             8 f             |}
  g4. aes8 g f | ees2. |
  \section \sectionLabel \markup\smallCaps Chorus.
  bes'4. c8 bes g | ees'2 r4 |
  bes4. c8 bes g | f2 r4 | bes4. c8 bes g | ees'8 d c4\fermata ees | g,4. aes8 g f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'8[f] | g4. aes8 g ees | bes2 4 | d4. 8 c d |
  \tag #'dash          {ees2 \slurDashed ees8(f) \slurSolid |}
  \tag #'(v2 v3 v4 v5) {ees2             ees8(f)            |}
  \tag #'v1            {ees2             ees8 f             |}
  g4. aes8 g ees |
  \tag #'dash       {bes2 \slurDashed ees8(8) \slurSolid |}
  \tag #'(v2 v4 v5) {bes2             ees4               |}
  \tag #'(v1 v3)    {bes2             ees8 8             |}
  ees4. f8 ees d | ees2. \section | g4. aes8 g ees | g2 r4 |
  g4. aes8 g ees | d2 r4 | g4. aes8 g ees | g bes aes4 ees | 4. f8 ees d | ees2
}

tenor = \relative {
  \autoBeamOff
  bes4 | ees4. 8 8 bes | g2 4 | bes4. 8 g bes |
  \tag #'dash          {bes2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3 v4 v5) {bes2             4               |}
  \tag #'v1            {bes2             8 8             |}
  ees4. 8 8 bes |
  \tag #'dash       {g2 \slurDashed bes8(8) \slurSolid |}
  \tag #'(v2 v4 v5) {g2             bes4               |}
  \tag #'(v1 v3)    {g2             bes8 8             |}
  bes4. 8 8 aes | g2. \section | ees'4. 8 8 bes | 2 r4 |
  ees4. 8 8 bes | 2 r4 | ees4. 8 8 bes | 8 8 ees4_\fermata c | bes4. 8 8 aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 4. 8 8 8 | 2 4 | bes4. 8 c bes |
  \tag #'dash          {ees2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3 v4 v5) {ees2             4               |}
  \tag #'v1            {ees2             8 8             |}
  ees4. 8 8 8 |
  \tag #'dash       {ees2 \slurDashed g8(aes) \slurSolid |}
  \tag #'(v2 v4 v5) {ees2             g8(aes)            |}
  \tag #'(v1 v3)    {ees2             g8 aes             |}
  bes4. bes,8 8 8 | ees2. \section | 4. 8 8 8 | 2 r4 |
  ees4. 8 8 8 | bes2 r4 | ees4. 8 8 8 | 8 g aes4 a | bes4. bes,8 8 8 | ees2 
}

chorus = \lyricmode {
  Je -- sus paid it all—
  All to Him I owe;
  Sin had left a crim -- son stain;
  He washed it white as snow.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I hear the Sa -- viour say,
  “Thy strength in -- deed is small;
  \nom Child of \yesm weak -- ness, watch and pray,
  \nom Find in \yesm Me thine All in all.”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord, now in -- deed I find
  Thy power, and Thine a -- lone,
  Can change the lep -- er‘s spots.
  And melt the heart of stone.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For no -- thing good have I
  Where -- by Thy grace to claim—
  I‘ll wash my gar -- ments white
  \nom In the \yesm blood of Cal -- v‘ry‘s Lamb.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When from my dy -- ing bed
  My ran -- somed soul shall rise,
  Then “Je -- sus paid it all!”
  Shall read the vault -- ed skies.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And when be -- fore the throne
  I stand in Him com -- plete,
  I‘ll lay my tro -- phies down,
  All down at Je -- sus‘ feet.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "hear " "the " Sa "viour " "say, "
  "\n“Thy " "strength " in "deed " "is " "small; "
  "\nChild " "of " weak "ness, " "watch " "and " "pray, "
  "\nFind " "in " "Me " "thine " "All " "in " "all.” "
  "\nJe" "sus " "paid " "it " "all— "
  "\nAll " "to " "Him " "I " "owe; "
  "\nSin " "had " "left " "a " crim "son " "stain; "
  "\nHe " "washed " "it " "white " "as " "snow.\n"

  \set stanza = "2."
  "\nLord, " "now " in "deed " "I " "find "
  "\nThy " "power, " "and " "Thine " a "lone, "
  "\nCan " "change " "the " lep "er‘s " "spots. "
  "\nAnd " "melt " "the " "heart " "of " "stone. "
  "\nJe" "sus " "paid " "it " "all— "
  "\nAll " "to " "Him " "I " "owe; "
  "\nSin " "had " "left " "a " crim "son " "stain; "
  "\nHe " "washed " "it " "white " "as " "snow.\n"

  \set stanza = "3."
  "\nFor " no "thing " "good " "have " "I "
  "\nWhere" "by " "Thy " "grace " "to " "claim— "
  "\nI‘ll " "wash " "my " gar "ments " "white "
  "\nIn " "the " "blood " "of " Cal "v‘ry‘s " "Lamb. "
  "\nJe" "sus " "paid " "it " "all— "
  "\nAll " "to " "Him " "I " "owe; "
  "\nSin " "had " "left " "a " crim "son " "stain; "
  "\nHe " "washed " "it " "white " "as " "snow.\n"

  \set stanza = "4."
  "\nWhen " "from " "my " dy "ing " "bed "
  "\nMy " ran "somed " "soul " "shall " "rise, "
  "\nThen " “Je "sus " "paid " "it " "all!” "
  "\nShall " "read " "the " vault "ed " "skies. "
  "\nJe" "sus " "paid " "it " "all— "
  "\nAll " "to " "Him " "I " "owe; "
  "\nSin " "had " "left " "a " crim "son " "stain; "
  "\nHe " "washed " "it " "white " "as " "snow.\n"

  \set stanza = "5."
  "\nAnd " "when " be "fore " "the " "throne "
  "\nI " "stand " "in " "Him " com "plete, "
  "\nI‘ll " "lay " "my " tro "phies " "down, "
  "\nAll " "down " "at " Je "sus‘ " "feet. "
  "\nJe" "sus " "paid " "it " "all— "
  "\nAll " "to " "Him " "I " "owe; "
  "\nSin " "had " "left " "a " crim "son " "stain; "
  "\nHe " "washed " "it " "white " "as " "snow. "
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
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
