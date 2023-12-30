\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lend a Hand!"
  subtitle    = "Sankey No. 764"
  subsubtitle = "C. C. No. 119"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. B. Mackay."
  meter       = \markup\smallCaps "6.5.D."
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
  \textMark \markup { \box \bold "A" }    s1*2
  \textMark \markup { \box \bold "B" }    s1*2
  \textMark \markup { \box \bold "C" }    s1*2
  \textMark \markup { \box \bold "D" }    s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2
  \textMark \markup { \box \bold "F" } s2 s1*2
  \textMark \markup { \box \bold "G" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 d' d c bes4 f | g8 bes bes g f2 |
  f8 bes8 8 c d d ees d | c4 4 2 |
  c8 8 8 bes bes a g f | bes4 c d2 |
  ees8 8 d c d4 bes | c8 c a a bes2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  f8 bes8 4 a8 c8 4 | f,8 bes8 8 c d2 | ees8 8 c c \bar "|" \break
  d4 bes | g8 c c bes a2 | f8 bes8 4 a8 c8 4 |
  f,8 bes8 8 c d2 | f8 f ees ees d4 bes | c8 c a a bes2 |
}

alto = \relative {
  \autoBeamOff
  d'8 f f ees d4 4 | ees8 8 8 8 d2 |
  d8 f f f f f f f | 4 e f2 |
  f8 8 8 8 8 ees8 8 8 | d4 f f2 |
  g8 8 8 8 f4 4 | 8 8 ees8 8 d2 \section |
  d8 f8 4 ees8 8 4 | d8 d f f f2 | 8 8 8 8
  f4 f | e8 8 8 8 f4(ees) | d8 f f4 ees8 8 4 |
  d8 8 f f f2 | 8 8 8 8 4 4 | 8 8 ees8 8 d2 |
}

tenor = \relative {
  \autoBeamOff
  bes8 8 8 f f4 bes | 8 g g bes8 2 |
  bes8 8 8 a bes8 8 c bes | a4 g8[bes] a2 |
  ees'8 8 8 d d c bes a | bes4 a bes2 |
  bes8 8 ees8 8 bes4 d | ees8 8 c c bes2 \section |
  bes8 d8 4 c8 a a4 | bes8 8 8 a bes2 | c8 c a a
  bes4 d | c8 g g c8 2 | bes8 d8 4 c8 bes8 4 |
  bes8 8 8 a bes2 | 8 8 a a bes4 d | ees8 8 c c bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,8 8 8 8 4 4 | ees8 8 8 8 bes2 |
  bes8 d d f bes8 8 a bes | f4 c f2 |
  f8 8 8 8 8 8 8 8 | g4 f bes,2 |
  ees8 8 8 8 bes'4 4 | f8 8 8 8 bes,2 \section |
  bes'8 8 4 f8 8 4 | bes8 bes, d f bes2 | aes8 8 f f
  bes4 4 | c8 c, c c f2 | bes8 8 4 f8 8 4 |
  bes8 bes, d f bes2 | d,8 d c c bes4 bes' | f8 8 8 8 bes,2 |
}

chorus = \lyricmode {
  Lend a hand, lend a hand,
  Lend a help -- ing hand;
  Wea -- ry ones are fail -- ing,
  Lend a help -- ing hand!
  Lend a hand, lend a hand,
  Lend a help -- ing hand!
  Je -- sus still is call -- ing.
  Lend a help -- ing hand!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Are you sit -- ting i -- dle?
  Still there's work to do;
  In the Mas -- ter's vine -- yard
  There's a place for you;
  Be a faith -- ful ser -- vant,
  Ev -- er rea -- dy stand,
  Where the mas -- ter calls you—
  Lend a help -- ing hand!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Is your voice now si -- lent?
  There are songs to sing;
  Come and swell the cho -- rus,
  Make His prais -- es ring!
  Till the strains are waft -- ed
  O -- ver sea and land,
  Reach -- ing up to hea -- ven—
  Lend a help -- ing hand!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Do your prayers no long -- er
  Reach the throne of grace,
  Ask -- ing that some wan -- d'rer
  Might his steps re -- trace?
  Earn -- est prayer may keep him
  From the sink -- ing sand;
  Yours to -- day may save him—
  Lend a help -- ing hand!
}
  
wordsMidi = \lyricmode {
  "Are " "you " sit "ting " i "dle? "
  "\nStill " "there's " "work " "to " "do; "
  "\nIn " "the " Mas "ter's " vine "yard "
  "\nThere's " "a " "place " "for " "you; "
  "\nBe " "a " faith "ful " ser "vant, "
  "\nEv" "er " rea "dy " "stand, "
  "\nWhere " "the " mas "ter " "calls " "you— "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand; "
  "\nWea" "ry " "ones " "are " fail "ing, "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand! "
  "\nJe" "sus " "still " "is " call "ing. "
  "\nLend " "a " help "ing " "hand!\n"

  \set stanza = "2."
  "\nIs " "your " "voice " "now " si "lent? "
  "\nThere " "are " "songs " "to " "sing; "
  "\nCome " "and " "swell " "the " cho "rus, "
  "\nMake " "His " prais "es " "ring! "
  "\nTill " "the " "strains " "are " waft "ed "
  "\nO" "ver " "sea " "and " "land, "
  "\nReach" "ing " "up " "to " hea "ven— "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand; "
  "\nWea" "ry " "ones " "are " fail "ing, "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand! "
  "\nJe" "sus " "still " "is " call "ing. "
  "\nLend " "a " help "ing " "hand!\n"

  \set stanza = "3."
  "\nDo " "your " "prayers " "no " long "er "
  "\nReach " "the " "throne " "of " "grace, "
  "\nAsk" "ing " "that " "some " wan "d'rer "
  "\nMight " "his " "steps " re "trace? "
  "\nEarn" "est " "prayer " "may " "keep " "him "
  "\nFrom " "the " sink "ing " "sand; "
  "\nYours " to "day " "may " "save " "him— "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand; "
  "\nWea" "ry " "ones " "are " fail "ing, "
  "\nLend " "a " help "ing " "hand! "
  "\nLend " "a " "hand, " "lend " "a " "hand, "
  "\nLend " "a " help "ing " "hand! "
  "\nJe" "sus " "still " "is " call "ing. "
  "\nLend " "a " help "ing " "hand! "
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
