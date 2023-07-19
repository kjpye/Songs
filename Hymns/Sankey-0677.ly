\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ship of Temperance."
  subtitle    = "Sankey No. 677"
  subsubtitle = "C. C. No. 216"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John G. Whittier."
  meter       = \markup\smallCaps "7.6.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*4
  \textMark \markup { \box \bold "B" }     s2.*4 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*4
  \textMark \markup { \box \bold "D" }     s2.*5
  \textMark \markup { \box \bold "E" }     s2.*5
  \textMark \markup { \box \bold "F" }     s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 | b'4 8 4 a8 | a4. g4 b8 | d4 8 4 c8 | b4.~4 d,8 |
  e4 fis8 g4 a8 | b4 8 4 8 | a8 4 cis4 8 | d4.~4 8 | 4 8 \bar "|" \break
  c4 b8 | 4. a4 d,8 | g4 8 a4 d,8 | b'4.~4 8 | c4 b8 e4 d8 |
  d4 b8 g4 c8 |
  \tag #'dash    {\slurDotted b8(8)(8) \slurSolid 4 a8 |}
  \tag #'(v1 v3) {            b4    8             4 a8 |}
  \tag #'v2      {            b8    4             4 a8 |}
  g4.~4
  \section \sectionLabel \markup\smallCaps Chorus.
  d'8 | 4.~4 c8 | b4 a8 g4 8 |
  g4 e'8 d4 b8 | a4.~4 8 | b4 8 c4 8 | d4 g,8 e'4\fermata 8 |
  d8 b4 a g8 |
  d'4.~4 c8 | b4 8 c4 8 | d4 fis8 e4\fermata \partCombineChords <e \tweak font-size #-2 g>8\fermata \partCombineAutomatic | d8 b4 4 a8 | g4.~4
}

alto = \relative {
  \autoBeamOff
  b8 | d4 8 4 c8 | 4. b4 d8 | g4 8 fis4 d8 | 4.~4 b8 |
  c4 d8 4 8 | 4 8 4 8 | 8 4 g4 8 | fis4.~4 8 | 4 8
  d4 8 | 4. 4 8 | 4 b8 d4 8 | 4.~4 g8 | 4 8 4 8 |
  g4 d8 4 e8 |
  \tag #'dash    {\slurDashed d8(8)(8) \slurSolid 4 c8 |}
  \tag #'(v1 v3) {            d4    8             4 c8 |}
  \tag #'v2      {            d8    4             4 c8 |}
  b4.~4 \section \partCombineApart r8 | r4 fis'8 \partCombineAutomatic g4 a8 | g4 fis8 g4 f8 |
  e4 g8 4 8 | fis4.~4 d8 | 4 8 4 8 | 4 f8 e4\fermata g8 | 8 4 d4 8 |
  fis4.~4 a8 | g4 8 4 8 | 4 8 4\fermata 8\fermata | 8 4 fis4 8 | g4.~4
}

tenor = \relative {
  \autoBeamOff
  g8 | 4 8 4 fis8 | 4. g4 8 | b4 8 a4 fis8 | g4.~4 8 |
  g4 a8 g4 fis8 | g4 8 4 8 | a8 4 4 8 | 4.~4 8 | 4 8
  fis4 g8 | 4. fis4 8 | g4 8 fis4 a8 | g4.~4 d'8 | e4 d8 c4 b8 |
  b4 g8 4 8 |
  \tag #'dash    {\slurDashed g8(8)(8) \slurSolid fis4 8 |}
  \tag #'(v1 v3) {            g4    8             fis4 8 |}
  \tag #'v2      {            g8    4             fis4 8 |}
  g4.~4 \section r8 | r4 b8 4 8 | 4 c8 b4 8 |
  c4 8 d4 8 | 4.~4 fis,8 | g4 8 a4 8 | b4 8 c4\fermata 8 | b8 d4 c b8 |
  a4.~4 d8 | 4 8 c4 8 | b4 c8 c4\fermata a8\fermata | b d4 4 c8 | b4.~4
}

bass = \relative {
  \autoBeamOff
  g,8 | 4 8 d'4 8 | 4. g,4 8 | d'4 8 4 8 | g,4.~4 8 |
  c4 8 b4 a8 | g4 8 4 g'8 | fis8 4 e4 8 | d4.~4 8 | 4 8
  d4 8 | 4. 4 c8 | b4 g8 d'4 fis8 | g4.~4 8 | 4 8 4 8 |
  g4 8 b,4 c8 |
  \tag #'dash    {\slurDashed d8(8)(8) \slurSolid 4 8 |}
  \tag #'(v1 v3) {            d4    8             4 8 |}
  \tag #'v2      {            d8    4             4 8 |}
  g,4.~4 \section r8 | r4 d'8 e4 fis8 | g4 8 4 8 |
  c,4 8 b4 g8 | d'4.~4 8 | g4 8 4 8 | 4 8 c,4\fermata 8 | g'8 4 fis4 g8 |
  d4.~4 fis8 | g4 8 e4 8 | g4 b,8 c4\fermata cis8\fermata | d8 4 4 8 | g4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sail on, __ O ship of hope!
  Sail on for truth and right;
  The breath of God is in your sails,
  The ha -- ven is in sight!
  The breath of God is in your sails,
  The ha -- ven is in sight!
}

