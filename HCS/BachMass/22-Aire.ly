\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 22. Arie."
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
  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "150e" } s4 s2.*3
  \textMark \markup { \box "150f" }    s2.*6
  \textMark \markup { \box "151a" }    s2.*16
  \textMark \markup { \box "152a" }    s2.*15
  \textMark \markup { \box "153a" }    s2.*6
  \textMark \markup { \box "153c" }    s2.*3
  \textMark \markup { \box "153d" }    s2.*3
  \textMark \markup { \box "153e" }    s2.*2
  \textMark \markup { \box "153f" }    s2.*3
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r4 | R2.*3 |
  \compressMMRests {
    R2.*6
    R2.*16 % 151
    R2.*15
    R2.*6
  }
  d'16(b ais b e, d') cis b fis(b) cis(ais) | b4 r r | R2.*9 |
  \bar "|."
}

wordsTenor = \lyricmode {
  no -- mi -- ne Do -- mi -- ni.
}

pianoRHone = \relative {
  \global
  b'16(fis' b) d-. | cis8 <fis,, e'>4 <fis d'>8 \vo cis'8.(d32 e) |
  \ov <fis, d'>16 b fis b \tuplet 3/2 8 {d(cis b) e(d cis)} d(fis b) d-. |
  cis8 eis,~16 gis(fis) eis(fis) cis(d) b |
  \compressMMRests {
    R2.*6
    R2.*16 % 151
    R2.*15
    R2.*6
  }
  \vo fis8\repeatTie b4 cis8 d cis | % 153c
  \ov <d, b'>4 r b'16(fis' b) d-. |
  cis8 <fis,, e'>4 <fis d'>8 \vo cis'8.(d32 e) |
  \tuplet 3/2 8 {d16([cis b]) \ov fis(b cis) d([cis b]) cis(d e) fis([e d]) e(fis g)} | % 153d
  \tuplet 3/2 8 {cis,16([b a]) fis(a b) cis([b a]) b(cis d) e([d cis]) d(e fis)} |
  \tuplet 3/2 8 {b,16([a g]) d(g a) b([a g]) a(b cis) d([cis b]) cis(dis e)} |
  \tuplet 3/2 8 {fis16([e dis]) e(fis g) a([g fis]) g(a b) c([b a]) g(a fis)} | % 153e
  g16 e \appoggiatura d16 cis8~\tuplet 3/2 8 {cis16([d e] fis gis ais) b([cis d])} e g, |
  fis16 cis \appoggiatura b16 ais8~ \tuplet 3/2 8 {16[cis(e] g fis e) fis([ais cis]) e(d cis)} | % 153f
  d8[~32 cis(b ais)] b(a g fis) g16[e] d b' a, ais' | b,2.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s4 | s2 g'8 fis | s2.*2 |
  \compressMMRests {
    R2.*6
    R2.*16 % 151
    R2.*15
    R2.*6
  }
  d8 s s2 | s2.*2 | % 153c
  s2.*2 |
  s2.*2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \vo
  d'8 fis | g cis,16 b cis8 b e ais, |
  \vt b8 d <fis, b> <ais cis> <b, b'> b' | \vo s8 cis~4 r8 fis |
  \compressMMRests {
    R2.*6
    R2.*16 % 151
    R2.*15
    R2.*6
  }
  \ov b,,8 d g e fis fis, | r b[d fis] \vo d' fis | g cis,16 b cis8 b e ais, | % 153c
  \ov <b, b'>8 <b' d>4 \vo cis8 \tuplet 3/2 {d16(e fis)} b,8 | % 153d
  \ov <a, e' a>8 \vo cis'4 b8 \tuplet 3/2 {cis16(d e)} a,8 |
  \ov <g, d' g>8 \vo b'4 a8 \tuplet 3/2 {b16(cis d)} cis8 |
  \ov <dis, fis b>8 r r4 r8 <b dis b'> | % 153e
  <e b'>8 <g cis e>16 <fis b d> s4 \vo b16 ais b8 |
  s8 cis~ \ov <fis, cis'> [ <e ais> <d fis> <cis e ais> ] |
  <b fis' b>8 <cis e> <d fis> <e b'> <fis b> <fis, e'> | % 153f
  <b d>2.\fermata |
}

pianoLHtwo = \relative {
  \global
  b4~ | 8 ais16 gis ais8 r r fis | s2 s8 \once\hideNotes b8~ | 16 d cis b ais4 r8 b |
  \compressMMRests {
    R2.*6
    R2.*16 % 151
    R2.*15
    R2.*6
  }
  s2. | s2 b4_~ | 8 ais16 gis ais8 r r fis | % 153c
  s4. a4 g8 | s8 a4 g fis8 | s8 g4 fis <e g>8 |
  s2. | <<{\vf s4 <e g ais cis>8 <d fis b> <cis e> b} \new Voice {\vt s2 s8 g'16 e}>> |
  <ais, fis' cis'>8 fis'16 g s2 | s2.*2 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
