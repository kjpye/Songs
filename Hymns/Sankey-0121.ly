\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "On yonder Hill of Calvary."
  subtitle    = "Sankey No. 121"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. P. Danks."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "John R. Clements" (arr.) }
  meter       = "L.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*2
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*2 s4.
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4. s2.*7
  s4 \tempo 4=40 s4 \tempo 4=120 s4
  s2.*6
  \tempo 4=110 s2. s4 \tempo 4=20 s8
}

soprano = \relative {
  \autoBeamOff
  g'8 ees f
  aes4. g8 8 f
  ees4. 8 f g
  aes4. 8 bes c
  bes4. \bar "|" \break \partial 4. bes8 ees c
  bes4. c8 bes aes % B
  g2 4
  f4. 8 bes d
  c8. bes16 4\fermata \bar "||" \break \partial 4 bes4^\markup\smallCaps Chorus.
  c4. 8 d c % C
  c8. bes16 4 4
  aes4. 8 bes aes % D
  aes8. g16 4 4
  g4. 8 c bes
  bes8. aes16 4 g8[f]
  ees8.^\markup\italic rit. 16 4 d8[f]
  f8. ees16 8\fermata
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8
  ees4. 8 d d
  ees4. 8 8 8
  ees4. 8 g fis
  g4. ees8 ees aes
  g4. aes8 g f % B
  ees2 des4
  d4. c8 f f
  ees8. d16 d4\fermata d4
  d4. 8 8 8 % C
  ees8. 16 4 4
  d4. 8 8 8 % D
  d8. ees16 4 4
  ees4. 8 e e
  g8. f16 4 c % E
  bes8. 16 4 8[d]
  d8. bes16 8\fermata
}

tenor = \relative {
  \autoBeamOff
  bes8 g aes
  c4. bes8 8 aes
  g4. 8 aes bes
  c4. 8 bes a
  bes4. g8 c d
  ees4. 8 bes bes % B
  bes2 4
  bes4. a8 bes bes
  a8. bes16 4\fermata bes4
  aes8. 16 4. 8 % C
  g8. 16 4 4
  f4. 8 g f % D
  f8. ees16 4 g
  c4. 8 g c
  c8. 16 4 bes8[aes] % E
  g8. 16 4 f8[aes]
  aes8. g16 8\fermata
}

bass= \relative {
  \autoBeamOff
  ees8 8 8
  ees4. 8 bes bes
  ees4. 8 8 8
  ees4. 8 8 8
  ees4. 8 8 8
  ees4. 8 d d % B
  ees2 e4
  f4. ees8 d bes
  f'8. bes,16 4\fermata 4
  bes8. 16 4. 8 % C
  bes8. 16 4 4
  bes4. 8 8 8 % D
  b8. c16 4 4
  c4. 8 8 8
  f8. 16 4 aes, % E
  bes8. 16 4 4
  bes8. ees16 8\fermata
  
}

chorus = \lyricmode {
  On Cal -- va -- ry, dark Cal -- va -- ry,
  They nailed my Lord up -- on the tree—
  And there He died in ag -- o -- ny.
  On Cal -- va -- ry, dark Cal -- va -- ry.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  On yon -- der hill of Cal -- va -- ry,
  Where Je -- sus bled and died for me;
  'Twas there from sin He set me free,
  On Cal -- va -- ry, dark Cal -- va -- ry.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On yon -- der hill of Cal -- va -- ry
  Be -- hold the world's great tra -- ge -- dy;
  The sun thast aw -- ful hour did flee
  From Cal -- va -- ry, dark Cal -- va -- ry.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On yon -- der hill of Cal -- va -- ry,
  The sin -- ner's on -- ly hope and plea,
  Christ gave Him -- self for such as we—
  On Cal -- va -- ry, dark Cal -- va -- ry.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On " yon "der " "hill " "of " Cal va "ry, "
  "\nWhere " Je "sus " "bled " "and " "died " "for " "me; "
  "\n'Twas " "there " "from " "sin " "He " "set " "me " "free, "
  "\nOn " Cal va "ry, " "dark " Cal va "ry. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry, "
  "\nThey " "nailed " "my " "Lord " up "on " "the " "tree— "
  "\nAnd " "there " "He " "died " "in " ag o "ny. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry. "

  \set stanza = "2."
  "\nOn " yon "der " "hill " "of " Cal va "ry "
  "\nBe" "hold " "the " "world's " "great " tra ge "dy; "
  "\nThe " "sun " "thast " aw "ful " "hour " "did " "flee "
  "\nFrom " Cal va "ry, " "dark " Cal va "ry. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry, "
  "\nThey " "nailed " "my " "Lord " up "on " "the " "tree— "
  "\nAnd " "there " "He " "died " "in " ag o "ny. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry. "

  \set stanza = "3."
  "\nOn " yon "der " "hill " "of " Cal va "ry, "
  "\nThe " sin "ner's " on "ly " "hope " "and " "plea, "
  "\nChrist " "gave " Him "self " "for " "such " "as " "we— "
  "\nOn " Cal va "ry, " "dark " Cal va "ry. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry, "
  "\nThey " "nailed " "my " "Lord " up "on " "the " "tree— "
  "\nAnd " "there " "He " "died " "in " ag o "ny. "
  "\nOn " Cal va "ry, " "dark " Cal va "ry. "
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
            \new Voice \TempoTrack
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
