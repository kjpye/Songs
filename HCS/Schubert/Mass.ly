\version "2.25.25"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
                                % centered at top
                                %  dedication  = "dedication"
  title       = "Mass No. 2"
  subtitle    = "in G Major"
                                %  subsubtitle = "subsubtitle"
                                %  instrument  = "instrument"
  
                                % arrangement of following lines:
                                %
                                %  poet    composer
                                %  meter   arranger
                                %  piece       opus

  composer    = "Franz Schubert"
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

\include "Mass-Kyrie.ly"
\include "Mass-Gloria.ly"
\include "Mass-Credo.ly"
\include "Mass-Sanctus.ly"
\include "Mass-Benedictus.ly"
\include "Mass-AgnusDei.ly"

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \TempoTrackKyrie
  \TempoTrackGloria
  \TempoTrackCredo
  \TempoTrackSanctus
  \TempoTrackBenedictus
  \TempoTrackAgnusDei
}

RehearsalTrack = {
  \RehearsalTrackKyrie
  \set Score.currentBarNumber = #1
  \RehearsalTrackGloria
  \set Score.currentBarNumber = #1
  \RehearsalTrackCredo
  \RehearsalTrackSanctus
  \RehearsalTrackBenedictus
  \RehearsalTrackAgnusDei
}

dynamicsSopSolo = {
  \dynamicsSopSoloKyrie
  \dynamicsSopSoloGloria
  \dynamicsSopSoloCredo
  \dynamicsSopSoloSanctus
  \dynamicsSopSoloBenedictus
  \dynamicsSopSoloAgnusDei
}

sopranoSolo = {
  \sopranoSoloKyrie
  \sopranoSoloGloria
  \sopranoSoloCredo
  \sopranoSoloSanctus
  \sopranoSoloBenedictus
  \sopranoSoloAgnusDei
}

wordsSopSolo = {
  \wordsSopSoloKyrie
  \wordsSopSoloGloria
  \wordsSopSoloCredo
  \wordsSopSoloSanctus
  \wordsSopSoloBenedictus
  \wordsSopSoloAgnusDei
}

wordsSopSoloMidi = {
  \wordsSopSoloKyrieMidi
  \wordsSopSoloGloriaMidi
  \wordsSopSoloCredoMidi
  \wordsSopSoloSanctusMidi
  \wordsSopSoloBenedictusMidi
  \wordsSopSoloAgnusDeiMidi
}

dynamicsAltoSolo = {
  \dynamicsAltoSoloKyrie
  \dynamicsAltoSoloGloria
  \dynamicsAltoSoloCredo
  \dynamicsAltoSoloSanctus
  \dynamicsAltoSoloBenedictus
  \dynamicsAltoSoloAgnusDei
}

altoSolo = {
  \altoSoloKyrie
  \altoSoloGloria
  \altoSoloCredo
  \altoSoloSanctus
  \altoSoloBenedictus
  \altoSoloAgnusDei
}

wordsAltoSolo = {
  \wordsAltoSoloKyrie
  \wordsAltoSoloGloria
  \wordsAltoSoloCredo
  \wordsAltoSoloSanctus
  \wordsAltoSoloBenedictus
  \wordsAltoSoloAgnusDei
}

wordsAltoSoloMidi = {
  \wordsAltoSoloKyrieMidi
  \wordsAltoSoloGloriaMidi
  \wordsAltoSoloCredoMidi
  \wordsAltoSoloSanctusMidi
  \wordsAltoSoloBenedictusMidi
  \wordsAltoSoloAgnusDeiMidi
}

dynamicsTenorSolo = {
  \dynamicsTenorSoloKyrie
  \dynamicsTenorSoloGloria
  \dynamicsTenorSoloCredo
  \dynamicsTenorSoloSanctus
  \dynamicsTenorSoloBenedictus
  \dynamicsTenorSoloAgnusDei
}

tenorSolo = {
  \tenorSoloKyrie
  \tenorSoloGloria
  \tenorSoloCredo
  \tenorSoloSanctus
  \tenorSoloBenedictus
  \tenorSoloAgnusDei
}

wordsTenorSolo = {
  \wordsTenorSoloKyrie
  \wordsTenorSoloGloria
  \wordsTenorSoloCredoMidi
  \wordsTenorSoloSanctus
  \wordsTenorSoloBenedictus
  \wordsTenorSoloAgnusDei
}

