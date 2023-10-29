\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Eyes that are Weary!"
  subtitle    = "Sankey No. 721"
  subsubtitle = "Sankey 880 No. 742"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Latin Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. N. Darby."
  meter       = \markup\smallCaps "11s."
  piece       = \markup\smallCaps "St. Luke."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed d'8(8) \slurSolid |}
  \tag #'v1         {            d4                |}
  \tag #'(v2 v3 v4) {            d8  8             |}
  b'4 a g | c b a | g a fis | g2 \bar "|" \break
  \tag #'dash       {\slurDashed fis8(8) \slurSolid |}
  \tag #'(v1 v2 v4) {            fis4               |}
  \tag #'v3         {            fis8 8             |}
  g4 g a | b c b | b a g | a2 \bar "|" \break
  d,4 | b' a g | c b a | a b a | g2 \bar "|" \break
  \tag #'dash    {\slurDashed g8(8) \slurSolid |}
  \tag #'(v2 v4) {            g4               |}
  \tag #'(v1 v3) {            g8 8             |}
  a4 a b | c b a | g a fis | g2
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed d'8(8) \slurSolid |}
  \tag #'v1         {            d4                |}
  \tag #'(v2 v3 v4) {            d8  8             |}
  g4 fis g | g g e | d d d | d2
  \tag #'dash       {\slurDashed d8(8) \slurSolid |}
  \tag #'(v1 v2 v4) {            d4               |}
  \tag #'v3         {            d8 8             |}
  d4 4 4 | g fis g | e e e | fis2
  d4 | d e8[fis] g4 | g g fis | 4 4 4 | e2
  \tag #'dash    {\slurDashed e8(8) \slurSolid|}
  \tag #'(v2 v4) {            e4              |}
  \tag #'(v1 v3) {            e8 8            |}
  e4 4 4 | 4 4 4 | d d d | 2
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed b8(8) \slurSolid |}
  \tag #'v1         {            b4               |}
  \tag #'(v2 v3 v4) {            b8 8             |}
  d4 c b | e d c | b c a | b2
  \tag #'dash       {\slurDashed c8(8) \slurSolid |}
  \tag #'(v1 v2 v4) {            c4               |}
  \tag #'v3         {            c8 8             |}
  b4 b a | d d d | c c b | d2
  c4 | b c b | e d c | c d c | b2
  \tag #'dash    {\slurDashed b8(8) \slurSolid |}
  \tag #'(v2 v4) {            b4               |}
  \tag #'(v1 v3) {            b8 8             |}
  a4 4 gis | a gis a | b c a | b2
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed g8(8) \slurSolid |}
  \tag #'v1         {            g4               |}
  \tag #'(v2 v3 v4) {            g8 8             |}
  4 4 4 | 4 4 c, | d d d | g2
  \tag #'dash       {\slurDashed a8(8) \slurSolid |}
  \tag #'(v1 v2 v4) {            a4               |}
  \tag #'v3         {            a8 8             |}
  g4 g fis | g a g | c, c e | d2
  fis4 | g g g | g g d | d d dis | e2
  \tag #'dash    {\slurDashed e8(8) \slurSolid |}
  \tag #'(v2 v4) {            e4               |}
  \tag #'(v1 v3) {            e8 8             |}
  c4 c b | a b c | d d d | g,2
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
  O eyes that are wea -- ry and hearts that are sore,
  Look off un -- to Je -- sus, and sor -- row no more;
  The light of His coun -- ten -- ance shin -- eth so bright,
  \nom That on \yesm earth as in hea -- ven there need be no night.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom Look -- ing \yesm off un -- to Je -- sus, my eyes can -- not see
  The trou -- bles and dan -- gers that throng a -- round me;
  They can -- not be blind -- ed with sor -- row -- ful tears;
  They can -- not be sha -- dowed with un -- be -- lief- fears.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom Look -- ing \yesm off un -- to Je -- sus, my spi -- rit is blest;
  \nom In the \yesm world I have tur -- moil, in Him I have rest;
  The sea of my lief all a -- bout me may roar;
  \nom When I \yesm look un -- to Je -- sus, I hear it no more.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \nom Look -- ing \yesm off un -- to Je -- sus, I go not a -- stray;
  My eyes are on Him and He shows me the way;
  The path may seem dark as He leads me a -- long,
  But fol -- low -- ing Je -- sus, I can -- not go wrong.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "eyes " "that " "are " wea "ry " "and " "hearts " "that " "are " "sore, "
  "\nLook " "off " un "to " Je "sus, " "and " sor "row " "no " "more; "
  "\nThe " "light " "of " "His " coun ten "ance " shin "eth " "so " "bright, "
  "\nThat " "on " "earth " "as " "in " hea "ven " "there " "need " "be " "no " "night.\n"

  \set stanza = "2."
  "\nLook" "ing " "off " un "to " Je "sus, " "my " "eyes " can "not " "see "
  "\nThe " trou "bles " "and " dan "gers " "that " "throng " a "round " "me; "
  "\nThey " can "not " "be " blind "ed " "with " sor row "ful " "tears; "
  "\nThey " can "not " "be " sha "dowed " "with " un be lief- "fears.\n"

  \set stanza = "3."
  "\nLook" "ing " "off " un "to " Je "sus, " "my " spi "rit " "is " "blest; "
  "\nIn " "the " "world " "I " "have " tur "moil, " "in " "Him " "I " "have " "rest; "
  "\nThe " "sea " "of " "my " "lief " "all " a "bout " "me " "may " "roar; "
  "\nWhen " "I " "look " un "to " Je "sus, " "I " "hear " "it " "no " "more.\n"

  \set stanza = "4."
  "\nLook" "ing " "off " un "to " Je "sus, " "I " "go " "not " a "stray; "
  "\nMy " "eyes " "are " "on " "Him " "and " "He " "shows " "me " "the " "way; "
  "\nThe " "path " "may " "seem " "dark " "as " "He " "leads " "me " a "long, "
  "\nBut " fol low "ing " Je "sus, " "I " can "not " "go " "wrong. "
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
                         \keepWithTag #'v4 \soprano
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
                         \keepWithTag #'v4 \alto \nl
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
                         \keepWithTag #'v4 \tenor
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
                         \keepWithTag #'v4 \bass
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|."
            }
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
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
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
