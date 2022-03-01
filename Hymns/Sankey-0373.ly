\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Come To-day!"
  subtitle    = "Sankey No. 373"
%  subsubtitle = "Sankey 880 No. Y"
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
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 8 8 g4 b8
  b4. a4 r8
  c8 8 8 fis,4 8
  g4.~4 r8 \break
  \tag #'rep        {b8 8 8 \slurDashed a(a) \slurSolid d8} % B
  \tag #'v1         {b8 8 8             a a             d8}
  \tag #'(v2 v3 v4) {b8 8 8             a4   \slurSolid d8}
  d4. cis4 r8
  e8 8 8 b4 cis8
  d4.~4 r8 \break
  d4.^\markup\smallCaps Chorus. 4. % C
  d8 cis d e4 d8
  g,4 8 b[a] e
  a4.~4 r8 \break
  b4 8 c[b] a % D
  d4. e4 r8
  g,4. b8[a] d,
  g4.~4 r8
}

alto = \relative {
  \autoBeamOff
  b8 8 8 4 d8
  e4. 4 r8
  e8 8 8 c4 8
  b4.~4 r8
  \tag #'rep        {d8 8 8 \slurDashed d(d) \slurSolid d8} % B
  \tag #'v1         {d8 8 8             d d             d8}
  \tag #'(v2 v3 v4) {d8 8 8             d4              d8}
  g4. 4 r8
  g8 8 8 4 8
  fis4.~4 r8
  g4. fis % C
  g8 8 8 4 8
  g4 d8 cis4 e8
  d4.~4 r8
  d4 8 4 8 % D
  g4(f8) e4 r8
  d4. 8[c] c
  b4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  g8 8 8 d4 g8
  g4. 4 r8
  a8 8 8 4 8
  g4.~4 r8
  \tag #'rep        {g8 8 8 \slurDashed a8(8) \slurSolid 8} % B
  \tag #'v1         {g8 8 8             a8 8             8}
  \tag #'(v2 v3 v4) {g8 8 8             a4               8}
  a4. 4 r8
  cis8 8 8 4 a8
  a4.~4 r8
  b4. c % C
  d8 e d c4 d8
  d4 b8 a4 g8
  fis4.~4 r8
  g4 8 fis4 8 % D
  g4. 4 r8
  b4. fis4 8
  g4.~4 r8
}

