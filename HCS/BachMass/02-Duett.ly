\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 2. Duett."
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
  \key b \minor
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
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } s1*13
  \textMark \markup { \box "16a" } s1*13
  \textMark \markup { \box "17a" } s1*16
  \textMark \markup { \box "18a" } s1*13
  \textMark \markup { \box "19a" } s1*12
  \textMark \markup { \box "20a" } s1*3
  \textMark \markup { \box "20b" } s1*3
  \textMark \markup { \box "20c" } s1*3
  \textMark \markup { \box "20d" } s1*3
  \textMark \markup { \box "20e" } s1*3
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*13
    R1*13 % 16
    R1*16
    R1*13
    R1*12 % 19
  }
  b'8(cis16 d e8 d16 c b8. a32 g fis8. g32 a | % 20a
  b16 c) d8 gis, d' cis d16(e) d4~ |
  d2~8 cis d e |
  a,8(d4) cis8 d c b(a | b g a) g a d16(b) g8 fis16(e) | % 20b
  fis8.(g16) e8.(d16) 4 r |
  R1*9
}

wordsSopI = \lyricmode {
  le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son.
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*13
    R1*13 % 16
    R1*16
    R1*13
    R1*12 % 19
  }
  g'4~16(e fis8~16 g e8~16 cis d8~ | % 20a
  d8 gis16 a b8) a16(gis) a8 g fis b |
  e,2~8 g16(fis) 8 b16(a) |
  fis8.(e16)8.(d16) 8 a' g(fis | % 20b
  g8 e dis) e fis d e d16(cis) |
  d8.(e16) cis8.(d16) 4 r |
  R1*9 |
  \bar "|."
}

wordsSopII = \lyricmode {
  le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son.
}

pianoRHone = \relative {
  \global
  r8 d' a b c a'16(g fis e d c) |
  \vo b16(d) g(e) \vo d(cis) g'8~8 fis16(e d cis b a) |
  \vo gis16(b) e(cis) \vo b(ais) e'8~16 d(e f g a b g) | \ov
  \compressMMRests {
    R1*13 |
    R1*13 | % 16
    R1*16 |
    R1*13 |
    R1*12 | % 19
  }
  \vo b16-. e(fis g) a,-. cis(b a) g-. cis(d e) fis,-. a(g fis) | % 20a
  \ov e16-. a(b c) d,-. fis(e d) e(a, b cis d e fis g) |
  a16(g) b(a) g(fis e) d-. \vo g8 cis d e |
  a,8 d4 cis8 d fis~16 e d fis | % 20b
  e16 d e8~16 d cis e d8 16 b g8 a |
  \ov <d, fis a>8. <e g>16 <cis e>8. d16 <fis, d'>8 d' a b |
  \vo c8 a'16(g fis e d c) b(d) g(e) d(cis) g'8~ | % 20c
  g8 fis16(e d cis b a) gis(b) e(cis) b ais e'8~ |
  e16 d(e fis g a b g) \ov a(cis e d) cis b a g |
  fis16(a d c) b a g fis e4~16 fis(e d) | % 20d
  cis16(d e) g-. \vo a,16 fis'(e d) cis(e fis) g-. a,-. b'(a g) |
  fis16(g a) c-. d,-. b'(a g) fis(g a) cis-. d,-. e'(d cis) |
  b16-. e(fis g) a,-. c(b a) g-. cis(d e) fis,-. a(g fis) | % 20e
  \ov e16-. a(b cis) d,-. fis(e d) cis a b cis \vo d e fis(e) |
  g16(fis) b(a) g(fis e) d-. \ov <fis, a d>4 r |
}

pianoRHtwo = \relative {
  \global \vt
  R1*3 |
  \compressMMRests {
    R1*13 |
    R1*13 | % 16
    R1*16 |
    R1*13 |
    R1*12 | % 19
  }
  g'4~8 fis g e~e d | s1 | s2 g | % 20a
  fis4 e8 g fis a g fis | g4 fis8 g fis8 8 e <d fis>16 <cis e> | s1 |
  c4~8 s s4 s16 cis~8 | d4 s s s16 ais~8 | b8 r s2. |
  s1 | s4 a4~4 8 cis | d4 4~4 8 fis |
  g4~8 fis8 8 e~e d | s2.. d8~ | 4~8 cis s2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  <d, d'>2~8 <d' fis> <e g> <fis a>~
  \vo a8 b16 g a4~4 r8 fis |
  e8 g16 e fis4~4 r8 d' | \ov
  \compressMMRests {
    R1*13 |
    R1*13 | % 16
    R1*16 |
    R1*13 |
    R1*12 | % 19
  }
  g,8 e cis d~d cis d fis | gis, e' e, e' a, a' b a | g fis e fis16 g \vo a2~ | % 20a
  \ov <d, a'>8 b g a <d, d'>2 | 2~8 b' cis a | d g a <a, g'> <d, d'>2~ |
  q8 <d' fis> <e g> <fis a>~ \vo a b16 g a4~ | 4 r8 fis e g16 e fis4~ | 4 r8 d' <cis e> a4.~ |
  a4 g8 d' cis a4 gis8 | a4 s2 cis,8 a | \ov d fis a c~c <fis, a>16 <e g> <fis a>8 <d d'>~ |
  <g d'>8 e fis <d c'> <e b'> cis d b | <cis a'> <a fis'>~<b fis'> <g' b> <a, e'> <g' a>~ \vo a4 | g8 e4 g8 \ov d,4 r |
}

pianoLHtwo = \relative {
  \global \vt
  s1 | g8 e a a, d4 r8 d~ | d cis fis fis, b4 r8 g'\laissezVibrer |
  \compressMMRests {
    R1*13 |
    R1*13 | % 16
    R1*16 |
    R1*13 |
    R1*12 | % 19
  }
  s1*2 | s2 a8 a, b cis | % 20a
  s1*3 |
  s2 g'8 e a a, | d4 r8 d8~8 cis fis fis, | b4 r8 g'~8 cis, a cis |
  d8 fis g e a cis, d e | a, cis e g~g cis,16 b s4 | s1 |
  s1 | s2. fis'8 d | b g a a s2 |
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
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
