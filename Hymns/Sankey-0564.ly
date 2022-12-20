\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Knows."
  subtitle    = "Sankey No. 564"
  subsubtitle = "Sankey 880 No. 377"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Mary G. Brainard." \italic "(alt.)"}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 12/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s4.*8
  \textMark \markup { \box \bold "B" }    s4.*8
  \textMark \markup { \box \bold "C" }    s4.*10
  \textMark \markup { \box \bold "D" }    s4.*10
  \textMark \markup { \box \bold "E" }    s4.*11 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 | g4 8 4 f8 8 ees4~4 g8 | bes4 8 4 aes8 g4.~4 8 |
  \tag #'dash    {c4 8 8 \slurDashed 8(8) \slurSolid 4 bes8 4 8 |}
  \tag #'(v2 v3) {c4 8 8             4               4 bes8 4 8 |}
  \tag #'(v1 v4) {c4 8 8             8 8             4 bes8 4 8 |}
  \tag #'dash       {4 8 \slurDashed a(g) \slurSolid a bes4.~4 aes8 |}
  \tag #'(v1 v2 v3) {4 8             a(g)            a bes4.~4 aes8 |}
  \tag #'v4         {4 8             a g             a bes4.~4 aes8 |}
  g4 8 8[aes] bes8 4 ees,8 ees'4\fermata c8 | bes4 8 aes4 d,8 ees4.~4 \bar "||" 8^\markup\smallCaps Chorus. | 8[aes] 8 4 8 \bar "|" \break
  g8 bes4~4 g8 | f[g] aes c4 bes8 g4.~4 bes8 | ees4 8 d4 8 4 c8 4 8 |
  c4bes8 c4 bes8 4.(g4) bes8 | ees4 8 d4 8 4 c8 4\fermata 8 | bes4 8 c4 d8\fermata ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8 | 4 8 4 8 8 4~4 8 | d8[ees] f g4 f8 ees4.~4 8 |
  \tag #'dash    {g4 8 8 \slurDashed f8(ees) \slurSolid 4 8 4 8 |}
  \tag #'(v2 v3) {g4 8 8             f8(ees)            4 8 4 8 |}
  \tag #'(v1 v4) {g4 8 8             f8 ees8            4 8 4 8 |}
  \tag #'dash       {ees4 8 \slurDashed 8(8) \slurSolid 8 d4.~4 f8 |}
  \tag #'(v1 v2 v3) {ees4 8             4               8 d4.~4 f8 |}
  \tag #'v4         {ees4 8             8 8             8 d4.~4 f8 |}
  ees4 8 8[f] g8 4 ees8 4\fermata 8 | g4 ees8 d[c] bes8 4.~4 ees8 | 4 8 4 8
  ees8 4~4 8 | d[ees] f aes4 g8 ees4.~4 g8 | 4 8 f4 8 ees4 aes8 4 8 |
  aes4 8 4 8 g4.(ees4) g8 | 4 8 f4 8 ees4 aes8 4\fermata 8 | bes4 g8 aes4 8\fermata g4.~4
  
}

tenor = \relative {
  \autoBeamOff
  g8 | bes4 8 4 aes8 8 g4~4 8 | f8[g] aes bes[c] d ees4.~4 bes8 |
  \tag #'dash    {ees4 8 8 \slurDashed 8(8) \slurSolid 4 bes8 4 8 |}
  \tag #'(v2 v3) {ees4 8 8             4               4 bes8 4 8 |}
  \tag #'(v1 v4) {ees4 8 8             8 8             4 bes8 4 8 |}
  \tag #'dash       {c4 8 \slurDashed 8(8) \slurSolid 8 bes4.~4 8 |}
  \tag #'(v1 v2 v3) {c4 8             4               8 bes4.~4 8 |}
  \tag #'v4         {c4 8             8 8             8 bes4.~4 8 |}
  bes4 8 4 8 ees4 des8 c4\fermata ees8 | 8[bes] g f4 aes8 g4.~4 8 | c4 8 4 8 % C
  bes8 g4~4 bes8 | 4 8 8[c] d ees4.~4 8 | bes4 8 b4 8 c4 ees8 e4 8 |
  d4 8 4 8 ees4.(bes4) 8 | 4 8 b4 8 c4 ees8 4\fermata 8 | 4 8 4 bes8\fermata 4.~4 
}

