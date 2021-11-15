\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, Keep us Safe this Night."
  subtitle    = "Sankey No. 300"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "S.M."
%  piece       = \markup\smallCaps "piece"

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
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4\omit\pp^\markup{\dynamic pp \italic Slowly.}
  d4 4 e e
  d2. 4
  d4 4 g g
  a2. 4 \break
  b4^\< b\! g4^\> g\! % B
  a4 4 g g
  g4^\< g\! g^\> fis\!
  g1 \bar "||"
  g1
  g1
}

alto = \relative {
  \autoBeamOff
  b4\omit\pp
  b4 d c c
  b2. c4
  b4 d b cis
  d2. 4
  d4^\< d\! e^\> c\! % B
  c4 4 b b8[cis]
  d4^\< d\! d4^\> d\!
  d1
  e1
  d1
}

tenor = \relative {
  \autoBeamOff
  g4\omit\pp
  g4 4 4 4
  g2. a4
  g4 a g g
  fis2. 4
  g4\omit\< 4\! 4\omit\> 4\! % B
  g8[e] fis4 g g8[a]
  b4\omit\< bes\! a\omit\> a\!
  b1
  c1
  b1
}

bass = \relative {
  \autoBeamOff
  g,4\omit\pp
  g4 b c e
  g2. fis4
  g4 fis e e
  d2. 4
  g,4\omit\< b\! c\omit\> e\! % B
  d4 4 e e
  d4\omit\< 4\! 4\omit\> 4\!
  g,1
  c1
  g1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 1

wordsOne = \lyricmode {
  Lord, keep us safe this night,
  Se -- cure from all our fears;
  May an -- gels guard us while we sleep,
  Till morn -- ing light ap -- pears.
  A -- men.
}
  
wordsMidi = \lyricmode {
  "Lord, " "keep " "us " "safe " "this " "night, "
  "\nSe" "cure " "from " "all " "our " "fears; "
  "\nMay " an "gels " "guard " "us " "while " "we " "sleep, "
  "\nTill " morn "ing " "light " ap "pears. "
  "\nA" "men. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
