\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Coming to the Cross."
  subtitle    = "Sankey No. 477"
  subsubtitle = "Sankey 880 No. 54"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. G. Fischer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. McDonald."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  d'8 g | b4. g8 a8. b16 | g2 b8 c | d4. e8 d8. b16 | a2 \bar "|" \break g8 a |
  b4. g8 a8. b16 | g2 e8 8 | d4. g8 b8. a16 | g2 \bar "||" \break d8^\markup\smallCaps Chorus. g |
  b4. g8 a8. b16 | g2 b8 c | d4. e8 d8. b16 | a2 \bar "|" \break g8 a |
  b4. g8 a8. b16 | g2 e8 8 | d4. g8 b8. a16 | g2
}

alto = \relative {
  \autoBeamOff \partial 4
  d'8 8 | g4. 8 fis8. 16 | g2 8 8 | 4. 8 8. 16 | fis2 d8 8 |
  g4. d8 fis8. d16 | 2 c8 8 | b4. d8 8. 16 | 2 8 8 |
  g4. 8 fis8. 16 | g2 8 8 | 4. 8 8. 16 | fis2 d8 8 |
  g4. d8 fis8. d16 | d2 c8 8 | b4. d8 8. 16 | 2
}

tenor = \relative {
  \autoBeamOff \partial 4
  b8 8 | d4. b8 c8. d16 | b2 g8 a | b4. c8 b8. d16 | d2 b8 c |
  d4. b8 c8. d16 | b2 g8 8 | 4. b8 d8. c16 | b2 8 8 |
  d4. b8 c8. d16 | b2 g8 a | b4. c8 b8. d16 | 2 b8 c |
  d4. b8 c8. d16 | b2 g8 8 | 4. b8 d8. c16 | b2
}

bass = \relative {
  \autoBeamOff \partial 4
  g8 8 | 4. 8 d8. 16 | g2 8 8 | 4. 8 8. 16 | d2 g8 8 |
  g4. 8 d8. 16 | g2 c,8 8 | d4. 8 8. 16 | <g, g'>2 g'8 8 |
  g4. 8 d8. 16 | g2 8 8 | 4. 8 8. 16 | d2 g8 8 |
  g4. 8 d8. 16 | g2 c,8 8 | d4. 8 8. 16 | <g, g'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set stanza = "1.-3."
  I am trust -- ing, Lord, in Thee,
  Bless -- ed Lamb of Cal -- var -- ry;
  Hum -- bly at Thy cross I bow;
  Save me, Je -- sus, save me now.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I am com -- ing to the cross;
  I am poor, and weak, and blind;
  I am count -- ing all but dross;
  I shall full sal -- va -- tion find.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Long my heart has sighed for Thee,
  Long has e -- vil reigned with -- in;
  Je -- sus sweet -- ly speaks to me—
  "\"I" will cleanse you from all "sin.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Here I give my all to Thee,
  Friends, and time, and earth -- ly store,
  Soul and bo -- dy Thine to be—
  Whol -- ly Thine for ev -- er -- more.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus comes! He fills my soul!
  Per -- fec -- ted i Him I am;
  I am ev -- 'ry whit made whole;
  Glo -- ry, glo -- ry to the Lamb!
  \set stanza = "4."
  Still I'm trust -- ing, Lord, in Thee,
  Bless -- ed Lamb of Cal -- va -- ry;
  Hum -- bly at Thy cross I bow;
  Je -- sus saves me, saves me now.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " com "ing " "to " "the " "cross; "
  "\nI " "am " "poor, " "and " "weak, " "and " "blind; "
  "\nI " "am " count "ing " "all " "but " "dross; "
  "\nI " "shall " "full " sal va "tion " "find. "
  "\nI " "am " trust "ing, " "Lord, " "in " "Thee, "
  "\nBless" "ed " "Lamb " "of " Cal var "ry; "
  "\nHum" "bly " "at " "Thy " "cross " "I " "bow; "
  "\nSave " "me, " Je "sus, " "save " "me " "now.\n"

  \set stanza = "2."
  "\nLong " "my " "heart " "has " "sighed " "for " "Thee, "
  "\nLong " "has " e "vil " "reigned " with "in; "
  "\nJe" "sus " sweet "ly " "speaks " "to " "me— "
  "\n\"I " "will " "cleanse " "you " "from " "all " "sin.\" "
  "\nI " "am " trust "ing, " "Lord, " "in " "Thee, "
  "\nBless" "ed " "Lamb " "of " Cal var "ry; "
  "\nHum" "bly " "at " "Thy " "cross " "I " "bow; "
  "\nSave " "me, " Je "sus, " "save " "me " "now.\n"

  \set stanza = "3."
  "\nHere " "I " "give " "my " "all " "to " "Thee, "
  "\nFriends, " "and " "time, " "and " earth "ly " "store, "
  "\nSoul " "and " bo "dy " "Thine " "to " "be— "
  "\nWhol" "ly " "Thine " "for " ev er "more. "
  "\nI " "am " trust "ing, " "Lord, " "in " "Thee, "
  "\nBless" "ed " "Lamb " "of " Cal var "ry; "
  "\nHum" "bly " "at " "Thy " "cross " "I " "bow; "
  "\nSave " "me, " Je "sus, " "save " "me " "now.\n"

  \set stanza = "4."
  "\nJe" "sus " "comes! " "He " "fills " "my " "soul! "
  "\nPer" fec "ted " "i " "Him " "I " "am; "
  "\nI " "am " ev "'ry " "whit " "made " "whole; "
  "\nGlo" "ry, " glo "ry " "to " "the " "Lamb! "
  \set stanza = "4."
  "\nStill " "I'm " trust "ing, " "Lord, " "in " "Thee, "
  "\nBless" "ed " "Lamb " "of " Cal va "ry; "
  "\nHum" "bly " "at " "Thy " "cross " "I " "bow; "
  "\nJe" "sus " "saves " "me, " "saves " "me " "now. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