wordsTenorSoloMidi = {
  \wordsTenorSoloKyrieMidi
  \wordsTenorSoloGloriaMidi
  \wordsTenorSoloCredo
  \wordsTenorSoloSanctusMidi
  \wordsTenorSoloBenedictusMidi
  \wordsTenorSoloAgnusDeiMidi
}

dynamicsBassSolo = {
  \dynamicsBassSoloKyrie
  \dynamicsBassSoloGloria
  \dynamicsBassSoloCredo
  \dynamicsBassSoloSanctus
  \dynamicsBassSoloBenedictus
  \dynamicsBassSoloAgnusDei
}

bassSolo = {
  \bassSoloKyrie
  \bassSoloGloria
  \bassSoloCredo
  \bassSoloSanctus
  \bassSoloBenedictus
  \bassSoloAgnusDei
}

wordsBassSolo = {
  \wordsBassSoloKyrie
  \wordsBassSoloGloria
  \wordsBassSoloCredo
  \wordsBassSoloSanctus
  \wordsBassSoloBenedictus
  \wordsBassSoloAgnusDei
}

wordsBassSoloMidi = {
  \wordsBassSoloKyrieMidi
  \wordsBassSoloGloriaMidi
  \wordsBassSoloCredoMidi
  \wordsBassSoloSanctusMidi
  \wordsBassSoloBenedictusMidi
  \wordsBassSoloAgnusDeiMidi
}

dynamicsSop = {
  \dynamicsSopKyrie
  \dynamicsSopGloria
  \dynamicsSopCredo
  \dynamicsSopSanctus
  \dynamicsSopBenedictus
  \dynamicsSopAgnusDei
}

soprano = {
  \sopranoKyrie
  \sopranoGloria
  \sopranoCredo
  \sopranoSanctus
  \sopranoBenedictus
  \sopranoAgnusDei
}

wordsSop = \lyricmode {
  \wordsSopKyrie
  \wordsSopGloria
  \wordsSopCredo
  \wordsSopSanctus
  \wordsSopBenedictus
  \wordsSopAgnusDei
}

wordsSopMidi = \lyricmode {
  \wordsSopKyrieMidi
  \wordsSopGloriaMidi
  \wordsSopCredoMidi
  \wordsSopSanctusMidi
  \wordsSopBenedictusMidi
  \wordsSopAgnusDeiMidi
}

dynamicsAlto = {
  \dynamicsAltoKyrie
  \dynamicsAltoGloria
  \dynamicsAltoCredo
  \dynamicsAltoSanctus
  \dynamicsAltoBenedictus
  \dynamicsAltoAgnusDei
}

alto = {
  \altoKyrie
  \altoGloria
  \altoCredo
  \altoSanctus
  \altoBenedictus
  \altoAgnusDei
}

wordsAlto = {
  \wordsAltoKyrie
  \wordsAltoGloria
  \wordsAltoCredo
  \wordsAltoSanctus
  \wordsAltoBenedictus
  \wordsAltoAgnusDei
}

wordsAltoMidi = {
  \wordsAltoKyrieMidi
  \wordsAltoGloriaMidi
  \wordsAltoCredoMidi
  \wordsAltoSanctusMidi
  \wordsAltoBenedictusMidi
  \wordsAltoAgnusDeiMidi
}

dynamicsTenor = {
  \dynamicsTenorKyrie
  \dynamicsTenorGloria
  \dynamicsTenorCredo
  \dynamicsTenorSanctus
  \dynamicsTenorBenedictus
  \dynamicsTenorAgnusDei
}

tenor = {
  \tenorKyrie
  \tenorGloria
  \tenorCredo
  \tenorSanctus
  \tenorBenedictus
  \tenorAgnusDei
}

wordsTenor = {
  \wordsTenorKyrie
  \wordsTenorGloria
  \wordsTenorCredo
  \wordsTenorSanctus
  \wordsTenorBenedictus
  \wordsTenorAgnusDei
}

wordsTenorMidi = {
  \wordsTenorKyrieMidi
  \wordsTenorGloriaMidi
  \wordsTenorCredoMidi
  \wordsTenorSanctusMidi
  \wordsTenorBenedictusMidi
  \wordsTenorAgnusDeiMidi
}

dynamicsBass = {
  \dynamicsBassKyrie
  \dynamicsBassGloria
  \dynamicsBassCredo
  \dynamicsBassSanctus
  \dynamicsBassBenedictus
  \dynamicsBassAgnusDei
}

bass = {
  \bassKyrie
  \bassGloria
  \bassCredo
  \bassSanctus
  \bassBenedictus
  \bassAgnusDei
}

