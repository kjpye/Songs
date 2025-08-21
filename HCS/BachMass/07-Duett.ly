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
  \textMark \markup { \box "51a" } s1*3
  \mark \markup\circle\bold G
  \textMark \markup\box "51b" s1*3
  \textMark \markup\box "51c" s1*3
  \textMark \markup\box "51d" s1*3
  \textMark \markup { \box "52a" } s1
  \mark \markup\circle\bold H s1*2
  \textMark \markup { \box "52b" } s1*3
  \textMark \markup { \box "52c" } s1*2
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
    R1*3 % 51a
  }
  R1 | b'8(a4) b16 g c8(b4) a8 | dis8(e4) g,8 16\trill(fis g8) fis4 |
  b4 8 8 2~ | 8 a gis a b16(c d8) 4 | c8(b4) a8 16(g a4) b8 |
  g8 b16 a g8(fis) e4 r | R1^\markup{\with-color "red" \large\bold STAND} | R1 |
  R1*2 | b'8(a~16) fis g8 cis(d4) b8 | % 52a
  g8(e'4) g,8 16\trill(fis g8) fis4 | b8(ais4) cis16 b cis(d e4) d16(cis) | dis8 e a,4~8(fis') e(d) |
  e8(d4) cis16(b) ais(b cis4) a8 | fis b16 16 8(ais) b4 r | r cis8 e16 d e8 d16(cis) d8 b |
  cis8 fis ais, b cis b16(ais) b8 ais16 gis | % 52d
  ais8 fis fis'4~8 d b4~ |
  b8(g') cis,(b) ais(fis) d' gis, |
  \partial 2. b4(ais8. b16) 4^\markup {\with-color "red" \bold segue} \section \key b \minor \time 3/4 |
}

wordsSopI = \lyricmode {
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  a -- gnus De -- i, Fi -- li -- us Pa -- tris,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- gnus De -- i, __
  a -- gnus De -- i, Fi -- li -- us Pa -- tris,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- guns De -- i,
  Fi -- li -- us Pa -- tris!
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
    R1*3
  }
  R1 g'8(fis4) g16 e a8(g4) fis8 | 8(g4) e8 16\trill(dis e8) d4 | % 51b
  e8(dis4) fis16 e fis8(a,4) g16(fis) | g8(e'4) f8 d(b) a(gis) | a(g4) fis8 dis'16(e fis4) d8 |
  b8 e16 fis e8(dis) e4 r | R1*2 |
  R1*2 | g8(fis~16) dis e8 e(fis4) d8 | % 52a
  b8(cis4) e8 16\trill(d e8) d4 | fis4 8 8 2~ | 8 e dis e fis16(g a8) 4 |
  g8(fis4) e8 16(d e4) fis8 | d fis16 e d8(cis) b4 r | r ais8 cis16 b cis8 b16(ais) b8 gis |
  ais8 fis cis' d e d16(cis) d8 cis16 b | % 52d
  cis8 ais r4 fis'4. d8 |
  b8 cis16(d) e4. ais,16 16 b(cis d8~ |
  \partial 2. d8 cis cis4\trill) b \section \key b \minor \time 3/4 | s4
}

wordsTenor = \lyricmode {
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- gnus De -- i, __
  a -- gnus De -- i, Fi -- li -- us Pa -- tris,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  a -- gnus De -- i, Fi -- li -- us Pa -- tris,
  Do -- mi -- ne De -- us, a -- gnus De -- i,
  a -- gnus De -- i,
  Do -- mi -- ne De -- us, a -- guns De -- i,
  Fi -- li -- us Pa -- tris!
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
    R1*3
  }
  \ov <d g b>16 d' <d, b'> g <b, d> g' <c, a'> fis \vo 4(g16)^\markup "Fl. solo" fis e dis | % 51b
  e16(dis) fis(e) d(cis) e(d) c(b) d(c) b(a) c(b) |
  a16(g) b(a) g(fis) a(g) 4(fis16) b dis fis |
  e16(dis) fis(e) g(fis) a(g) b(a) c(b) a(g) b(a) | % 51c
  g8 fis16 e d4~16 c f(e) d(c) e(d) |
  c16(b) d(c) b(a) c(b) a(g) c(b) a(g) b(a) |
  g16(fis) b(a) g(fis) a(g) fis4(e16) b''[g e] | % 51d
  \ov e4(d16) b' gis fis \vo fis4(d16) b' gis e |
  d16 b' gis e d b' g e d4(c16) e a fis |
  dis4(e16) b g' e <e g>8(e fis) s8 | % 52a
  g16 b g e b e fis dis16 4(e) |
  \ov e,8 dis16 cis b2 b'16(a) cis(b) |
  a16(g) b(a) g(fis) a(g) <e g>4(<d fis>16) e g(fis) | % 52b
  \vo b16(ais) cis(b) d(cis) e(d) fis(e) g(fis) e(d) fis(e) |
  dis16(c) e(dis) fis(e) g(fis) c4(b16) e a fis |
  c4(b16) d a' fis fis4(g16) e d cis | % 52c
  fis4(g16) b, e cis cis4(d16) b fis' e |
  \ov <ais, c fis>4 \vo fis'2 4~ |
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
    s1*3
  }
  s2 b | <g b>8 a4 g8 a g4 fis8 | 8 e4 8 4 dis16 b'~8 | % 51b
  b4 dis8 fis16 e fis4 e8 dis | e a, gis a b4 a8 gis | a g4 fis8 dis16 e fis8~8 8 |
  b,8 e16 fis e8 dis b4~16 s8. | s1 | s2 <gis' b>8 a r4 |
  <a c>8(<g b>) r4 ais4(b16) dis <b dis fis> a' | <b, e>4 g8 <a b> <g b>4 r | s1 | % 52a
  s1 | <d fis>8 fis4 c'16 b c4 b8 ais | b4 a8 g <fis a>4~8 <a dis> |
  g8 fis4 cis'8 ais16 b c8~8 fis, | <fis b> b~8 <fis ais> <d fis>4~8 b' | s4 c8 r <ais e'> r <fis d'> r |
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
    R1*3
  }
  \ov g,8 b d d, g g' a b | e, r e, r e' r e, r | c' r a r b b'4 a8 | % 51b
  g8 g, fis e dis dis' cis b | e c b a gis gis' fis e | a r c r fis, r dis r |
  e8 g, a b <e g> e, g b | % 51d
  e8 \clef treble <gis b e> [ <b e gis> <d g b> ] ~8 <gis, b e> <b e gis> <d gis b> |
  e,8 <gis b e> <b e gis> <e g b> \clef bass a, <e c'> a c, |
  e8 e, g b e cis dis b | e g b b, e b g b | e, r e' r b r <b' d> r | % 52a
  <e, d'>8 r <a cis> r d, d, fis a | b d' cis b ais ais, gis fis | b g fis e dis dis' cis b |
  e8 r g r cis, r ais r | d d, e fis b b' a g | fis8[fis,] <ais' fis'> r <cis fis> r b r |
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
