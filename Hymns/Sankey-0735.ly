\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is Never a Day so Dreary."
  subtitle    = "Sankey No. 735"
  subsubtitle = "C. C. No. 203"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lilla M. Alexander."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3
  \textMark \markup { \box \bold "C" }     s2.*2 s4.
  \textMark \markup { \box \bold "D" } s4. s2.*2 s4. s4
  \textMark \markup { \box \bold "E" } s8  s2.*2 s4.
  \textMark \markup { \box \bold "F" } s4. s2.*2
  \textMark \markup { \box \bold "G" }     s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'16 f | 8 8 8 4 ges8 |
  \tag #'dash    { aes4. 4 \slurDashed 16(16) \slurSolid | }
  \tag #'(v1 v3) { aes4. 4             8                 | }
  \tag #'v2      { aes4. 4             16 16             | }
  ges4 8 bes4 des8 |
  aes4.~4 8 | % B
  \tag #'dash {\slurDashed bes8(8)  bes8 aes(aes) des,8 \slurSolid |}
  \tag #'v1   {            bes'8 8  bes8 aes4     des,8            |}
  \tag #'v2   {            bes'4    bes8 aes aes  des,8            |}
  \tag #'v3   {            bes'4    bes8 aes aes  des,8            |}
  \tag #'dash    {\slurDashed ges4(8) \slurSolid f4 8 |}
  \tag #'(v1 v2) {            ges4.              f4 8 |}
  \tag #'v3      {            ges4 8             f4 8 |}
  \tag #'dash    {\slurDashed ees8(8) 8 8(f) \slurSolid ees8 |} % C
  \tag #'v1      {            ees4    8 8 f             ees8 |}
  \tag #'(v2 v3) {            ees8 8  8 8(f)            ees8 |}
  aes4.~4 ges16 16 | f8 8 8 \bar "|" \break
  f4 ges8 | % D
  \tag #'dash    {aes4. 4 \slurDashed 16(16) \slurSolid |}
  \tag #'v1      {aes4. 4             8                 |}
  \tag #'(v2 v3) {aes4. 4             16 16             |}
  \tag #'dash    {\slurDashed ges8(8)  \slurSolid ges8 bes4 des8 |}
  \tag #'(v1 v2) {            ges,4               ges8 bes4 des8 |}
  \tag #'v3      {            ges,8 8             ges8 bes4 des8 |}
  aes4.~4 \bar "|" \break
  aes16 16 | % E
  \tag #'dash    {\slurDashed des8(8)  \slurSolid des8 c4 f,8 |}
  \tag #'v3      {            des'4               des8 c4 f,8 |}
  \tag #'(v1 v2) {            des'8 8             des8 c4 f,8 |}
  bes4. aes4 ges8 | f f f \bar "|" \break
  \tag #'dash    {\slurDashed ees8(8) \slurSolid aes8 |} % F
  \tag #'(v1 v2) {            ees4               aes8 |}
  \tag #'v3      {            ees8 8             aes8 |}
  4.~4 16 16 |
  \tag #'dash    {\slurDashed aes8(8)  \slurSolid des8 f4 ees8 |}
  \tag #'v3      {            aes,4               des8 f4 ees8 |}
  \tag #'(v1 v2) {            aes,8 8             des8 f4 ees8 |}
  des4(c8) bes4\fermata 8 | % G
  \tag #'dash    {aes8 f ges \slurDashed f(f) \slurSolid ees8 |}
  \tag #'(v1 v2) {aes8 f ges             f4              ees8 |}
  \tag #'v3      {aes8 f ges             f f             ees8 |}
  des4.~4
}

