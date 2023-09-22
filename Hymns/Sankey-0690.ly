\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Arise, thy Light is Come!"
  subtitle    = "Sankey No. 690"
  subsubtitle = "Sankey 880 No. 561"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. E. Servoss."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*5
  \textMark \markup { \box \bold "B" }    s2.*5
  \textMark \markup { \box \bold "C" }    s2.*5 s2
  \textMark \markup { \box \bold "D" } s8 s2.*4
  \textMark \markup { \box \bold "E" }    s2.*4
  \textMark \markup { \box \bold "F" }    s2.*4
  \textMark \markup { \box \bold "G" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Moderato 4=120
}

nl = { \bar "||" \break }

apart  = \partCombineApart
chords = \partCombineChords
auto   = \partCombineAutomatic

soprano = \relative {
  \autoBeamOff
  f'4^\markup\smallCaps Duet. | d'4. c8 bes4 | 4. a8 g4 | f d g |
  \tag #'dash    {8 f4. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {8 f4.             4               |}
  \tag #'v2      {8 f4.             8 8             |}
  d4. ees8 f4 |
  g4. a8 bes4 | d4 c4. g8 |
  \tag #'dash    {a2 \slurDashed f8(8) \slurSolid |}
  \tag #'(v1 v3) {a2             f4               |}
  \tag #'v2      {a2             f8 8             |}
  d'4. c8 bes4 | 4. a8 g4 |
  f4 bes d | ees8 d4. 8 8 | g4. ees8 d4 | 4. c8 bes4 | c g a | bes2
  \section \sectionLabel \markup\smallCaps Chorus. \time 6/8 \break \partial 8
  f8 | d'4.-> ~4 f,8 | d'4.->~4 8 | d c d ees4 d8 | c4.~4 f,8 |
  ees'4.-> ~4 f,8 | ees'4.-> ~4 8 | ees d ees f4 ees8 | d4.~4 f8 |
  f4.~8(ees) d | ees4.~4(8) | 4.~8 d c | d4.~4 8 |
  d4.-> bes4 c8 | d4.-> f4 ees8 | d4. c | bes4.~4 \partial 4
}

alto = \relative {
  \autoBeamOff
  f'4 | 4. ees8 d4 | g4. f8 ees4 | d bes ees |
  \tag #'dash    {8 d4. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {8 d4.             4               |}
  \tag #'v2      {8 d4.             8 8             |}
  bes4. c8 d4 |
  ees4. f8 g4 | e4 4. 8 |
  \tag #'dash    {f2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {f2             4               |}
  \tag #'v2      {f2             8 8             |}
  4. ees8 d4 | g4. f8 ees4 |
  d4 d f | f8 f4. bes8 8 | a4. g8 f4 | bes4. a8 g4 | ees4 4 4 | d2 \section
  \apart r8 | r4 f8 4 r8 | r4 f8 f4 \auto bes8 | 8 a bes c4 bes8 | a4.~4 \apart r8 |
  r4 a8 4 r8 | r4 a8 4 \auto f8 | 8 8 8 4 8 | 4.~4 \apart r8 |
  r4 g8 8 8 8 | 4 8 4 r8 | r4 f8 8 8 8 | 4 8 4 8 |
  \auto f4.-> g4 a8 | bes4.-> aes4 g8 | f4. ees | d~4 
}

tenor = \relative {
  \autoBeamOff
  r4 | bes,4.(c8 d4) | ees2. | bes2 bes'4 | 2. | bes, |
  ees2. | c | <f, f'>2 r4 | bes4.(c8 d4) | ees2. |
  bes2 bes'4 | 2. | f2 bes4 | bes,4.(c8 d4) | ees4~4 f | bes,2 \section
  r8 | r4 bes'8 4 r8 | r4 c8 4 8 | 8 bes c d4 c8 | bes4.~4 r8 |
  \auto r4 c8 4 r8 | r4 c8 4 8 | c bes c d4 c8 | bes4.~4 \apart d8 |
  \auto d4.~8 c b | c4.~4 8 | c4.~8 bes a | bes4.~4 8 |
  bes4. 4 8 | 4. 4 8 | 4. a | bes4.~4
}

