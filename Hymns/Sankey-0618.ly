\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Yielded to God."
  subtitle    = "Sankey No. 618"
  subsubtitle = "C. C. No. 44"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "11.10."
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
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 d4 ees | g2 f | a4 bes c a | bes2 f | g ees4 g |
  f2 g | a4 bes a g | f1 | 2 d4 ees | g2 f |
  d'4 c bes a | c2 g | bes2 a4 g | f2 bes | 4 a g a | bes1 |
}

alto = \relative {
  \autoBeamOff
  d'2 bes4 c | cis2 d | ees4 4 4 4 | d2 2 | ees2 bes4 ees |
  f2 2 | 4 4 4 d | f2(d4 ees) | d2 bes4 c | cis2 d |
  f4 4 4 fis | g2 ees | cis2 4 4 | d2 2 | ees4 4 4 4 | d1 |
}

tenor = \relative {
  \autoBeamOff
  bes2 f4 f | e2 f | 4 g a f | 2 bes | 2 a4 bes |
  bes2 b | c4 d c bes | a2(bes4 c) | bes2 f4 f | e2 f |
  bes4 a bes bes | 2 2 | g2 a4 bes | 2 2 | c4 c bes f | 1 |
}

bass = \relative {
  \autoBeamOff
  bes,2 4 4 | 2 2 | f'4 4 4 4 | bes,2 2 | e2 4 4 |
  d2 des | c4 c c c | f1 | bes,2 4 4 | 2 2 |
  bes4 c d d | ees2 2 | e2 4 4 | f2 g | f4 4 4 4 | bes,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Yield -- ed to God, my bo -- dy, soul, and spi -- rit,
  Oh, what re -- joi -- cing fills my peace -- ful breast! __
  All, all is well: no doubts nor fear dis -- turbs me,
  While on His prom -- ise now a -- lone I rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yield -- ed to God, re -- pos -- ing 'neath His shad -- ow,
  Sun -- shine and glad -- ness round my path -- way fall; __
  Yield -- ed to God, whose love dis -- pels all sor -- row,
  He is my Ref -- uge, and my All in All.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yield -- ed to God, my lide and its de -- vo -- tion,
  Yield -- ed the ser -- vice of each day and year; __
  Oh, what a peace per -- vades my ev -- 'ry feel -- ing!
  Oh, what sweet vis -- ions on my sight ap -- pear!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Yield -- ed to God, and in His ho -- ly keep -- ing,
  My heart His tem -- ple ev -- er -- more shall be; __
  Yield -- ed to God, in will -- ing con -- se -- cra -- tion,
  Bles -- sed Re -- deem -- er, I am lost in Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Yield" "ed " "to " "God, " "my " bo "dy, " "soul, " "and " spi "rit, "
  "\nOh, " "what " re joi "cing " "fills " "my " peace "ful " "breast! " 
  "\nAll, " "all " "is " "well: " "no " "doubts " "nor " "fear " dis "turbs " "me, "
  "\nWhile " "on " "His " prom "ise " "now " a "lone " "I " "rest.\n"

  \set stanza = "2."
  "\nYield" "ed " "to " "God, " re pos "ing " "'neath " "His " shad "ow, "
  "\nSun" "shine " "and " glad "ness " "round " "my " path "way " "fall; " 
  "\nYield" "ed " "to " "God, " "whose " "love " dis "pels " "all " sor "row, "
  "\nHe " "is " "my " Ref "uge, " "and " "my " "All " "in " "All.\n"

  \set stanza = "3."
  "\nYield" "ed " "to " "God, " "my " "lide " "and " "its " de vo "tion, "
  "\nYield" "ed " "the " ser "vice " "of " "each " "day " "and " "year; " 
  "\nOh, " "what " "a " "peace " per "vades " "my " ev "'ry " feel "ing! "
  "\nOh, " "what " "sweet " vis "ions " "on " "my " "sight " ap "pear!\n"

  \set stanza = "4."
  "\nYield" "ed " "to " "God, " "and " "in " "His " ho "ly " keep "ing, "
  "\nMy " "heart " "His " tem "ple " ev er "more " "shall " "be; " 
  "\nYield" "ed " "to " "God, " "in " will "ing " con se cra "tion, "
  "\nBles" "sed " Re deem "er, " "I " "am " "lost " "in " "Thee. "
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

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \alto
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
      #(layout-set-staff-size 20)
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
