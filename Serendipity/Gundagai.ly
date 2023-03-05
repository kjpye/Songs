\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gundagai"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jack O'Hagan"
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

global = {
  \key g \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*4
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*5
  \textMark \markup { \box \bold "D" }    s1*5
  \textMark \markup { \box \bold "E" }    s1*5
  \textMark \markup { \box \bold "F" }    s1*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=180
  s2 s1*28
  \tempo 4=90
  s1 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 c | b2 4 g | a2 4 fis | g2 4 e | d e fis g |
  b4 a2. | c4 b2 g4~2 a4 b | c2 4 b | c d2 c4 |
  b4 ais b ais | b c2 b4 | a2 b | fis4 e2 a4~ | 4 r b d |
  d2 4 cis | d e2 b4 | d c b c~ | 2 g4 a | b2 4 ais |
  b4 c2 g4  b a gis a~ | 2 d4 c | b2 4 g | a2 4 fis | g4 a g e |
  d4 e fis g | b4 a2. | c4 b2. | g1~ | 2
}

alto = \relative {
  \autoBeamOff
  fis'4 e | d2 4 4 | dis2 4 4 | e2 4 c | d e fis g |
  g4 2. | fis4 2 d4~ | 2 fis4 f | e2 4 4 | 4 2 e4 |
  g4 4 4 4 | gis4 2 4 | g2 2 | cis,4 2 c4~ | 4 r fis4 4 |
  f2 4 4 | 4 2 4 | e e e e~ | 2 4 4 | gis2 4 4 |
  gis4 2 e4 | g4 4 gis fis~ | 2 4 4 | d2 4 4 | dis2 4 4 |
  e4 4 4 c | b e fis g | 4 2. | fis4 2. | d4 e e ees | d2
}

tenor = \relative {
  \autoBeamOff
  r2 | b2 4 4 | 2 4 4 | 2 c4 g | b cis c b |
  cis4 2. | e4 d2 b4~ | 2 c4 b | g2 4 4 | 4 2 c4 |
  d4 cis d cis | d e2 d4 | cis2 2 | a4 g2 f4~ | f r c' a |
  b2 4 ais | b4 2 4 | g4 4 4 4~ | 2 c4 4 | d2 4 4 |
  d4 e2 d4 | cis4 4 4 c~ | 2 a4 4 | b2 4 4 | 2 4 4 |
  g4 4 4 4 | g cis c b | cis4 2. | c4 2. | b4 c c a | b2
}

bass = \relative {
  \autoBeamOff
  r2 | g2 4 4 | fis2 4 b, | e2 c4 4 | g' ais a g |
  e4 2(ees4) | d2 2 | g2 d4 g | c,2 4 4 | 4 2 4 |
  g'4 4 4 4 | e4 2 4 | a2 2 | a,2 2 | d4 r d d |
  g2 4 4 | 4 2 4 | c,4 4 4 4~ | 2 4 4 | e2 4 4 |
  e4 2 4 | a4 4 4 d,~ | 2 4 4 | g2 4 4 | fis2 4 b, |
  c4 4 4 4 | g' ais a g | e4 2(ees4) | d4 2. | b'4 g g g | 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

verses = 1

words = \lyricmode {
  There's a track wind -- ing back
  to an old- fash -- ioned shack
  a -- long the road to Gun -- da -- gai.
  Where the blue gums are grow -- ing,
  the Mur -- rum -- bid -- gee's flow -- ing
  be -- neath that sun -- ny sky.
  When my fath -- er and mo -- ther
  are wait -- ing for me,
  And the pals of my child -- hood
  once more I will see,
  Then no more will I roam,
  When I'm head -- ing right for home.
  A -- long the road to Gun -- da -- gai,
  to Gun -- da -- gai.
}
  
wordsMidi = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" \words
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
