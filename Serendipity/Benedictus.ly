\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Benedictus"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo "Molto largo" 4=40
  s1
  \set Score.tempoHideNote = ##t
  s1*45
  \tempo 4=35
}

RehearsalTrack = {
  \set Score.currentBarNumber = #27
  \mark \markup { \box "B" }   s1*5
  \mark \markup { \box "87b" } s1*5
  \mark \markup { \box "87c" } s1*2
  \mark \markup { \box "C" }   s1*3
  \mark \markup { \box "87d" } s1*5
  \mark \markup { \box "88a" } s1*4
  \mark \markup { \box "88b" } s1*4
  \mark \markup { \box "D" }   s1*3
  \mark \markup { \box "89b" } s1*3
  \mark \markup { \box "90a" } s1*2
  \mark \markup { \box "E" }   s1*3
  \mark \markup { \box "90b" } s1*5
  \mark \markup { \box "90c" } s1*5
}

soprano = \relative {
  \global
%  s1*26
  R1*12
  r4^\markup SOPRANO fis'8^\p a d(e cis a)
  g1
  R1
  R1 % 87d
  R1
  d'2^\p(~8 cis b) cis
  e4(d2.)
  R1 \bar "||"
  r4 fis,8 a d(e cis a)
  g1
  R1
  R1
  R1 % 88b
  d2(~8 cis b) cis
  e4(d2.)
  R1
  r8. g'16^\ff 8(fis) e4 \tuplet 3/2 {e8(fis) g} % 89a
  fis8 a4. r2
  r8. g16 8(fis) e4 \tuplet 3/2 {e8(fis) g}
  fis4 d2 r4 % 89b
  r8. g16 8(fis) e4 \tuplet 3/2 {e8(fis) g}
  fis8 a4. r2
  r8. g16 8(fis) e4 \tuplet 3/2 {e8(fis) g} % 90a
  fis4 d2~8 r \bar "||"
  R1
  r4 fis,8^\p a d(e cis a)
  g1
  R1*7
  d'2\omit\p^\markup {\dynamic p \bold rall.} (~8 cis b) cis % 90c++
  e4(d2.~
  d1\fermata)
  \bar "|."
}

wordsSop = \lyricmode {
  Be -- ne -- di -- ctus,
  Do -- mi -- ni. __
  Be -- ne -- di -- ctus,
  Do -- mi -- ni. __
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Be -- ne -- di -- ctus,
  Do -- mi -- ni. __
}

wordsSopMidi = \lyricmode {
  "Be" ne di "ctus, " Do mi "ni. " 
  "\nBe" ne di "ctus, " Do mi "ni. " 
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nBe" ne di "ctus, "
  "\nDo" mi "ni. " 
}

alto = \relative {
  \global
%  s1*26
  R1*12
  R1
  R1
  R1
  r2 r4^\markup ALTO r8 fis'^\p
  e4 d8. 16 e8 fis g(e)
  d2(~8 cis b) cis
  e4(d2.)
  R1 \bar "||"
  R1 % 88a
  R1
  R1
  r2 r4 r8 fis
  e4 d8. 16 e8 fis g(e) % 88b
  d2(~8 cis b) cis
  e4(d2.)
  R1
  r8. b'16^\ff 4 4 \tuplet 3/2 {b4 8} % 89a
  a8 fis4. r2
  r8. b16^\ff 4 4 \tuplet 3/2 {b4 8}
  a4 fis2 r4 % 89b
  r8. b16^\ff 4 4 \tuplet 3/2 {b4 8}
  a8 fis4. r2
  r8. b16^\ff 4 4 \tuplet 3/2 {b4 8} % 90a
  a4 fis2~8 r
  R1*8
  r2 r4 r8 fis^\p % 90c
  e4 d8. 16 e8 fis g(e)
  d2(~8 cis b) cis
  e4(d2.~
  d1\fermata)
  \bar "|."
}

wordsAlto = \lyricmode {
  qui ve -- nit in no -- mi -- ne __
  Do -- mi -- ni. __
  qui ve -- nit in no -- mi -- ne __
  Do -- mi -- ni. __
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  qui ve -- nit in no -- mi -- ne __
  Do -- mi -- ni. __
}

wordsAltoMidi = \lyricmode {
  "qui " ve "nit " "in " no mi "ne " 
  "\nDo" mi "ni. " 
  "\nqui " ve "nit " "in " no mi "ne " 
  "\nDo" mi "ni. " 
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nqui " ve "nit " "in " no mi "ne " 
  "\nDo" mi "ni. " 
}

