\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gloria Patri"
  subtitle    = "Sankey No. 256"
  subsubtitle = "Sankey 880 No. 750"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {"Anon. /" \smallCaps "Dr. William Boyce."}
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
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
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \autoBeamOff
  g'1^\markup\bold "No. 1"
  fis2 g
  a1
  a1
  b2 a
  g2 fis
  g1 \break
  g1
  fis2 g
  a1
  a1
  b2 a
  g2 fis
  g1 \key d \major \bar "|."

  d'1^\markup\bold "No. 2"
  a2 g
  fis1
  fis1
  e2 a
  a2 gis
  a1 \break
  a1
  b2 cis
  d1
  b1
  a2 g4(fis)
  fis2 e
  d1 \bar "|."
}

alto = \relative {
  \autoBeamOff
  d'1
  d2 2
  fis1
  fis1
  g2 e
  d2 2
  d1
  
  d1
  d2 2
  fis1
  fis1
  g2 e
  d2 2
  d1

  fis1
  d2 cis
  d1
  d1
  e2 2
  d2 2
  cis1

  d1
  d2 g
  fis1
  d1
  d2 e4(d)
  d2 cis
  d1
}

tenor = \relative {
  \autoBeamOff
  b1
  c2 b
  d1
  d1
  d2 c
  b2 a
  b1
  
  b1
  c2 b
  d1
  d1
  d2 c
  b2 a
  b1

  a1
  a2 2
  a1
  a1
  a2 cis
  b2 2
  a1

  a1
  g2 2
  a1
  g1
  a2 b
  a2 g
  fis1
}

bass = \relative {
  \autoBeamOff
  g1
  a2 g
  d1
  d1
  g2 c,
  d2 2
  g,1
  
  g'1
  a2 g
  d1
  d1
  g2 c,
  d2 2
  g,1

  d'1
  fis2 e
  d1
  d1
  cis2 a
  e'2 2
  a,1
  
  fis'1
  g2 e
  d1
  g1
  fis2 g
  a2 a,
  d1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 1

wordsOne = \lyricmode {
  "Glory be to God the Father, and" to the Son, and to the Ho -- ly Ghost;
  "As it was in the beginning, is now, and" ev -- er "shall be," world with -- out end. A. men.

  "Glory be to God the Father, and" to the Son, and to the Ho -- ly Ghost;
  "As it was in the beginning, is now, and" ev -- er "shall be," world with -- out end. A. men.
}
  
wordsMidi = \lyricmode {
  "Glory be to God the Father, and " "to " "the " "Son, " "and " "to " "the " Ho "ly " "Ghost; "
  "\nAs it was in the beginning, is now, and " ev "er " "shall be, " "world " with "out " "end. " "A. " "men. "

  "\nGlory be to God the Father, and " "to " "the " "Son, " "and " "to " "the " Ho "ly " "Ghost; "
  "\nAs it was in the beginning, is now, and " ev "er " "shall be, " "world " with "out " "end. " "A. " "men. "
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
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \TempoTrack
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new NullVoice = "aligner" \soprano
            \addlyrics \wordsOne
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
