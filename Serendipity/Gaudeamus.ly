\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gaudeamus"
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
  \key ees \major
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
  \repeat volta 2 {
    \textMark \markup { \box "53a" } s2.*4
    \textMark \markup { \box "53b" } s2.*4
    \textMark \markup { \box "53c" } s2.*4
    \textMark \markup { \box "53d" } s2.*6
  }
}

rq = { \oneVoice r4 \voiceOne }

soprano = \relative {
  \global \voiceOne
  \repeat volta 2 {
    ees'8. bes16 4 ees | c8. 16 4 \rq | d8. ees16 f4 d | ees8(g) ees4 \rq |
    ees8. bes16 4 ees | c8. 16 4 \rq | d8. ees16 f4 d | ees8(g) ees4 \rq |
    d8. ees16 f4 4 | g8 ees f4 f | d8. ees16 f4 f | g8 ees f4 f |
    ees8. d16 c4 aes'8(f) | ees2(f4) | g2. | ees8. d16 c4 aes'8(f) | ees2(d4) | ees2. |
  }
}

alto = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    bes8. 16 4 4 | c8. 16 4 s | bes8. 16 4 4 | 4 4 s |
    bes8. 16 4 4 | c8. 16 4 s | bes8. 16 4 4 | 4 4 s |
    bes8. c16 d4 d | ees8 8 d4 d | bes8. c16 d4 d | ees8 8 d4 d |
    bes8. 16 aes4 c | bes2(d4) | ees2. | bes8. 16 aes4 c | bes2(aes4) | g2. |
  }
}

tenor = \relative {
  \global \voiceOne
  \repeat volta 2 {
    g8. 16 4 4 | aes8. 16 4 \rq | f8. g16 aes4 f | g8(bes) g4 \rq |
    g8. 16 4 4 | aes8. 16 4 \rq | f8. g16 aes4 f | g8(bes) g4 \rq |
    bes8. 16 4 4 | 8 8 4 4 | f8. 16 bes4 4 | 8 8 4 4 |
    ees,8. 16 4 aes | g2(bes4) | 2. | ees,8. 16 4 aes | g2(f4) | ees2. |
  }
}

bass = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    ees8. 16 4 4 |aes,8. 16 4 s | bes8. 16 4 4 | ees4 4 s |
    ees8. 16 4 4 |aes,8. 16 4 s | bes8. 16 4 4 | ees4 4 s |
    bes8. 16 4 4 | ees8 g bes4 bes, | 8. 16 4 4 | ees8 g bes4 bes, |
    g8. 16 aes4 f8(aes) | bes2. | ees | g,8. 16 aes4 f8(aes) | bes2. | ees, |
  }
}

words = \lyricmode {
  Gau -- de -- a -- mus ig -- i -- tur,
  Ju -- ven -- es dum su -- mus.
  Gau -- de -- a -- mus ig -- i -- tur,
  Ju -- ven -- es dum su -- mus.
  Post ju -- cun -- da, ju -- ven -- ta -- tem,
  Post mol -- es -- tam sen -- ec -- tu -- tem,
  Nos ha -- be -- bit __ hu -- mus,
  Nos ha -- be -- bit __ hu -- mus.
}

wordsMidi = \lyricmode {
  \repeat volta 2 {
    "Gau" de a "mus " ig i "tur, "
    "\nJu" ven "es " "dum " su "mus. "
    "\nGau" de a "mus " ig i "tur, "
    "\nJu" ven "es " "dum " su "mus. "
    "\nPost " ju cun "da, " ju ven ta "tem, "
    "\nPost " mol es "tam " sen ec tu "tem, "
    "\nNos " ha be "bit "  hu "mus, "
    "\nNos " ha be "bit "  hu "mus.\n"
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\mf | s2.*16 | s2.-\markup {\italic "(repeat" \dynamic pp \italic ")"} |
  }
}

dynamicsSingle = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*17 |
  s2.\pp | s2.*17 |
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenors"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamics
%            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new Voice \tenor
            \new Voice \bass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "repeat-sep"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Tenor I staff
          \new Staff = tenorI \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamics
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Tenor II staff
          \new Staff = tenorII \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \alto
            \addlyrics \words
          >>
                                % Bass I staff
          \new Staff = bassI \with {
            instrumentName = #"BassI"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % bass II staff
          \new Staff = bassII \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenors"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSingle
%            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new Voice {\soprano \bar "|." }
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics {\words \words}
          >>
                                % Joint bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new Voice \tenor
            \new Voice \bass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "single-sep"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Tenor I staff
          \new Staff = tenorI \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice {\soprano \bar "|." }
            \addlyrics {\words \words}
          >>
                                % Tenor II staff
          \new Staff = tenorII \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice {\alto \bar "|." }
            \addlyrics {\words \words}
          >>
                                % Bass I staff
          \new Staff = bassI \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\words \words}
          >>
                                % Bass II staff
          \new Staff = bassII \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\words \words}
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenors"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSingle
%            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new Voice {\soprano \bar "|." }
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics {\words \words}
          >>
                                % Joint bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine #'(2 . 88) \tenor \bass
            \new Voice \tenor
            \new Voice \bass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sep"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Tenor I staff
          \new Staff = tenorI \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice {\soprano \bar "|." }
            \addlyrics {\words \words}
          >>
                                % Tenor II staff
          \new Staff = tenorII \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice {\alto \bar "|." }
            \addlyrics {\words \words}
          >>
                                % Bass I staff
          \new Staff = bassI \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \addlyrics {\words \words}
          >>
                                % Bass II staff
          \new Staff = bassII \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\words \words}
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Tenor I staff
          \new Staff = tenorI \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice {\soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor II staff
          \new Staff = tenorII \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice {\alto \bar "|." }
          >>
                                % Bass I staff
          \new Staff = bassI \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice \tenor
          >>
                                % Bass II staff
          \new Staff = bassII \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenorI} \dynamicsSingle
            \new Voice \bass
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
