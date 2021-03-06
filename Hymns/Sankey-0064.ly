\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeking to Save"
  subtitle    = "Sankey No. 64"
  subsubtitle = "Sankey 880 No. 215"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
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
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*5
  \mark \markup { \box "D" } s2.*5
  \mark \markup { \box "E" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  c''4 bes8 c4 g8
  aes4. ees
  g4 fis8 g4 aes8
  bes4.~bes
  c4 b8 c4 g8 % B
  aes4. ees
  g4. es4 bes8
  aes4.~aes
  ees'4. c4 c8 % C
  ees4.(c)
  c4. aes4 aes9
  c4.(aes)
  bes4. 4 8
  bes4(aes8) g4(f8) % D
  ees4. 4 8
  ees4.~ees
  ees4(aes8) aes4 bes8
  aes4.~aes
  ees4(c'8) c4 fes8 % E
  c4.~c
  ees4.\f c4 aes8
  aes4. f
  g4.\p aes4 bes8
  aes4.~aes
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
