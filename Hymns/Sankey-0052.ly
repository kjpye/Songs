\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Near me, O my Saviour"
  subtitle    = "Sankey No. 52"
  subsubtitle = "Sankey 880 No. 449"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "J. W. Bischoff."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup \smallCaps "G. G. Lloyd."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
  \tempo 4=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
}

soprano = \relative {
  f'8
  d'4 bes8 f4 d8
  f4. ees4 f8
  ees'4 c8 aes4 g8
  g4.(f4) \bar "|" \break \partial 8 f8
  d'4 bes8 f4 ees8 % B
  f4 ees8 ees4 f8
  ees'4 c8 g4 a8
  bes4.~4 \bar "|" \break \partial 8 f8
  d'4 d8 d4 c8 % C
  c4. bes4 bes8
  a4 a8 a4 g8
  f4.~4 \bar "|" \break \partial 8 f8
  f5 f8 bes4 d8 % D
  f4 ees8 g,3\fermata g8
  f4 f8 f4 f8
  f4.~4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
}

tenor = \relative {
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative {
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
}
  
wordsMidi = \lyricmode {
}
  
nl = { \bar "||" \break }
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice {
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%            }
%            \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
%            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
%                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
%            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
%                                            { \global \bass \bass \bass \bass \bass \bass }
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
    \midi {}
  }
}
