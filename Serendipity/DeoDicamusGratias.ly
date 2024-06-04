\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Deo Dicamus Gratias"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gottfried August Homilius, 1714-1785"
  arranger    = "Ed. Richard Proulx"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Moderato 4=75
  s1*25
  \set Score.tempoHideNote = ##t
  s2 \tempo 4=60
  s2
  s1
}

tempoMarkings = {
  s1*9
  \repeat volta 2 {
    s1*7 | s2 s-\markup\italic "(2nd time rit.)" | s1
  }
}

tempoMarkingsSingle = {
  s1*25
  s2 s-\markup\italic rit. | s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "3" } s1*3
  \textMark \markup { \box "4" } s1*3
  \textMark \markup { \box "5" } s1*3
  \repeat volta 2 {
    \textMark \markup { \box "6" } s1*3
    \textMark \markup { \box "7" } s1*3
    \textMark \markup { \box "8" } s1*3
  }
}

sopranoI = \relative {
  \global
  d''4^\mf 8 8 4 4
  e4. 8 2
  d4 8 8 4 g
  fis4. e8 d2 % 4
  r2 g4.^\f( fis8
  e2. fis8 e
  d2. e8 d % 5
  cis8 b16 a b8 cis d a d4~
  d4) cis d2 \breathe
  \repeat volta 2 {
    a8^\mf(c) b-. d-. c(b) a4 % 6
    d4.^\f 8 2 \breathe
    R1
    c4.^\f 8 2 % 7
    c2.^\mf(b8 a
    b8^cresc d g2 fis8 e
    fis8 \breathe d e fis g2~ % 8
    g4 fis8 e fis4.) g8
    g2.\fermata\omit\f r4
  }
  \bar "|."
}

wordsWomen = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
}

wordsWomenSingle = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
  
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
}

wordsWomenMidi = \lyricmode {
  "De" "o " di ca "mus " gra ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\ngra" ti "as. "
  
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\nGra" ti "as, " gra "ti " "as. "
  
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\nGra" ti "as, " gra "ti" "as. "
}

sopranoII = \relative {
  \global
  b'4^\mf 8 c b4 d
  c4. 8 2
  b4 8 c b(d) c(b)
  a4. 8 2 \breathe % 4
  r2 r4 d^\f( ~
  d4 c8 b c2~
  c4 b8 a b2 % 5
  a4 \breathe b8 cis d a d4~
  d4) cis d2 \breathe
  \repeat volta 2 {
    fis,8^\mf (a) g-. b-. a(g) fis4 % 6
    b4.^\f 8 2 \breathe
    R1
    a4.^\f 8 2 % 7
    a2.^\mf (g8 fis
    g4^\cresc \breathe d'4~8 c d e
    d1~ % 8
    d2 4.) 8
    d2.\fermata\omit\f r4
  }
  \bar "|."
}

alto = \relative {
  \global
  g'4^\mf 8 a g4 4
  g4. 8 2
  g4 8 a g4 4
  a4. 8 2 \breathe % 4
  r2 4.^\f (a8
  2 a4. g8
  fis2 \breathe g4. fis8 % 5
  e4 fis8 g a4. g8
  fis4) g fis2
  \repeat volta 2 {
    d4^\mf 8-. 8-. 4 4 % 6
    fis4.^\f 8 2 \breathe
    R1
    e4.^\f 8 2 % 7
    fis8^\mf (g a fis d fis g a
    g8^\cresc fis g b a2~
    a8 fis g a b g a b % 8
    a4. 8 a4.)b8
    b2.\fermata\omit\f r4
  }
  \bar "|."
}

tenorI = \relative {
  \global
  d'4^\mf 8 8 8(e) fis(g)
  e4. c8 2
  d4 8 8 4 4
  d4. 8 2 \breathe % 4
  r2 d^\f (
  e4 c~8 b a c
  d4 b~8 a g b % 5
  cis4 \breathe d8 e fis e d4~
  d4) e d2 \breathe
  \repeat volta 2 {
    R1 % 6
    d4.^\f 8 2 \breathe
    b8^\mf (d) c-. e-. d(c) b4
    c4.^\f 8 2 % 7
    d2^\mf (8 c d c
    d1^\cresc ~
    d8 \breathe  a d c b d c b16-. c-. % 8
    d8 a d4 \breathe d16 e d cis d8) d
    d2.\fermata\omit\f r4
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
}

wordsTenorSingle = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
}

wordsTenorMidi = \lyricmode {
  "De" "o " di ca "mus " gra ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\ngra" ti "as. "
  
  "\nGra" ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\ngra" ti "as. "
  
  "\nGra" ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\ngra" ti "as. "
}

