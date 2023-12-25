\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gather the Golden Grain."
  subtitle    = "Sankey No. 758"
  subsubtitle = "C. C. No. 214"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
  \textMark \markup { \box \bold "E" } s4 s2.*5
  \textMark \markup { \box \bold "F" }    s2.*5
  \textMark \markup { \box \bold "G" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | d g g | 4. a8 g4 | g fis g | a2 \bar "|" \break
  d,4 | d a' a | 4. b8 a4 | a g a | b2 \bar "|" \break
  d,4 | d b' b | 8 d4. 4 | d b g | e'2 \bar "|" \break
  e4 | d d e | d g, c | b8 4. a4 | g2
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  d4 | b'2.~ | 4 a g | d2 e4 | d2 4 | c'2.~ |
  c4 a fis | d2 e4 | d2 4 | d g a | b8 4. g4 |
  e4 g c | e2\fermata 4 | d g, c | b2 a4 | g2.~ | 2
}

alto = \relative {
  \autoBeamOff
  b4 | b b b | 4. c8 d4 | d d d | fis2
  d4 d c d | fis4. 8 4 | 4 g fis | g2
  d4 | d d g | 8 4. 4 | g g f | e2
  g4 | g g g | g g g | 8 4. fis4 | g2 \section
  \apart r4 | r2 \auto g4 | g d d | 2 c4 | b2 \apart r4 | r2 \auto fis'4 |
  fis4 4 d | c2 4 | 2 4 | b4 4 c | d8 4. 4 |
  c4 e e | g2\fermata 4 | 4 4 4 | 2 fis4 | g2.~ | 2
}

tenor = \relative {
  \autoBeamOff
  g4 | g g g | 4. 8 4 | b a b | d2
  fis,4 | 4 4 4 | c'4. d8 c4 | c b d | 2
  b4 | b d d | 8 b4. 4 | b d b | c2
  c4 | b b c | b b e | d8  4. c4 b2 \section
  r4 r2 d4 | d c b | b2 g4 | 2 r4 | r2 a4 |
  a4 c a | fis2 g4 | fis2 4 | g g g | 8 4. 4 |
  g4 g g | c2\fermata 4 | d b e | d2 c4 | b2.~ | 2
}

bass = \relative {
  \autoBeamOff
  g,4 | 4 4 4 | 4. 8 b4 | d d d | 2
  d4 | d d d | 4. 8 4 | d d d | g2
  g4 | g g g | 8 4. 4 | 4 4 4 | c,2
  e4 | g g g | g e a, | d8 4. 4 | g2 \section
  r4 | r2 g4 | g g g | 2 4 | 2 r4 | r2 d4 |
  d4 4 4 | 2 4 | 2 4 | g,4 4 4 | 8 4. b4 |
  c4 4 4 | 2\fermata 4 | b e a, | d2 4 | g2.~ | 2
}

chorus = \lyricmode {
  Go, ga -- ther the gold -- en grain;
  Go, ga -- ther the gold -- en grain;
  The har -- vest is rea -- dy, look out on the plain;
  Go, ga -- ther the gold -- en grain. __
}

chorusMen = \lyricmode {
  \repeat unfold 44 \skip 1
  Go, gath -- er
  \repeat unfold 4 \skip 1
  Go, ga -- ther
  \repeat unfold 22 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Leave not for to -- mor -- row the work of to -- day,
  For time, like an ar -- row, is speed -- ing a -- way;
  The har -- vest is rea -- dy, look out on the plain;
  Go, thrust in the sic -- kle and ga -- ther the grain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Leave not for to -- mor -- row the work of to -- day,
  The mo -- ments are pre -- cious, then why should we stay?
  The Mas -- ter is call -- ing a -- gain and a -- gain;
  Go, thrust in the sic -- kle and ga -- ther the grain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Leave not for to -- mor -- row the work of to -- day,
  The sum -- mer is wa -- ning, no long -- er de -- lay;
  The sheaves for the reap -- ing wave bright o'er the plain;
  Go, thrust in the sic -- kle and ga -- ther the grain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Leave " "not " "for " to mor "row " "the " "work " "of " to "day, "
  "\nFor " "time, " "like " "an " ar "row, " "is " speed "ing " a "way; "
  "\nThe " har "vest " "is " rea "dy, " "look " "out " "on " "the " "plain; "
  "\nGo, " "thrust " "in " "the " sic "kle " "and " ga "ther " "the " "grain. "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nThe " har "vest " "is " rea "dy, " "look " "out " "on " "the " "plain; "
  "\nGo, " ga "ther " "the " gold "en " "grain.\n" 

  \set stanza = "2."
  "\nLeave " "not " "for " to mor "row " "the " "work " "of " to "day, "
  "\nThe " mo "ments " "are " pre "cious, " "then " "why " "should " "we " "stay? "
  "\nThe " Mas "ter " "is " call "ing " a "gain " "and " a "gain; "
  "\nGo, " "thrust " "in " "the " sic "kle " "and " ga "ther " "the " "grain. "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nThe " har "vest " "is " rea "dy, " "look " "out " "on " "the " "plain; "
  "\nGo, " ga "ther " "the " gold "en " "grain.\n" 

  \set stanza = "3."
  "\nLeave " "not " "for " to mor "row " "the " "work " "of " to "day, "
  "\nThe " sum "mer " "is " wa "ning, " "no " long "er " de "lay; "
  "\nThe " "sheaves " "for " "the " reap "ing " "wave " "bright " "o'er " "the " "plain; "
  "\nGo, " "thrust " "in " "the " sic "kle " "and " ga "ther " "the " "grain. "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nGo, " ga "ther " "the " gold "en " "grain; "
  "\nThe " har "vest " "is " rea "dy, " "look " "out " "on " "the " "plain; "
  "\nGo, " ga "ther " "the " gold "en " "grain. " 
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
            \addlyrics \wordsMidi
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
