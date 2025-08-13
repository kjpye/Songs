\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 10. Arie."
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
  \time 3/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "60d" } s2.*4
  \textMark \markup { \box "60e" } s2.*8
  \textMark \markup { \box "61a" } s2.*24
  \textMark \markup { \box "62a" } s2.*21
  \textMark \markup { \box "63a" } s2.*22
  \textMark \markup { \box "64a" } s2.*22
  \textMark \markup { \box "65a" } s2.*8
  \textMark \markup { \box "65c" } s2.*4
  \textMark \markup { \box "65d" } s2.*5
  \textMark \markup { \box "65e" } s2.*5
  \textMark \markup { \box "65f" } s2.*4
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R2.*4 |
  \compressMMRests {
    R2.*8
    R2.*24 % 61
    R2.*21
    R2.*22
    R2.*22 % 64
    R2.*5
  }
  r8 e(fis) e d4~ | 8 b e fis g4~ | 16(b a g fis g e fis d e cis d | % 65b+
  b16 a' g fis e fis d e cis d b cis | % 65c
  a16 g' fis e d e c d b c a c | b8 d g[a] b4~ | 8) a16(g) a8 e fis(cis) |
  d8 g fis(b~16 a) d(cis) | d8 cis16(b a8) d, fis(e\trill) | d4 r r | R2.*11 | % 65d
  \section
}

wordsBass = \lyricmode {
  Je -- su Chri -- ste, so -- lus Do -- mi -- nus,
  tu so -- lus al -- tis -- si -- mus Je -- su Chri -- ste.
}

pianoRHone = \relative {
  \global
  \vo d'4 \ov d' cis\trill | d d,2 | a4 g' fis\trill | e a,2 |
  \compressMMRests {
    R2.*8
    R2.*24 % 61
    R2.*21
    R2.*22
    R2.*22 % 64
    R2.*5
  }
  \vo a'8 e a g fis4~ | 8 b16 a g a fis g e g fis e | % 65b+
  a8-.(a-. a-. a-. a-. a-.) |
  a8 b16 a  g8-.(g-. g-. g-.) | g8 a16 g fis8-.(8-. 8-. 8-.) | % 65c
  \ov  fis8 d'16 cis b cis a b g a fis g \vo |
  e16 fis g8~16 e fis g a b g a |
  fis16 g e fis \ov d e d e e8.\trill d16 | % 65d
  d8 <e a> \vo <fis a> d \ov <a d>8 <g cis>\trill |
  \vo d'4 \ov d' cis\trill | d d,2 | a4 g' fis\trill |
  e4 a,2 | r8 \vo a'8 b a gis4 | a8 e a g fis4~ | % 65e
  fis8 b16 a g a fis g e g fis e | a4 d,2~ |
  d8 d'16 cis b cis a b g a fis g | e16 fis g8~16 e fis g a b g a | % 65f
  fis16 g e fis d e d e e8. d16 |
  <fis, d'>8 e'16(fis32 g) fis8 <b, d e> d cis \section |
}

pianoRHtwo = \relative {
  \global \vt
  s2.*4 |
  \compressMMRests {
    s2.*8
    s2.*24 % 61
    s2.*21
    s2.*22
    s2.*22 % 64
    s2.*5
  }
  cis'4 r8 c16 b c8 d16 c | d2 s4 | e8 cis d e fis r | % 65b+
  r8 b, cis d e r | r a, b cis d r | s2. | r8 a16 b cis8 8 d cis | % 65c
  d8 cis s2 | s4. a16 b s4 | s2.*3 |
  s2. | s8 fis'16 e fis8 d16 cis d8 e16 d | cis8 r r c16 b c8 d16 c | % 65e
  b8 s4. b4 | cis8 b16 cis d4 a~ |
  a8 \lh b16 a \rh s2 | s8 e' cis d16 e fis8 cis | % 65f
  d8 r r b a g | s2 a16 fis a8 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  \rh <fis a>8([\lh <d fis>) q(<e g>)] q(<d fis>16 <e g>) |
  <fis a>8 [ <e g>16 <fis a> ] <g b>8(<fis a> <e g> <d fis>)~ |
  \vt d8 e16 d cis8 <a d> a4~ | a8 16 g fis8 g a4 | \ov
  \compressMMRests {
    R2.*8
    R2.*24 % 61
    R2.*21
    R2.*22
    R2.*22 % 64
    R2.*5
  }
  \vo a'8 r r a16 g a4 | g8 s8 s2 | r8 e fis g a r | % 65b+
  r8 d, e fis g r | r cis, d e fis r | % 65c
  \ov g, d' [ <e g> <fis a> <e b'> <d fis> ] |
  <cis g'>8 cis16 <b d> s4 \vo a'~ |
  \ov <d, a'>8 <e g> <fis a> <g b> a [ <a, g'> ] | % 65d
  <b fis'>8 [ cis ] d fis,16 g a8 <a, a'> |
  \rh <fis'' a>8 [ \lh <d fis> q(<e g>) ] \ov q8(<d fis>16 <e g>) |
  <fis a>8 <e g>16 <fis a> \vt <g b>8(<fis a> <e g> <d fis>) |
  \vo g8(e) e(<d fis>) q(<cis e>16 <d fis>) |
  <e g>8 r r q(<d fis> <cis e>) | % 65e
  fis8 r r b b4 | \ov <a, a'>8 <a' cis>16 <g b> \vo a8 16 g a4 |
  \ov <g, g'>8 <g' b>-.(q-. q-.) \vo g [ d ] |
  e4 \ov <fis, fis'>8 <e' g> <d fis> <cis e> |
  \vt <b fis'>8 d <e g> <b fis'> <e g> <d fis b> | % 65f
  \vo b'8 a16 g a2~ | 8 g fis16 e fis d cis8. d16 |
  s8 g16(a32 b) s2 \section |
}

pianoLHtwo = \relative {
  \global
  <d, d'>8 r r4 s | s2. | \vo g'8(e) e(fis) <d fis>8(<cis e>16 <d fis>) |
  <e g>8 r r q(<d fis> <cis e>) |
  \compressMMRests {
    s2.*8
    s2.*24 % 61
    s2.*21
    s2.*22
    s2.*22 % 64
    s2.*5
  }
  \vt a16 b a g fis8 a d c16 d | g,8 g'16 fis e8 d cis b | % 65b+
  cis8 a d4 r8 fis |
  d8 b e4 r8 d | cis a d4 r8 d, | s2. | s4 <a' e'>8 <g' a> fis e | % 65c
  s2.*2 | <d, d'>8 s s2 | % 65d
  s2 s8 \once\hideNotes d'8~ | d e16 d cis8 a a4~ |
  a8 16 g fis8 g a4 | d8 16 cis d8 b e d16 e | % 65e
  s4 fis8 e d c16 d | s2 g,4~ | 8 a16 g s2 |
  s2. | <cis g'>8 e a g fis e | d a b g a8 g16 a | % 65f
  <b d>8 cis <d a'>(<g, g'> <a fis'> <a e'>) \section |
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
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \bass
            \addlyrics \wordsBass
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
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \bass
            \addlyrics \wordsBass
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
