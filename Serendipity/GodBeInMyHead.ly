\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God be in my head"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "H. Walford Davies."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{"Words from" \italic "Sarum Primer" "(1558)."}
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante" 2=100
  s1*3
  \tempo 2=66 s2. \tempo 2=100 s4 s1*4
  s2 \tempo 2=50 s2 \tempo 2=100
  s1*4 | s2 \tempo 2=50 s \tempo 2=100 | % 1b
  s1*5 | s2 \tempo 2=50 s \tempo 2=100 |
  s1*5 | s2 \tempo 2=50 s | % \tempo 4=100 | % 2a
  \tempo 2=66 s2. \tempo 2=100 s4 | s1*5 | s2 \tempo 2=50 s \tempo 2=100 | % 2a
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*9
  \textMark \markup { \box "1b" } s1*11
  \textMark \markup { \box "2a" } s1*6
  \textMark \markup { \box "2b" } s1*7
}

dynamicsVoice = {
  s1 | s | s | s\p | s | s | s | s | s |
  s1*11 |
  s1 | s2 s\> | s1\pp | s | s | s | % 2a
  s1 | s | s | s\< | s\! | s\> | s\! |
}

soprano = \relative {
  \global
  R1 | R | R \section |
  e'2.\fermata \( 4 | 2 cis' | b1\fermata \) \section |
  gis2 fis4 gis | b2 gis | fis e\fermata \section |
  e2. \( 4 | 2 cis' | b \) gis | b gis | fis e\fermata \section | % 1b
  e2. \( 4 | 2 cis' | b \) a | <gis cis> a | gis1 | fis\fermata \section |
  e2. \( 4 | 2 cis' | b \) a | <a d> a | g1 | fis\fermata \section | % 2a
  e2.\fermata 4 | fis2 <fis a>4(<e g>) | <d fis>1 | fis2. 4 | g2 fis | e1 | e\fermata | % 2b
  \bar "|."
}

words = \lyricmode {
  God be in my head,
  And in my un -- der -- stand -- ing;
  God be in mine eyes,
  And in my look -- ing;
  God be in my mouth,
  And in my speak -- ing;
  God be in my heart,
  And in my think -- ing;
  God be in mine end,
  And at my de -- part -- ing.
}

wordsMidi = \lyricmode {
  "God " "be " "in " "my " "head, "
  "\nAnd " "in " "my " un der stand "ing; "
  "\nGod " "be " "in " "mine " "eyes, "
  "\nAnd " "in " "my " look "ing; "
  "\nGod " "be " "in " "my " "mouth, "
  "\nAnd " "in " "my " speak "ing; "
  "\nGod " "be " "in " "my " "heart, "
  "\nAnd " "in " "my " think "ing; "
  "\nGod " "be " "in " "mine " "end, "
  "\nAnd " "at " "my " de part "ing. "
}

alto = \relative {
  \global
  R1 | R | R \section |
  cis'2.\fermata 4 | 2 dis | e1\fermata \section |
  2 fis4 e | dis2 cis | dis e\fermata \section |
  cis2. 4 | 2 dis | e e | dis cis | dis e\fermata \section | % 1b
  cis2. 4 2 e | e cis | cis d | b1 | a\fermata \section |
  cis2. 4 | cis2 e | gis e | d d | d(cis) | d1\fermata \section | % 2a
  cis2.\fermata 4 | 2 2 | d1 | 2. 4 | 2 2 | b1 | cis\fermata |
  \bar "|."
}

tenor = \relative {
  \global
  R1 | R | R \section |
  a2.\fermata 4 | 2 2 | gis1\fermata \section |
  b2 4 4 | 2 cis | a2 gis\fermata \section |
  a2. 4 | 2 2 | gis b | b cis | a gis\fermata \section | % 1b
  a2. 4 | 2 cis | d cis | cis d | b1 | a\fermata \section |
  a2. 4 | 2 2 | cis cis | d fis, | a1 a\fermata \section | % 2a
  a2.\fermata 4 | 2 2 | 1 | 2. 4 | b2 a | a(gis) | a1\fermata |
  \bar "|."
}

bass = \relative {
  \global
  R1 | R | R \section |
  <a, e'>2.\fermata 4 | 2 <a fis'> | <e' gis>1\fermata \section |
  e2 dis4 e | fis2 e | b e\fermata \section |
  <a, e'>2. 4 | 2 <a fis'> | <e' gis> e | gis e | b e\fermata \section | % 1b
  <a, e'>2. 4 | 2 <a fis'> | <e' gis> <e a> | <eis gis> fis | <cis fis>(eis) | <fis, fis'>1\fermata \section |
  <a e'>2. 4 | 2 2 | 2 g' | fis d | <a e'>1 | <d fis>\fermata \section | % 2a
  <a e'>2.\fermata 4 | <a fis'>2 <<{\voiceOne a'4(g)} \new Voice {\voiceTwo a,2}>> \oneVoice <d fis>1 | 2. 4 | <b g'>2 <d fis> | e1 | <a, e'>1\fermata |
  \bar "|."
}

pianoRH = \relative {
  \global
  e'2. e4 | 2 \( c' | b1 \) \section |
  <cis, e>2.\fermata \( 4 | 2 <dis cis'>2 | <e b'>1\fermata \) \section |
  <e gis>2 \( fis4 q | <dis b'>2 <cis gis'> | <dis fis>2 e\fermata \) \section |
  <cis e>2. \(4 | 2 <dis cis'> | <e b'> <e gis> | <dis b'> <cis gis'> | <dis fis> e\fermata \) \section | % 1b
  <cis e>2. \( 4 | 2 <cis e cis'>~<d e b'> <cis a'> | <cis gis' cis> <d a'> | <b gis'>1 | <a fis'>\fermata \) \section | % 2a
  <cis e>2. \( 4 | 2 <e cis'> | <cis g' b> \) <e a> \( | <d a' d> <d a> | <d g>(cis) | <d fis>1\fermata \) \section |
  <cis e>2.\fermata \( 4 | 2 <<{\voiceOne <fis a>4(<e g>)} \new Voice {\voiceTwo cis2}>> \oneVoice <d fis>1 \) | <d fis>2. \( 4 | <d g>2 <d fis> | <b e>1 | <cis e>\fermata \) |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp s4\< | s1\! | s\> | s\p | s | s | s-\markup\italic "sempre legato." | s | s |
  s1*11 |
  s1 | s2 s\> | s1\pp | s | s | s | % 2a
  s1\pp | s | s | s\< | s\! | s\> | s\! |
}

pianoLHone = \relative {
  \global \voiceOne
  R1 | R | R \section |
  <e a>2.\fermata \( 4 | 2 <fis a> | gis1\fermata \) \section |
  b2 \( 2~ | 2 cis | a gis\fermata \) \section |
  <e a>2. \( 4 | 2 <fis a> | gis b | b cis | a gis \) \section | % 1b
  <e a>2. \( 4 | 2 fis | gis a | gis fis | fis(eis) | fis1\fermata \) \section |
  <e a>2. \( 4 | 2 2 | e \) cis' \( | d fis, | <e a>1 <fis a>\fermata \) \section | % 2a
  <e a>2. \( 4 | <fis a>2 <<{\voiceOne a2} \new Voice {\voiceFour a4(g)}>> | <fis a>1 \) |
  <fis a>2. \( 4 | <g b>2 <fis a> | a2(gis) | <e a>1\fermata \) |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  R1 | R | R \section |
  a,2.\fermata (4 | 2 2 | e'1\fermata) \section |
  e2(dis4 e | gis2 e | b e\fermata) \section |
  a,2.(4  2 2 | e' e | gis e  b e\fermata) \section | % 1b
  a,2.(4 | 2 2 | e' e | eis fis | cis1 | fis,\fermata) \section |
  a2. 4 | 2 2 | 2\fermata g' | fis d | a1 | d\fermata | % 2a
  a2. 4 | 2 2 | d1 | 2. 4 | b2 d | e1 | a,\fermata |
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName =  "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName =  "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName =  "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName =  "Organ"
        }
        <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
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