chorusMen = \lyricmode {
  \repeat unfold 54 _
  sail on,
  \repeat unfold 38 _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Take cour -- age, temp -- 'rance work -- ers!
  You shall not suf -- fer wreck.
  While up to God the peo -- ple's prayers
  Are ring -- ing from your deck;
  Wait cheer -- i -- ly, ye work -- ers,
  For day -- light and for land,
  The breath of God is in your sails,
  Your \nom rud _ -- der \yesm in His hand.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sail on, sail on! deep -- freight -- ed
  With bless -- ings and with hopes;
  The good of old, with sha -- dowy hands,
  Are pull -- ing at your ropes;
  Be -- hind you, ho -- ly mar -- tyrs
  Up -- lift the palm and crown;
  Be -- fore you, un -- born a -- ges send
  Their \nom ben -- e _ -- dic -- tions \yesm down.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Speed on! your work is ho -- ly,
  God's er -- rands nev -- er fail!
  Sweep on thro' storm and dark -- ness wild,
  The thun -- der and the hail;
  Toil on, the morn -- ing com -- eth,
  The port you yet shall win!
  And all the bells of God shall ring
  The \nom “Ship _ of \yesm Temp -- 'rance” in!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Take cour -- age, temp -- 'rance work -- ers!
  You shall not suf -- fer wreck.
  While up to God the peo -- ple's prayers
  Are ring -- ing from your deck;
  Wait cheer -- i -- ly, ye work -- ers,
  For day -- light and for land,
  The breath of God is in your sails,
  Your rud -- der in His hand.
  Sail on, __ O ship of hope!
  Sail on for truth and right;
  The breath of God is in your sails,
  The ha -- ven is in sight!
  The breath of God is in your sails,
  The ha -- ven is in sight!

  \set stanza = "2."
  Sail on, sail on! deep -- freight -- ed
  With bless -- ings and with hopes;
  The good of old, with sha -- dowy hands,
  Are pull -- ing at your ropes;
  Be -- hind you, ho -- ly mar -- tyrs
  Up -- lift the palm and crown;
  Be -- fore you, un -- born a -- ges send
  Their ben -- e -- dic -- tions down.
  Sail on, __ O ship of hope!
  Sail on for truth and right;
  The breath of God is in your sails,
  The ha -- ven is in sight!
  The breath of God is in your sails,
  The ha -- ven is in sight!

  \set stanza = "3."
  Speed on! your work is ho -- ly,
  God's er -- rands nev -- er fail!
  Sweep on thro' storm and dark -- ness wild,
  The thun -- der and the hail;
  Toil on, the morn -- ing com -- eth,
  The port you yet shall win!
  And all the bells of God shall ring
  The “Ship of Temp -- 'rance” in!
  Sail on, __ O ship of hope!
  Sail on for truth and right;
  The breath of God is in your sails,
  The ha -- ven is in sight!
  The breath of God is in your sails,
  The ha -- ven is in sight!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " cour "age, " temp "'rance " work "ers! "
  "\nYou " "shall " "not " suf "fer " "wreck. "
  "\nWhile " "up " "to " "God " "the " peo "ple's " "prayers "
  "\nAre " ring "ing " "from " "your " "deck; "
  "\nWait " cheer i "ly, " "ye " work "ers, "
  "\nFor " day "light " "and " "for " "land, "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nYour " rud "der " "in " "His " "hand. "
  "\nSail " "on, "  "O " "ship " "of " "hope! "
  "\nSail " "on " "for " "truth " "and " "right; "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight! "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight!\n"

  \set stanza = "2."
  "\nSail " "on, " "sail " "on! " deep freight "ed "
  "\nWith " bless "ings " "and " "with " "hopes; "
  "\nThe " "good " "of " "old, " "with " sha "dowy " "hands, "
  "\nAre " pull "ing " "at " "your " "ropes; "
  "\nBe" "hind " "you, " ho "ly " mar "tyrs "
  "\nUp" "lift " "the " "palm " "and " "crown; "
  "\nBe" "fore " "you, " un "born " a "ges " "send "
  "\nTheir " ben e dic "tions " "down. "
  "\nSail " "on, "  "O " "ship " "of " "hope! "
  "\nSail " "on " "for " "truth " "and " "right; "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight! "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight!\n"

  \set stanza = "3."
  "\nSpeed " "on! " "your " "work " "is " ho "ly, "
  "\nGod's " er "rands " nev "er " "fail! "
  "\nSweep " "on " "thro' " "storm " "and " dark "ness " "wild, "
  "\nThe " thun "der " "and " "the " "hail; "
  "\nToil " "on, " "the " morn "ing " com "eth, "
  "\nThe " "port " "you " "yet " "shall " "win! "
  "\nAnd " "all " "the " "bells " "of " "God " "shall " "ring "
  "\nThe " "“Ship " "of " Temp "'rance” " "in! "
  "\nSail " "on, "  "O " "ship " "of " "hope! "
  "\nSail " "on " "for " "truth " "and " "right; "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight! "
  "\nThe " "breath " "of " "God " "is " "in " "your " "sails, "
  "\nThe " ha "ven " "is " "in " "sight! "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
            \addlyrics \wordsMidi
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
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
            \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
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
