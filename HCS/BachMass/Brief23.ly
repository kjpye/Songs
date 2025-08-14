\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 23. Arie."
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
  \key g \minor
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
  \textMark \markup { \box "154a" } s1*3
  \textMark \markup { \box "154b" } s1*13
  \textMark \markup { \box "155a" } s1*17
  \textMark \markup { \box "156a" } s1*9
  \textMark \markup { \box "156d" } s1*3
  \textMark \markup { \box "156e" } s1*3
  \textMark \markup { \box "156f" } s1*4
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*13
    R1*17 % 155
    R1*9
  }
  fis'8(e) d e(fis) a d4~ | 8(ees) fis,(g) g(ees) b(c) | c(c'4) bes16(a) d(bes) a(g) bes8(a) |
  g8 aes4 g16(f) ees8(b c) g' | fis16(g) a8 r ees16 d \appoggiatura c'16 bes8 a16(g) fis8.(g16) | 4 r r2 |
  R1*4 |
  \bar "|."
}

wordsAlto = \lyricmode {
  no -- bis, mi -- se -- re -- re no -- bis,
  mi --se -- re -- re no -- bis,
  mi --se -- re -- re no -- bis,
  mi --se -- re -- re no -- bis.
}

pianoRHone = \relative {
  \global
  r4 r8 d' bes'16(g c,4) g'16(bes) | % 154a
  a16(fis) cis'4 bes16(a) bes(g aes4) g8 |
  fis8(e d) a'(bes) fis(g) d\laissezVibrer |
  \compressMMRests {
    R1*13
    R1*17 % 155
    R1*9
  }
  \vo a'8 cis,_(d) \vt c''^~16^(a d,4) \ov g16(bes) | % 156d
  a16(fis c4) bes16(a) bes(g aes4) \vo g8 |
  fis8([e d]) \ov d <g d'> <g c>(<g bes>) <fis a> |
  \vo g8 aes4 b8(c) \ov r8 <g c> r | % 156e
  \vo a8 ees'([d) fis](g) ees d <d, fis> |
  \ov <bes d g>8 r r c \vo b16(d f4) ees16(d) |
  \ov ees16(c a4) \vo g'8 fis16(a c4) bes16(a) | % 156f
  bes16(g cis4) d8 e16(g bes4) a16 g |
  fis16(a, \ov ees4) d16(c) bes8 <d d'> <bes d> <a d fis> |
  g4 r r2 |
}

pianoRHtwo = \relative {
  \global \vt
  s1*3
  \compressMMRests {
    R1*13
    R1*17 % 155
    R1*9
  }
  d'8 s2.. | s2. <b ees>8(<c ees>) | a8 r s2. | % 156d
  g'8 ees(d) g16(f) ees8 s4. | fis8 a d, c' bes g fis s | s2 b,8 c d b |
  s4. ees8 d2~ | 8 g4 bes8 a d cis e | a, s2.. | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  <g a>8 r <fis a> r <g bes> r <e g> r | % 154a
  <fis c'>8 r <d f d'> r <g d'> r <c, ees> r |
  <d a'>8 r <fis a> r <g d'> r <bes d> r |
  \compressMMRests {
    R1*13
    R1*17 % 155
    R1*9
  }
  \ov <d, fis>8 <e g> <fis a> <g bes> <a c> <g bes> <fis a> <e d'> | % 156d
  <fis d'>8 r <d fis d'> r <g d'> r <ees g> r |
  d8 r <fis a> r <bes, g'> <ees g>(<c g'>) <d c'> |
  <ees bes'>8 <d b'>16 <c c'> <b f'>8 <g g'> <c g'> r <ees g> r | % 156e
  \vo a8 fis g d~ d a'~a \rh c \lh \ov |
  g,8 <g' bes> <f a> <ees g> \vo g2 |
  \ov <c, g'>8 <d f> <ees g> <c c'> <d a'> <e g> <fis a> <d fis> | % 156f
  \vo s8 e'4 d8 \ov <cis e> <d f> <e g> <c e> |
  \vo s4 a8 a s g~<d g> <d, d'> |
  \ov g4 r r2 |
}

pianoLHtwo = \relative {
  \global \vt
  s1*3
  \compressMMRests {
    R1*13
    R1*17 % 155
    R1*9
  }
  s1*3 | % 156d
  s1 | d8 c bes a g c d d, | s2 d'8 c b g |
  s1 | <g' bes>8 a bes g s2 | d'8 <a c> fis <d fis> g bes,16 c s4 | s1 |
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \alto
            \addlyrics \wordsAlto
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
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \alto
            \addlyrics \wordsAlto
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