alto = \relative {
  \autoBeamOff
  des'16 16 | 8 8 8 4 ees8 |
  \tag #'dash    {f4. 4 \slurDashed ees16(16) \slurSolid |}
  \tag #'(v1 v3) {f4. 4             ees8                 |}
  \tag #'v2      {f4. 4             ees16 16             |}
  ges4 8 bes4 des8 |
  aes4.~4 8 | % B
  \tag #'dash    {\slurDashed ges8(8) 8 des8(8) \slurSolid 8 |}
  \tag #'v1      {            ges8 8  8 des4               8 |}
  \tag #'(v2 v3) {            ges4    8 des8 8             8 |}
  \tag #'dash    {\slurDashed c4(8) \slurSolid des4 8 |}
  \tag #'(v1 v2) {            c4.              des4 8 |}
  \tag #'v3      {            c4 8             des4 8 |}
  \tag #'dash      {\slurDashed ees8(8) 8 8(8) \slurSolid 8 |} % C
  \tag #'v1        {            ees4    8 8 8             8 |}
  \tag #'(v2 v3)   {            ees8 8  8 4               8 |}
  c4.~4 16 16 | des8 8 8
  des4 ees8 | % D
  \tag #'dash    {f4. 4 \slurDashed ees16(16) \slurSolid |}
  \tag #'v1      {f4. 4             ees8                 |}
  \tag #'(v2 v3) {f4. 4             ees16 16             |}
  \tag #'dash    {\slurDashed des8(8) \slurSolid 8 4 ges8 |}
  \tag #'(v1 v2) {            des4               8 4 ges8 |}
  \tag #'v3      {            des8 8             8 4 ges8 |}
  f4.~4
  f16 16 | % E
  \tag #'dash    {\slurDashed f8(8) \slurSolid 8 ees4 8 |}
  \tag #'v3      {            f4               8 ees4 8 |}
  \tag #'(v1 v2) {            f8 8             8 ees4 8 |}
  des4. 4 8 | 8 8 8
  \tag #'dash    {\slurDashed c8(8) \slurSolid 8 |} % F
  \tag #'(v1 v2) {            c4               8 |}
  \tag #'v3      {            c8 8             8 |}
  des4.~4 ges16 16 |
  \tag #'dash    {\slurDashed f8(8) \slurSolid 8 aes4 a8 |}
  \tag #'v3      {            f4               8 aes4 a8 |}
  \tag #'(v1 v2) {            f8 8             8 aes4 a8 |}
  bes4(aes8) ges4\fermata 8 | % G
  \tag #'dash    {f8 des des \slurDashed des(c) \slurSolid c |}
  \tag #'(v1 v2) {f8 des des             des(c)            c |}
  \tag #'v3      {f8 des des             des c             c |}
  des4.~4
}

tenor = \relative {
  \autoBeamOff
  aes16 16 | 8 8 8 4 8 |
  \tag #'dash    {des4. 4 \slurDashed c16(16) \slurSolid |}
  \tag #'(v1 v3) {des4. 4             c8                 |}
  \tag #'v2      {des4. 4             16 16              |}
  bes4 8 ges4 bes8 |
  des4.~4 8 | % B
  \tag #'dash    {\slurDashed des8(8) 8 8(8) \slurSolid aes8 |}
  \tag #'v1      {            des8 8  8 4               aes8 |}
  \tag #'(v2 v3) {            des4    8 8 8             aes8 |}
  \tag #'dash    {\slurDashed aes4(8) \slurSolid 4 8 |}
  \tag #'(v1 v2) {            aes4.              4 8 |}
  \tag #'v3      {            aes4 8             4 8 |}
  \tag #'dash    {\slurDashed aes8(8) 8 g(g) \slurSolid 8 |} % C
  \tag #'v1      {            aes4    8 g g8            8 |}
  \tag #'(v2 v3) {            aes8 8  8 g4              8 |}
  aes4.~4 16 16 | 8 8 8
  aes4 8 | %D
  \tag #'dash    {des4. 4 \slurDashed c16(c) \slurSolid |}
  \tag #'v1      {des4. 4             c8                |}
  \tag #'(v2 v3) {des4. 4             c16 c             |}
  \tag #'dash    {\slurDashed bes8(8) \slurSolid 8 ges4 bes8 |}
  \tag #'(v1 v2) {            bes4               8 ges4 bes8 |}
  \tag #'v3      {            bes8 8             8 ges4 bes8 |}
  des4.~4
  aes16 16 | % E
  \tag #'dash    {\slurDashed bes8(8) \slurSolid 8 a4 8 |}
  \tag #'v3      {            bes4               8 a4 8 |}
  \tag #'(v1 v2) {            bes8 8             8 a4 8 |}
  bes4. ces4 bes8 | aes8 8 8
  \tag #'dash    {\slurDashed aes8(8) \slurSolid 8 |} % F
  \tag #'(v1 v2) {            aes4               8 |}
  \tag #'v3      {            aes8 8             8 |}
  aes4.~4 c16 16 |
  \tag #'dash    {\slurDashed des8(8) \slurSolid aes8 des4 8 |}
  \tag #'v3      {            des4               aes8 des4 8 |}
  \tag #'(v1 v2) {            des8 8             aes8 des4 8 |}
  des4. 4\fermata 8 | % G
  \tag #'dash    {des  aes bes \slurDashed aes(aes) \slurSolid ges8 |}
  \tag #'(v1 v2) {des' aes bes             aes4                ges8 |}
  \tag #'v3      {des' aes bes             aes aes             ges8 |}
  f4.~4
}