bass = \relative {
  \autoBeamOff
  s4 | s2.*15 | s2 \section
  r8 | r4 bes,8 4 r8 | r4 8 4 8 | 8 c bes a4 bes8 | f'4.~4 r8 | % D
  r4 f8 4 r8 | r4 f8 4 8 | 8 8 8 4 8 | bes,4.~4 r8 |
  r4 g'8 8 8 8 | c,4 8 4 r8 | r4 f8 8 8 8 | bes,4 8 4 8 |
  bes4. ees4 8 | bes4. d4 ees8 | f4. f | bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  A -- rise! __ a -- rise! __
  A -- rise, for thy light is come!
  A -- rise! __ a -- rise! __
  A -- rise, for thy light is come!
  The light __ of truth __
  To lead __ thee home:
  A -- rise! oh, a -- rise! __ for thy light is come!
}

chorusMen = \lyricmode {
  \repeat unfold 20 _
  A -- rise! a -- rise!
  _ _ _ _ _ _ _
  A -- rise! a -- rise!
  _ _ _ _ _ _ \set associatedVoice = alignerB _
  The light __ of His truth and love,
  To lead to thy home a -- bove;
  _ _ _ _ _ _ _ _ _ \set associatedVoice = alignerT _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Give thanks un -- to God who is a -- ble and will -- ing
  To save to the ut -- ter -- most all who draw near;
  To send out His light, their re -- demp -- tion ful -- fill -- ing,
  While His won -- der -- ful love shall dis -- pel ev -- 'ry fear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sweet hope in the home of the drunk -- ard hath ris -- en,
  \nom Where the \yesm dark --ness of sor -- row too long held its reign;
  \nom He hath \yesm cast off his fet -- ters, and burst from his pris -- on,
  And the sun -- shine of joy fills his heart once a -- gain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then ban -- ish the wine- cup, and seek for a bless -- ing
  From Him in whose might you a -- lone can pre -- vail;
  For they who will seek Him, their weak -- ness con -- fess -- ing,
  Shall have strength to re -- sist all the foes who as -- sail.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Give " "thanks " un "to " "God " "who " "is " a "ble " "and " will "ing "
  "\nTo " "save " "to " "the " ut ter "most " "all " "who " "draw " "near; "
  "\nTo " "send " "out " "His " "light, " "their " re demp "tion " ful fill "ing, "
  "\nWhile " "His " won der "ful " "love " "shall " dis "pel " ev "'ry " "fear. "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nThe " "light "  "of " "truth " 
  "\nTo " "lead "  "thee " "home: "
  "\nA" "rise! " "oh, " a "rise! "  "for " "thy " "light " "is " "come!\n"

  \set stanza = "2."
  "\nSweet " "hope " "in " "the " "home " "of " "the " drunk "ard " "hath " ris "en, "
  "\nWhere " "the " dark"ness " "of " sor "row " "too " "long " "held " "its " "reign; "
  "\nHe " "hath " "cast " "off " "his " fet "ters, " "and " "burst " "from " "his " pris "on, "
  "\nAnd " "the " sun "shine " "of " "joy " "fills " "his " "heart " "once " a "gain. "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nThe " "light "  "of " "truth " 
  "\nTo " "lead "  "thee " "home: "
  "\nA" "rise! " "oh, " a "rise! "  "for " "thy " "light " "is " "come!\n"

  \set stanza = "3."
  "\nThen " ban "ish " "the " wine "cup, " "and " "seek " "for " "a " bless "ing "
  "\nFrom " "Him " "in " "whose " "might " "you " a "lone " "can " pre "vail; "
  "\nFor " "they " "who " "will " "seek " "Him, " "their " weak "ness " con fess "ing, "
  "\nShall " "have " "strength " "to " re "sist " "all " "the " "foes " "who " as "sail. "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nA" "rise! "  a "rise! " 
  "\nA" "rise, " "for " "thy " "light " "is " "come! "
  "\nThe " "light "  "of " "truth " 
  "\nTo " "lead "  "thee " "home: "
  "\nA" "rise! " "oh, " a "rise! "  "for " "thy " "light " "is " "come! "
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
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new NullVoice = alignerB { \bass }
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
            }
            \new NullVoice = alignerB {
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
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
