\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Peace, Wonderful Peace!"
  subtitle    = "Sankey No. 658"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. G. Cooper."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. D. Cornell."
  meter       = \markup\smallCaps "12.8."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*2
  \textMark \markup { \box \bold "B" }     s2.*3
  \textMark \markup { \box \bold "C" }     s2.*4
  \textMark \markup { \box \bold "D" }     s2.*3 s4.
  \textMark \markup { \box \bold "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'16 bes | c8. 16 8 8 bes aes | bes8 aes f ees4 aes16 bes |
  c8. 16 8 8 bes aes |
  \tag #'dash       {bes4.~4 \slurDashed aes16(bes) \slurSolid |}
  \tag #'v4         {bes4.~4             aes16(bes)            |}
  \tag #'(v1 v2 v3) {bes4.~4             aes16 bes             |}
  c8. 16 8 8 bes aes |
  bes8 aes f ees4 aes16 bes | c8. 16 8 bes8. 16 8 | aes4.~4. |
  \section \sectionLabel \markup\smallCaps Chorus.
  c4. aes |
  bes8. aes16 f8 ees4 16 16 | aes8. 16 8 c bes8. c16 | bes4.~4 c16[des] | ees8. 16 8 \bar "|" \break
  c8 bes aes | bes16 aes8. f8 ees4 aes16[bes] | c8. 16 8 bes16 8. 8 | aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'16 des | ees8. 16 8 8 des c | des8 8 8 c4 16 des |
  ees8. 16 8 d d d |
  \tag #'dash       {ees4.~4 \slurDashed c16(des) \slurSolid |}
  \tag #'v4         {ees4.~4             c16(des)            |}
  \tag #'(v1 v2 v3) {ees4.~4             c16 des             |}
  ees8. 16 8 8 des c |
  des8 8 8 c4 ees16 f | ees8. 16 8 des8. 16 8 | c4.~4. \section | ees4. c |
  des8. 16 8 c4 16 16 | f8. 16 8 aes8 8. 16 | g4.~4 aes8 | 8. 16 8
  ees8 des c | des16 8. 8 c4 ees16[f] | ees8. 16 ases8 g16 8. ees8 | 4.~4
}

tenor = \relative {
  \autoBeamOff
  aes16 16 | 8. 16 8 8 ees ees | f8 8 aes aes4 16 16 |
  aes8. 16 8 8 8 8 |
  \tag #'dash       {g4.~4 \slurDashed aes16(16) \slurSolid |}
  \tag #'v4         {g4.~4             aes8                 |}
  \tag #'(v1 v2 v3) {g4.~4             aes16 16             |}
  8. 16 8 8 ees ees |
  f8 8 aes8 4 16 16 | 8. 16 8 g8. 16 8 | aes4.~4. \section | aes4. ees |
  d8. 16 8 aes4 aes'16 16 | c8. 16 8 d8 8. 16 | ees4.~4 aes,16[bes] | c8. 16 8
  aes8 ees ees | f16 8. aes8 4 8 | 8. 16 8 des16 8. 8 | c4.~4
}