tenorII = \relative {
  \global
  4^\mf 8 a b(d) c(b)
  c4. g8 2
  b4 8 a b4 d
  d4. a8 2 \breathe % 4
  r4 d8^\f (c b c d b
  c4. e8 a, b c a
  b4. \breathe d8 g, a b g % 5
  a2~8 g a b
  a4) 4 2 \breathe
  \repeat volta 2 {
    R1 % 6
    b4.^\f 8 2 \breathe
    gis8^\mf (b) a-. c-. b(a) g4
    a4.^\f 8 2 % 7
    a2^\mf (g8 a b c
    b8^\cresc c d4~8 \breathe e d cis
    d8 c b a g b a g % 8
    a2~4.) g8
    g2.\fermata\omit\f r4
  }
  \bar "|."
}

bass = \relative {
  \global
  g4^\mf 8 fis g(b) a(g)
  c4. c,8 2
  g'4 8 fis g(b) a(g)
  d'4. d,8 2 \breathe % 4
  d'8^\f (c b a g a b g
  c8 b a g fis g a fis
  b8 a g fis e fis g e % 5
  a4. \breathe g8 fis4. g8
  a4) a, d2 \breathe
  \repeat volta 2 {
    R1 % 6
    b'4.^\f b,8 2 \breathe
    e4^\mf 8 8 4 4
    a4.^\f a,8 2 % 7
    d8^\mf (e fis d g2~
    g8^\cresc a b g d'4.) d,8
    d1~ % 8
    d2 \breathe 4. 8
    g,2.\fermata\omit\f r4
  }
  \bar "|."
}

wordsBass = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
}

wordsBassSingle = \lyricmode {
  De -- o di -- ca -- mus gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
  
  Gra -- ti -- as,
  De -- o di -- ca -- mus gra -- ti -- as,
  Gra -- ti -- as, gra -- ti -- as.
}

wordsBassMidi = \lyricmode {
  "De" "o " di ca "mus " gra ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\ngra" ti "as. "
  
  "\nGra" ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\nGra" ti "as, " gra ti "as. "
  
  "\nGra" ti "as, "
  "\nDe" "o " di ca "mus " gra ti "as, "
  "\nGra" ti "as, " gra ti "as. "
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

sops = {\partCombine \sopranoI \sopranoII}
%tenors = { \partCombine \tenorI \tenorII}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkings
            \new Voice \sopranoI
            \addlyrics \wordsWomen
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkings
            \new Voice \sopranoII
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkings
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkings
            \new Voice \tenorI
            \addlyrics \wordsTenor
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkings
            \new Voice \tenorII
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkings
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
%            \new Voice {\vo \partCombine \sopranoI \sopranoII}
%            \new Voice {\vt \alto}
%            \new Voice {\vo \sopranoI}
%            \new Voice {\vth \sopranoII}
            \new Voice {\vo \sops}
            \new Voice {\vt \alto}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice {\vo \partCombine \tenorI \tenorII}
%            \new Voice {\vt \bass}
            \new Voice {\vo \tenorI}
            \new Voice {\vth \tenorII}
%            \new Voice {\vo \tenors}
            \new Voice {\vt \bass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat-noacc
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkings
            \new Voice \sopranoI
            \addlyrics \wordsWomen
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkings
            \new Voice \sopranoII
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkings
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkings
            \new Voice \tenorI
            \addlyrics \wordsTenor
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkings
            \new Voice \tenorII
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkings
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics \wordsWomenSingle
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto"} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics \wordsTenorSingle
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
%            \new Voice {\vo \partCombine \sopranoI \sopranoII}
%            \new Voice {\vt \alto}
%            \new Voice {\vo \sopranoI}
%            \new Voice {\vth \sopranoII}
            \new Voice {\vo \sops}
            \new Voice {\vt \alto}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice {\vo \partCombine \tenorI \tenorII}
%            \new Voice {\vt \bass}
            \new Voice {\vo \tenorI}
            \new Voice {\vth \tenorII}
%            \new Voice {\vo \tenors}
            \new Voice {\vt \bass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-noacc
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics \wordsWomenSingle
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics \wordsTenorSingle
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics \wordsWomenSingle
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics \wordsTenorSingle
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics \wordsWomenSingle
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-tenor1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics \wordsTenorSingle
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-tenor2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano 1"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "soprano1"} \tempoMarkingsSingle
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano2"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \tempoMarkingsSingle
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tempoMarkingsSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \tempoMarkingsSingle
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor2"
            shortInstrumentName = #"T2"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \tempoMarkingsSingle
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \tempoMarkingsSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-women
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsWomenMidi
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            midiInstrumentName = #"Tenor1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorI
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorI
            \addlyrics \wordsTenorMidi
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = "soprano1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % Single soprano 2 staff
          \new Staff = "soprano2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor 1 staff
          \new Staff = "tenor1" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorI
          >>
                                % Single tenor 2 staff
          \new Staff = "tenor2" \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
