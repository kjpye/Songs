\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Adorning Divine."
  subtitle    = "Sankey No. 576"
  subsubtitle = "C. C. No. 98"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Philip Phillips."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charlotte Elliott."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3
  \textMark \markup { \box \bold "C" }     s2.*3
  \textMark \markup { \box \bold "D" }     s2.*3 s4.
  \textMark \markup { \box \bold "E" } s4. s2.*2 s4. s4
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
  f'8 | d ees f g a bes | f4.~4 8 | g8 a bes c bes c |
  d4.~4 f,8 | d'8 cis d bes a bes |
  \tag #'dash    {d   bes g f4 \slurDashed 16(16) \slurSolid |}
  \tag #'v2      {d'8 bes g f4             8                 |}
  \tag #'(v1 v3) {d'8 bes g f4             16 16             |}
  g8 a bes c bes a | bes4.~4 8 | c8 d ees d bes g |
  \tag #'dash    {f4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v2 v3) {f4.~4              8                 |}
  \tag #'v1      {f4.~4              16 16             |}
  g8 a bes d c bes |
  \tag #'dash    {c4.~4 \slurDashed bes16(c) \slurSolid |}
  \tag #'v3      {c4.~4             bes16(c)            |}
  \tag #'(v1 v2) {c4.~4             bes16 c             |}
  d8 ees d \bar "|" \break
  d8 c bes | c bes g f4 8^\markup\italic ritard. | g8 a bes c bes a | bes4.~4 
}

