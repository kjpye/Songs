\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be ye Strong in the Lord!"
  subtitle    = "Sankey No. 686"
  subsubtitle = "Sankey 880 No. 567"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }
apart = \partCombineApart
auto  = \partCombineAutomatic

soprano = \relative {
  \autoBeamOff
  d'8 8 | g4 a8. fis16 g4 d8 8 | c'4 8 8 b4 d,8 8 |
  \tag #'dash    {e8 fis g a \slurDashed b(b) \slurSolid a8. g16 |}
  \tag #'(v1 v2) {e8 fis g a             b4              a8. g16 |}
  \tag #'v3      {e8 fis g a             b b             a8. g16 |}
  d'2. d,8 8 |
  \tag #'dash {\slurDashed g8(8) \slurSolid a8. fis16 g4 \slurDashed d8(8) \slurSolid |}
  \tag #'v1   {            g8 8             a8. fis16 g4             d4               |}
  \tag #'v2   {            g8 8             a8. fis16 g4             d8 8             |}
  \tag #'v3   {            g4               a8. fis16 g4             d4               |}
  c'8 8 8 8 b4 d,8 8 |
  \tag #'dash    {e8 fis g a8 \slurDashed 8(8) \slurSolid a8. g16 |}
  \tag #'(v1 v2) {e8 fis g a8             4               a8. g16 |}
  \tag #'v3      {e8 fis g a8             8 8             a8. g16 |}
  g2.
  \section \sectionLabel \markup\smallCaps "Chorus." \bar "|" \break
  d'8. e16 | d2. 8. e16 | d2. g,8 8 |
  e'4. d8 c b a8. g16 | a2. d,8 8 | b'8 8 a8. 16 g4 8 fis |
  e8 g fis e d4 8 8 | g4 8. 16 b4 a8. g16 | 2.
}

alto = \relative {
  \autoBeamOff
  d'8 8 | 4 8. 16 4 8 8 | d[e] fis d d4 8 8 |
  \tag #'dash    {c8 d d d \slurDashed d(d) \slurSolid cis8. 16 |}
  \tag #'(v1 v2) {c8 d d d             d4              cis8. 16 |}
  \tag #'v3      {c8 d d d             d d             cis8. 16 |}
  fis2. d8 8 |
  \tag #'dash {\slurDashed d8(d) \slurSolid 8. 16 4 \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {            d8 d8            8. 16 4             4               |}
  \tag #'v2   {            d8 d8            8. 16 4             8 8             |}
  \tag #'v3   {            d4               8. 16 4             4               |}
  d8 e fis d d4 8 8 |
  \tag #'dash    {c8  d d e \slurDashed d(d) \slurSolid fis8. g16 |}
  \tag #'(v1 v2) {c,8 d d e             d4              fis8. g16 |}
  \tag #'v3      {c,8 d d e             d d             fis8. g16 |}
  g2. \section
  \apart r4 | r fis8. g16 a4 r | r g8. a16 b4 \auto g8 8 |
  g4. 8 fis g d8. cis16 | d2. 8 8 | d g fis8. 16 g4 d8 8 |
  c8 e d c b4 8 8 | d4 b8. cis16 d4 fis8. g16 | 2.
}

tenor = \relative {
  \autoBeamOff
  d8 8 | b'4 c8. a16 b4 fis8 8 | fis8[g] a fis g4 8 8 |
  \tag #'dash    {g8  a g fis \slurDashed g(g) \slurSolid a8. 16 |}
  \tag #'(v1 v2) {g8 a g fis             g4              a8. 16 |}
  \tag #'v3      {g8 a g fis             g g             a8. 16 |}
  a2. d,8 8 |
  \tag #'dash {\slurDashed b'8(b) \slurSolid c8. a16 b4 \slurDashed fis8(8) \slurSolid |}
  \tag #'v1   {            b8  b             c8. a16 b4             fis4               |}
  \tag #'v2   {            b8  b             c8. a16 b4             fis8 8             |}
  \tag #'v3   {            b4                c8. a16 b4             fis4               |}
  fis8 g a fis g4 8 8 |
  \tag #'dash    {g8 a g g8 \slurDashed g(g) \slurSolid c8. b16 |}
  \tag #'(v1 v2) {g8 a g g8             g4              c8. b16 |}
  \tag #'v3      {g8 a g g8             g g             c8. b16 |}
  b2. \section
  r4 | r a8. b16 c4 r | r b8. c16 d4 b8 8 |
  c4. | d8 d d d8. a16 | fis2. c'8 8 | b d c8. 16 b4 g8 8 |
  g8 g g g g4 8 8 | 4 8. 16 4 c8. b16 | 2.
}

