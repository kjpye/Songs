\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Steal away to Jesus"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% uncomment for two page output
% #(set-global-staff-size 17)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=100 s1*8
  \tempo 4=120 s1*5 % 2a
  s2. \tempo 4=30 s8 \tempo 4=100 s8 % 2b+
  s1*10
  \tempo 4=120 s1*5 % 3b
  s2 \tempo 4=60 s4. \tempo 4=120 s8
  s1*7
  s2 \tempo 4=60 s4. \tempo 4=100 s8
  s1
  \tempo 4=90  s1
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s1*4
  \mark \markup { \box "1b" } s1*4
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "2c" } s1*4
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*5
}

sopranoOne = \relative {
  \global \voiceOne
  g'4.^\p^\markup\bold "Smoothly, and with quiet eagerness" 8 2
  b4. 8 2
  d4. 8 4 e
  a,4 b2.
  g4. 8 2 % 1b
  \tuplet 3/2 {e'4 d b} d4. g,8
  g4 4 b4. 8
  a4 g2. \oneVoice
  R1^\markup\bold "fast and firm" % 2a
  R1
  R1
  R1
  R1 % 2b
  r2 r4 r8\fermata \voiceOne g8^\markup\bold "a tempo"
  g4 4 4 e
  f4^\> g2.
  g4.^\p 8 2 % 2c
  b4. 8 2
  d4. 8 4 e
  a,4 b2.
  g4. 8 2 % 3a
  \tuplet 3/2 {e'4 d b} d4. g,8
  g4 4 b4. 8
  a4 g2 b4^\f^\<
  c2\!^\markup\bold "fast and firm" 4.(b8) % 3b
  c4 b2 g4
  b4. 8 4. g8
  b4 g2~8 8
  g8 b4. 4. 8 % 3c
  c8 b g4 fis4.\fermata g8
  g4 4 4 e
  fis4^\> g2.
  g4.^\p 8 2 % 4a
  b4. 8 2
  d4. 8 4 e
  a,4 b2.
  g4. 8 2 % 4b
  \tuplet 3/2 {e'4 d b} d4.\fermata g,8^\markup\bold "a tempo"
  g4 4 b4. 8
  a4\omit\dim^\markup\bold "rall. e dim." g2.~
  g1\!\fermata
  \bar "|."
}

sopranoTwo = \relative {
  \global \voiceTwo
  g'4. 8 2
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  s1*12
  g4. 8 2 % 2c
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  s1*12
  g4. 8 2 % 4a
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  s1*5
}

sopranoTwoMidi = \relative {
  \global \voiceTwo
  g'4.\omit\p 8 2
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  g4. 8 2 % 1b
  \omit\tuplet 3/2 {e'4 d b} d4. g,8
  g4 4 b4. 8
  a4 g2.
  s1 % 2a
  s1
  s1
  s1
  s1 % 2b
  s2 s4 s8 g8
  g4 4 4 e
  f4\omit\> g2.
  g4.\omit\p 8 2 % 2c
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  g4. 8 2 % 3a
  \tuplet 3/2 {e'4 d b} d4. g,8
  g4 4 b4. 8
  a4 g2 b4\omit\f\omit\<
  c2\! 4.(b8) % 3b
  c4 b2 g4
  b4. 8 4. g8
  b4 g2~8 8
  g8 b4. 4. 8 % 3c
  c8 b g4 fis4. g8
  g4 4 4 e
  fis4\omit\> g2.
  g4.\omit\p 8 2 % 4a
  g4. 8 2
  b4. 8 4 a
  a4 b2.
  g4. 8 2 % 4b
  \tuplet 3/2 {e'4 d b} d4. g,8
  g4 4 b4. 8
  a4\omit\dim g2.~
  g1\!\fermata
  \bar "|."
}

soprano = { \partCombine {\partCombineChords \sopranoOne} \sopranoTwo }

wordsSop = \lyricmode {
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way, steal a -- way home,
  I ain't got long to stay here. __

  I ain't got long to stay here. __
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way, steal a -- way home,
  I ain't got long to stay here. __
  Oh my Lord __ calls me,
  He calls me by the light -- ning, __
  The trum -- pet sounds with -- in -- a my soul;
  I ain't got long to stay here. __

  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way, steal a -- way home,
  I ain't got long to stay here. __
}

wordsSopMidi = \lyricmode {
  "Steal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way, " "steal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way, " "steal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nOh " "my " "Lord "  "calls " "me, "
  "\nHe " "calls " "me " "by " "the " light "ning, " 
  "\nThe " trum "pet " "sounds " with in "a " "my " "soul; "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way, " "steal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
}

alto = \relative {
  \global
  d'4.^\p 8 2
  e4. 8 2
  fis4. 8 4 g
  fis4 g2.
  g4. fis8 e4(d) % 1b
  c2(b4.) 8
  b4 cis d e
  fis4 g2.
  r4 g-> 2-> ~ % 2a
  g2 g->
  g1~
  g2 g->
  g8 4. 2~ % 2b
  g2~4.\fermata b,8
  b4 cis d4. 8
  c4^\> b2(c4)
  d4.^\p 8 2 % 2c
  e4. 8 2
  fis4. 8 4 g
  fis4 g2.
  g4. fis8 e4(d) % 3a
  c2(b4.) 8
  b4 cis d e
  fis4 g2 d4^\f^\<
  e2\! 4.(d8) % 3b
  e4 d2 b4
  d4. 8 4. b8
  d4 b2~8 8
  b8 d4. 4. 8 % 3c
  e8 d b4 d4.\fermata b8
  b4 cis d4. 8
  c4^\> b2(c4)
  d4.^\p 8 2 % 4a
  e4. 8 2
  fis4. 8 4 g
  fis4 g2.
  g4. fis8 e4(d) % 4b
  c2(b4.\fermata) 8
  b4 cis d e
  fis4 g fis e
  d1\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __

  My Lord __ calls me __
  The trum -- pet sounds. __
  I ain't got long to stay here. __
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __
  Oh my Lord __ calls me,
  He calls me by the light -- ning, __
  The trum -- pet sounds with -- in -- a my soul;
  I ain't got long to stay here. __

  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here, steal a -- way!
}

wordsAltoMidi = \lyricmode {
  "Steal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nMy " "Lord "  "calls " "me " 
  "\nThe " trum "pet " "sounds. " 
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nOh " "my " "Lord "  "calls " "me, "
  "\nHe " "calls " "me " "by " "the " light "ning, " 
  "\nThe " trum "pet " "sounds " with in "a " "my " "soul; "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here, " "steal " a "way! "
}

tenor = \relative {
  \global
  b4.^\p 8 2
  b4. 8 2
  b4. 8 4 c
  d4 g,2.
  g4. 8 2 % 1b
  g2~4. 8
  g4 a b4. d8
  c4 b2^\< d4^\f
  e2 4.(d8) % 2a
  e4 d2 b4
  d4. 8 4. b8
  d4 b2~8 8
  b8 d4. 4. 8 % 2b
  e8 d b4 d4.\fermata g,8
  g4 4 b4. 8
  a4^\> g2(a4)
  b4.^\p 8 2 % 2c
  b4. 8 2
  b4. 8 4 c
  d4 g,2.
  g4. 8 2 % 3a
  g2~4. 8
  g4 a b4. d8
  c4 b2 r4
  r4 g-> 2-> ~ % 3b
  g2 g->
  g1~
  g2~4. 8
  g8 b4. 4. 8 % 3c
  a8 b cis4 d4.\fermata g,8
  g4 4 b4. 8
  a4^\> g2(a4)
  b4.^\p 8 2 % 4a
  b4. 8 2
  b4. 8 4 c
  d4 g,2.
  g4. 8 2 % 4b
  g2~4.\fermata 8
  g4 a b4. d8
  c4 b g a
  b1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __

  Oh my Lord __ calls me, He calls me by the thun -- der; __
  The trum -- pet sounds with -- in -- a my soul,
  I ain't got long to stay here. __
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __
  My Lord __ calls me,
  The trum -- pet sounds with -- in -- a my soul;
  I ain't got long to stay here. __

  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here, steal a -- way!
}

wordsTenorMidi = \lyricmode {
  "Steal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nOh " "my " "Lord "  "calls " "me, " "He " "calls " "me " "by " "the " thun "der; " 
  "\nThe " trum "pet " "sounds " with in "a " "my " "soul, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nMy " "Lord "  "calls " "me, "
  "\nThe " trum "pet " "sounds " with in "a " "my " "soul; "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here, " "steal " a "way! "
}

bass = \relative {
  \global
  g4.^\p 8 4 fis(
  e4.) 8 4 d(
  b4.) 8 4 c
  d4 g, g'(fis
  e4.) d8 c4(b) % 1b
  a2(g4.) e'8
  e4 a, d d
  d4 g2^\< b4^\f
  c2 4.(b8) % 2a
  c4 b2 g4
  4. 8 4. g8
  b4 g2~8 8
  g8 b4. 4. 8 % 2b
  c8 b g4 b4.^\fermata e,8
  e4 a, d d
  d4^\> g,2.
  g'4.^\p 8 4 fis( % 2c
  e4.) 8 4 d4(
  b4.) 8 4 c
  d4 g, g'(fis
  e4.) d8 c4(b) % 3a
  a2(g4.) e'8
  e4 a, d d
  d4 g2 r4
  R1 % 3b
  R1
  R1
  r2 r4 r8 b,
  b8 d4. 4. 8 % 3c
  c8 d e4 b4.\fermata e8
  e4 a, d d
  d4^\> g,2.
  g'4.^\p 8 4 fis( % 4a
  e4.) 8 4 d(
  b4.) 8 4 c
  d4 g, g'(fis
  e4.) d8 c4(b) % 4b
  a2(g4.\fermata) e'8
  e4 a, d d
  d4 g d c
  g1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __

  Oh my Lord __ calls me, He calls me by the thun -- der; __
  The trum -- pet sounds with -- in -- a my soul,
  I ain't got long to stay here. __
  Steal a -- way, steal a -- way, steal a -- way to Je -- sus! __
  Steal a -- way home,
  I ain't got long to stay here. __

  The trum -- pet sounds with -- in -- a my soul;
  I ain't got long to stay here. __

  Steal a -- way, steal a -- way, steal a -- way to Je -- sus!
  Steal __ a -- way home,
  I ain't got long to stay here, steal a -- way!
}

wordsBassMidi = \lyricmode {
  "Steal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nOh " "my " "Lord "  "calls " "me, " "He " "calls " "me " "by " "the " thun "der; " 
  "\nThe " trum "pet " "sounds " with in "a " "my " "soul, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 
  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! " 
  "\nSteal " a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nThe " trum "pet " "sounds " with in "a " "my " "soul; "
  "\nI " "ain't " "got " "long " "to " "stay " "here. " 

  "\nSteal " a "way, " "steal " a "way, " "steal " a "way " "to " Je "sus! "
  "\nSteal "  a "way " "home, "
  "\nI " "ain't " "got " "long " "to " "stay " "here, " "steal " a "way! "
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\partCombineApart \sopranoOne} \sopranoTwo
            \new NullVoice \sopranoOne
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine {\partCombineChords \voiceOne \sopranoOne} \sopranoTwo
%            \new Voice { \voiceTwo \alto}
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\partCombineApart \sopranoOne} \sopranoTwo
            \new NullVoice \sopranoOne
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine {\partCombineChords \voiceOne \sopranoOne} \sopranoTwo
%            \new Voice { \voiceTwo \alto}
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "acc-only"
  \score {
    <<
      <<
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine {\partCombineChords \voiceOne \sopranoOne} \sopranoTwo
            \new Voice { \voiceTwo \alto}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop1"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano1 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"SI"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \sopranoOne
          \addlyrics \wordsSopMidi
        >>
                                % Single soprano2 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano II"
          shortInstrumentName = #"SII"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoTwoMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop2"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano1 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"SI"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \sopranoOne
        >>
                                % Single soprano2 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano II"
          shortInstrumentName = #"SII"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoTwoMidi
          \addlyrics \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano1 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"SI"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \sopranoOne
        >>
                                % Single soprano2 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano II"
          shortInstrumentName = #"SII"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoTwoMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \tenor
          \addlyrics \wordsTenorMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano1 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"SI"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \sopranoOne
        >>
                                % Single soprano2 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano II"
          shortInstrumentName = #"SII"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoTwoMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \tenor
          \addlyrics \wordsTenorMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano1 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"SI"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \sopranoOne
        >>
                                % Single soprano2 staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano II"
          shortInstrumentName = #"SII"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoTwoMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
          \addlyrics \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}
