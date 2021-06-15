\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Joy to the World."
  subtitle    = "Sankey No. 103"
  subsubtitle = "Sankey 880 No. 378"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "Isaac Watts, D.D." (alt) }

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*3 s2
  \mark \markup { \box "B" } s2 s1*3 s2..
  \mark \markup { \box "C" } s8 s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  g'1^\markup\italic Joyfully.
  a4 b c4. e,8^\markup\italic Reverently.
  e4 4 4. 8
  f8 8 8 8 \bar "|" \break \partial 2 f8 f g a
  g2 f % B
  e1
  g1
  a4 b c4. \bar "|" \break \partial 8 e,8
  e4 4 4. 8 % C
  f8 f f f f f g a
  g2 f
  e1
}

alto = \relative {
  e'1
  f4 f e4. c8
  c4 4 4. 8
  b8 8 8 8 8 8 c c
  e2 d % B
  c1
  e1
  f4 4 e4. c8
  c4 4 4. 8
  b8 b b b b b c c
  e2 d
  c1
}

tenor = \relative {
  c'1
  c4 g g4. g8
  g4 4 4. 8
  g8 g g g g g c c
  c2 g % B
  g1
  c1
  c4 g4 4. 8
  g4 4 4. 8 % C
  g8 g g g g g c c
  c2 g
  g1
}

bass= \relative {
  c1
  f4 g c,4. 8
  c4 4 4. 8
  d8 d d d d d e f
  g2 g, % B
  c1
  c1
  f4 g c,4. 8
  c4 4 4. 8 % C
  d8 d d d d d e f
  g2 g,
  c1
}

chorus = \lyricmode {
  The Migh -- ty God,
  the Ev -- er -- last -- ing Fa -- ther,
  and the Prince of Peace!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "Joy to the world! the" Lord is come:
  The Migh -- ty God,
  the Ev -- er -- last -- ing Fa -- ther,
  and the Prince of Peace!
  "Let every heart pre" -- pare Him room:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "Joy to the world! the" Sa -- viour reigns:
  The Migh -- ty God,
  the Ev -- er -- last -- ing Fa -- ther,
  and the Prince of Peace!
  "Oh, praise Him, floods, rocks," hills, and plains:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "He rules the world with" truth and grace:
  The Migh -- ty God,
  the Ev -- er -- last -- ing Fa -- ther,
  and the Prince of Peace!
  "And saves us by His" righ -- teous -- ness:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Joy to the world! the " "Lord " "is " "come: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "
  "\nLet every heart pre" "pare " "Him " "room: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "

  \set stanza = "2."
  "\nJoy to the world! the " Sa "viour " "reigns: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "
  "\nOh, praise Him, floods, rocks, " "hills, " "and " "plains: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "

  \set stanza = "3."
  "\nHe rules the world with " "truth " "and " "grace: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "
  "\nAnd saves us by His " righ teous "ness: "
  "\nThe " Migh "ty " "God, "
  "\nthe " Ev er last "ing " Fa "ther, "
  "\nand " "the " "Prince " "of " "Peace! "
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
%            \new Voice \TempoTrack
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
                                  % Soprano staff
          \new Staff = soprano
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
