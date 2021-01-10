\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "While Shpeherds Watched"
  subtitle    = "Sankey No. 33"
  subsubtitle = "Sankey 880 No. 642"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Este's Psalter"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "N. Tate"
  meter       = "C.M."
  piece       = \markup \smallCaps "Winchester Old"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 6

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s1*3 s2.
  }
}

TempoTrack = {
  \repeat volta \verses {
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    g'4
    b4. b8 a4 g
    c4 c b a
    b4 d d cis
    d2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    d'4
    g4. g8 fis4 g
    g4 g g fis
    g4 fis8(g) a4. g8
    fis2.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    b4
    d4. d8 d4 b
    e4 e d d
    d4 d e e
    d2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    g4
    g4. g8 d4 e
    c4 c g' d
    g4 b a a
    d,2.
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  While shep -- herds watch'd their flocks by nuight
  All seat -- ed on the ground;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Fear" "not!\"" said he— for migh -- ty dread
  Had seized their trou -- bled mind—
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
  
pianoRH = \relative {
  \global
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

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
%          \new Voice = tempo \TempoTrack
%                                  % Single soprano staff
%          \new Dynamics \dynamicsSop
%          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
%            \new Voice \RehearsalTrack
%            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSop
%          >>
%                                  % Single alto staff
%          \new Dynamics \dynamicsAlto
%          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
%            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAlto
%          >>
%                                  % Single tenor staff
%          \new Dynamics \dynamicsTenor
%          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
%            \clef "treble_8"
%            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenor
%          >>
%                                  % Single bass staff
%          \new Dynamics \dynamicsBass
%          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
%            \clef "bass"
%            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBass
%          >>
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
            \new Lyrics \lyricsto "soprano"   \wordsFive
            \new Lyrics \lyricsto "soprano"   \wordsSix
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%        \new PianoStaff <<
%          \new Staff <<
%            \new Voice \pianoRH
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff <<
%            \clef "bass"
%            \new Voice \pianoLH
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
%          >>
%        >>
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
