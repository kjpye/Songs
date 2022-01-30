\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Not Far, not Far from the Kingdom."
  subtitle    = "Sankey No. 346"
  subsubtitle = "Sankey 880 No. 469"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Mark xii. 34."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes8
  \tag #'dash {\slurDashed g'8.(16) 8 8 bes8. aes16 \slurSolid}
  \tag #'A    {            g4       8 8 bes8. aes16           }
  \tag #'B    {            g8.  16  8 8 bes8. aes16           }
  g4. ees4 bes8
  \tag #'dash {\slurDashed f'8.(16) 8 8 bes8. aes16 \slurSolid}
  \tag #'A    {            f4       8 8 bes8. aes16           }
  \tag #'B    {            f8.  16  8 8 bes8. aes16           }
  g4.~4 \bar "|" \break bes,8
  g'8. 16 8 8 bes8. aes16 % B
  g4. ees4 bes8
  f'8. 16 8 16 g8. f8
  ees4.~4 \bar "|" \break 8^\markup\smallCaps Refrain.
  c'8. 16 8 8 d ees % C
  ees4.(bes4) g8
  bes8. aes16 g8 aes16 bes8. aes8
  g4.~4 \bar "|" \break ees8
  c'8. 16 8 8 d ees % D
  ees4. bes4 g8
  bes8. g16 ees8 g16 8. f8
  ees4.~4
}

alto = \relative {
  \autoBeamOff
  bes8
  \tag #'dash {\slurDashed ees8.(16) 8 8 8. 16 \slurSolid}
  \tag #'A    {            ees4      8 8 8. 16           }
  \tag #'B    {            ees8. 16  8 8 8. 16           }
  ees4. bes4 8
  \tag #'dash { \slurDashed d8.(16) 8 8 8. f16 \slurSolid}
  \tag #'A    {             d4      8 8 8. f16           }
  \tag #'B    {             d8. 16  8 8 8. f16           }
  g4.~4 bes,8
  ees8. 16 8 8 8. 16 % B
  ees4. bes4 8
  d8. 16 8 16 8. bes8
  bes4.~4 ees8
  ees8. 16 8 8 8 8 % C
  g4.(ees4) 8
  g8. f16 ees8 f16 g8. f8
  ees4.~4 8
  ees8. 16 8 8 8 8 % D
  g4. ees4 8
  g8. ees16 8 d16 8. 8
  ees4.~4
}

