\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 5. Arie"
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
  \time 4/4
  \partial 8
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "37a" } s8 s1*12 |
  \textMark \markup { \box "38a" }    s1*14 |
  \textMark \markup { \box "39a" }    s1*12 |
  \textMark \markup { \box "40a" }    s1*14 |
  \textMark \markup { \box "41a" }    s1*4  |
  \textMark \markup { \box "41c" }    s1*2  |
  \textMark \markup { \box "41d" }    s1*2  |
  \textMark \markup { \box "41e" }    s1*2  |
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  r8 R1*2
  \compressMMRests {
    R1*10 |
    R1*14 | % 38
    R1*12 |
    R1*14 |
    R1*4 |
  }
  a'16\repeatTie(b8 cis d) e16 4. d16 cis | b(gis) e'8 a, b16(gis) a4 r |
  R1*4 |
  \bar "|."
}

wordsSopII = \lyricmode {
  a -- di -- ra -- mus, glo -- ri -- fi -- ca -- mus te.
}

pianoRHone = \relative {
  \global \vo
  e'8 | a8.(b32 cis) b16 cis b gis a8 gis16 fis e8 <e b' e> |
  \ov <e a d>16(cis') <e, b'>(a) <d, gis d'>8-. <e a cis>-. \appoggiatura cis'8 <e, gis b>4 r8 \vo b' |
  \compressMMRests { \ov
    R1*10 |
    R1*14 | % 38
    R1*12 |
    R1*14 |
    R1*4 |
  }
  \vo fis'32( [ e d16 ] ) g32([fis e16]) a32([gis fis16]) b32([a gis16]) \ov <e cis'>32([b' a16]) d32([cis b16]) e32([d cis16]) fis32([e d16]) | % 41c
  gis32([fis e16]) a([gis32 fis]) e16([d32 cis]) d16([cis32 b]) \vo a8 a,~16 g32(fis e[fis g16]) |
  fis16[d]
  ^\markup{{\with-color "red" \large\bold STAND} "violin solo"}
  d32\trill(cis d16) 32([gis e'16])~32(d cis b) a16[d,] d32\trill([cis d16]) 32([b' fis'16])~16 e32(d) | % 41d
  cis32([b a16]) d32(cis b16) a8([gis16.\trill) a32] 16[dis32(e] fis16)[32(gis] a16) 32(b c8) |
  c32(b a gis \ov a cis dis,16)~32 e(fis e dis c b a) gis(e' d cis d gis) b16~32 a(gis fis e d cis b) | % 41e
  \vo cis32([fis dis16])~16(e32 a,) cis8(b16.) a32 \ov <cis, e a>2\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  cis'16 d | e8 cis gis' e e d e s | s2.. <e gis>8 |
  \compressMMRests {
    s1*10 |
    s1*14 | % 38
    s1*12 |
    s1*14 |
    s1*4 |
  }
  a16 b8 cis d e16~\once\hideNotes 32 s s16 s4. | % 41c
  s2 s8 cis,16(d) d e16 e8 |
  d8 s s gis a s s gis | e a fis e dis s s e' | % 41d
  fis8 s2.. | a,8 a fis <d gis> s2 | % 41e
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  a,16 b | cis8 a e' d cis b cis gis | a cis b a e' fis gis e |
  \compressMMRests {
    R1*10 |
    R1*14 | % 38
    R1*12 |
    R1*14 |
    R1*4 |
    d8 e fis g \clef treble <a e'> <b e gis> <cis e a> <d a'>~ | % 41c
    \vt <d e>8[<cis e>16 <d fis> e8] \ov \clef bass <e, gis d'> s8 \vo g16(fis) fis(e) e(a) |
    a8 r gis r a r <b, e> r | % 41d
    \ov a8 <fis' a d> <d b' d> <e b'> <fis a> \clef treble c''[dis,] \clef bass <e, a> |
    \ov <dis a'>8 fis'[a,] <b, fis' b> <e a'> \clef treble b''[d,] \clef bass <gis, b e> | % 41e
    e'8 <cis, e a> <d a'> e a,2\fermata |
  }
}

pianoLHtwo = \relative {
  \global \vt
  s8 s1*2
  \compressMMRests {
    s1*10 |
    s1*14 | % 38
    s1*12 |
    s1*14 |
    s1*4 |
  }
  s1 | \vo b'8 cis <a cis> \vt s <a, cis> a, b cis | % 41c
  d8 b e cis fis fis, gis e | s1 |
  s1*2 |
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
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
%        \RemoveAllEmptyStaves
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
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
%        \RemoveAllEmptyStaves
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