tenor = \relative {
  \global
%  s1*26
  R1*12
  R1
  R1
  r4^\markup TENOR fis8^\p a d(e cis a)
  g2.~8 r
  R1*4 \bar "||"
  R1 % 88a
  R1
  r4 fis8 a d(e cis a)
  g2.~8 d
  fis4 8. 16 b8 8 4 % 88b
  g2.~8 8
  fis1
  R1
  r8. d'16^\ff 4 4 \tuplet 3/2 {d4 8} % 89a
  d8 4. r2
  r8. d16^\ff 4 4 \tuplet 3/2 {d4 8}
  d4 2 r4 % 89b
  r8. d16^\ff 4 4 \tuplet 3/2 {d4 8}
  d8 4. r2
  r8. d16^\ff 4 4 \tuplet 3/2 {d4 8} % 90a
  d4 2~8 r \bar "||"
  R1*3
  r4 fis,8^\p a d(e cis a) % 90b
  g2.~8 r
  R1*5
  g2.^\p~8 8 % 90c++
  fis1~
  fis1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  Be -- ne -- di -- ctus, __
  Be -- ne -- di -- ctus, __
  qui ve -- nit in no -- mi -- ne
  Do -- mi -- ni. __
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Be -- ne -- di -- ctus, __
  Do -- mi -- ni. __
}

wordsTenorMidi = \lyricmode {
  "Be" ne di "ctus, " 
  "\nBe" ne di "ctus, " 
  "\nqui " ve "nit " "in " no mi "ne "
  "\nDo" mi "ni. " 
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nBe" ne di "ctus, " 
  "\nDo" mi "ni. " 
}

bass = \relative {
  \global
%  s1*26
  R1*12
  R1*8 \bar "||"
  d1^\p^\markup BASS % 88a
  d1
  d1
  d2.~8 8
  b4 8. 16 g8 8 4 % 88b
  a2.~8 8
  d1
  R1
  r8. g16^\ff 4 4 \tuplet 3/2 {4 8} % 89a
  d8 4. r2
  r8. g16^\ff 4 4 \tuplet 3/2 {4 8}
  d4 2 r4 % 89b
  r8. g16^\ff 4 4 \tuplet 3/2 {4 8}
  d8 4. r2
  r8. g16^\ff 4 4 \tuplet 3/2 {4 8} % 90a
  d4 2~8 r
  R1*10
  a2.^\p ~8 8 % 90c++
  d1~
  d1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Be -- ne -- di -- ctus, __
  qui ve -- nit in no -- mi -- ne
  Do -- mi -- ni.
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Ho -- san -- na in __ ex -- cel -- sis,
  Do -- mi -- ni. __
}

wordsBassMidi = \lyricmode {
  "Be" ne di "ctus, " 
  "\nqui " ve "nit " "in " no mi "ne "
  "\nDo" mi "ni. "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nHo" san "na " "in "  ex cel "sis, "
  "\nDo" mi "ni. " 
}

pianoRHone = \relative {
  \global
  \voiceOne
  <a d fis>2~ (q8 <b e gis> <a d fis>4~ % 87a
  q2~8 <b e gis> <a d fis>4~
  q4) fis'8( a d e cis a
  <b, d g>1) ~
  <a d fis>4
  fis'8( a d e cis8. a16
  g2.~8 fis % 87b
  e4 d8. 16 e8 fis g e
  d2~8 cis b cis
  e4 d2.~
  d1)
  <a d fis>2( ~8 <b e gis> <a d fis>4~ % 87c
  q2~8 <b e gis> <a d fis>4~
  q1
  <b d g>1
  <a d fis>1)
  g'2.(~8 fis % 87d
  e4 d2.)
  d2(~8 cis b cis
  e4 d2.~
  d1) \bar "||"
  <a d fis>1 % 88a
  <b d g>1
  <a d fis>1
  g'2.(~8 fis8
  e4 d2.) % 88b
  d2(~8 cis b cis
  e4 d2.~
  d1) \bar "||"
  r8. <g b d g>16 q8 <g b d fis> <g b d e>4 \tuplet 3/2 {q8 <g b d fis> <g b d g>} % 89a
  <fis a d fis>8 <a d fis a>4. r2
  r8. <g b d g>16 q8 <g b d fis> <g b d e>4 \tuplet 3/2 {q8 <g b d fis> <g b d g>}
  <fis a d fis>4 <d fis a d>2 r4 % 89b
  r8. <g b d g>16 q8 <g b d fis> <g b d e>4 \tuplet 3/2 {q8 <g b d fis> <g b d g>}
  <fis a d fis>8 <a d fis a>4. r2
  r8. <g b d g>16 q8 <g b d fis> <g b d e>4 \tuplet 3/2 {q8 <g b d fis> <g b d g>} % 90a
  <fis a d fis>4 <d fis a d>2~8 r
  <a d fis>2~ (q8 <b e gis> <a d fis>4~
  q1)
  <b d g>1
  <a d fis>1 % 90b
  <g b d g>1
  <fis a d fis>1
  <b d g>2.~8 r
  r4 fis''8( a d e cis8. a16
  <g, b d g>2.~8) fis( % 90c
  e4 d2.)
  d2(~8 cis b cis
  e4 d2.~
  d1\fermata)
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1 % 87a
  s1
  s4 fis'2.
  s1
  s4 fis2.
  <b, d>1 % 87b
  << {\voiceOne b1 a1} \new Voice {\voiceTwo fis2(g e1)} >> \oneVoice
  <fis a>1~
  q1
  s1*5 % 87c
  <g b>1 % 87d
  b2 2
  cis2 s
  <a cis>1
  s1
  s1*3 % 88a
  <b d>1
  d1 % 88b
  cis1
  <a cis>1
  s1 \bar "||"
  s1*17
  b2 2 % 90c+
  a1
  <fis a>1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\p-\markup{\dynamic p \italic legato}
  s1
  s4 s2.\omit\mp-\markup{\dynamic mp \italic "molto espress."}
  s1
  s1
  s1 % 87b
  s1
  s1
  s1\>
  s1
  s1\omit\p-\markup{\dynamic p \italic legato} % 87c
  s1*16
  s2. s8.. s32\ff % 88b+++
  s1*8
  s1\p % 90a++
  s1*13
}

