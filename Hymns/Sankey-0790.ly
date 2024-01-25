\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bear the Cross for Jesus."
  subtitle    = "Sankey No. 790"
  subsubtitle = "C. C. No. 175"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. A. S. Hawks."
  meter       = \markup\smallCaps "6.5. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 8 4 d8 | c4. a | f4 8 g4 8 | a4.~a | c4 8 4 d8 |
  c4. a | g4 8 a4 g8 | 4.~4. | bes4 a8 g4 8 | a4. c |
  d4 8 c4 a8 | g4.~g | a4 bes8 c4 a8 | b4. d\fermata | c4 a8 4 g8 | f4.~f |
  \section \sectionLabel \markup\smallCaps Refrain. \break
  g4 a8 bes4. | a4 bes8 c4. | d4 8 c4 a8 | g4.~g |
  a4 bes8 c4 a8 | bes4. d\fermata | c4 a8 4 g8 | f4.~f |
}

alto = \relative {
  \autoBeamOff
  f'4 8 4 8 | 4. 4. | 4 8 e4 8 | f4.~f | 4 8 4 8 |
  f4. f | e4 8 f4 8 | e4.~e | g4 f8 e4 8 | f4. f |
  f4 8 4 8 | e4.~e | f4 g8 a4 f8 | 4. 4.\fermata | 4 8 4 e8 | f4.~f \section
  e4 f8 g4. | f4 g8 a4. | bes4 8 a4 f8 | e4.~e |
  f4 g8 a4 f8 | 4. f\fermata | 4 8 4 e8 | f4.~f
}

tenor = \relative {
  \autoBeamOff
  a4 8 4 bes8 |a4. c | a4 8 c4 8 | 4.~4. | a4 8 4 bes8 |
  a4. c | 4 8 b4 8 | c4.~c | 4 8 4 8 | 4. a |
  bes4 8 a4 c8 | 4.~4. | 4 8 4 ees8 | d4. bes\fermata | 4 c8 4 bes8 | a4.~4. \section
  c4 8 4. | 4 8 f4. | 4 8 4 c8 | 4.~4. |
  c4 8 4 ees8 | d4. bes\fermata |a4 c8 4 bes8 | a4.~a |
}

bass = \relative {
  \autoBeamOff
  f4 8 4 8 | 4. 4. | 4 8 c4 8 | f4.~f | 4 8 4 8 |
  f4. f | g4 8 4 8 | c,4.~c | 4 8 4 8 | f4. f |
  bes,4 d8 f4 8 | c4.~c | f4 8 4 8 | bes,4. 4.\fermata | c4 8 4 8 | f4.~f \section |
  c4 8 4. | f4 8 4. | bes4 8 f4 8 | c4.~c |
  f4 8 4 8 | bes,4. 4.\fermata | c4 8 4 8 | f4.~f |
}

chorus = \lyricmode {
  Bear the  cross, bear the cross,
  Bear it ev -- 'ry day;
  bear the cross for Je -- sus,
  bear it all the way.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Bear the cross for Je -- sus,
  Bear it ev -- 'ry day;
  Tho' the path be rug -- ged,
  Bear it all the way;
  Bear the cross for Je -- sus,
  What- so- e'er it be;
  bear it, and re -- mem -- ber
  All His love for thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bear the cross for Je -- sus,
  Bear it thro' the strife;
  On thro' storm or sun -- shine,
  Up the hill of life;
  Bear the cross with pa -- tience,
  Tho' you sigh for rest;
  Just the one He giv -- eth
  Is for you the best.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bear the cross for Je -- sus;
  Would you know the power
  Of His grace to keep you,
  Keep you ev -- 'ry hour?
  Bear the cross for Je -- sus,
  Nev -- er mind its weight;
  We shall have our bur -- den
  At His pal -- ace gate.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bear " "the " "cross " "for " Je "sus, "
  "\nBear " "it " ev "'ry " "day; "
  "\nTho' " "the " "path " "be " rug "ged, "
  "\nBear " "it " "all " "the " "way; "
  "\nBear " "the " "cross " "for " Je "sus, "
  "\nWhat-" so- "e'er " "it " "be; "
  "\nbear " "it, " "and " re mem "ber "
  "\nAll " "His " "love " "for " "thee. "
  "\nBear " "the "  "cross, " "bear " "the " "cross, "
  "\nBear " "it " ev "'ry " "day; "
  "\nbear " "the " "cross " "for " Je "sus, "
  "\nbear " "it " "all " "the " "way.\n"

  \set stanza = "2."
  "\nBear " "the " "cross " "for " Je "sus, "
  "\nBear " "it " "thro' " "the " "strife; "
  "\nOn " "thro' " "storm " "or " sun "shine, "
  "\nUp " "the " "hill " "of " "life; "
  "\nBear " "the " "cross " "with " pa "tience, "
  "\nTho' " "you " "sigh " "for " "rest; "
  "\nJust " "the " "one " "He " giv "eth "
  "\nIs " "for " "you " "the " "best. "
  "\nBear " "the "  "cross, " "bear " "the " "cross, "
  "\nBear " "it " ev "'ry " "day; "
  "\nbear " "the " "cross " "for " Je "sus, "
  "\nbear " "it " "all " "the " "way.\n"

  \set stanza = "3."
  "\nBear " "the " "cross " "for " Je "sus; "
  "\nWould " "you " "know " "the " "power "
  "\nOf " "His " "grace " "to " "keep " "you, "
  "\nKeep " "you " ev "'ry " "hour? "
  "\nBear " "the " "cross " "for " Je "sus, "
  "\nNev" "er " "mind " "its " "weight; "
  "\nWe " "shall " "have " "our " bur "den "
  "\nAt " "His " pal "ace " "gate. "
  "\nBear " "the "  "cross, " "bear " "the " "cross, "
  "\nBear " "it " ev "'ry " "day; "
  "\nbear " "the " "cross " "for " Je "sus, "
  "\nbear " "it " "all " "the " "way. "
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