bass = \relative {
  \autoBeamOff
  aes,16 16 | 8. 16 8 8 8 8 | des8 8 8 aes4 16 16 |
  aes8. 16 8 bes8 8 8 |
  \tag #'dash       {ees4.~4 \slurDashed aes16(16) \slurSolid |}
  \tag #'v4         {ees4.~4             aes8                 |}
  \tag #'(v1 v2 v3) {ees4.~4             aes16 16             |}
  8. 16 8 aes,8 8 8 |
  des8 8 8 aes4 c16 des | ees8. 16 8 8. 16 8 | aes,4.~4. \section | 4. 4. |
  des8. 16 8 aes4 aes'16 16 | f8. 16 8 bes,8 8. 16 | ees4.~4 aes8 | 8. 16 8
  aes,8 8 8 | des16 8. 8 aes4 c16 des | ees8. 16 8 16 8. 8 | aes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Peace, peace, won -- der -- ful peace!
  Com -- ing down from the Fa -- ther a -- bove;
  Sweep o -- ver my spi -- rit for ev -- er, I pray,
  In fa -- thom -- less bil -- lows of love.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Far a -- way in the depths of my spi -- rit to -- night
  Rolls a mel -- o -- dy sweet -- er than psalm;
  \nom In ce -- \yesm les -- tial -- like strains it un -- ceas -- ing -- ly falls
  O'er my soul like an in -- fi -- nite calm.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What a trea -- sure I have in this won -- der -- ful peace
  Which a -- bides in the depths of my soul,
  \nom So se -- \yesm cure that no power can e'er take it a -- way
  While the years of e -- ter -- ni -- ty roll.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I am rest -- ing to -- night in this won -- der -- ful peace,
  I have yield -- ed to Je -- sus con -- trol;
  \nom For I'm \yesm kept from all dan -- ger by night and by day,
  And His glo -- ry is fill -- ing my soul.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And me -- thinks when I rise to that ci -- ty of peace,
  Where its Au -- thor with joy I shall see,
  That one of the songs which the ran -- somed will sing
  In that hea -- ven -- ky king -- dome shall be:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Far " a "way " "in " "the " "depths " "of " "my " spi "rit " to "night "
  "\nRolls " "a " mel o "dy " sweet "er " "than " "psalm; "
  \nom In ce -- \yesm les -- tial -- like strains it un -- ceas -- ing -- ly falls
  "\nO'er " "my " "soul " "like " "an " in fi "nite " "calm. "
  "\nPeace, " "peace, " won der "ful " "peace! "
  "\nCom" "ing " "down " "from " "the " Fa "ther " a "bove; "
  "\nSweep " o "ver " "my " spi "rit " "for " ev "er, " "I " "pray, "
  "\nIn " fa thom "less " bil "lows " "of " "love.\n"

  \set stanza = "2."
  "\nWhat " "a " trea "sure " "I " "have " "in " "this " won der "ful " "peace "
  "\nWhich " a "bides " "in " "the " "depths " "of " "my " "soul, "
  \nom So se -- \yesm cure that no power can e'er take it a -- way
  "\nWhile " "the " "years " "of " e ter ni "ty " "roll. "
  "\nPeace, " "peace, " won der "ful " "peace! "
  "\nCom" "ing " "down " "from " "the " Fa "ther " a "bove; "
  "\nSweep " o "ver " "my " spi "rit " "for " ev "er, " "I " "pray, "
  "\nIn " fa thom "less " bil "lows " "of " "love.\n"

  \set stanza = "3."
  "\nI " "am " rest "ing " to "night " "in " "this " won der "ful " "peace, "
  "\nI " "have " yield "ed " "to " Je "sus " con "trol; "
  \nom For I'm \yesm kept from all dan -- ger by night and by day,
  "\nAnd " "His " glo "ry " "is " fill "ing " "my " "soul. "
  "\nPeace, " "peace, " won der "ful " "peace! "
  "\nCom" "ing " "down " "from " "the " Fa "ther " a "bove; "
  "\nSweep " o "ver " "my " spi "rit " "for " ev "er, " "I " "pray, "
  "\nIn " fa thom "less " bil "lows " "of " "love.\n"

  \set stanza = "4."
  "\nAnd " me "thinks " "when " "I " "rise " "to " "that " ci "ty " "of " "peace, "
  "\nWhere " "its " Au "thor " "with " "joy " "I " "shall " "see, "
  "\nThat " "one " "of " "the " "songs " "which " "the " ran "somed " "will " "sing "
  "\nIn " "that " hea ven "ky " king "dome " "shall " "be: "
  "\nPeace, " "peace, " won der "ful " "peace! "
  "\nCom" "ing " "down " "from " "the " Fa "ther " a "bove; "
  "\nSweep " o "ver " "my " spi "rit " "for " ev "er, " "I " "pray, "
  "\nIn " fa thom "less " bil "lows " "of " "love. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
          >>
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
              \bar "|." }
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