tenor = \relative {
  \autoBeamOff
  g8
  \tag #'dash {\slurDashed bes8.(16) 8 8 d8. c16 \slurSolid}
  \tag #'A    {            bes4      8 8 d8. c16           }
  \tag #'B    {            bes8. 16  8 8 d8. c16           }
  bes4. g4 8
  \tag #'dash {\slurDashed bes8.(16) 8 8 f8. bes16 \slurSolid}
  \tag #'A    {            bes4      8 8 f8. bes16           }
  \tag #'B    {            bes8. 16  8 8 f8. bes16 \slurSolid}
  bes4.~4 g8
  bes8. 16 8 8 d8. c16 % B
  bes4. g4 8
  aes8. 16 8 16 bes8. aes8
  g4.~4 8
  aes8. 16  8 8 bes c % C
  bes4.(g4) bes8
  bes8. 16 8 16 8. 8
  bes4.~4 g8
  aes8. 16 8 8 bes c % D
  bes4. g4 bes8
  ees8. bes16 g8 bes16 8. aes8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8
  \tag #'dash {\slurDashed ees8.(16) 8 8 8. 16 \slurSolid}
  \tag #'A    {            ees4      8 8 8. 16           }
  \tag #'B    {            ees8. 16  8 8 8. 16           }
  ees4. 4 8
  \tag #'dash {\slurDashed bes8.(16) 8 8 8. 16 \slurSolid}
  \tag #'A    {            bes4      8 8 8. 16           }
  \tag #'B    {            bes8. 16  8 8 8. 16           }
  ees4.~4 8
  ees8. 16 8 8 8. 16 % B
  ees4. 4 8
  bes8. 16 8 16 8. 8
  ees4.~4 8
  aes,8. 16 8 aes'8 8 8 % C
  ees4.~4 8
  bes8. 16 8 16 8. 8
  ees4.~4 8
  aes,8. 16 8 aes'8 8 8 % D
  ees4. 4 8
  ees8. 16 8 bes16 8. 8
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Not far, not far from the King -- dom,
  Yet in the sha -- dow of sin;
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not far, not far from the King -- dom,
  Where voi -- ces whis -- per and wait;
  Too tim -- id to en -- ter in bold -- ly,
  So lin -- ger still out -- side the gate.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A -- \nom way \yesm in the dark and the dan -- ger,
  Far \nom out in \yesm the night and the cold;
  There Je -- sus is wait -- ing to lead you
  So ten -- der -- ly in -- to His fold.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Not far, not far from the King -- dom,
  'Tis on -- ly a lit -- tle space;
  But oh, you may still be for ev -- er
  Shut out from yon hea -- ven -- ly place!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Not far, not far from the King -- dom,
  Yet in the sha -- dow of sin;
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!

  \set stanza = "2."
  Not far, not far from the King -- dom,
  Where voi -- ces whis -- per and wait;
  Too tim -- id to en -- ter in bold -- ly,
  So lin -- ger still out -- side the gate.
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!

  \set stanza = "3."
  A -- way in the dark and the dan -- ger,
  Far out in the night and the cold;
  There Je -- sus is wait -- ing to lead you
  So ten -- der -- ly in -- to His fold.
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!

  \set stanza = "4."
  Not far, not far from the King -- dom,
  'Tis on -- ly a lit -- tle space;
  But oh, you may still be for ev -- er
  Shut out from yon hea -- ven -- ly place!
  How few there are en -- ter -- ing in!
  How few there are en -- ter -- ing in!
  How ma -- ny are com -- ing and go -- ing!—
  How few there are en -- ter -- ing in!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Not " "far, " "not " "far " "from " "the " King "dom, "
  "\nYet " "in " "the " sha "dow " "of " "sin; "
  "\nHow " ma "ny " "are " com "ing " "and " go "ing!— "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " ma "ny " "are " com "ing " "and " go "ing!— "
  "\nHow " "few " "there " "are " en ter "ing " "in! "

  \set stanza = "2."
  "\nNot " "far, " "not " "far " "from " "the " King "dom, "
  "\nWhere " voi "ces " whis "per " "and " "wait; "
  "\nToo " tim "id " "to " en "ter " "in " bold "ly, "
  "\nSo " lin "ger " "still " out "side " "the " "gate. "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " ma "ny " "are " com "ing " "and " go "ing!— "
  "\nHow " "few " "there " "are " en ter "ing " "in! "

  \set stanza = "3."
  "\nA" "way " "in " "the " "dark " "and " "the " dan "ger, "
  "\nFar " "out " "in " "the " "night " "and " "the " "cold; "
  "\nThere " Je "sus " "is " wait "ing " "to " "lead " "you "
  "\nSo " ten der "ly " in "to " "His " "fold. "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " ma "ny " "are " com "ing " "and " go "ing!— "
  "\nHow " "few " "there " "are " en ter "ing " "in! "

  \set stanza = "4."
  "\nNot " "far, " "not " "far " "from " "the " King "dom, "
  "\n'Tis " on "ly " "a " lit "tle " "space; "
  "\nBut " "oh, " "you " "may " "still " "be " "for " ev "er "
  "\nShut " "out " "from " "yon " hea ven "ly " "place! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
  "\nHow " ma "ny " "are " com "ing " "and " go "ing!— "
  "\nHow " "few " "there " "are " en ter "ing " "in! "
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
                         \keepWithTag #'A \soprano
                         \keepWithTag #'A \soprano
                         \keepWithTag #'B \soprano
                         \keepWithTag #'A \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'A \alto \nl
                         \keepWithTag #'A \alto \nl
                         \keepWithTag #'B \alto \nl
                         \keepWithTag #'A \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'A \tenor
                         \keepWithTag #'A \tenor
                         \keepWithTag #'B \tenor
                         \keepWithTag #'A \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'A \bass
                         \keepWithTag #'A \bass
                         \keepWithTag #'B \bass
                         \keepWithTag #'A \bass
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor }
                                            { \global \keepWithTag #'dash \bass }
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
              \keepWithTag #'A \soprano
              \keepWithTag #'A \soprano
              \keepWithTag #'B \soprano
              \keepWithTag #'A \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'A \soprano
                                                \keepWithTag #'A \soprano
                                                \keepWithTag #'B \soprano
                                                \keepWithTag #'A \soprano
                                                \bar "|." }
            { \global
              \keepWithTag #'A \alto \nl
              \keepWithTag #'A \alto \nl
              \keepWithTag #'B \alto \nl
              \keepWithTag #'A \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'A \tenor
                                              \keepWithTag #'A \tenor
                                              \keepWithTag #'B \tenor
                                              \keepWithTag #'A \tenor
                                            }
            { \global
              \keepWithTag #'A \bass
              \keepWithTag #'A \bass
              \keepWithTag #'B \bass
              \keepWithTag #'A \bass
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
              \keepWithTag #'A \soprano
              \keepWithTag #'A \soprano
              \keepWithTag #'B \soprano
              \keepWithTag #'A \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'A \soprano
                                                \keepWithTag #'A \soprano
                                                \keepWithTag #'B \soprano
                                                \keepWithTag #'A \soprano
                                                \bar "|." }
            { \global
              \keepWithTag #'A \alto \nl
              \keepWithTag #'A \alto \nl
              \keepWithTag #'B \alto \nl
              \keepWithTag #'A \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'A \tenor
                                              \keepWithTag #'A \tenor
                                              \keepWithTag #'B \tenor
                                              \keepWithTag #'A \tenor
                                            }
            { \global
              \keepWithTag #'A \bass
              \keepWithTag #'A \bass
              \keepWithTag #'B \bass
              \keepWithTag #'A \bass
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
