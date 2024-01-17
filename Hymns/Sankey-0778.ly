\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Work, for the Night is Coming"
  subtitle    = "Sankey No. 778"
  subsubtitle = "Sankey 880 No. 69"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. L. Walker."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 a8. bes16 c4 4 | d2 c | f,4 8. 16 4 g | a2. r4 |
  c4 a8. bes16 c4 c | d2 c | f,4 g a g | f2. r4 |
  g4 8. 16 4 a | bes4.(a8) g2 | a4^\cresc 8. 16 4 b | c2. r4\omit\f |
  c4 a8. bes16 c4 c | d2 c | f,4 g a g | f2. r4 |
}

alto = \relative {
  \autoBeamOff
  a'4 f8. g16 a4 a | bes2 a | f4 8. 16 4 e | f2. r4 |
  a4 f8. g16 a4 4 | bes2 a | f4 4 4 e | f2. r4 |
  e4 8. 16 4 f | g4.(f8) e2 | f4^\cresc 8. 16 4 4 | e2. r4\omit\f |
  a4 f8. g16 | a4 4 | bes2 a | f4 f f e | f2. r4 |
}

tenor = \relative {
  \autoBeamOff
  f4 8. 16 4 4 | 2 2 | a4 8. f16 a4 c | 2. r4 |
  f,4 8. 16 4 4 | 2 2 | c'4 d c bes | a2. r4 |
  c4 8. 16 4 4 | 2 2 | 4 8. 16 a4 g | 2. r4 |
  f4 8. 16 4 4 | 2 2 | c'4 d c bes | a2. r4 |
}

bass = \relative {
  \autoBeamOff
  f4 8. 16 4 4 | bes,2 f' | 4 8. 16 4 c | f2. r4 |
  f4 8. 16 4 4 | bes,2 f' | a4 bes c c, | f2. r4 |
  c4 8. 16 4 4 | 2 2 | f4 8. 16 4 d | c2. r4 |
  f4 8. 16 4 4 | bes,2 f' | a4 bes c c, | f2. r4 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Work, for thy night is com -- ing,
  Work thro' the morn -- ing hours;
  Work, while the dew is spark -- ling,
  Work 'mid spring -- ing flowers;
  Work, when the day grows bright -- er,
  Work in the glow -- ing sun;
  Work, for the night is com -- ing,
  When man's work is done.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Work, for the night is com -- ing,
  Work thro' the sun -- ny noon;
  Fill bright -- est hours with la -- bour,
  Rest comes sure and soon.
  Give ev -- 'ry fly -- ing min -- ute
  Some -- thing to keep in store;
  Work, for the night is com -- ing,
  When man works no more.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Work, for the night is com -- ing,
  Un -- der the sun -- set skies;
  While their bright tints are glow -- ing,
  Work, for day -- light flies.
  Work, till  the last beam fad -- eth,
  Fa -- deth to shine no more.
  Work, while the night is dark -- 'ning,
  When man's work is o'er.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Work, " "for " "thy " "night " "is " com "ing, "
  "\nWork " "thro' " "the " morn "ing " "hours; "
  "\nWork, " "while " "the " "dew " "is " spark "ling, "
  "\nWork " "'mid " spring "ing " "flowers; "
  "\nWork, " "when " "the " "day " "grows " bright "er, "
  "\nWork " "in " "the " glow "ing " "sun; "
  "\nWork, " "for " "the " "night " "is " com "ing, "
  "\nWhen " "man's " "work " "is " "done.\n"

  \set stanza = "2."
  "\nWork, " "for " "the " "night " "is " com "ing, "
  "\nWork " "thro' " "the " sun "ny " "noon; "
  "\nFill " bright "est " "hours " "with " la "bour, "
  "\nRest " "comes " "sure " "and " "soon. "
  "\nGive " ev "'ry " fly "ing " min "ute "
  "\nSome" "thing " "to " "keep " "in " "store; "
  "\nWork, " "for " "the " "night " "is " com "ing, "
  "\nWhen " "man " "works " "no " "more.\n"

  \set stanza = "3."
  "\nWork, " "for " "the " "night " "is " com "ing, "
  "\nUn" "der " "the " sun "set " "skies; "
  "\nWhile " "their " "bright " "tints " "are " glow "ing, "
  "\nWork, " "for " day "light " "flies. "
  "\nWork, " "till "  "the " "last " "beam " fad "eth, "
  "\nFa" "deth " "to " "shine " "no " "more. "
  "\nWork, " "while " "the " "night " "is " dark "'ning, "
  "\nWhen " "man's " "work " "is " "o'er. "
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