alto = \relative {
  \autoBeamOff
  d'8 | bes c d ees ees ees | d4.~4 8 | ees f f f f f |
  f4.~4 d8 | f e f d ees f |
  \tag #'dash    {ees8 8 8 d4 \slurDashed f16(16) \slurSolid |}
  \tag #'v2      {ees8 8 8 d4             f8                 |}
  \tag #'(v1 v3) {ees8 8 8 d4             f16 16             |}
  ees8 8 d ees d ees | d4.~4 8 | f8 8 8 8 d ees |
  \tag #'dash    {d4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v2 v3) {d4.~4             8                 |}
  \tag #'v1      {d4.~4             16 16             |}
  ees8 8 d f f f |
  \tag #'dash    {4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'v3      {4.~4             16(16)            |}
  \tag #'(v1 v2) {4.~4             16 16             |}
  f8 g f
  f8 f f | ees8 8 8 d4 f8 | ees8 8 d ees d ees | d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8 | f f bes8 8 8 8 | 4.~4 8 | 8 c bes a bes a |
  bes4.~4 8 | 8 8 8 8 f bes |
  \tag #'dash    {g8 8 bes8 4 \slurDashed 16(16) \slurSolid |}
  \tag #'v2      {g8 8 bes8 4             8                 |}
  \tag #'(v1 v3) {g8 8 bes8 4             16 16             |}
  bes8 f bes g f c' | bes4.~4 8 | a bes c bes8 8 8 |
  \tag #'dash    {bes4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v2 v3) {bes4.~4             8                 |}
  \tag #'v1      {bes4.~4             16 16             |}
  8 f f bes a bes |
  \tag #'dash    {a4.~4 \slurDashed bes16(a) \slurSolid |}
  \tag #'v3      {a4.~4             bes16(a)            |}
  \tag #'(v1 v2) {a4.~4             bes16 a             |}
  bes8 8 8
  bes8 a bes | g g bes8 4 8 | 8 f bes g f c' | bes4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8 | 8 8 8 ees ees g | bes4.~4 bes,8 | ees ees d f d f |
  bes,4.~4 8 | 8 8 8 8 c d |
  \tag #'dash    {ees8 8 8 bes4 \slurDashed d16(16) \slurSolid |}
  \tag #'v2      {ees8 8 8 bes4             d8                 |}
  \tag #'(v1 v3) {ees8 8 8 bes4             d16 16             |}
  ees8 f g ees f f | bes,4.~4 8 | f'8 8 8 bes,8 8 8 |
  \tag #'dash    {bes4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v2 v3) {bes4.~4             8                 |}
  \tag #'v1      {bes4.~4             16 16             |}
  ees8 c bes bes' f d |
  \tag #'dash    {f4.~4 \slurDashed d16(c) \slurSolid |}
  \tag #'v3      {f4.~4             d16(c)            |}
  \tag #'(v1 v2) {f4.~4             d16 c             |}
  bes8 8 8
  bes8 c d | ees8 8 8 bes4 d8 | ees8 f g ees f f | bes,4.~4
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
  I want the a -- dorn -- ing Di -- vine
  Thou on -- ly, my God, canst be -- stow;
  I want in those beau -- ti -- ful gar -- ments to shine,
  \nom Which dis -- \yesm tin -- guish Thy house -- hold be -- low.
  I want ev -- 'ry mo -- ment to feel
  \nom That Thy \yesm Spi -- rit re -- sides in my heart,
  \nom That His \yesm pow -- er is pre -- sent to cleanse and to heal,
  And new -- ness of life to im -- part.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I want, oh I want to at -- tain
  Some like -- ness, my Sa -- viour, to Thee!
  That longed -- for re -- sem -- blance once more to re -- gain—
  Thy come -- li -- ness put up -- on me!
  I want to be marked for Thine own, Thy seal on my fore -- head to wear;
  \nom To re -- \yesm ceive that "\"new" "name\"" on the my -- stic white stone,
  Which none but Thy -- self can de -- clare.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I want as a trav -- 'ller to haste
  Straight on -- ward, nor pause on my way;
  Nor fore -- thought, nor anx -- ious con -- tri -- vance to waste
  \nom On the \yesm tent on -- ly pitched for a day.
  I want, and this sums up my prayer,
  To glo -- ri -- fy Thee till I die;
  Then calm -- ly to yield up my soul to Thy care,
  And breathe out, in faith, my last sigh.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "want " "the " a dorn "ing " Di "vine "
  "\nThou " on "ly, " "my " "God, " "canst " be "stow; "
  "\nI " "want " "in " "those " beau ti "ful " gar "ments " "to " "shine, "
  "\nWhich " dis tin "guish " "Thy " house "hold " be "low. "
  "\nI " "want " ev "'ry " mo "ment " "to " "feel "
  "\nThat " "Thy " Spi "rit " re "sides " "in " "my " "heart, "
  "\nThat " "His " pow "er " "is " pre "sent " "to " "cleanse " "and " "to " "heal, "
  "\nAnd " new "ness " "of " "life " "to " im "part.\n"

  \set stanza = "2."
  "\nI " "want, " "oh " "I " "want " "to " at "tain "
  "\nSome " like "ness, " "my " Sa "viour, " "to " "Thee! "
  "\nThat " longed "for " re sem "blance " "once " "more " "to " re "gain— "
  "\nThy " come li "ness " "put " up "on " "me! "
  "\nI " "want " "to " "be " "marked " "for " "Thine " "own, " "Thy " "seal " "on " "my " fore "head " "to " "wear; "
  "\nTo " re "ceive " "that " "\"new " "name\" " "on " "the " my "stic " "white " "stone, "
  "\nWhich " "none " "but " Thy "self " "can " de "clare.\n"

  \set stanza = "3."
  "\nI " "want " "as " "a " trav "'ller " "to " "haste "
  "\nStraight " on "ward, " "nor " "pause " "on " "my " "way; "
  "\nNor " fore "thought, " "nor " anx "ious " con tri "vance " "to " "waste "
  "\nOn " "the " "tent " on "ly " "pitched " "for " "a " "day. "
  "\nI " "want, " "and " "this " "sums " "up " "my " "prayer, "
  "\nTo " glo ri "fy " "Thee " "till " "I " "die; "
  "\nThen " calm "ly " "to " "yield " "up " "my " "soul " "to " "Thy " "care, "
  "\nAnd " "breathe " "out, " "in " "faith, " "my " "last " "sigh. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." }
                                               { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor }
                                               { \global \keepWithTag #'dash \bass }
          >>
        >>
    \layout {
      #(layout-set-staff-size 18)
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
