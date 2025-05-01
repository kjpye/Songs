\version "2.25.25"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bach Mass No III"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Gustav Rosler"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

\include "BachMassKyrie.ly"
\include "BachMassGloria.ly"
\include "BachMassIII.ly"

TempoTrack = {
  \TempoTrackKyrie
  \TempoTrackGloria
  \TempoTrackIII
}

RehearsalTrack = {
  \RehearsalTrackKyrie
  \RehearsalTrackGloria
  \RehearsalTrackIII
}

dynamicsSop = {
  \dynamicsSopKyrie
  \dynamicsSopGloria
  \dynamicsSopIII
}

soprano = {
  \sopranoKyrie
  \sopranoGloria
  \sopranoIII
}

wordsSop = {
  \wordsSopKyrie
  \wordsSopGloria
  \wordsSopIII
}

dynamicsAlto = {
  \dynamicsAltoKyrie
  \dynamicsAltoGloria
  \dynamicsAltoIII
}

alto = {
  \altoKyrie
  \altoGloria
  \altoIII
}

wordsAlto = {
  \wordsAltoKyrie
  \wordsAltoGloria
  \wordsAltoIII
}

dynamicsTenor = {
  \dynamicsTenorKyrie
  \dynamicsTenorGloria
  \dynamicsTenorIII
}

tenor = {
  \tenorKyrie
  \tenorGloria
  \tenorIII
}

wordsTenor = {
  \wordsTenorKyrie
  \wordsTenorGloria
  \wordsTenorIII
}

dynamicsBass = {
  \dynamicsBassKyrie
  \dynamicsBassGloria
  \dynamicsBassIII
}

bass = {
  \bassKyrie
  \bassGloria
  \bassIII
}

wordsBass = {
  \wordsBassKyrie
  \wordsBassGloria
  \wordsBassIII
}

pianoRHone = {
  \pianoRHoneKyrie
  \pianoRHoneGloria
  \pianoRHoneIII
}

pianoRHtwo = {
  \pianoRHtwoKyrie
  \pianoRHtwoGloria
  \pianoRHtwoIII
}

dynamicsPiano = {
  \dynamicsPianoKyrie
  \dynamicsPianoGloria
  \dynamicsPianoIII
}

pianoLHone = {
  \pianoLHoneKyrie
  \pianoLHoneGloria
  \pianoLHoneIII
}

pianoLHtwo = {
  \pianoLHtwoKyrie
  \pianoLHtwoGloria
  \pianoLHtwoIII
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
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
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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
            printPartCombineTexts = ##f
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
