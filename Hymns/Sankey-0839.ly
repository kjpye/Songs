\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only to Know!"
  subtitle    = "Sankey No. 829"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Allie Starbright."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*7
  \textMark \markup { \box \bold "C" }    s2.*7
  \textMark \markup { \box \bold "D" }    s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 ais b |
  \tag #'dash       {g2 \slurDashed 8(8) \slurSolid |}
  \tag #'v4         {g2             4               |}
  \tag #'(v1 v2 v3) {g2             8 8             |}
  g4(fis) e |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid }|
  \tag #'v4         {d2             4               }|
  \tag #'(v1 v2 v3) {d2             8 8             }|
  e2 g4 | 2 fis4 | g2 \bar "|" \break
  \tag #'dash    {\slurDashed d8(8) \slurSolid |}
  \tag #'(v3 v4) {            d4               |}
  \tag #'(v1 v2) {            d8 8             |}
  b'4(ais) b | g2 4 | g(fis) e | d2 4 | e2 4 |
  \tag #'dash       {\slurDashed fis(g) \slurSolid a |}
  \tag #'(v4 v2 v3) {            fis(g)            a |}
  \tag #'v1         {            fis g             a |}
  g2. |
  \section \sectionLabel \markup\smallCaps Refrain.
  \tag #'dash       {\slurDashed b4(a) \slurSolid b |}
  \tag #'v4         {            b4(a)            b |}
  \tag #'(v1 v2 v3) {            b4 a             b |}
  d2. |
  \tag #'dash       {\slurDashed b4(a) \slurSolid g |}
  \tag #'v4         {            b4(a)            g |}
  \tag #'(v1 v2 v3) {            b4 a             g |}
  a2. | 4 b c |
  \tag #'dash       {\slurDashed b4(d) \slurSolid cis |}
  \tag #'v4         {            b4(d)            cis |}
  \tag #'(v1 v2 v3) {            b4 d             cis |}
  d2. |
  b4 ais b | % D
  \tag #'dash       {g2 \slurDashed 8(8) \slurSolid |}
  \tag #'v4         {g2             4               |}
  \tag #'(v1 v2 v3) {g2             8 8             |}
  \tag #'dash    {\slurDashed g4(fis) \slurSolid e |}
  \tag #'(v1 v4) {            g4(fis)            e |}
  \tag #'(v2 v3) {            g4 fis             e |}
  d2 4 |
  \tag #'dash    {\slurDashed e4(4) \slurSolid g  |}
  \tag #'(v3 v4) {            e2               g4 |}
  \tag #'(v1 v2) {            e4 4             g  |}
  \tag #'dash       {\slurDashed fis4(g) \slurSolid a |}
  \tag #'(v2 v3 v4) {            fis4(g)            a |}
  \tag #'v1         {            fis4 g             a |}
  g2. |
}

alto = \relative {
  \autoBeamOff
  g'4 4 4 |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid |}
  \tag #'v4         {d2             4               |}
  \tag #'(v1 v2 v3) {d2             8 8             |}
  e4(d) c |
  \tag #'dash         {b2 \slurDashed b8(8) \slurSolid |}
  \tag #'v4           {b2             b4               |}
  \tag #'(v1 v2 v3)   {b2             b8 8             |}
  c2 cis4 | d2 c4 | b2
  \tag #'dash    {\slurDashed b8(8) \slurSolid |} % B
  \tag #'(v3 v4) {            b4               |}
  \tag #'(v1 v2) {            b8 8             |}
  d4(cis) d | b2 d4 | e(d) c | b2 4 | c2 4 |
  \tag #'dash       {\slurDashed c(b) \slurSolid c |}
  \tag #'(v2 v3 v4) {            c(b)            c |}
  \tag #'v1         {            c b             c |}
  b2. \section
  \tag #'dash       {\slurDashed g'4(4) \slurSolid g4 |} % C
  \tag #'v4         {            g2                g4 |}
  \tag #'(v1 v2 v3) {            g4  4             g4 |}
  d2. |
  \tag #'dash       {\slurDashed d4(fis) \slurSolid g |}
  \tag #'v4         {            d4(fis)            g |}
  \tag #'(v1 v2 v3) {            d4 fis             g |}
  fis2. | 4 g a |
  \tag #'dash       {\slurDashed g4(a) \slurSolid g |}
  \tag #'v4         {            g4(a)            g |}
  \tag #'(v1 v2 v3) {            g4 a             g |}
  fis2. |
  d4 cis d | % D
  \tag #'dash       {b2 \slurDashed d8(8) \slurSolid |}
  \tag #'v4         {b2             d4               |}
  \tag #'(v1 v2 v3) {b2             d8 8             |}
  \tag #'dash    {\slurDashed e4(d) \slurSolid c |}
  \tag #'(v1 v4) {            e4(d)            c |}
  \tag #'(v2 v3) {            e4 d             c |}
  b2 d4 |
  \tag #'dash    {\slurDashed c4(4) \slurSolid cis4 |}
  \tag #'(v3 v4) {            c2               cis4 |}
  \tag #'(v1 v2) {            c4 4             cis4 |}
  \tag #'dash       {\slurDashed d4(4) \slurSolid d4 |}
  \tag #'(v2 v3 v4) {            d2               d4 |}
  \tag #'v1         {            d4 4             d4 |}
  d2. |
}