bass = \relative {
  \autoBeamOff
  ees8 | 4 8 4 8 8 4~4 8 | bes4 8 4 8 ees4.~4 8 |
  \tag #'dash    {c4  8 8 \slurDashed d(ees) \slurSolid aes4 g8 4 8 |}
  \tag #'(v2 v3) {c,4 8 8             d(ees)            aes4 g8 4 8 |}
  \tag #'(v1 v4) {c,4 8 8             d ees             aes4 g8 4 8 |}
  f4 8 \slurDashed 8(8) \slurSolid 8 bes,4.~4 8 |
  ees4 8 4 8 4 8 aes4\fermata aes,8 | bes4 8 4 8 ees4.~4 8 | aes,4 8 4 8
  ees'8 4~4 8 | bes4 8 4 8 ees4.~4 8 | 4 8 g4 8 aes4 8 4 8 |
  bes4 8 bes,4 8 ees4.~4 8 | 4 8 g4 8 aes4 8 4\fermata 8 | g4 ees8 aes4 bes8\fermata ees,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Where He may lead I'll fol -- low,
  My trust in Him re -- pose;
  And ev -- 'ry hour in per -- fect peace
  I'll sing "\"He" knows, He "knows!\""
  And ev -- 'ry hour in per -- fect peace
  I'll sing "\"He" knows, He "knows!\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I know not what a -- waits me;
  God kind -- ly veils mine eyes,
  And o'er each step \nom of my \yesm on -- ward way
  He makes new scenes to rise;
  And ev -- 'ry joy He sends me comes
  A sweet and glad sur -- prise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  One step I see be -- fore me;
  'Tis all I need to see:
  The light of heav'n more bright -- ly shines
  When earth's il -- lu -- sions flee;
  And sweet -- ly thro' the si -- lence comes
  His lov -- ing "\"Fol" -- low "Me.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, bliss -- ful lack of wis -- dom!
  'Tis bless -- ed not to know:
  He holds me with His own right hand,
  And will not let me go;
  And lulls my troub -- led soul to rest
  In Him who loves me so.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So on I go— not know -- ing;
  I would not if I might:
  I'd ra -- ther \nom walk in \yesm the dark with God
  Than go a -- \nom lone in \yesm the light;
  I'd ra -- ther walk by faith with Him
  Than go a -- lone by sight.;
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "know " "not " "what " a "waits " "me; "
  "\nGod " kind "ly " "veils " "mine " "eyes, "
  "\nAnd " "o'er " "each " "step " "of " "my " on "ward " "way "
  "\nHe " "makes " "new " "scenes " "to " "rise; "
  "\nAnd " ev "'ry " "joy " "He " "sends " "me " "comes "
  "\nA " "sweet " "and " "glad " sur "prise. "
  "\nWhere " "He " "may " "lead " "I'll " fol "low, "
  "\nMy " "trust " "in " "Him " re "pose; "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\" "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\"\n"

  \set stanza = "2."
  "\nOne " "step " "I " "see " be "fore " "me; "
  "\n'Tis " "all " "I " "need " "to " "see: "
  "\nThe " "light " "of " "heav'n " "more " bright "ly " "shines "
  "\nWhen " "earth's " il lu "sions " "flee; "
  "\nAnd " sweet "ly " "thro' " "the " si "lence " "comes "
  "\nHis " lov "ing " "\"Fol" "low " "Me.\" "
  "\nWhere " "He " "may " "lead " "I'll " fol "low, "
  "\nMy " "trust " "in " "Him " re "pose; "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\" "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\"\n"

  \set stanza = "3."
  "\nOh, " bliss "ful " "lack " "of " wis "dom! "
  "\n'Tis " bless "ed " "not " "to " "know: "
  "\nHe " "holds " "me " "with " "His " "own " "right " "hand, "
  "\nAnd " "will " "not " "let " "me " "go; "
  "\nAnd " "lulls " "my " troub "led " "soul " "to " "rest "
  "\nIn " "Him " "who " "loves " "me " "so. "
  "\nWhere " "He " "may " "lead " "I'll " fol "low, "
  "\nMy " "trust " "in " "Him " re "pose; "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\" "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\"\n"

  \set stanza = "4."
  "\nSo " "on " "I " "go— " "not " know "ing; "
  "\nI " "would " "not " "if " "I " "might: "
  "\nI'd " ra "ther " "walk " "in " "the " "dark " "with " "God "
  "\nThan " "go " a "lone " "in " "the " "light; "
  "\nI'd " ra "ther " "walk " "by " "faith " "with " "Him "
  "\nThan " "go " a "lone " "by " "sight.; "
  "\nWhere " "He " "may " "lead " "I'll " fol "low, "
  "\nMy " "trust " "in " "Him " re "pose; "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\" "
  "\nAnd " ev "'ry " "hour " "in " per "fect " "peace "
  "\nI'll " "sing " "\"He " "knows, " "He " "knows!\" "
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
