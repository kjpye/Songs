\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Go and Tell Jesus"
  subtitle    = "Sankey No. 74"
  subsubtitle = "Sankey 880 No. 521"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Theo. RF. Seward."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*2
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } \repeat volta 2 { s1*2 } s1
  \mark \markup { \box "E" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'8 8 4 4 c'
}

alto = \relative {
  c'8 8 4 4 ees
}

tenor = \relative {
  aes8 8 4 4 4
}

bass= \relative {
  aes,8 8 4 4 4
}

chorusOne = \lyricmode {
  Go and tell Je -- sus,
  He on -- ly can for -- give:
  Go and tell Je -- sus!
  Go and tell Je -- sus!
  Go and tell Je -- sus!—
  He on -- ly can for -- give:
}

chorusTwo = \lyricmode {
  Go and tell Je -- sus,
  Oh, turn to Him and live!
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Go and tell Je -- sus,
  wea -- ry, sin -- sick soul!
  He'llease thee of thy bur -- den. make thee whole;
  Look up to Him, He on -- ly can for -- give;
  Be -- lieve on Him, and thou shalt sure -- ly live.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go and t4ell Je -- sus,
  when your sins a -- rise
}
  
wordsThree = \lyricmode {
  Go and tell Je -- sus,
  He'll dis -- pel thy fears,\set stanza = "3."
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
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice {
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%            }
            \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
%            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
%                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusOne }
            \new Lyrics \lyricsto "aligner" { \wordsTwo \chorusTwo }
            \new Lyrics \lyricsto "aligner"   \wordsThree
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusFull
%                                              \wordsTwo   \chorusFull
%                                              \wordsThree \chorusFull
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
%            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
%                                            { \global \bass \bass \bass }
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
%    \midi {}
  }
}
