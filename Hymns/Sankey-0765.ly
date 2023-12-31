\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let us with a Gladsome Mind."
  subtitle    = "Sankey No. 765"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Ancient Church Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Milton."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "St. Martin."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4. a8 b4 g | a fis g2 | d'4 4 e b8[c] | d4 d b2 |
  b4 a c b | a g8[a] b2 | d4. c8 b4 g | a fis g2 |
}

alto = \relative {
  \autoBeamOff
  d'4. 8 g4 4 | e4 d4 2 | 4 g g g | g fis g2 |
  g4 a g fis | e e dis2 | d4 fis g e | e d4 2 |
}

tenor = \relative {
  \autoBeamOff
  b4. c8 d[b] 4 | c4 a b2 | a4 b c g | a d4 2 |
  d4 d e b | c e, fis2 | b4 c d b | c a b2 |
}

bass = \relative {
  \autoBeamOff
  g4. 8 4 e | c4 d g2 | fis4 g c, e | d d g2 |
  g4 fis e d | c c b2 | g4. a8 b4 e | c d g2 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Let us with a glad -- some mind
  Praise the Lord, for He is kind;
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He, with all- -- com -- mand -- ing might,
  Filled the new- -- made world with light:
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All things liv -- ing He doth feed,
  His full hand sup -- plies their need:
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He His cho -- sen race did bless
  In the waste -- ful wil -- der -- ness:
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  He hath with a pit -- eous eye
  Looked up -- on our mi -- ser -- y:
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Let us, then, with glad -- some mind
  Praise the Lord, for He is kind;
  For His mer -- cies shall en -- dure,
  Ev -- er faith -- ful, ev -- er sure.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Let " "us " "with " "a " glad "some " "mind "
  "\nPraise " "the " "Lord, " "for " "He " "is " "kind; "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure.\n"

  \set stanza = "2."
  "\nHe, " "with " all- com mand "ing " "might, "
  "\nFilled " "the " new- "made " "world " "with " "light: "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure.\n"

  \set stanza = "3."
  "\nAll " "things " liv "ing " "He " "doth " "feed, "
  "\nHis " "full " "hand " sup "plies " "their " "need: "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure.\n"

  \set stanza = "4."
  "\nHe " "His " cho "sen " "race " "did " "bless "
  "\nIn " "the " waste "ful " wil der "ness: "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure.\n"

  \set stanza = "5."
  "\nHe " "hath " "with " "a " pit "eous " "eye "
  "\nLooked " up "on " "our " mi ser "y: "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure.\n"

  \set stanza = "6."
  "\nLet " "us, " "then, " "with " glad "some " "mind "
  "\nPraise " "the " "Lord, " "for " "He " "is " "kind; "
  "\nFor " "His " mer "cies " "shall " en "dure, "
  "\nEv" "er " faith "ful, " ev "er " "sure. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