tenor = \relative {
  \autoBeamOff
  d'4 cis d |
  \tag #'dash       {b2 \slurDashed g8(8) \slurSolid |}
  \tag #'v4         {b2             g4               |}
  \tag #'(v1 v2 v3) {b2             g8 8             |}
  g2 4 |
  \tag #'dash       {g2 \slurDashed g8(8) \slurSolid |}
  \tag #'v4         {g2             g4               |}
  \tag #'(v1 v2 v3) {g2             g8 8             |}
  g2 a4 | b2 a4 | g2
  \tag #'dash    {\slurDashed g8(8) \slurSolid |} % B
  \tag #'(v3 v4) {            g4               |}
  \tag #'(v1 v2) {            g8 8             |}
  g2 4 | d2 g4 | 2 4 | 2 4 | 2 a4 |
  \tag #'dash       {\slurDashed a4(g) \slurSolid fis|}
  \tag #'(v2 v3 v4) {            a4(g)            fis|}
  \tag #'v1         {            a4 g             fis|}
  g2. \section |
  \tag #'dash       {\slurDashed d'4(c) \slurSolid b |} % C
  \tag #'v4         {            d4 (c)            b |}
  \tag #'(v1 v2 v3) {            d4  c             b |}
  a2. |
  \tag #'dash       {\slurDashed d4(c) \slurSolid b |}
  \tag #'v4         {            d4(c)            b |}
  \tag #'(v1 v2 v3) {            d4 c             b |}
  d2. | 4 4 4 |
  \tag #'dash       {\slurDashed d4(4) \slurSolid a4 |}
  \tag #'v4         {            d2               a4 |}
  \tag #'(v1 v2 v3) {            d4 4             a4 |}
  a2. |
  g4 4 4 | % D
  \tag #'dash       {g2 \slurDashed g8(8) \slurSolid |}
  \tag #'v4         {g2             g4               |}
  \tag #'(v1 v2 v3) {g2             g8 8             |}
  \tag #'dash    {\slurDashed g4(4) \slurSolid g4|}
  \tag #'(v1 v4) {            g2               g4|}
  \tag #'(v2 v3) {            g4 4             g4|}
  g2 4 |
  \tag #'dash    {\slurDashed g4(4) \slurSolid a4|}
  \tag #'(v3 v4) {            g2               a4|}
  \tag #'(v1 v2) {            g4 4             a4|}
  \tag #'dash       {\slurDashed a4(b) \slurSolid c|}
  \tag #'(v2 v3 v4) {            a4(b)            c|}
  \tag #'v1         {            a4 b             c|}
  b2. |
}

