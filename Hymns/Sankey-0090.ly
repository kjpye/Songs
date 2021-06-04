\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus for Me!"
  subtitle    = "Sankey No. 90"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  fis'4 d fis
  a4 fis a
  d4 cis d
  a2.
  b4 g b
  a4 fis a
  a4 g fis % B
  e2.
  fis4 d fis
  a4 fis a
  d4 cis d
  b2.
  e4. d8 b4 % C
  a4 d r
  fis,4 g e
  d2. \bar "||" \break
  a'4.^\markup\smallCaps Chorus. 8 4
  a2 r4
  cis4. b8 cis4 % D
  d2 r4
  d4. cis8 b4
  a4. d8 4
  e4 d cis
  d2.
}

alto = \relative {
  d'4 a d
  fis4 d fis
  fis4 g a
  fis2.
  g4 d g
  fis4 d fis
  e4 e d % B
  cis2.
  d4 a d
  fis4 d fis
  fis4 g a
  g2.
  g4. 8 4 % C
  fis4 fis r
  d4 e cis
  d2. e4. fis8 g4
  fis2 r4
  g4. 8 4 % D
  fis2 r4
  fis4. a8 g4
  fis4. 8 4
  g4 fis e
  fis2.
}

tenor = \relative {
  a4 fis a
  d4 a d
  a4 a a
  d2.
  d4 b d
  d4 a a
  a4 a a % B
  a2.
  a4 fis a
  d4 a d
  a4 a d
  d2.
  b4. 8 d4 % C
  d4 a r
  a4 a g
  fis2.
  cis'4. d8 e4
  d2 r4
  cis4. 8 4 % D
  d2 r4
  a4. 8 d4
  d4. a8 4
  b4 a a
  a2.
}

bass= \relative {
  d4 d d
  d4 d d
  d4 e fis
  d2.
  g4 g g
  d4 d d
  cis4 4 d % B
  a2.
  d4 d d
  d4 d d
  d4 e fis
  g2.
  g4. 8 4 % C
  a4 a r
  a4 a a,
  d2.
  a'4. 8 4
  d,2 r4
  a4. 8 4 % D
  d2 r4
  d4. 8 4
  d4. 8 4
  g4 a a,
  d2.
}

chorus = \lyricmode {
  Je -- sus for me! Je -- sus for me!
  All the time, ev -- 'ry -- where,
  Je -- sus for me!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus my sa -- viour, is all things to me;
  Oh, what a won -- der -- ful Sa -- viour is He!
  Gui -- ding, pro -- tect -- ing, o'er life's trou -- bled sea,
  Migh -- ty De -- liv -- 'rer— Je -- sus for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus in sick -- ness, and Je -- sus in health;
  Je -- sus in pov -- er -- ty, com -- fort or wealth;
  Sun -- shine or tem -- pest, what -- ev -- er it be,
  He is my safe -- ty— Je -- sus for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He is my Ref -- uge, my Rock, and my Tower—
  He is my For -- tress, my Strength, and my Power;
  Life ev -- er -- last -- ing, my Days -- man is He,
  Bless -- ed Re -- deem -- er— Je -- sus for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He is my Pro -- phet, my Priest, and my King;
  He is my Bread of Life, Foun -- tain and Spring;
  Bright Sun of Right -- eous -- ness, Day -- Star is He;
  Horn of Sal -- va -- tion— Je -- sus for me!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Je -- sus in sor -- row, in joy, or in pain;
  Je -- sus my Trea -- sure, in loss or in gain;
  Cons -- tant Com -- pan -- ion where -- 'er I may be;
  Liv -- ing or dy -- ing— Je -- sus for me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " sa "viour, " "is " "all " "things " "to " "me; "
  "\nOh, " "what " "a " won der "ful " Sa "viour " "is " "He! "
  "\nGui" "ding, " pro tect "ing, " "o'er " "life's " trou "bled " "sea, "
  "\nMigh" "ty " De liv "'rer— " Je "sus " "for " "me! "
  "\nJe" "sus " "for " "me! " Je "sus " "for " "me! "
  "\nAll " "the " "time, " ev 'ry "where, "
  "\nJe" "sus " "for " "me! "

  \set stanza = "2."
  "\nJe" "sus " "in " sick "ness, " "and " Je "sus " "in " "health; "
  "\nJe" "sus " "in " pov er "ty, " com "fort " "or " "wealth; "
  "\nSun" "shine " "or " tem "pest, " what ev "er " "it " "be, "
  "\nHe " "is " "my " safe "ty— " Je "sus " "for " "me! "
  "\nJe" "sus " "for " "me! " Je "sus " "for " "me! "
  "\nAll " "the " "time, " ev 'ry "where, "
  "\nJe" "sus " "for " "me! "

  \set stanza = "3."
  "\nHe " "is " "my " Ref "uge, " "my " "Rock, " "and " "my " "Tower— "
  "\nHe " "is " "my " For "tress, " "my " "Strength, " "and " "my " "Power; "
  "\nLife " ev er last "ing, " "my " Days "man " "is " "He, "
  "\nBless" "ed " Re deem "er— " Je "sus " "for " "me! "
  "\nJe" "sus " "for " "me! " Je "sus " "for " "me! "
  "\nAll " "the " "time, " ev 'ry "where, "
  "\nJe" "sus " "for " "me! "

  \set stanza = "4."
  "\nHe " "is " "my " Pro "phet, " "my " "Priest, " "and " "my " "King; "
  "\nHe " "is " "my " "Bread " "of " "Life, " Foun "tain " "and " "Spring; "
  "\nBright " "Sun " "of " Right eous "ness, " Day "Star " "is " "He; "
  "\nHorn " "of " Sal va "tion— " Je "sus " "for " "me! "
  "\nJe" "sus " "for " "me! " Je "sus " "for " "me! "
  "\nAll " "the " "time, " ev 'ry "where, "
  "\nJe" "sus " "for " "me! "

  \set stanza = "5."
  "\nJe" "sus " "in " sor "row, " "in " "joy, " "or " "in " "pain; "
  "\nJe" "sus " "my " Trea "sure, " "in " "loss " "or " "in " "gain; "
  "\nCons" "tant " Com pan "ion " where "'er " "I " "may " "be; "
  "\nLiv" "ing " "or " dy "ing— " Je "sus " "for " "me! "
  "\nJe" "sus " "for " "me! " Je "sus " "for " "me! "
  "\nAll " "the " "time, " ev 'ry "where, "
  "\nJe" "sus " "for " "me! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
