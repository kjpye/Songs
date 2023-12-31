\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gather in the Sheaves."
  subtitle    = "Sankey No. 766"
  subsubtitle = "C. C. No. 4"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Robert Bruce."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*2 s2
  \textMark \markup { \box \bold "F" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. 16 8. g16 f4 4 | d8. f16 bes8. c16 bes4 a | ees8. 16 8. f16 \bar "|" \break
  ees4 c | d8. 16 8. ees16 f2 | 8. 16 8. g16 f4 4 |
  d8. f16 bes8. c16 d4 bes | g8. 16 ees'8. 16 d4 c | bes8. a16 g8. a16 bes2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  c8. 16 8. 16 2 | d8. 16 8. 16 2 | ees8. 16 8. c16 d4 b |
  c8. 16 8. d16 c2 | f,8. 16 8. g16 f4 4 | d8. f16 bes8. c16 \bar "|" \break
  d4 bes | g8. 16 ees'8. 16 d4 c | bes8. a16 g8. a16 bes2 |
}

alto = \relative {
  \autoBeamOff
  d'8. 16 8. ees16 d4 d | bes8. d16 f8. 16 ees4 4 | c8. 16 8. d16
  c4 c | bes8. 16 8. c16 d2 | 8. 16 8. ees16 d4 d |
  bes8. d16 f8. 16 4 d | ees8. 16 g8. 16 4 4 | f8. 16 ees8. 16 d2 \section
  f8. 16 8. 16 2 | 8. 16 8. 16 2 | g8. 16 f8. 16 4 4 |
  f8. 16 e8. 16 f4(ees) | d8. 16 8. ees16 d4 4 | bes8. d16 f8. 16
  f4 4 | ees8. 16 g8. 16 4 4 | f8. 16 ees8. 16 d2 |
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 8. 16 4 4 | f8. bes16 8. 16 c4 4 | a8. 16 8. 16
  a4 4 | bes8. f16 8. 16 bes2 | 8. 16 8. 16 4 4 |
  f8. bes16 8. a16 bes4 4 | 8. 16 c8. 16 b4 c | d8. c16 bes8. c16 bes2 \section
  a8. 16 8. 16 2 | bes8. 16 8. 16 2 | bes8. 16 a8. 16 bes4 4 |
  a8. 16 bes8. 16 a2 | bes8. 16 8. 16 4 4 | f8. bes16 8. a16
  bes4 4 | 8. 16 c8. 16 b4 ees | d8. c16 bes8. c16 bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 8. 16 4 4 | 8. 16 d8. 16 f4 4 | 8. 16 8. 16
  f4 4 | bes,8. 16 8. 16 2 | 8. 16 8. 16 4 4 |
  bes8. 16 d8. f16 bes4 4 | ees,8. 16 c8. 16 d4 ees | f8. 16 8. 16 bes,2 \section
  f'8. 16 8. 16 2 | bes8. 16 8. 16 2 | ees,8. 16 f8. 16 bes4 d, |
  d8. 16 c8. 16 f2 | bes8. 16 8. 16 bes,4 4 | 8. 16 d8. f16
  bes4 d, | ees8. 16 c8. 16 d4 ees | f8. 16 8. 16 bes,2 |
}

chorus = \lyricmode {
  Ga -- ther in the sheaves!
  Ga -- ther in the sheaves!
  While the voice of na -- ture
  Sweet -- est mu -- sic breathes:
  Hear the Mas -- ter call -- ing,
  Hear the ech -- oes fall -- ing,
  Go and help the reap -- ers
  Ga -- ther in the sheaves!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the ear -- ly morn -- ing,
  Ver -- dant fields a -- dorn -- ing,
  While the gold -- en sun -- light
  Wakes the dew -- y leaves;
  Haste we now with glad -- ness,
  Ban -- ish care and sad -- ness,
  Go and help the reap -- ers
  Ga -- ther in the sheaves!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the days are bright -- est,
  When our hearts are light -- est;
  When the love -- ly sum -- mer
  Fair -- est beau -- ty weaves;
  In the noon -- tide beam -- ing,
  In the twi -- light gleam -- ing,
  Go and help the reap -- ers
  Ga -- ther in the sheaves!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Should our way be drea -- ry,
  Let us nev -- er wea -- ry;
  Earn -- est, faith -- ful la -- bour
  Great -- est joy re -- ceives;
  Though we toil in sor -- row,
  Soon will dawn the mor -- row,
  When we'll cross the riv -- er,
  Bear -- ing home the sheaves!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " ear "ly " morn "ing, "
  "\nVer" "dant " "fields " a dorn "ing, "
  "\nWhile " "the " gold "en " sun "light "
  "\nWakes " "the " dew "y " "leaves; "
  "\nHaste " "we " "now " "with " glad "ness, "
  "\nBan" "ish " "care " "and " sad "ness, "
  "\nGo " "and " "help " "the " reap "ers "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nWhile " "the " "voice " "of " na "ture "
  "\nSweet" "est " mu "sic " "breathes: "
  "\nHear " "the " Mas "ter " call "ing, "
  "\nHear " "the " ech "oes " fall "ing, "
  "\nGo " "and " "help " "the " reap "ers "
  "\nGa" "ther " "in " "the " "sheaves!\n"

  \set stanza = "2."
  "\nWhen " "the " "days " "are " bright "est, "
  "\nWhen " "our " "hearts " "are " light "est; "
  "\nWhen " "the " love "ly " sum "mer "
  "\nFair" "est " beau "ty " "weaves; "
  "\nIn " "the " noon "tide " beam "ing, "
  "\nIn " "the " twi "light " gleam "ing, "
  "\nGo " "and " "help " "the " reap "ers "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nWhile " "the " "voice " "of " na "ture "
  "\nSweet" "est " mu "sic " "breathes: "
  "\nHear " "the " Mas "ter " call "ing, "
  "\nHear " "the " ech "oes " fall "ing, "
  "\nGo " "and " "help " "the " reap "ers "
  "\nGa" "ther " "in " "the " "sheaves!\n"

  \set stanza = "3."
  "\nShould " "our " "way " "be " drea "ry, "
  "\nLet " "us " nev "er " wea "ry; "
  "\nEarn" "est, " faith "ful " la "bour "
  "\nGreat" "est " "joy " re "ceives; "
  "\nThough " "we " "toil " "in " sor "row, "
  "\nSoon " "will " "dawn " "the " mor "row, "
  "\nWhen " "we'll " "cross " "the " riv "er, "
  "\nBear" "ing " "home " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nGa" "ther " "in " "the " "sheaves! "
  "\nWhile " "the " "voice " "of " na "ture "
  "\nSweet" "est " mu "sic " "breathes: "
  "\nHear " "the " Mas "ter " call "ing, "
  "\nHear " "the " ech "oes " fall "ing, "
  "\nGo " "and " "help " "the " reap "ers "
  "\nGa" "ther " "in " "the " "sheaves! "
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
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 19)

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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
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
