\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 18. Aire."
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
  \key fis \minor
  \time 6/8
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "108f" } s2.*6
  \textMark \markup { \box "108g" } s2.*6
  \textMark \markup { \box "109a" } s2.*31
  \textMark \markup { \box "110a" } s2.*37
  \textMark \markup { \box "111a" } s2.*30
  \textMark \markup { \box "112a" } s2.*16
  \textMark \markup { \box "112d" } s2.*5
  \textMark \markup { \box "112e" } s2.*6
  \textMark \markup { \box "112f" } s2.*7
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R2.*6
  \compressMMRests {
    R2.*6
    R2.*31 % 109
    R2.*37
    R2.*30
    R2.*16
  }
  cis'16(b d cis b a e'8) cis a | % 112d+
  a8 gis dis e d cis | dis8(fis a c4.~ |
  c8 b a gis b) d | cis(gis) a fis(d) e |
  a,4 r8 r4 r8 |
  <<{R2.} \new Voice {s2.^\markup{\with-color "red" \large\bold STAND}}>> |
  R2.*11 |
}

wordsBass = \lyricmode {
  san -- ctam ca -- tho -- li -- cam et a -- po -- sto -- li -- cam ecc -- le -- si -- am.
}

pianoRHone = \relative {
  \global
  <cis' e>4. <e a>4 <d gis b>8 |
  \vo <a' cis>8(<b d> <cis e>) <b d>(<a cis> b) |
  <a cis>8(<b d> <cis e>) <b d>(<a cis> b) |
  cis8(e) a d, cis16(b cis8) |
  \ov <gis b>4.^~\vo b8 cis dis |
  e8 gis,(a) fis(e) dis' |
  \compressMMRests {
    R2.*6
    R2.*31 % 109
    R2.*37
    R2.*30
    R2.*16
  }
  \ov a8(e' cis) a(e' e,) | fis(gis a) cis(b a) | % 112d+
  <c, dis a'>4 r8 <fis a c>4.^~ | \vo c'8(b a) gis(b <d e>)~ | <cis e>(d cis) b(a gis) |
  \ov <cis, a'>4 r8 <e a>4 <d gis b>8 | % 112e
  <e a cis>8(<b' d> <cis e>) <fis, b d>(<a cis> <gis b>) |
  <e a cis>8(<b' d> <cis e>) <fis, b d>(<a cis> <gis b>) |
  \vo cis8(e) a d,(cis16 b cis8) |
  b4. r4 r8 | r8 e(fis) gis(a) d, |
  cis8(e fis) gis(a) r | r4 a,8 d4.~ | 4 gis,8 cis4 e,8 | % 112f
  fis8(g a) cis\trill(b a) | a(e' cis) a(e' cis) |
  \ov <fis, b>8(<gis d'> <a cis>) \vo cis\trill(b a) |
  \ov <cis, a'>4. r4 r8 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s2. | e'4 8 fis4 gis8 | e4 8 fis4 gis8 | a8 cis \lh e, \rh gis4 a8 |
  \once\hideNotes \vo gis4._~ \vt 4 <gis b>8 | <gis cis>8 b,(cis) dis(e) dis' |
  \compressMMRests {
    R2.*6
    R2.*31 % 109
    R2.*37
    R2.*30
    R2.*16
  }
  s2.*3 | dis,8 e fis e4 gis8 | a b a fis4 e16(d) | % 112d+
  s2.*3 | a'8(cis e) gis,4 a8 | gis(a fis) e(fis gis) | % 112e
  a8 \lh cis,(d) b(a) \rh gis' |
  a8 \lh cis,(d) b(a) \rh g' | fis4.~4 b8 | % 112f
  e,4.~4 8~ | 8 d cis e d cis~ | 8 \lh a(cis) \rh e a e |
  s4. e8(gis a) | s2. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  a16(gis a8) e cis4 b8 | a4 a'8 d,4 e8 | a,4 a'8 d,4 e8 |
  a,8 a' cis <b e>4 <a e'>8 | e'16(dis e8) b e,4 dis8 | cis4 r8 r4 r8 |
  \compressMMRests {
    R2.*6
    R2.*31 % 109
    R2.*37
    R2.*30
    R2.*16
  }
  <fis a cis>4 r8 <cis e a>4 r8 | <d a'>4 r8 <e gis d'>4 r8 | % 112d+
  fis8(a c) dis,(fis a) | b,(cis dis) e(gis e) | a(e fis) d(b e) |
  a16(gis a8) e cis4 b8 | a4 a'8 d,4 e8 | a,4 a'8 d,4 e8 | % 112e
  a,4 cis8 b4 a8 | e'4 fis8 gis(a b) | \vt cis,4 r8 r4 r8 |
  fis4. r4 e8 | \ov d8 d'(cis) b(gis) a | gis(fis e) a(b cis) | % 112f
  <d, a' cis>4 r8 <e a cis>4 r8 | \vt <fis a>4 r8 \ov <cis e a>4 r8 |
  <d a'>4 r8 <e d'>4 r8 | a,4. r4 r8 |
}

pianoLHtwo = \relative {
  \global
  s2.*6
  \compressMMRests {
    R2.*6
    R2.*31 % 109
    R2.*37
    R2.*30
    R2.*16
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
