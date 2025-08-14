\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 7. Duett."
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
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \minor
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "46a" } s1*18
  \textMark \markup { \box "47a" } s1*12
  \textMark \markup { \box "48a" } s1*12
  \textMark \markup { \box "49a" } s1*13
  \textMark \markup { \box "50a" } s1*15
  \textMark \markup { \box "51a" } s1*12
  \textMark \markup { \box "52a" } s1*8
  \mark \markup\circle\bold I      s1
  \textMark \markup\box "52d"      s1*4
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*15
    R1*12 % 47
    R1*12
    R1*13
    R1*15 % 50
    R1*12
    R1*8
  }
  r4 cis''8 e16 d e8 d16(cis) d8 b |
  cis8 fis ais, b cis b16(ais) b8 ais16 gis | % 52d
  ais8 fis fis'4~8 d b4~ |
  b8(g') cis,(b) ais(fis) d' gis, |
  \partial 2. b4(ais8. b16) 4 \section \key b \minor \time 3/4 |
}

wordsSopI = \lyricmode {
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*15
    R1*12 % 47
    R1*12
    R1*13
    R1*15 % 50
    R1*12
    R1*8
  }
  r4 ais8 cis16 b cis8 b16(ais) b8 gis |
  ais8 fis cis' d e d16(cis) d8 cis16 b | % 52d
  cis8 ais r4 fis'4. d8 |
  b8 cis16(d) e4. ais,16 16 b(cis) d8~ |
  \partial 2. d8(cis cis4\trill) b \section \key b \minor \time 3/4 | s4
}

wordsTenor = \lyricmode {
}

pianoRHone = \relative {
  \global \vo
  g''8 fis16 e d4~16 c e(d) c(b) d(c) |
  g'8 fis16 e d4~16 c e(d) c(b) d(c) |
  g'8 fis16 e d4~16 c e(d) c(b) d(c) |
  \compressMMRests {
    R1*15
    R1*12 % 47
    R1*12
    R1*13
    R1*15 % 50
    R1*12
    R1*8
  }
  \ov <ais c fis>4 \vo fis'2 4~ |
  fis4 2 4~ | 4 <fis, b>8 <ais c> <b d>4 b | % 52d
  b4 <g cis>8 <e b'> \ov <cis fis ais>8 r <d gis b> r |
  \partial 2. <d fis b>8 r <cis fis ais> r <d fis b>4 \section \key b \minor \time 3/4 | s4
}

pianoRHtwo = \relative {
  \global \vt
  b'8 c g <fis a> g4. a8 |
  c4(b16)c b a g8 b4 a8 |
  <g c>4(~<g b>16) <fis a> <e g> <d fis> <d g>8 r fis r |
  \compressMMRests {
    s1*15
    s1*12 % 47
    s1*12
    s1*13
    s1*15 % 50
    s1*12
    s1*8
  }
  s4 c'8 r <ais e'> r <fis d'> r |
  <fis cis'>8 r <ais e'> r <fis ais> r <fis b> r | % 52d
  <fis ais>4 fis4~4 8 eis |
  e4 cis s2 |
  \partial 2. s2. \section \key b \minor \time 3/4 | s4
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \ov
  g,8-. a-. b-. c-. b-. g'-. a,-. fis'-. |
  \vo d'8 c d e16 fis b,8 e e a, |
  d4~16 c b a g8 r a r |
  \compressMMRests {
    R1*15
    R1*12 % 47
    R1*12
    R1*13
    R1*15 % 50
    R1*12
    R1*8
  }
  \ov fis8[fis,] <ais' fis'> r <cis fis> r b r |
  <fis ais>8[fis,] cis'' r cis r cis r | % 52d
  cis8 fis, d fis b, d g, b' |
  g8 b e, g fis r eis r |
  \partial 2. fis8 r fis, r b4 \section \key b \minor \time 3/4 | s4
}

pianoLHtwo = \relative {
  \global \vt
  s1 | g8[a] b c b g a fis | g[a] b c, b[g'] a, fis' |
  \compressMMRests {
    s1*15
    s1*12 % 47
    s1*12
    s1*13
    s1*15 % 50
    s1*12
    s1*8
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = soprano \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = soprano \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}
