\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 9. Arie."
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
  \time 6/8
  \partial 8.
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "57a" } s8. s2.*26
  \textMark \markup { \box "58a" }     s2.*25
  \textMark \markup { \box "59a" }     s2.*24
  \textMark \markup { \box "60a" }     s2.*4
  \textMark \markup { \box "60b" }     s2.*3
  \textMark \markup { \box "60c" }     s2.*4
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  r8. R2.*4 |
  \compressMMRests {
    R2.*22
    R2.*25 % 58
    R2.*24
    R2.*4
  }
  cis''8(b16 ais gis fis) 4 cis'16(d32 e | % 60b
  d8 ais) b gis(e) fis~ | fis d'16(cis b ais) b4 r8 |
  R2.*4 |
}

wordsAlto = \lyricmode {
  Pa -- tris, mi -- se -- re -- re __ no -- bis!
}

pianoRHone = \relative {
  \global
  b'16(ais b) | \vo fis4.~8. cis'16(b cis) |
  fis,4.~8. ais16(cis e) |
  \ov <fis, b d>8(<e g cis>) <fis b>(<e g b>) <e a>(<cis e g>) |
  <d fis>8-.\trill <cis e>-. r r r16 a'16(g a) |
  \compressMMRests {
    R2.*22
    R2.*25 % 58
    R2.*24
    R2.*4
  }
  \ov <cis g'>8 cis4~8 b16(ais gis fis) | % 60b
  <d fis>8(<e ais e'>) <fis b d> <g cis>16(e' g ais, b d) |
  <d, fis>4 <cis e>8 <b d> r16 \vo a'16(g fis) |
  e8 <g b e>(<e g cis>) \ov <e ais>(cis'16) g(fis e) | % 60c
  \ov fis16(gis ais b cis d) e(g fis e d cis) |
  \vo d16(cis) e(d cis b) cis(b) d(cis b ais) |
  \ov <d, b'>4.~q\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s8. | r4 b8-. ais-. b-. r | r4 cis8-. <ais e'>-. <b d>-. r | s2.*2 |
  \compressMMRests {
    s2.*22
    s2.*25 % 58
    s2.*24
    s2.*4
  }
  s2.*2 | s2 s8 dis | % 60b
  e4 s2 | s2. | r8 b'8 fis g d e | s2. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  r16 r8 | r4 <d fis>8-. <cis e>-. <b d>-. r |
  r4 <ais fis'>8-. <fis cis'>-. <gis b>-. <ais fis'>-. |
  <b b'>8(e) d cis4 a8 | <d a'>8-. <a a'>-. r <gis' b d>(<a cis>) r |
  \compressMMRests {
    R2.*22
    R2.*25 % 58
    R2.*24
    R2.*4
  }
  <ais cis e>8 r r r \vo e'4 | % 60b
  \ov b,8(cis) d <e b'>(<cis ais'>) <d fis> |
  b8 fis' fis, s4 \vo b'8 |
  b8 s8 s2 | % 60c
  \ov <ais, cis fis>8-. <cis e ais>-. r <fis, ais cis e>-. <ais cis e fis>-. r |
  <b fis'>8 <g' b> <d b'>~ <e b'> <fis b> <fis, fis'> | <b fis'>4.~q\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s8. s2.*4
  \compressMMRests {
    s2.*22
    s2.*25 % 58
    s2.*24
    s2.*4
  }
  s2 fis8 ais | s2. | s4. b,8 b' a | % 60b
  g4.~<g cis>8 <e g> <cis e g> | s2.*3 |
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
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
