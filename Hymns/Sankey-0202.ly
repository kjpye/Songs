\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Spirit, Source of Light!"
  subtitle    = "Sankey No. 202"
  subsubtitle = "Sankey 880 No. 586"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. Wesley."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "B. Beddome."
  meter       = \markup\smallCaps "s.m."
  piece       = \markup\smallCaps "Bethlehem."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4
  d fis, g b
  a2. 4
  b4 a cis d
  e,2. \bar "|" \break a4
  a4 d cis fis, % B
  fis4 b a b
  g4 fis e e
  d2.
}

alto = \relative {
  \autoBeamOff
  fis'4
  d4 4 4 4
  d2. 4
  g4 d g fis
  cis2. e4
  d4 fis e e % B
  d4 g fis g
  e4 d d cis
  d2.
}

tenor = \relative {
  \autoBeamOff
  a4
  a4 4 g g
  f2. a4
  d4 a g a
  a2. cis4
  a4 4 4 cis % B
  d4 4 4 4
  a4 4 b a8[g]
  fis2.
}

bass = \relative {
  \autoBeamOff
  d4
  fis4 d b g
  d'2. fis4
  g4 fis e d
  a2. a'4
  g4 d a' ais % B
  b4 g d g
  cis,4 d g, e
  d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Spi -- rit, source of light,
  Thy grace is un -- con -- fined;
  Dis -- pel the gloom -- y shades of night,
  The dark -- ness of the mind.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now to our eyes dis -- play
  The truth Thy words re -- veal;
  Cause us to run the heav'n -- ly way,
  De -- light -- ing in Thy will.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy teach -- ings make us know
  The mys -- teries of Thy love;
  The van -- i -- ty of things be -- low,
  The joy of things a -- bove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  While through this maze we stray,
  Oh, spread Thy beams a -- broad;
  Dis -- close the dan -- gers of the way,
  And guide our steps to God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Spi "rit, " "source " "of " "light, "
  "\nThy " "grace " "is " un con "fined; "
  "\nDis" "pel " "the " gloom "y " "shades " "of " "night, "
  "\nThe " dark "ness " "of " "the " "mind. "

  \set stanza = "2."
  "\nNow " "to " "our " "eyes " dis "play "
  "\nThe " "truth " "Thy " "words " re "veal; "
  "\nCause " "us " "to " "run " "the " heav'n "ly " "way, "
  "\nDe" light "ing " "in " "Thy " "will. "

  \set stanza = "3."
  "\nThy " teach "ings " "make " "us " "know "
  "\nThe " mys "teries " "of " "Thy " "love; "
  "\nThe " van i "ty " "of " "things " be "low, "
  "\nThe " "joy " "of " "things " a "bove. "

  \set stanza = "4."
  "\nWhile " "through " "this " "maze " "we " "stray, "
  "\nOh, " "spread " "Thy " "beams " a "broad; "
  "\nDis" "close " "the " dan "gers " "of " "the " "way, "
  "\nAnd " "guide " "our " "steps " "to " "God. "
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
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
