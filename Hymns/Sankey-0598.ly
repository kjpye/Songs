\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'll go where Thou wouldst."
  subtitle    = "Sankey No. 598"
  subsubtitle = \markup\smallCaps "(Consecration Hymn.)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Carrie E. Rounsefell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary Brown."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3
  \textMark \markup { \box \bold "D" }     s2.*3
  \textMark \markup { \box \bold "E" }     s2.*3 s4.
  \textMark \markup { \box \bold "F" } s4. s2.*3
  \textMark \markup { \box \bold "G" }     s2.*3 s4. s4
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
  a'8 |
  \tag #'dash    {a4 8 c4 \slurDashed a16(16) \slurSolid |}
  \tag #'v3      {a4 8 c4             a8                 |}
  \tag #'(v1 v2) {a4 8 c4             a16 16             |}
  bes4 8 d4 8 | c8.-> bes16 a8 c4 a8 |
  g4.~4 8 | a4 8 bes8. a16 bes8 | c4 8 d4\fermata 8 | c8. bes16 a8 \bar "|" \break % B
  a4 g8 | f4.~4 c'8 | 4 g16 16 8[fis] g | a4 bes8 a4 c8 |
  \tag #'dash   {c4 \slurDashed g16(16) 8(f) \slurSolid g |}
  \tag #'(v1 v3){c4             g16 16  8(f)            g |}
  \tag #'v2     {c4             g8      8 f             g |}
  a4.~4 f8 |
  \tag #'dash    {\slurDashed a8.(g16) \slurSolid a8 bes8. a16 bes8 |}
  \tag #'(v2 v3) {            a8.(g16)            a8 bes8. a16 bes8 |}
  \tag #'v1      {            a8. g16             a8 bes8. a16 bes8 |}
  c8.[b16] c8 d4\fermata 8 | c8-> bes a a a8. g16 | f4.~4
  \section \sectionLabel \markup\smallCaps "Refrain." c'8 |
  c8. g16 8 \bar "|" \break
  g8 fis g | a4 bes8 a4 c16 16 | 8. g16 8 8[f] g | a4.~4 f8 |
  a8.-> g16 a8 bes8. a16 bes8 | c8.[bes16] c8 d4\fermata f8\fermata | c8-> bes a a a8. g16 | f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8 |
  \tag #'dash    {f4 8 4 \slurDashed 16(16) \slurSolid |}
  \tag #'v3      {f4 8 4             8                 |}
  \tag #'(v1 v2) {f4 8 4             16 16             |}
  f4 8 4 8 | 8.-> 16 8 4 8 |
  e4.~4 8 | f4 8 e8. 16 8 | f4 8 4\fermata 8 | f8. 16 8
  e4 8 |f4.~4 8 | e4 16 16 4 8 | f4 8 4 8 |
  \tag #'dash    {e4 \slurDashed 16(16) 8(f) \slurSolid e |}
  \tag #'(v1 v3) {e4             16 16  8(f)            e |}
  \tag #'v2      {e4             8      8 f             e |}
  f4.~4 8 |
  \tag #'dash    {\slurDashed f8.(16) \slurSolid 8 e8. 16 8 |}
  \tag #'(v2 v3) {            f4                 8 e8. 16 8 |}
  \tag #'v1      {            f8. 16             8 e8. 16 8 |}
  f4 8 4\fermata 8 | 8-> 8 8 8 e8. 16 | f4.~4 8 | e8.-> 16 8
  e8 8 8 | f4 8 4 16 16 | e8. 16 8 8[f] e | f4.~4 8 |
  d8.-> 16 8 e8. 16 8 | f4 8 4\fermata gis8\fermata | a8-> e f f e8. 16 | c4.~4
}

