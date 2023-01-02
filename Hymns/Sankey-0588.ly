\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy Father, hear my Cry."
  subtitle    = "Sankey No. 588"
  subsubtitle = "Sankey 880 No. 684"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{From \smallCaps "Mendelssohn"}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "SherBorne."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
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
  d'4 4 fis fis | a4. g8 fis2 | 4 4 g b | d4 4 2 |
  e,4 fis g a | cis4. b8 a2 | fis4 4 4 b | e,4. fis8 d2 |
}

alto = \relative {
  \autoBeamOff
  a4 4 d d | 4. 8 2 | 4 4 4 g | g g fis2 |
  cis4 d e fis | g4. 8 2 | fis4 e dis d | d cis d2 |
}

tenor = \relative {
  \autoBeamOff
  fis4 4 a a | c4. b8 a2 | 4 c b b | bes bes a2 |
  a4 4 cis d | e4. d8 cis2 | a4 ais b e, | e g fis2 |
}

bass = \relative {
  \autoBeamOff
  d4 4 4 4 | 4. 8 2 | 4 4 4 4 | 4 4 2 |
  g4 fis e d | a4. 8 2 | d4 cis b gis | a4. 8 d2 |
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
  Ho -- ly Fa -- ther, hear my cry;
  Ho -- ly Sa -- viour, bend Thine ear;
  Ho -- ly Spi -- rit, come Thou nigh:
  Fa -- ther, Sa -- viour, Spi -- rit, hear!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fa -- ther, save me from my sin;
  Sa -- viour, I Thy mer -- cy crave;
  Gra -- cious Spi -- rit, make me clean:
  Fa -- ther, Sa -- viour, Spi -- rit, save!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fa -- ther let me taste Thy love;
  Sa -- viour, fill my soul with peace;
  Spi -- rit, come, my heart to move:
  Fa -- ther, Sa -- viour, Spi -- rit, bless!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Fa -- ther, Son, and Spi -- rit, Thou
  One Je -- ho -- vah, shed a -- broad
  All Thy grace with -- in me now—
  Be my Fa -- ther and my God!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho" "ly " Fa "ther, " "hear " "my " "cry; "
  "\nHo" "ly " Sa "viour, " "bend " "Thine " "ear; "
  "\nHo" "ly " Spi "rit, " "come " "Thou " "nigh: "
  "\nFa" "ther, " Sa "viour, " Spi "rit, " "hear!\n"

  \set stanza = "2."
  "\nFa" "ther, " "save " "me " "from " "my " "sin; "
  "\nSa" "viour, " "I " "Thy " mer "cy " "crave; "
  "\nGra" "cious " Spi "rit, " "make " "me " "clean: "
  "\nFa" "ther, " Sa "viour, " Spi "rit, " "save!\n"

  \set stanza = "3."
  "\nFa" "ther " "let " "me " "taste " "Thy " "love; "
  "\nSa" "viour, " "fill " "my " "soul " "with " "peace; "
  "\nSpi" "rit, " "come, " "my " "heart " "to " "move: "
  "\nFa" "ther, " Sa "viour, " Spi "rit, " "bless!\n"

  \set stanza = "4."
  "\nFa" "ther, " "Son, " "and " Spi "rit, " "Thou "
  "\nOne " Je ho "vah, " "shed " a "broad "
  "\nAll " "Thy " "grace " with "in " "me " "now— "
  "\nBe " "my " Fa "ther " "and " "my " "God! "
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