bass = \relative {
  \autoBeamOff
  g4 4 4 |
  \tag #'dash       {g2  \slurDashed b,8(8) \slurSolid |}
  \tag #'v4         {g'2             b,4               |}
  \tag #'(v1 v2 v3) {g'2             b,8 8             |}
  c2 4 |
  \tag #'dash       {g2 \slurDashed g8(8) \slurSolid |}
  \tag #'v4         {g2             g4               |}
  \tag #'(v1 v2 v3) {g2             g8 8             |}
  c2 a4 | d2 4 | g,2
  \tag #'dash    {\slurDashed g8(8) \slurSolid |} % B
  \tag #'(v3 v4) {            g4               |}
  \tag #'(v1 v2) {            g8 8             |}
  g2 4 | 2 b4 | c2 4 | g2 4 | c2 a4 |
  \tag #'dash       {\slurDashed d4(4) \slurSolid d4 |}
  \tag #'(v2 v3 v4) {            d2               d4 |}
  \tag #'v1         {            d4 4             d4 |}
  g2. \section |
  \tag #'dash       {\slurDashed g4(4) \slurSolid g4 |} % C
  \tag #'v4         {            g2               g4 |}
  \tag #'(v1 v2 v3) {            g4 4             g4 |}
  fis2. |
  \tag #'dash       {\slurDashed g4(d) \slurSolid e4 |}
  \tag #'v4         {            g4(d)            e4 |}
  \tag #'(v1 v2 v3) {            g4 d             e4 |}
  d2. | 4 4 4 |
  \tag #'dash       {\slurDashed g4(fis) \slurSolid e4 |}
  \tag #'v4         {            g4(fis)            e4 |}
  \tag #'(v1 v2 v3) {            g4 fis             e4 |}
  d2. |
  g,4 4 4 | % D
  \tag #'dash       {g2 \slurDashed b8(8) \slurSolid |}
  \tag #'v4         {g2             b4               |}
  \tag #'(v1 v2 v3) {g2             b8 8             |}
  \tag #'dash    {\slurDashed c4(4) \slurSolid c4 |}
  \tag #'(v1 v3) {            c2               c4 |}
  \tag #'(v2 v4) {            c4 4             c4 |}
  g2 b4 |
  \tag #'dash    {\slurDashed c4(4) \slurSolid a4 |}
  \tag #'(v3 v4) {            c2               a4 |}
  \tag #'(v1 v2) {            c4 4             a4 |}
  \tag #'dash       {\slurDashed d4(4) \slurSolid d4|}
  \tag #'(v2 v3 v4) {            d2               d4|}
  \tag #'v1         {            d4 4             d4|}
  g,2. |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ly to know \nom that the \yesm path I tread
  \nom Is the \yesm path marked out for me;
  \nom That the \yesm way, though thorn -- y, rough, and steep,
  Will lead me \nom near -- er \yesm to Thee!
  \nom Near -- er \yesm to Thee! \nom near -- er \yesm to Thee!
  Bless -- ed \nom Re -- deem -- er, \yesm to Thee!
  On -- ly to know \nom that the \yesm path I tread
  Is \nom bring -- ing \yesm me \nom near -- er \yesm to Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ly to know \nom when the \yesm day is past,
  \nom And the \yesm ev -- ’ning sha -- dows come,
  \nom That its \yesm trials and cares have proved in -- deed
  A “day’s march near -- er home”!
  \nom Near -- er \yesm my home!
  \nom near -- er \yesm my home!
  Near -- er my \nom beau -- ti \yesm -- ful home!
  On -- ly to know \nom that each fast -- fleet \yesm -- ing day
  Is \nom bring -- ing \yesm me near -- er home!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly to know \nom that the \yesm cross I see
  \nom Is the \yesm cross of Cal -- va -- ry,
  On which the world’s Re -- deem -- er died,
  To pur -- chase life for me!
  \nom Pur -- chased \yesm for me!
  \nom pur -- chased \yesm for me
  Life Thou hast \nom pur -- chased \yesm for me!
  On -- ly to know \nom that Thy death on \yesm the cross
  Brings light and life to me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  On -- ly to know His peace with -- in,
  My will to His re -- signed;
  Oh, fill me with Thy full -- ness, Lord,
  And make me whol -- ly Thine!
  Whol -- ly Thine! whol -- ly Thine!
  Now and for -- ev -- er Thine!
  Fill me with love and peace Di -- vine,
  And make me whol -- ly Thine!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ly " "to " "know " "that " "the " "path " "I " "tread "
  "\nIs " "the " "path " "marked " "out " "for " "me; "
  "\nThat " "the " "way, " "though " thorn "y, " "rough, " "and " "steep, "
  "\nWill " "lead " "me " near "er " "to " "Thee! "
  "\nNear" "er " "to " "Thee! " near "er " "to " "Thee! "
  "\nBless" "ed " Re deem "er, " "to " "Thee! "
  "\nOn" "ly " "to " "know " "that " "the " "path " "I " "tread "
  "\nIs " bring "ing " "me " near "er " "to " "Thee!\n"

  \set stanza = "2."
  "\nOn" "ly " "to " "know " "when " "the " "day " "is " "past, "
  "\nAnd " "the " ev "’ning " sha "dows " "come, "
  "\nThat " "its " "trials " "and " "cares " "have " "proved " in "deed "
  "\nA " "“day’s " "march " near "er " "home”! "
  "\nNear" "er " "my " "home! "
  "\nnear" "er " "my " "home! "
  "\nNear" "er " "my " beau ti "ful " "home! "
  "\nOn" "ly " "to " "know " "that " "each " fast fleet "ing " "day "
  "\nIs " bring "ing " "me " near "er " "home!\n"

  \set stanza = "3."
  "\nOn" "ly " "to " "know " "that " "the " "cross " "I " "see "
  "\nIs " "the " "cross " "of " Cal va "ry, "
  "\nOn " "which " "the " "world’s " Re deem "er " "died, "
  "\nTo " pur "chase " "life " "for " "me! "
  "\nPur" "chased " "for " "me! "
  "\npur" "chased " "for " "me "
  "\nLife " "Thou " "hast " pur "chased " "for " "me! "
  "\nOn" "ly " "to " "know " "that " "Thy " "death " "on " "the " "cross "
  "\nBrings " "light " "and " "life " "to " "me!\n"

  \set stanza = "4."
  "\nOn" "ly " "to " "know " "His " "peace " with "in, "
  "\nMy " "will " "to " "His " re "signed; "
  "\nOh, " "fill " "me " "with " "Thy " full "ness, " "Lord, "
  "\nAnd " "make " "me " whol "ly " "Thine! "
  "\nWhol" "ly " "Thine! " whol "ly " "Thine! "
  "\nNow " "and " for ev "er " "Thine! "
  "\nFill " "me " "with " "love " "and " "peace " Di "vine, "
  "\nAnd " "make " "me " whol "ly " "Thine! "
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
%            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|."
                       }
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
                         \bar "|."
                       }
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
              \keepWithTag #'v4 \soprano
            }
%            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
          >>
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