pianoLHone = \relative {
  \global
  a,2(~8 b a4~ % 87a
  a2~8 b a4)
  <d, a' d>1~
  q1
  q1~
  q1 % 87b
  <b b'>2(<g g'>
  <a a'>1)
  <d a'>1~
  q1
  q1~ % 87c
  q1~
  q1
  q1~
  q1~
  q1 %87d
  <b' fis'>2 <g d'>
  <a e'>1
  <d, a'>1~
  q1
  q1~ % 88a
  q1~
  q1~
  q1
  <b' fis'>2 <g d'> % 88b
  <a e'>1
  s1*2
  <g' b d g>1 % 89a
  s1
  q1
  s1 % 89b
  q1
  s1
  q1 % 90a
  s1*6
  \once\partCombineApart r4 fis8( a d e cis8. a16 % 90b++
  g2.~8) \once\partCombineApart r
  <fis a d fis>1
  s1 % 90c
  <b, fis'>2 <g d'>
  <a e'>1
  <d,a'>1~
  q1\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  d,1~ % 87a
  d1
  s1*24
  <d a'>1
  q2.~8.~32 q32->~
  q2.~8.~32 32~ % 89a
  q2.~8.~32 32~
  q2.~8.~32 32~
  q2.~8.~32 32~ % 89b
  q2.~8.~32 32~
  q2.~8.~32 32~
  q2.~8.~32 32~ % 90a
  q2.~8 r \bar "||"
  q1~
  q1~
  q1~
  q1~ % 90b
  q1~
  q1~
  q1~
  q1~
  q1 % 90c
  s1*4
  \bar "|."
}

trumpet = \relative {
  s1*29
  r4^\markup "(Tpt.)" r8 fis16^> a^> d8^> e^> cis^> a^> %89a+
  s1
  r4^\markup "(Tpt.)" r8 fis16^> a^> d8^> e^> cis8.^> a16^> % 89b
  s1
  r4^\markup "(Tpt.)" r8 fis16^> a^> d8^> e^> \tuplet 3/2 {cis8^> 8^> a^>}
  s1*15
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff =rhorgan \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lhorgan \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice {\voiceThree \trumpet}
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff =rhorgan \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lhorgan \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice {\voiceThree \trumpet}
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new Staff = trumpet
        <<
          \set Staff.midiInstrument = "trumpet"
          \clef bass
          \new Voice \trumpet
        >>
        \new PianoStaff <<
          \new Staff = organ
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new Staff = trumpet
        <<
          \set Staff.midiInstrument = "trumpet"
          \clef bass
          \new Voice \trumpet
        >>
        \new PianoStaff <<
          \new Staff = organ
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new Staff = trumpet
        <<
          \set Staff.midiInstrument = "trumpet"
          \clef bass
          \new Voice \trumpet
        >>
        \new PianoStaff <<
          \new Staff = organ
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \set Staff.midiInstrument = "choir aahs"
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \set Staff.midiInstrument = "choir aahs"
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new Staff = trumpet
        <<
          \set Staff.midiInstrument = "trumpet"
          \clef bass
          \new Voice \trumpet
        >>
        \new PianoStaff <<
          \new Staff = organ
          <<
            \set Staff.midiInstrument = "church organ"
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