bass = \relative {
  \autoBeamOff
  des16 16 | 8 8 8 4 8 | 4. 4 \slurDashed 16(16) | 4 8 4 8 |
  des4.~4 8 | %B
  \tag #'dash    {\slurDashed ges8(8) 8 f(f) \slurSolid 8 |}
  \tag #'v1      {            ges8 8  8 f4              8 |}
  \tag #'(v2 v3) {            ges4    8 f f8            8 |}
  \tag #'dash     {\slurDashed ees4(8) \slurSolid des4 8 |}
  \tag #'(v1 v2)  {            ees4.              des4 8 |}
  \tag #'v3       {            ees4 8             des4 8 |}
  \tag #'dash    {\slurDashed c8(8) 8 bes(bes) \slurSolid 8 |} % C
  \tag #'v1      {            c4    8 bes bes8            8 |}
  \tag #'(v2 v3) {            c8 8  8 bes4                8 |}
  aes4.~4 16 16 | des8 8 8
  des4 8 | % D
  \tag #'dash    {4. 4 \slurDashed 16(16) \slurSolid |}
  \tag #'v1      {4. 4             8                 |}
  \tag #'(v2 v3) {4. 4             16 16             |}
  \tag #'dash    {\slurDashed 8(8) \slurSolid 8 4 8 |}
  \tag #'(v1 v2) {            4               8 4 8 |}
  \tag #'v3      {            8 8             8 4 8 |}
  4.~4
  des16 16 | % E
  \tag #'dash    {\slurDashed bes8 (8) \slurSolid 8 f'4 8 |}
  \tag #'v3      {            bes,4               8 f'4 8 |}
  \tag #'(v1 v2) {            bes,8 8             8 f'4 8 |}
  ges4. d4 ees8 | aes,8 8 8
  \tag #'dash    {\slurDashed ges'8(8) \slurSolid 8 |} % F
  \tag #'(v1 v2) {            ges4                8 |}
  \tag #'v3      {            ges8  8             8 |}
  f4.~4 ees16 16 |
  \tag #'dash    {\slurDashed des8(8) \slurSolid 8 4 f8 |}
  \tag #'v3      {            des4               8 4 f8 |}
  \tag #'(v1 v2) {            des8 8             8 4 f8 |}
  ges4. 4\fermata ges,8 | % G
  \tag #'dash    {aes8 8 8 \slurDashed 8(8) \slurSolid 8 |}
  \tag #'(v1 v2) {aes8 8 8             4               8 |}
  \tag #'v3      {aes8 8 8             8 8             8 |}
  des4.~4
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
  There is nev -- er a day so drea -- ry,
  But God can make it bright;
  And \nom un -- to \yesm the soul that trusts Him,
  He giv -- eth \nom songs in \yesm the night.
  There is nev -- er a path so hid -- den,
  But God will lead the way.
  If we \nom seek for \yesm the Spi -- rit's gui -- dance,
  And pa -- tient -- ly wait and pray;
  If we \nom seek for \yesm the Spi -- rit's gui -- dance,
  And pa -- tient -- ly wait and pray.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is nev -- er a cross so hea -- vy,
  \nom But the \yesm nail- scarred hands are there,
  Out -- stretched in \nom ten -- der \yesm com -- pas -- sion,
  The \nom bur -- den \yesm to help us bear.
  There is nev -- er a heart so bro -- ken,
  \nom But the \yesm lov -- ing Lord can heal;
  For the \nom heart that \yesm was pierced on Cal -- v'ry
  does still for His loved ones feel;
  For the \nom heart that \yesm was pierced on Cal -- v'ry
  does still for His loved ones feel.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There is nev -- er a life so dark -- ened,
  So hope -- less and un -- blest,
  But may be \nom filled with the light of God. \yesm
  And \nom en -- ter \yesm His pro -- mised rest.
  There is nev -- er a sin of sor -- row,
  \nom There is nev -- er \yesm a care or loss,
  But that we may bring to Je -- sus,
  And leave at the \nom foot of \yesm the cross;
  But that we may bring to Je -- sus,
  And leave at the \nom foot of \yesm the cross,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " nev "er " "a " "day " "so " drea "ry, "
  "\nBut " "God " "can " "make " "it " "bright; "
  "\nAnd " \nom un "to " \yesm "the " "soul " "that " "trusts " "Him, "
  "\nHe " giv "eth " \nom "songs " "in " \yesm "the " "night. "
  "\nThere " "is " nev "er " "a " "path " "so " hid "den, "
  "\nBut " "God " "will " "lead " "the " "way. "
  "\nIf " "we " \nom "seek " "for " \yesm "the " Spi "rit's " gui "dance, "
  "\nAnd " pa tient "ly " "wait " "and " "pray; "
  "\nIf " "we " \nom "seek " "for " \yesm "the " Spi "rit's " gui "dance, "
  "\nAnd " pa tient "ly " "wait " "and " "pray.\n"

  \set stanza = "2."
  "\nThere " "is " nev "er " "a " "cross " "so " hea "vy, "
  \nom But the \yesm nail- scarred hands are there,
  "\nOut" "stretched " "in " \nom ten "der " \yesm com pas "sion, "
  "\nThe " \nom bur "den " \yesm "to " "help " "us " "bear. "
  "\nThere " "is " nev "er " "a " "heart " "so " bro "ken, "
  \nom But the \yesm lov -- ing Lord can heal;
  "\nFor " "the " \nom "heart " "that " \yesm "was " "pierced " "on " Cal "v'ry "
  "\ndoes " "still " "for " "His " "loved " "ones " "feel; "
  "\nFor " "the " \nom "heart " "that " \yesm "was " "pierced " "on " Cal "v'ry "
  "\ndoes " "still " "for " "His " "loved " "ones " "feel.\n"

  \set stanza = "3."
  "\nThere " "is " nev "er " "a " "life " "so " dark "ened, "
  "\nSo " hope "less " "and " un "blest, "
  "\nBut " "may " "be " \nom "filled " "with " "the " "light " "of " "God. " \yesm
  "\nAnd " \nom en "ter " \yesm "His " pro "mised " "rest. "
  "\nThere " "is " nev "er " "a " "sin " "of " sor "row, "
  \nom There is nev -- er \yesm a care or loss,
  "\nBut " "that " "we " "may " "bring " "to " Je "sus, "
  "\nAnd " "leave " "at " "the " \nom "foot " "of " \yesm "the " "cross; "
  "\nBut " "that " "we " "may " "bring " "to " Je "sus, "
  "\nAnd " "leave " "at " "the " \nom "foot " "of " \yesm "the " "cross, "
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
