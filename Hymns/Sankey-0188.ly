\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Holy Spirit, Heavenly Dove!"
  subtitle    = "Sankey No. 188"
  subsubtitle = "Sankey 880 No. 212"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Farrant."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "Farrant."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
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
  g'4
  g4. a8 b4 a
  g4 c a a
  b4 d d cis
  d2. \bar "|" \break g,4
  c4 c b a % B
  g4 a fis b
  e,8[fis] g4 4 fis
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  e4. fis8 g4 fis
  e4 g fis fis
  g4 fis a4. g8
  fis2. g4
  e4 d d fis % B
  e4 4 d d
  c4 b8[c] d4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  b4
  b4. d8 4 4
  b4 e d d
  d4 4 e e
  d2. b4
  a4 4 g d' % B
  b4 c a g
  g4 4 a a
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  e4. d8 g4 d
  e4 c d d
  g4 b a a
  d,2. g4
  g4 fis g d % B
  e4 a, d g,
  c4 e d d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Ho -- ly Spi -- rit, heav'n -- ly Dove!
  With all Thy quick -- 'ning powers,
  Kin -- dle a flame of sa -- cred love
  In these cold hearts of ours.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O Lord, and shall we ev -- er live
  At this poor dy -- ing rate?—
  Our love so faint, so cold to Thee,
  And Thine to us so great.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, Ho -- ly Spi -- rit, heav'n -- ly Dove!
  With all Thy quick -- 'ning powers,
  Come, shed a -- broad a Sa -- viour's love,
  And that shall kin -- dle ours.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Ho "ly " Spi "rit, " heav'n "ly " "Dove! "
  "\nWith " "all " "Thy " quick "'ning " "powers, "
  "\nKin" "dle " "a " "flame " "of " sa "cred " "love "
  "\nIn " "these " "cold " "hearts " "of " "ours. "

  \set stanza = "2."
  "\nO " "Lord, " "and " "shall " "we " ev "er " "live "
  "\nAt " "this " "poor " dy "ing " "rate?— "
  "\nOur " "love " "so " "faint, " "so " "cold " "to " "Thee, "
  "\nAnd " "Thine " "to " "us " "so " "great. "

  \set stanza = "3."
  "\nCome, " Ho "ly " Spi "rit, " heav'n "ly " "Dove! "
  "\nWith " "all " "Thy " quick "'ning " "powers, "
  "\nCome, " "shed " a "broad " "a " Sa "viour's " "love, "
  "\nAnd " "that " "shall " kin "dle " "ours. "
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
    \midi {}
  }
}