tenor = \relative {
  \autoBeamOff
  c'8 |
  \tag #'dash    {c4 8 a4 \slurDashed c16(16) \slurSolid |}
  \tag #'v3      {c4 8 a4             c8                 |}
  \tag #'(v1 v2) {c4 8 a4             c16 16             |}
  d4 8 bes4 8 | a8.-> d16 c8 4 8 |
  c4.~4 8 | 4 8 8. 16 8 | ees4 8 d4\fermata bes8 | a8. d16 c8
  c4 bes8 | a4.~4 8 | g4 bes16 16 4 8 | c4 d8 c4 a8 |
  \tag #'dash    {g4 \slurDashed bes16(16) 8(a) \slurSolid c |}
  \tag #'(v1 v3) {g4             bes16 16  8(a)            c |}
  \tag #'v2      {g4             bes8      8 a             c |}
  c4.~4 a8 |
  \tag #'dash    {\slurDashed c8.(16) \slurSolid 8 8. 16 8 |}
  \tag #'(v2 v3) {            c4                 8 8. 16 8 |}
  \tag #'v1      {            c8. 16             8 8. 16 8 |}
  c4 8 bes4\fermata 8 | a8-> d c c c8. bes16 | a4.~4 \section 8 | g8.-> c16 8
  c8 8 8 | 4 d8 c4 a16 16 | g8. bes16 8 8[a] c | 4.~4 a8 |
  c8. 16 8 8. 16 8 | ees4 8 d4\fermata 8\fermata | c g c c c8. bes16 | a4.~4
}

