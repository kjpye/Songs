\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Heidenröslein"
  subtitle    = "(Hedge Roses)"
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

global = {
  \key g \major
  \time 2/4
}

TempoTrack = {
  \tempo 4=66
  \set Score.tempoHideNote = ##t
  \repeat volta 3 {
    s2*10 | \tempo "rit." 4=60 s2*2 | \tempo "Tempo I" 4=66 s2*4 |
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \repeat volta 3 {
    \textMark \markup { \box "1a" } s2*4
    \textMark \markup { \box "1b" } s2*4
    \textMark \markup { \box "2a" } s2*4
    \textMark \markup { \box "2b" } s2*4
  }
}

sopverse = \relative {
  b'8 8 8 8 | d16(c) c(b) a4 | a8 8 b c | d4 g8 r |
  b,8 8 8 8 | d16(c) c(b) a4 | d8 8 e8. d16 | c16(d) e(fis) d4 |
  \tag #'dash    {d16(fis) \slurDashed e(d) \slurSolid cis(b) ais(b) |}
  \tag #'v1      {d16(fis)             e d             cis(b) ais(b) |}
  \tag #'(v2 v3) {d16(fis)             e(d)            cis(b) ais(b) |}
  g'8.(cis,16) d4\fermata | a8 8 b c | d e16(fis) g4\fermata | % 2a
  e8 g c, e | g,(b16 a) g4 | R2 | R2 |
}

soprano = { \global \repeat volta 3 \keepWithTag #'dash \sopverse }

sopranoSingle = {
  \global
  \keepWithTag #'v1 \sopverse
  \keepWithTag #'v2 \sopverse
  \keepWithTag #'v3 \sopverse
}

wordsChorus = \lyricmode {
  Lit -- tle wild rose, wild rose red,
  In the hedge -- row grow -- ing.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "[Chorus] Once" a boy a wild __ rose __ spied,
  In the hedge -- row grow -- ing;
  Fresh in all her youth -- full __ pride,
  When her beau -- ties he __ es -- pied,
  Joy \nom in his \yesm heart __ was __ glow -- ing.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "[Solo] Said" the boy I’ll ga -- ther __ you,
  wild rose in the hea -- ther!
  Said the rose then I’ll __ pierce you,
  That you may re -- mem -- ber -- me,
  Thus __ re -- proof __ be __ show -- ing.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  "[Tutti] Thought" -- less -- ly he pull’d the rose,
  In the hedge -- row grow -- ing;
  But her thorns their spears op -- pose,
  Vain -- ly he la -- ments his woes,
  pain __ his __ hand __ is glow -- ing.
}

wordsSingle = {
  \wordsOne   \wordsChorus
  \wordsTwo   \wordsChorus
  \wordsThree \wordsChorus
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "a " "boy " "a " "wild "  "rose "  "spied, "
  "\nIn " "the " hedge "row " grow "ing; "
  "\nFresh " "in " "all " "her " youth "full "  "pride, "
  "\nWhen " "her " beau "ties " "he "  es "pied, "
  "\nJoy " "in " "his " "heart "  "was "  glow "ing. "
  "\nLit" "tle " "wild " "rose, " "wild " "rose " "red, "
  "\nIn " "the " hedge "row " grow "ing.\n"

  \set stanza = "2."
  "\n[Solo] Said " "the " "boy " "I’ll " ga "ther "  "you, "
  "\nwild " "rose " "in " "the " hea "ther! "
  "\nSaid " "the " "rose " "then " "I’ll "  "pierce " "you, "
  "\nThat " "you " "may " re mem ber "me, "
  "\nThus "  re "proof "  "be "  show "ing. "
  "\nLit" "tle " "wild " "rose, " "wild " "rose " "red, "
  "\nIn " "the " hedge "row " grow "ing.\n"

  \set stanza = "3."
  "\n[Tutti] Thought" less "ly " "he " "pull’d " "the " "rose, "
  "\nIn " "the " hedge "row " grow "ing; "
  "\nBut " "her " "thorns " "their " "spears " op "pose, "
  "\nVain" "ly " "he " la "ments " "his " "woes, "
  "\npain "  "his "  "hand "  "is " glow "ing. "
  "\nLit" "tle " "wild " "rose, " "wild " "rose " "red, "
  "\nIn " "the " hedge "row " grow "ing. "
}

altoverse = \relative {
  g'8 8 8 8 | a a e4 | d8 d fis fis | g4 b8 r |
  g8 g g g | a a e4 | a8 a b b a g fis4 |
  \tag #'dash    {a8 \slurDashed 16(16) \slurSolid g8 g |}
  \tag #'v1      {a8             16 16             g8 g |}
  \tag #'(v2 v3) {a8             8                 g8 g |}
  e8.(g16) fis4\fermata | 8 8 8 8 | g g b4\fermata |
  c8 c g g | d(fis) g4 | R2 | R |
}

alto = { \global \repeat volta 3 \keepWithTag #'dash \altoverse }

altoSingle = {
  \global
  \keepWithTag #'v1 \altoverse
  \keepWithTag #'v2 \altoverse
  \keepWithTag #'v3 \altoverse
}

tenorverse = \relative {
  d'8 8 8 8 | e e c4 | 8 8 8 8 | b4 d8 r |
  d8 d d d e e cis4 | d8 fis e g | e cis d4 |
  \tag #'dash    {d8 \slurDashed 16(16) \slurSolid e8 e |}
  \tag #'v1      {d8             16 16             e8 e |}
  \tag #'(v2 v3) {d8             8                 e8 e |}
  cis8.(e16) d4\fermata | 8 8 8 8 | 8 8 4\fermata |
  g8 e c c | b(d16 c) b4 | R2 | R |
}

tenor = { \global \keepWithTag #'dash \repeat volta 3 \tenorverse }

tenorSingle = {
  \global
  \keepWithTag #'v1 \tenorverse
  \keepWithTag #'v2 \tenorverse
  \keepWithTag #'v3 \tenorverse
  \bar "|."
}

bassverse = \relative {
  g8 8 8 8 | 8 8 4 | fis8 fis d d | b4 g'8 r |
  g8 g g g | 8 8 4 | fis8 fis g g | a ais b4 |
  \tag #'dash    {fis8 \slurSolid 16(16) \slurSolid g8 g |}
  \tag #'v1      {fis8            16 16             g8 g |}
  \tag #'(v2 v3) {fis8            8                 g8 g |}
  a4 d,\fermata | d'8 d c c | b b g4\fermata |
  c,8 8 e c | d4 g | R2 | R |
}

bass = { \global \repeat volta 3 \keepWithTag #'dash \bassverse }

bassSingle = {
  \global
  \keepWithTag #'v1 \bassverse
  \keepWithTag #'v2 \bassverse
  \keepWithTag #'v3 \bassverse
  \bar "|."
}

pianoRH = \relative {
  \global
  \repeat volta 3 {
    r8 <d' g b> r q |
    r8 <e a c> r q |
    r <d a' c> r <d fis a> |
    r8 <d g d'> r <d g b> |
    r8 <d g b> r q | % 1b
    r8 <e a cis> r q |
    r8 <a d> r <b e> |
    r8 <g cis> r <fis d'> |
    r8 <a d> r <b e> | % 2a
    r8 <g cis> r <fis d'>\fermata |
    r8 <fis a> r <d fis a> |
    r8 <d g d'> r <d g b>\fermata |
    r8 <e g c> r <c g' c> | % 2b
    <g' b>8(<fis a>) g16-. b(c d) |
    e8-. \acciaccatura e g c,-. \acciaccatura c e |
    <<{\vo g,8 a16. b32 s4} \new Voice {\vt g8 fis(g4)}>> |
  }
}

pianoLH = \relative {
  \global
  \repeat volta 3 {
    g,8 r g r | g r g' r | fis r d r | b r g r |
    g8 r g r | g r g r | fis r g e | a r b r |
    fis'8 r g r | a r d, r\fermata | d r c r | b r g4\fermata |
    c8 r e r | % 2b
    <<{\vo d'8(c) b16-. g(a b)} \new Voice {\vt d,4(g)}>> \ov |
    c8 \acciaccatura c e a,-. \acciaccatura a c |
    <d, b'>8-. <d c'>(<g b>4) |
  }
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag #'dash \soprano
            \addlyrics {\wordsOne \wordsChorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \keepWithTag #'dash \alto
            \addlyrics {\wordsOne \wordsChorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag #'dash \tenor
            \addlyrics {\wordsOne \wordsChorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag #'dash \bass
            \addlyrics {\wordsOne \wordsChorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
    output-suffix = single
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Voice \tenorSingle
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
            \new Voice \bassSingle

          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
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
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \magnifyStaff #4/7
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \altoSingle
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
            \new Voice \tenorSingle
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
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
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
