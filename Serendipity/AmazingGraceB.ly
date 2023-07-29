\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Amazing Grace"
  subtitle    = "Australian Hymn Book 56"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "American melody"
  arranger    = "Arr. Edwin Othello Excell (1851—1921)"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Newton(1725—1807) (alt.)"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | g2 b8[g] | b2 a4 | g2 e4 | d2 \breathe 4 | g2 b8[g] |
  b2 a4 | d2.~ | 2 \breathe b4 | d4.(b8) d[b] | g2 d4 |
  e4.(g8) g[e] | d2 \breathe 4 | g2 b8[g] | b2 a4 | g2.~ | 2
}

alto = \relative {
  \autoBeamOff
  b4 | b2 d4 | d2 c4 | b2 c4 | b2 4 | 2 d4 |
  d2 4 | 2.~ | 2 d4 | 2 4 | 2 4 |
  d2 c4 | b2 d4 | b2 d4 | d2 c4 | b2.~ | 2
}

tenor = \relative {
  \autoBeamOff
  g4 | d2 g4 | g2 fis4 | g2 4 | 2 4 | d2 g4 |
  g2 fis4 | g2.( | fis2) g4 | 2 4 | 2 4 |
  g2 e8[g] | 2 4 | 2 8[b] | g2 fis4 | g2.~ | 2
}

bass = \relative {
  \autoBeamOff
  g,4 | 2 8[b] | d2 4 | e2 c4 | g2 4 | 2 8[b] |
  d2 c4 | b2.( | a2) g4 | g'2 4 | b,2 4 |
  c4.(b8) c4 | g2 b4 | e2 d4 | 2 4 | g,2.~ | 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- maz -- ing grace "(how" sweet the sound)
  that saved a wretch like me!
  I once was lost, but now am found,
  was blind, but now I see.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  As grace first taught my heart to fear
  so grace my fears re -- lieved;
  how prec -- ious did that grace ap -- pear
  the hour I first be -- lieved!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Through ma -- ny dan -- gers, toils and snares
  I have al -- rea -- dy come:
  God's grace has brought me safe thus far,
  and grace will lead me home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Lord has pro -- mised good to me,
  his word my hopre se -- cures;
  he will my shield and por -- tion be
  as long as life en -- dures.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When we've been there ten thou -- sand years,
  Bright shin -- ing as the sun,
  We've no less days to sing God's praise,
  Than when we'd first be -- gun.
}
  
wordsMidi = \lyricmode {
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout { }
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