bass = \relative {
  \autoBeamOff
  f8 |
  \tag #'dash    {f4 8 4 \slurDashed 16(16) \slurSolid |}
  \tag #'v3      {f4 8 4             8                 |}
  \tag #'(v1 v2) {f4 8 4             16 16             |}
  bes,4 8 4 d8 | f8.-> 16 8 a4 f8 |
  c4.~4 8 | f4 8 g8. 16 8 | a4 8 bes4\fermata bes,8 | c8. 16 8
  c4 8 | f4.~4 8 | c4 16 16 4 8 | f4 8 4 8 |
  \tag #'dash    {c4 \slurDashed 16(16) 8(8) \slurSolid 8 |}
  \tag #'(v1 v3) {c4             16 16  4               8 |}
  \tag #'v2      {c4             8      8 8             8 |}
  f4.~4 8 |
  \tag #'dash    {\slurDashed f8.(16) \slurSolid 8 g8. 16 8 |}
  \tag #'(v2 v3) {            f4                 8 g8. 16 8 |}
  \tag #'v1      {            f8. 16             8 g8. 16 8 |}
  a4 8 bes4\fermata bes,8 | c-> 8 8 8 8. 16 | f4.~4 8 | c8.-> 16 8
  c8 8 8 | f4 8 4 16 16 | c8. 16 8 4 8 | f4.~4 8 |
  f8. 16 8 g8. 16 8 | a4 8 bes4\fermata b8\fermata | c c, c c c8. 16 | \partCombineChords <f, f'>4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I'll go where Thou wouldst
  I should go, dear Lord,
  O -- ver moun -- tain, or plain, or sea;
  I'll say what Thou wouldst
  I should say, dear Lord,
  I'll be what Thou wouldst I should be.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  It may not be \nom on the \yesm moun -- tain's height,
  Or o -- ver the storm -- y sea;
  It may not be at the bat -- tle's front
  My Lord will have need of me:
  But if by a still small voice He calls
  To paths \nom which I \yesm do not know,
  I'll \nom an -- swer— \yesm O Lord, with my hand in Thine,
  I'll go where Thou wouldst I should go.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Per -- haps to -- day \nom there are \yesm lov -- ing words
  Which Je -- sus would have me speak;
  There may be now in the paths of sin
  Some wan -- d'rer whom I should seek:
  O Sa -- viour, if Thou wilt be my giode,
  Tho' dark and \nom rug -- ged \yesm the way.
  My voice __ shall e -- cho Thy mes -- sage sweet—
  I'll say what Thou wuoldst I should say.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There must still be some low -- ly place
  For me in the har -- vest wide,
  Where I may la -- bour thro' life's short day
  For Je -- sus the cru -- ci -- fied:
  So, trust -- ing my "all to" Thy ten -- der care,
  And know -- \nom ing Thou \yesm lov -- est me.
  I'll do __ Thy will with a heart sin -- cere—
  I'll be what Thou wouldst I should be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "It " "may " "not " "be " \nom "on " "the " \yesm moun "tain's " "height, "
  "\nOr " o "ver " "the " storm "y " "sea; "
  "\nIt " "may " "not " "be " "at " "the " bat "tle's " "front "
  "\nMy " "Lord " "will " "have " "need " "of " "me: "
  "\nBut " "if " "by " "a " "still " "small " "voice " "He " "calls "
  "\nTo " "paths " \nom "which " "I " \yesm "do " "not " "know, "
  "\nI'll " \nom an "swer— " \yesm "O " "Lord, " "with " "my " "hand " "in " "Thine, "
  "\nI'll " "go " "where " "Thou " "wouldst " "I " "should " "go. "
  "\nI'll " "go " "where " "Thou " "wouldst "
  "\nI " "should " "go, " "dear " "Lord, "
  "\nO" "ver " mouin "tain, " "or " "plain, " "or " "sea; "
  "\nI'll " "say " "what " "Thou " "wouldst "
  "\nI " "should " "say, " "dear " "Lord, "
  "\nI'll " "be " "what " "Thou " "wouldst " "I " "should " "be.\n"

  \set stanza = "2."
  "\nPer" "haps " to "day " \nom "there " "are " \yesm lov "ing " "words "
  "\nWhich " Je "sus " "would " "have " "me " "speak; "
  "\nThere " "may " "be " "now " "in " "the " "paths " "of " "sin "
  "\nSome " wan "d'rer " "whom " "I " "should " "seek: "
  "\nO " Sa "viour, " "if " "Thou " "wilt " "be " "my " "giode, "
  "\nTho' " "dark " "and " \nom rug "ged " \yesm "the " "way. "
  "\nMy " "voice "  "shall " e "cho " "Thy " mes "sage " "sweet— "
  "\nI'll " "say " "what " "Thou " "wuoldst " "I " "should " "say. "
  "\nI'll " "go " "where " "Thou " "wouldst "
  "\nI " "should " "go, " "dear " "Lord, "
  "\nO" "ver " moun "tain, " "or " "plain, " "or " "sea; "
  "\nI'll " "say " "what " "Thou " "wouldst "
  "\nI " "should " "say, " "dear " "Lord, "
  "\nI'll " "be " "what " "Thou " "wouldst " "I " "should " "be.\n"

  \set stanza = "3."
  "\nThere " "must " "still " "be " "some " low "ly " "place "
  "\nFor " "me " "in " "the " har "vest " "wide, "
  "\nWhere " "I " "may " la "bour " "thro' " "life's " "short " "day "
  "\nFor " Je "sus " "the " cru ci "fied: "
  "\nSo, " trust "ing " "my " "all to " "Thy " ten "der " "care, "
  "\nAnd " know \nom "ing " "Thou " \yesm lov "est " "me. "
  "\nI'll " "do "  "Thy " "will " "with " "a " "heart " sin "cere— "
  "\nI'll " "be " "what " "Thou " "wouldst " "I " "should " "be. "
  "\nI'll " "go " "where " "Thou " "wouldst "
  "\nI " "should " "go, " "dear " "Lord, "
  "\nO" "ver " moun "tain, " "or " "plain, " "or " "sea; "
  "\nI'll " "say " "what " "Thou " "wouldst "
  "\nI " "should " "say, " "dear " "Lord, "
  "\nI'll " "be " "what " "Thou " "wouldst " "I " "should " "be."
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
      #(layout-set-staff-size 19)
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
