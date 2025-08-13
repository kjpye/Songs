\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 14. Duett."
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
  \textMark \markup { \box "87a" } s1*3
  \textMark \markup { \box "87b" } s1*14
  \textMark \markup { \box "88a" } s1*11
  \textMark \markup { \box "89a" } s1*13
  \textMark \markup { \box "90a" } s1*13
  \textMark \markup { \box "91a" } s1*13
  \textMark \markup { \box "92a" } s1*6
  \textMark \markup { \box "92c" } s1*3
  \textMark \markup { \box "92d" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  d'8 fis fis a a c16 bes c4~8 bes16(a bes8) g8 2~ | 8 fis16 e fis4 g r |
  R1*4 |
  \bar "|."
}

wordsSop = \lyricmode {
  et qui prop -- ter nos -- tram sa -- lu -- tem de -- scen -- dir de cœ -- lis.
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R1*3
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  r4 d'8 fis fis a16 g a4~ | 8 g16(fis g8) ees cis(d) g, ees' | bes4(a8 g) 4 r |
  R1*4 |
}

wordsAlto = \lyricmode {
  prop -- ter nos -- tram sa -- lu -- tem de -- scen -- dir de cœ -- lis.
}

pianoRHone = \relative {
  \global \vo
  g'4 r8 g-. a-. g-. a(g) |
  a8 b c4~8 b16 c d b g b |
  a8 b16 cis d a fis a g4 g\laissezVibrer |
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  \ov d'8 c(a fis) d4 <a' d fis> | % 92c
  r4 \once\autoBeamOff <bes d g>8 \vo g8~4. ees'8 |
  bes4 \ov <fis a>8 g8 4 <b d f> |
  r8 \vo a'(g f) e fis g r | r b(a g) fis a c, c~ | % 92d
  c8 e(d c) <g b>8. a16 <fis a>8. <d g>16 | q4 r r2 |
}

pianoRHtwo = \relative {
  \global \vt
  b8 c d b e d e d | e d <c e> <d fis> <d g>4. \once\hideNotes \vo g8_( \vt |
  g8) fis16 e fis8 <<{d s} \new Voice {\once\hideNotes \vo fis_~ \vt fis}>> e16 fis g e b d |
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  s1 | s4. ees8 cis d g, g'~ | g fis16 e s2. | % 92c
  s8 b'16 a b8 d c b16 a b g e g | % 92d
  cis,8 cis'16 b cis8 e <a d> <d fis> <e, a> a |
  fis16 b a g a fis d fis \lh g,,8 \rh e' d c | b4 r r2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  g,8 a b g c b c b | c b a d s g b \rh e | \lh r d b s r b e, g |
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  \ov r2 r8 a(fis d) | bes d r g, a bes16(a bes8) c | % 92c
  d8 c d d, g g'16 fis g d b d |
  \vo r8 d'16 c d b g b g4 s | % 92d
  r8 e'16 d e cis a cis \ov d,8 c'16 b c a fis a |
  \ov <d, a'>8 fis' d <d, a'> \vt e c d d, | \ov g4 r r2 |
}

pianoLHtwo = \relative {
  \global \vt
  s1 | s2 g,8 g' r e | cis d r b e g r e |
  \compressMMRests {
    R1*14
    R1*11 % 88
    R1*13
    R1*13
    R1*13 % 91
    R1*6
  }
  s1*3 | % 92c
  g,4 r8 g' c,4 cis8 e | a,4 r8 a' s2 | s1*2 |
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
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
