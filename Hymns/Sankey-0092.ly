\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ, my All!"
  subtitle    = "Sankey No. 92"
  subsubtitle = "New Hymnal No. 95"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar. D. D."
  meter       = "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
  \mark \markup { \box "E" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  f'8. g16
  f4. d8 f bes
  bes4 a a8 bes
  c4. 8 bes a
  bes2 \bar "|" \break \partial 4 f8. g16
  f4. d8 f bes % B
  d4 c4 8 bes
  a4. c8 bes g
  f2 \bar "|" \break \partial 4 f8.^\markup\smallCaps Chorus. 16
  c'4. 8 bes a % C
  bes4 f bes8 c
  d4. bes8 c d
  c2 \bar "|" \break \partial 4 d8. ees16
  d4. c8 bes f % D
  g4 bes a8 g
  f4. bes8 f ees
  d2 \bar "|" \break \partial 4 f8. g16
  f4. bes8 d c
  bes4 g ees'8 c
  bes4.^\markup\bold\italic rit. d8 c8. bes16
  bes2
}

alto = \relative {
  d'8. ees16
  d4. bes8 d f
  f4 4 8 8
  f4. 8 8 ees
  d2 8. ees16
  d4. bes8 d f % B
  f4 4 8 8
  f4. 8 e e
  f2 8. 16
  f4. 8 8 d % C
  d4 4 f8 8
  f4. 8 e e
  f2 8. 16
  f4. e8 d d % D
  e4 e cis8 8
  d4. f8 d c
  bes2 d8. ees16
  d4. 8 f fis % E
  g4 e g8 8
  f4. bes8 a8. f16
  f2
}

tenor = \relative {
  bes8. 16
  bes4. f8 bes d
  c4 4 8 d
  ees4. 8 d c
  bes2 8. 16
  bes4. f8 bes d % B
  bes4 a c8 d
  c4. a8 g bes
  a2 8. 16
  a4. ees'8 d c % C
  bes4 4 8 a
  bes4. d8 c bes
  a2 bes8. c16
  bes4. 8 f bes % D
  bes4 g a8 bes
  bes4. d8 bes f
  f2 bes8. 16
  bes4. 8 8 8 % E
  bes4 4 c8 c
  d4. f8 ees8. d16
  d2
}

bass= \relative {
  bes,8. 16
  bes4. 8 8 8
  f'4 4 8 8
  f4. 8 8 8
  bes,2 8. 16
  bes4. 8 8 8 % B
  f'4 f a,8 bes
  c4. 8 8 8
  f2 8. 16
  f4. 8 8 8 % C
  bes,4 4 d8 f
  bes4. 8 g c,
  f2 8. 16
  bes,4. 8 8 8 % D
  ees4 4 e8 8
  f4. 8 8 8
  bes,2 8. 16
  bes4. 8 8 8 % E
  ees4 4 c8 ees
  f4. 8 8. 16
  bes,2
}

chorus = \lyricmode {
  All my song, when stand -- ing yon -- der,
  Shall be— "\"Christ," my joy, my "all!\""
  This shall ev -- er be my an -- them,
  "\"Christ" my glo -- ry, Christ my "all!\""
  This shall ev -- er be my an -- them,
  "\"Christ" my glo -- ry, Christ my "all!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In the hour when guilt as -- sails me,
  On His gra -- cious name I call,
  Then I find the heav'n -- ly ful -- ness,
  Christ, my righ -- teous -- ness, my all!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In the night when sor -- row clouds me,
  And the burn -- ing tear -- drops fall,
  Then I sing the song of pa -- tience,
  Christ, my Bro -- ther and my all!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the day when this im -- mor -- tal
  Shall fling off its mor -- tal thrall,
  Then my song of re -- sur -- rec -- tion
  Shall be— "\"Christ," my all in "all!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " "hour " "when " "guilt " as "sails " "me, "
  "\nOn " "His " gra "cious " "name " "I " "call, "
  "\nThen " "I " "find " "the " heav'n "ly " ful "ness, "
  "\nChrist, " "my " righ teous "ness, " "my " "all! "
  "\nAll " "my " "song, " "when " stand "ing " yon "der, "
  "\nShall " "be— " "\"Christ, " "my " "joy, " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "

  \set stanza = "2."
  "\nIn " "the " "night " "when " sor "row " "clouds " "me, "
  "\nAnd " "the " burn "ing " tear "drops " "fall, "
  "\nThen " "I " "sing " "the " "song " "of " pa "tience, "
  "\nChrist, " "my " Bro "ther " "and " "my " "all! "
  "\nAll " "my " "song, " "when " stand "ing " yon "der, "
  "\nShall " "be— " "\"Christ, " "my " "joy, " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "

  \set stanza = "3."
  "\nIn " "the " "day " "when " "this " im mor "tal "
  "\nShall " "fling " "off " "its " mor "tal " "thrall, "
  "\nThen " "my " "song " "of " re sur rec "tion "
  "\nShall " "be— " "\"Christ, " "my " "all " "in " "all!\" "
  "\nAll " "my " "song, " "when " stand "ing " yon "der, "
  "\nShall " "be— " "\"Christ, " "my " "joy, " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "
  "\nThis " "shall " ev "er " "be " "my " an "them, "
  "\n\"Christ " "my " glo "ry, " "Christ " "my " "all!\" "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