bass = \relative {
  \autoBeamOff
  d8 8 | g,4 d'8. 16 g4 fis8 8 | 4 8 8 g,4 b8 8 |
  \tag #'dash    {c8 8 b d \slurDashed g(g) \slurSolid e8. 16 |}
  \tag #'(v1 v2) {c8 8 b d             g4              e8. 16 |}
  \tag #'v3      {c8 8 b d             g g             e8. 16 |}
  d2. 8 8 |
  \tag #'dash {\slurDashed g,8(8) \slurSolid d'8. 16 g4 \slurDashed d8(d) \slurSolid |}
  \tag #'v1   {            g,8 8             d'8. 16 g4             d4               |}
  \tag #'v2   {            g,8 8             d'8. 16 g4             d8 8             |}
  \tag #'v3   {            g,4               d'8. 16 g4             d4               |}
  d8 8 8 8 g,4 b8 8 |
  \tag #'dash    {c8 c b c \slurDashed d(d) \slurSolid 8. 16 |}
  \tag #'(v1 v2) {c8 c b c             d4              8. 16 |}
  \tag #'v3      {c8 c b c             d d8            8. 16 |}
  g,2. \section
  r4 | r d'8. 16 4 r | r g8. 16 4 8 8 |
  c4. b8 a g fis8. e16 | d2. fis8 8 | g8 8 d8. 16 e4 b8 8 |
  c8 8 8 8 g4 8 8 | b4 e8. 16 d4 8. 16 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Firm -- ly stand for the right!
  On to vic -- t'ry at the King's com -- mand!
  For the hon -- our of the Lord,
  and the tri -- umph of His Word.
  In the strength of the Lord firm -- ly stand!
}

chorusMen = \lyricmode {
  \repeat unfold 44 _
  Firm -- ly stand for the right!
  \repeat unfold 32 _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  “Be ye strong in the Lord and the power of His might!”
  Firm -- ly stand -- ing for the truth of His Word;
  He shall \nom lead you \yesm safe -- ly through the thick -- est of the fight.
  You shall con -- quer in the name of the Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “Be ye strong in the Lord and the power of His might!”
  Nev -- er turn -- ing from the face of the foe;
  He will \nom sure -- ly\yesm by you stand, \nom as you \yesm bat -- tle for the right:
  In the pow -- er of His might on -- ward go!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  “Be ye strong in the Lord and the power of His might!”
  For His prom -- is -- es shall \nom nev -- er, \yesm nev -- er fail;
  He will hold thy right hand, while bat -- tling for the right,
  Trust -- ing Him thou shalt for \nom ev -- er -- more \yesm pre vail.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“Be " "ye " "strong " "in " "the " "Lord " "and " "the " "power " "of " "His " "might!” "
  "\nFirm" "ly " stand "ing " "for " "the " "truth " "of " "His " "Word; "
  "\nHe " "shall " \nom "lead " "you " \yesm safe "ly " "through " "the " thick "est " "of " "the " "fight. "
  "\nYou " "shall " con "quer " "in " "the " "name " "of " "the " "Lord! "
  "\nFirm" "ly " "stand " "for " "the " "right! "
  "\nOn " "to " vic "t'ry " "at " "the " "King's " com "mand! "
  "\nFor " "the " hon "our " "of " "the " "Lord, "
  "\nand " "the " tri "umph " "of " "His " "Word. "
  "\nIn " "the " "strength " "of " "the " "Lord " firm "ly " "stand!\n"

  \set stanza = "2."
  "\n“Be " "ye " "strong " "in " "the " "Lord " "and " "the " "power " "of " "His " "might!” "
  "\nNev" "er " turn "ing " "from " "the " "face " "of " "the " "foe; "
  "\nHe " "will " \nom sure "ly\yesm " "by " "you " "stand, " \nom "as " "you " \yesm bat "tle " "for " "the " "right: "
  "\nIn " "the " pow "er " "of " "His " "might " on "ward " "go! "
  "\nFirm" "ly " "stand " "for " "the " "right! "
  "\nOn " "to " vic "t'ry " "at " "the " "King's " com "mand! "
  "\nFor " "the " hon "our " "of " "the " "Lord, "
  "\nand " "the " tri "umph " "of " "His " "Word. "
  "\nIn " "the " "strength " "of " "the " "Lord " firm "ly " "stand!\n"

  \set stanza = "3."
  "\n“Be " "ye " "strong " "in " "the " "Lord " "and " "the " "power " "of " "His " "might!” "
  "\nFor " "His " prom is "es " "shall " \nom nev "er, " \yesm nev "er " "fail; "
  "\nHe " "will " "hold " "thy " "right " "hand, " "while " bat "tling " "for " "the " "right, "
  "\nTrust" "ing " "Him " "thou " "shalt " "for " \nom ev er "more " \yesm "pre " "vail. "
  "\nFirm" "ly " "stand " "for " "the " "right! "
  "\nOn " "to " vic "t'ry " "at " "the " "King's " com "mand! "
  "\nFor " "the " hon "our " "of " "the " "Lord, "
  "\nand " "the " tri "umph " "of " "His " "Word. "
  "\nIn " "the " "strength " "of " "the " "Lord " firm "ly " "stand! "
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
                         \bar "|."
                       }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
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
                       }
            \addlyrics \wordsMidi
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

\book {
  \bookOutputSuffix "midi-sop"
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
            \new NullVoice = "aligner" \soprano
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
                                                 \bar "|."
                                               }
                                               { \global
                                                 \keepWithTag #'v1 \alto \nl
                                                 \keepWithTag #'v2 \alto \nl
                                                 \keepWithTag #'v3 \alto \nl
                                                 \bar "|."
                                               }
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
            \new NullVoice = alignerT { \repeat unfold \verses \keepWithTag #'dash \tenor }
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
