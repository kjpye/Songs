\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "With Ducal Pomp and Ducal Pride"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=110
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "63a" } s1*6
  \textMark \markup { \box "63b" } s1*7
  \textMark \markup { \box "63c" } s1*7
  \textMark \markup { \box "63d" } s1*7
  \textMark \markup { \box "63e" } s1*8
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R1*9 | r2 r4 f | bes f bes f | bes f bes2~ | 1~ |
  bes2 r4 <ees g> | % C
  <d f>4 4 8 <c ees> <bes d> <d f> |
  <c ees>4 4 <bes d>8 8 r4 |
  c4 d8 d c4 d | c g a c | f4. 8 <e g>4. 8 | f2 r4 f, |
  bes4 f bes f | bes f bes2~ | 1~ | 2 r4 <ees g> | % D
  <d f>4 4 8 <c ees> <bes d> <d f> |
  <c ees>4 4 <bes d>8 <a c> <bes d> q |
  c4 bes g bes |
  c4 bes g c | 4. 8 f4. 8 | d2 r4 bes | c bes g bes | c bes g c | c4. 8 g4. 8 | bes2 r | R1 |
  \bar "|."
}

words = \lyricmode {
  With du -- cal pomp and du -- cal pride __
  "(An" -- nounce these co -- mers, O ye ket -- tle drum -- "mers!)"
  Comes Ba -- ra -- ta -- ria's high- born bride.
  "(Ye" sound -- ing cym -- bals "clang!)"
  She comes to claim the roy -- al hand __
  "(Pro" -- claim their Gra -- ces, O ye dou -- ble bas -- "ses!)"
  Of the King who rules this good -- ly land.
  "(Ye" bra -- zen bras -- ses "bang!)"
  She comes to claim the roy -- al hand __
  "(Ye" bra -- zen bras -- ses "bang!)"
}

wordsMidi = \lyricmode {
  "With " du "cal " "pomp " "and " du "cal " "pride " 
  "\n(An" "nounce " "these " co "mers, " "O " "ye " ket "tle " drum "mers!) "
  "\nComes " Ba ra ta "ria's " high "born " "bride. "
  "\n(Ye " sound "ing " cym "bals " "clang!) "
  "\nShe " "comes " "to " "claim " "the " roy "al " "hand " 
  "\n(Pro" "claim " "their " Gra "ces, " "O " "ye " dou "ble " bas "ses!) "
  "\nOf " "the " "King " "who " "rules " "this " good "ly " "land. "
  "\n(Ye " bra "zen " bras "ses " "bang!) "
  "\nShe " "comes " "to " "claim " "the " roy "al " "hand " 
  "\n(Ye " bra "zen " bras "ses " "bang!) "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R1*9 | r2 r4 f | bes f bes f | bes f bes2~ | 1~ |
  bes2 r4 bes | 4 4 8 8 bes, bes | bes'4 4 8 8 r4 | a4 aes8 8 a4 aes | a4 f a c | d4. 8 c4. 8 | f,2 r4 f | % C
  bes4 f bes f | bes f bes2~ | 1~ | 2 r4 bes | 4 4 8 8 bes, bes | bes'4 4 bes,8 8 bes' bes | c4 bes g bes |
  c4 bes g g | <f bes>4. 8 <f a>4. 8 | bes2 r4 bes | c bes g bes | c bes g <f a> | <f bes>4. 8 <f a>4. 8 | <bes, bes'>2 r | R1 |
  \bar "|."
}

pianoRH = \relative {
  \global
  f'4 8. 16 4 8. 16 |
  f4 \tuplet 3/2 {<f' a f'>8 8 8} 8 r r4 |
  f,4 8. 16 4 8. 16 |
  f4 \tuplet 3/2 {<f' a f'>8 8 8} 8 r r4 |
  r4 <f, f'> <a a'> <c c'> |
  <ees ees'>4 <f f'> <a a'> <c c'> |
  \repeat unfold 4 \tuplet 6/4 {<f, f'>8 c' c q c c} |
  q8 r \tuplet 3/2 {q q q} 8 r \tuplet 3/2 {q q q} |
  q8 r r4 r4 f,, |
  bes4 f bes f |
  bes4 f bes <g' ees' g> |
  <f d' f>4 4 8 <ees c' ees> <d bes' d> <f d' f> |
  <ees c' ees>4 4 <d bes' d> <g ees' g> | % C
  <f d' f>4 4 8 <ees c' ees> <d bes' d> <f d' f> |
  <ees c' ees>4 4 <d bes' d>8 <f, f'> <bes bes'> <d d'> |
  \repeat unfold 2 {<c f c'>4 <d f d'>8 8} |
  <c f c'>4 <a f'> <a f' a> <c f a c> |
  <f a f'>2 <g bes e g> |
  <f a f'>2. f,4 |
  bes4 f bes f | % D
  bes4 f bes <g' ees' g> |
  <f d' f>4 4 8 <ees c' ees> <d bes' d> <f d' f> |
  <ees c' ees>4 4 <d bes' d> <g ees' g> |
  <f d' f>4 4 8 <ees c' ees> <d bes' d> <f d' f> |
  <ees c' ees>4 4 <d bes' d>8 <f, f'> <bes bes'> <d d'> |
  <c c'>4 <bes bes'> <g g'> <bes bes'> |
  <c c'>4 <bes bes'> <g g'> <c c'> | % E
  q4. 8 <f f'>4. 8 |
  <d f d'>2 r4 <bes bes'> |
  <c c'>4 <bes bes'> <g g'> <bes bes'> |
  <c c'>4 <bes bes'> <g g'> <bes bes'> |
  <c c'>4. 8 <f f'>4. 8 |
  <bes, d bes'>2 bes,4. 8 |
  bes4 r r2 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative {
  \global
  R1 |
  r4 \tuplet 3/2 {<f a c ees>8 8 8} 8 r r4 |
  R1 |
  r4 \tuplet 3/2 {<f a c ees>8 8 8} 8 r r4 |
  r4 \tuplet 3/2 {q8 q q}
  \repeat unfold 3 \tuplet 6/4 {q q q q q q} |
  <f a c ees>1~ | % B
  q1 |
  q8 r \tuplet 3/2 {q q q} q r \tuplet 3/2 {q q q} |
  q8 r r4 r f |
  bes4 f bes f |
  bes f bes <bes,, bes'> |
  q8 r <bes' bes'> r q q q q |
  <bes d' bes>4 4 <bes bes'> q | % C
  <bes, bes'>4 <bes' bes'>4 8 8 8 8 |
  q4 4 4 4 |
  <a a'>4 <aes aes'>8 8 <a a'>4 <aes aes'>8 8 |
  <a a'>4 8 <g g'> <f f'>4 <e e'> |
  <d d'>2 <c c'> |
  <f f'>2. f'4 |
  bes4 f bes f | % D
  bes4 f bes <bes,, bes'> |
  q8 r <bes' bes'> r q q q q |
  <bes f' bes>4 4 <bes bes'>4 4 |
  <bes, bes'>8 r <bes' bes'> r q q q q |
  <bes f' bes>4 4 <bes bes'> q |
  <ees g bes c>2. 4 |
  q2. 4 | % E
  <f bes c f>4. 8 <f a c f>4. <f a c>8 |
  <bes, bes'>2 r4 <d f bes> |
  <ees g bes c>2. 4 |
  q2. 4 |
  <f bes c f>4. 8 <f a c f>4. <f a c>8 |
  <bes, bes'>2 <bes, bes'>4. 8 |
  q4 r r2 |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \words
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \words
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
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
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsMidi
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
