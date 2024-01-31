\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let the Lower Lights be Burning."
  subtitle    = "Sankey No. 805"
  subsubtitle = "Sankey 880 No. 29"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.7."
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
  \textMark \markup { \box \bold "A" } s4 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. g16 | f4. d'8 c bes | aes g4. 8. 16 | c4. bes8 a bes |
  c2 f,8. g16 | f4. bes8 c d | ees g,4. bes8. c16 |
  d8 bes c4. a8 | bes2
  \section \sectionLabel \markup\smallCaps Chorus.
  bes8. 16 | ees4. 8 8. 16 |
  ees8 d4. 8. 16 | 4. c8 g8. c16 | c2 g8. 16 |
  f4. bes8 c d | ees g,4. bes8. c16 | d8 bes c4. a8 | bes2
}

alto = \relative {
  \autoBeamOff
  d'8. ees16 | d4. f8 ees d | f8 ees4. 8. 16 | e4. 8 8 8 |
  f4(ees) d8. ees16 | d4. 8 ees f | g ees4. g8. 16 |
  f8 d ees4. c8 | d2 \section 8. 16 | g4. 8 8. 16 |
  g8 f4. 8. 16 | e4. 8 8. 16 | f4(ees) 8. 16 |
  d4. 8 ees f | g ees4. g8. 16 | f8 d ees4. c8 | d2
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 | 4. 8 8 8 | 8 4. 8. g16 | 4. c8 8 bes |
  a2 bes8. 16 | 4. 8 8 8 | 8 4. 8. 16 |
  bes8 f a4. c8 | bes2 \section 8. 16 | 4. 8 8. 16 |
  bes8 4. 8. 16 | c4. 8 8. bes16 | a2 bes8. 16 |
  bes4. 8 8 8 | 8 4. 8. 16 | 8 f a4. c8 | bes2
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 | 4. 8 8 8 | ees8 4. 8. 16 |c4. 8 8 8 |
  f2 bes,8. 16 | 4. 8 8 8 | ees8 4. 8. 16 |
  g8 8 4. 8 | bes,2 \section bes'8. 16 | ees,4. 8 8. 16 |
  bes8 4. bes'8. 16 | g4. 8 8. 16 | f2 bes,8. 16 |
  bes4. 8 8 8 | ees8 4. 8. 16 | f8 8 4. 8 | bes,2
}

chorus = \lyricmode {
  Let the low -- er lights be burn -- ing!
  Send a gleam a -- cross the wave!
  Some poor faint -- ing, strug -- gling sea -- man
  You may res -- cue, you may save.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Bright -- ly beams our Fa -- ther's mer -- cy
  From His light -- house ev -- er -- more;
  But to us He gives the keep -- ing
  Of the lights a -- long the shore.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Dark the night of sin has set -- tled;
  Loud the an -- gry bil -- lows roar;
  Ea -- ger eyes are watch -- ing, long -- ing,
  For the lights a -- long the shore.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trim your fee -- ble lamp, my bro -- ther;
  Some poor sea -- man, tem -- pest- tost,
  Try -- ing now to make the har -- bour,
  In the dark -- ness \markup\italic may \markup\italic be \markup\italic lost.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bright" "ly " "beams " "our " Fa "ther's " mer "cy "
  "\nFrom " "His " light "house " ev er "more; "
  "\nBut " "to " "us " "He " "gives " "the " keep "ing "
  "\nOf " "the " "lights " a "long " "the " "shore. "
  "\nLet " "the " low "er " "lights " "be " burn "ing! "
  "\nSend " "a " "gleam " a "cross " "the " "wave! "
  "\nSome " "poor " faint "ing, " strug "gling " sea "man "
  "\nYou " "may " res "cue, " "you " "may " "save.\n"

  \set stanza = "2."
  "\nDark " "the " "night " "of " "sin " "has " set "tled; "
  "\nLoud " "the " an "gry " bil "lows " "roar; "
  "\nEa" "ger " "eyes " "are " watch "ing, " long "ing, "
  "\nFor " "the " "lights " a "long " "the " "shore. "
  "\nLet " "the " low "er " "lights " "be " burn "ing! "
  "\nSend " "a " "gleam " a "cross " "the " "wave! "
  "\nSome " "poor " faint "ing, " strug "gling " sea "man "
  "\nYou " "may " res "cue, " "you " "may " "save.\n"

  \set stanza = "3."
  "\nTrim " "your " fee "ble " "lamp, " "my " bro "ther; "
  "\nSome " "poor " sea "man, " tem pest "tost, "
  "\nTry" "ing " "now " "to " "make " "the " har "bour, "
  "\nIn " "the " dark "ness " "may " "be " "lost. "
  "\nLet " "the " low "er " "lights " "be " burn "ing! "
  "\nSend " "a " "gleam " a "cross " "the " "wave! "
  "\nSome " "poor " faint "ing, " strug "gling " sea "man "
  "\nYou " "may " res "cue, " "you " "may " "save. "
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