bass = \relative {
  \autoBeamOff
  g,8 8 8 4 8
  c4. 4 r8
  a8 8 8 d4 8
  g,4.~4 r8
  \tag #'rep        {g'8 8 8 \slurDashed fis(fis) \slurSolid fis8} % B
  \tag #'v1         {g8  8 8             fis fis             fis8}
  \tag #'(v2 v3 v4) {g8  8 8             fis4                fis8}
  e4. 4 r8
  a8 8 8 4 8
  d,4.~4 r8
  g4. a % C
  b8 ais b c4 b8
  b4 g8 e4 cis8
  d4.~4 r8
  g,4 8 a4 8 % D
  b4. c4 r8
  d4. 4 8
  g,4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Still, still Je -- sus is call -- ing;
  Hear, oh hear Him say:
  "\"Wea" -- ry, hea -- vy la -- den,
  Come, come to -- "day!\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Back from the wea -- ry wan -- d'ring,
  In -- to the nar -- row way;
  Je -- sus is \nom ten -- der -- ly \yesm call -- ing,
  Call -- ing the sheep that stray.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Out of the drea -- ry des -- ert
  In  -- to the pas -- tures green,
  Out of the land of dark -- ness
  In -- to the light se -- rene.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Why should we lon -- ger tar -- ry,
  Why should we lon -- ger roam
  Far from the place of re -- fuge,
  Far from the shel -- t'ring home?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come, for the hours are wan -- ing;
  Come from the moun -- tains cold;
  Come from the storm and tem -- pest
  In -- to the Shep -- herd's fold!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Back from the wea -- ry wan -- d'ring,
  In -- to the nar -- row way;
  Je -- sus is ten -- der -- ly call -- ing,
  Call -- ing the sheep that stray.
  Still, still Je -- sus is call -- ing;
  Hear, oh hear Him say:
  "\"Wea" -- ry, hea -- vy la -- den,
  Come, come to -- "day!\""

  \set stanza = "2."
  Out of the drea -- ry des -- ert
  In  -- to the pas -- tures green,
  Out of the land of dark -- ness
  In -- to the light se -- rene.
  Still, still Je -- sus is call -- ing;
  Hear, oh hear Him say:
  "\"Wea" -- ry, hea -- vy la -- den,
  Come, come to -- "day!\""

  \set stanza = "3."
  Why should we lon -- ger tar -- ry,
  Why should we lon -- ger roam
  Far from the place of re -- fuge,
  Far from the shel -- t'ring home?
  Still, still Je -- sus is call -- ing;
  Hear, oh hear Him say:
  "\"Wea" -- ry, hea -- vy la -- den,
  Come, come to -- "day!\""

  \set stanza = "4."
  Come, for the hours are wan -- ing;
  Come from the moun -- tains cold;
  Come from the storm and tem -- pest
  In -- to the Shep -- herd's fold!
  Still, still Je -- sus is call -- ing;
  Hear, oh hear Him say:
  "\"Wea" -- ry, hea -- vy la -- den,
  Come, come to -- "day!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Back " "from " "the " wea "ry " wan "d'ring, "
  "\nIn" "to " "the " nar "row " "way; "
  "\nJe" "sus " "is " ten der "ly " call "ing, "
  "\nCall" "ing " "the " "sheep " "that " "stray. "
  "\nStill, " "still " Je "sus " "is " call "ing; "
  "\nHear, " "oh " "hear " "Him " "say: "
  "\n\"Wea" "ry, " hea "vy " la "den, "
  "\nCome, " "come " to "day!\" "

  \set stanza = "2."
  "\nOut " "of " "the " drea "ry " des "ert "
  "\nIn" "to " "the " pas "tures " "green, "
  "\nOut " "of " "the " "land " "of " dark "ness "
  "\nIn" "to " "the " "light " se "rene. "
  "\nStill, " "still " Je "sus " "is " call "ing; "
  "\nHear, " "oh " "hear " "Him " "say: "
  "\n\"Wea" "ry, " hea "vy " la "den, "
  "\nCome, " "come " to "day!\" "

  \set stanza = "3."
  "\nWhy " "should " "we " lon "ger " tar "ry, "
  "\nWhy " "should " "we " lon "ger " "roam "
  "\nFar " "from " "the " "place " "of " re "fuge, "
  "\nFar " "from " "the " shel "t'ring " "home? "
  "\nStill, " "still " Je "sus " "is " call "ing; "
  "\nHear, " "oh " "hear " "Him " "say: "
  "\n\"Wea" "ry, " hea "vy " la "den, "
  "\nCome, " "come " to "day!\" "

  \set stanza = "4."
  "\nCome, " "for " "the " "hours " "are " wan "ing; "
  "\nCome " "from " "the " moun "tains " "cold; "
  "\nCome " "from " "the " "storm " "and " tem "pest "
  "\nIn" "to " "the " Shep "herd's " "fold! "
  "\nStill, " "still " Je "sus " "is " call "ing; "
  "\nHear, " "oh " "hear " "Him " "say: "
  "\n\"Wea" "ry, " hea "vy " la "den, "
  "\nCome, " "come " to "day!\" "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" {\keepWithTag #'rep \soprano}
            \new Voice = "women" \partCombine { \global \keepWithTag #'rep \soprano \bar "|." } { \global \keepWithTag #'rep \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'rep \tenor } { \global \keepWithTag #'rep \bass }
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|."
                                              }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|."
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|."
                                              }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|."
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
          >>
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