wordsBass = \lyricmode {
  \wordsBassKyrie
  \wordsBassGloria
  \wordsBassCredo
  \wordsBassSanctus
  \wordsBassBenedictus
  \wordsBassAgnusDei
}

wordsBassMidi = \lyricmode {
  \wordsBassKyrieMidi
  \wordsBassGloriaMidi
  \wordsBassCredoMidi
  \wordsBassSanctusMidi
  \wordsBassBenedictusMidi
  \wordsBassAgnusDeiMidi
}

pianoRHone = {
  \pianoRHoneKyrie
  \pianoRHoneGloria
  \pianoRHoneCredo
  \pianoRHoneSanctus
  \pianoRHoneBenedictus
  \pianoRHoneAgnusDei
}

pianoRHtwo = {
  \pianoRHtwoKyrie
  \pianoRHtwoGloria
  \pianoRHtwoCredo
  \pianoRHtwoSanctus
  \pianoRHtwoBenedictus
  \pianoRHtwoAgnusDei
}

dynamicsPiano = {
  \dynamicsPianoKyrie
  \dynamicsPianoGloria
  \dynamicsPianoCredo
  \dynamicsPianoSanctus
  \dynamicsPianoBenedictus
  \dynamicsPianoAgnusDei
}

pianoLHone = {
  \pianoLHoneKyrie
  \pianoLHoneGloria
  \pianoLHoneCredo
  \pianoLHoneSanctus
  \pianoLHoneBenedictus
  \pianoLHoneAgnusDei
}

pianoLHtwo = {
  \pianoLHtwoKyrie
  \pianoLHtwoGloria
  \pianoLHtwoCredo
  \pianoLHtwoSanctus
  \pianoLHtwoBenedictus
  \pianoLHtwoAgnusDei
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics \wordsSopSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics \wordsAltoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics \wordsTenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics \wordsBassSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
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
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
        \consists Span_stem_engraver
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
    output-suffix = single-sop
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = single-alto
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = single-tenor
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
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
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = single-bass
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics \wordsSopSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics \wordsAltoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics \wordsTenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics \wordsBassSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
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
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
        \consists Span_stem_engraver
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
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
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \header { title = "Gloria" }
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
          \addlyrics {\tiny \wordsSopSolo}
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
          \new Voice \altoSolo
          \addlyrics {\tiny \wordsAltoSolo}
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
          \new Voice \tenorSolo
          \addlyrics {\tiny \wordsTenorSolo}
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
          \new Voice \bassSolo
          \addlyrics {\tiny \wordsBassSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
                                %        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    \header { title = "Gloria" }
                                %   \articulate
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          midiInstrument = flute
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          midiInstrument = clarinet
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          midiInstrument = oboe
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          midiInstrument = bassoon
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
        >>
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
            \new Voice \soprano
            \addlyrics \wordsSopMidi
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
          >>
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
            \new Voice \tenor
          >>
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
    \header { title = "Gloria" }
                                %   \articulate
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          midiInstrument = flute
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          midiInstrument = clarinet
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          midiInstrument = oboe
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          midiInstrument = bassoon
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
        >>
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
            \new Voice \soprano
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
            \addlyrics \wordsAltoMidi
          >>
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
            \new Voice \tenor
          >>
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    \header { title = "Gloria" }
                                %   \articulate
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          midiInstrument = flute
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          midiInstrument = clarinet
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          midiInstrument = oboe
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          midiInstrument = bassoon
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
        >>
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
            \new Voice \soprano
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
          >>
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
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
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
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
    \header { title = "Gloria" }
                                %   \articulate
    <<
      <<
        \new Staff = sopranosolo \with {
          instrumentName = #"Soprano Solo"
          shortInstrumentName = SS
          midiInstrument = flute
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoSolo
        >>
        \new Staff = altosolo \with {
          instrumentName = #"Alto Solo"
          shortInstrumentName = SA
          midiInstrument = clarinet
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
          \new Voice \altoSolo
        >>
        \new Staff = tenorsolo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = ST
          midiInstrument = oboe
          \accidentalStyle Score.modern
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
          \new Voice \tenorSolo
        >>
        \new Staff = basssolo \with {
          instrumentName = #"Bass Solo"
          shortInstrumentName = SB
          midiInstrument = bassoon
          \accidentalStyle Score.modern
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
          \new Voice \bassSolo
        >>
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
            \new Voice \soprano
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
          >>
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
            \new Voice \tenor
          >>
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
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
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
