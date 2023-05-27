\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title = "Lord for Thy Tender Mercy's Sake"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer = "attrib Farrant (c. 1680)"
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
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo Lento 4=120
  s1
  \set Score.tempoHideNote = ##t
  s4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\mf | s1*25 |
  \repeat volta 2 {
    s1*6 |
    s2 s\cresc | % bar 33
    s1*7
    \alternative {
      {s1\omit\ff | s | } {s1 |}
    }
  }
}

soprano = \relative c' {
  \global
  f1 | f2. g4 | a2 g | f2 bes | g1 |
  r2 g | a4 b c2 | c2 b | c1 | c2 bes |
  a1 | g2 f | g4(a) bes2 | a2 g | f2 a4 a |
  g2 f | g2 e | f1 | f2. g4 | a2 bes |
  a1 | a2. bes4 | c2 a | d1 | c1~ |
  c1
  \repeat volta 2 {
    r1 | r2 f, | c'2 c | bes2 a4 g |
    a2 a | f1~ | f2 f | bes2 bes | a2 g4 g |
    f2 g | e2 a | d,4(e) f2 | e2 f | g2 e |
  }
  \alternative {
    {
      f1 | r1 |
    }
    {
      f1^\fermata
    }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  Lord, for the ten -- der mer -- cy's sake lay not our sins to our charge,
  but for -- give that is past and give us grace to a -- mend our sin -- ful lives,
  to de -- clare from sin and in -- cline to vir -- tue,
  \repeat volta 2 {
    that we may walk with a per -- fect hert,
    that we may walk with a per -- fect heart be -- fore Thee now and e -- ver --
    \alternative {
      { more, } { more. }
    }
  }
}

wordsSopMidi = \lyricmode {
  "Lord, " "for " "the " ten "der " mer "cy's " "sake " "lay " "not " "our " "sins " "to " "our " "charge, "
  "\nbut " for "give " "that " "is " "past " "and " "give " "us " "grace " "to " a "mend " "our " sin "ful " "lives, "
  "\nto " de "clare " "from " "sin " "and " in "cline " "to " vir "tue, "
  \repeat volta 2 {
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "hert, "
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "heart " be "fore " "Thee " "now " "and " e ver
    \alternative {
      { "more,\n" } { "more. " }
    }
  }
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  c1
  d2. e4
  f2 e
  d2. f4
  e1
  r2 e
  f2 e
  g2 g4 f
  e1
  c2 d4(e)
  f1
  e2 d
  e2 f
  f2 d
  d2 f4 f
  e2 d
  d2 c4(bes)
  a1
  c2 c
  f2 f
  f1
  f2 f
  f2 f
  f1
  e1
  r1
  \repeat volta 2 {
    r2 c
    f2 f
    e2 d4 c
    d2  e
    f1
    r1
    r2 c^\markup{\italic cresc}
    d2 g
    c2 e4 e
    d2 d
    c2 c
    bes2 a4(bes)
    c2 c
    d2 c
  }
  \alternative {
    {
      a1
      r1
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  Lord, for the ten -- der mer -- cy's sake lay not our sins to our charge,
  but for -- give that is past and give us grace to a -- mend our sin -- ful lives,
  to de -- clare from sin and in -- cline to vir -- tue,
  \repeat volta 2 {
    that we may walk with a per -- fect hert,
    that we may walk with a per -- fect heart be -- fore Thee now and e -- ver --
    \alternative {
      { more, } { more. }
    }
  }
}

wordsAltoMidi = \lyricmode {
  "Lord, " "for " "the " ten "der " mer "cy's " "sake " "lay " "not " "our " "sins " "to " "our " "charge, "
  "\nbut " for "give " "that " "is " "past " "and " "give " "us " "grace " "to " a "mend " "our " sin "ful " "lives, "
  "\nto " de "clare " "from " "sin " "and " in "cline " "to " vir "tue, "
  \repeat volta 2 {
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "hert, "
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "heart " be "fore " "Thee " "now " "and " e ver
    \alternative {
      { "more,\n" } { "more. " }
    }
  }
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative c' {
  \global
  a1
  a2. c4
  c2 c
  a2 d
  c1
  r2 c
  c2 c
  d2 d4 d
  c1
  a2 bes
  c1
  c2 a
  c2 d
  c2 bes
  a2 c4 c
  c2 a
  bes2 g
  f1
  a2. bes4
  c2 d
  c1
  c2. bes4
  a2 a
  bes1
  g2 g
  a2 a
  \repeat volta 2 {
    g2 a4 c
    bes4(a) g(f)
    g2 a
    bes2 bes
    c2 a^\markup{\italic cresc}
    d2 d
    c2 bes4 a
    g2 g
    f2 c'4 c
    a2 bes
    g2 f
    f2 f
    g2 a
    g2 g
  }
  \alternative {
    {
      f2 f
      a2 a
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  Lord, for the ten -- der mer -- cy's sake lay not our sins to our charge,
  but for -- give that is past and give us grace to a -- mend our sin -- ful lives,
  to de -- clare from sin and in -- cline to vir -- tue,
  that we may
  \repeat volta 2 {
    walk with a per -- fect hert, a per -- fect heart,
    that we may walk with a per -- fect heart, with a per -- fect heart,  be -- fore Thee now and e -- ver --
    \alternative {
      { more. That we may } { more. }
    }
  }
}

wordsTenorMidi = \lyricmode {
  "Lord, " "for " "the " ten "der " mer "cy's " "sake " "lay " "not " "our " "sins " "to " "our " "charge, "
  "\nbut " for "give " "that " "is " "past " "and " "give " "us " "grace " "to " a "mend " "our " sin "ful " "lives, "
  "\nto " de "clare " "from " "sin " "and " in "cline " "to " vir "tue, "
  "\nthat " "we " "may "
  \repeat volta 2 {
    "\nwalk " "with " "a " per "fect " "hert, " "a " per "fect " "heart, "
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "heart, " "with " "a " per "fect " "heart, "  be "fore " "Thee " "now " "and " e ver
    \alternative {
      { "more.\n" "\nThat " "we " "may " } { "more. " }
    }
  }
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative c' {
  \global
  g1
  d2. c4
  f2 c
  d2 bes
  c1
  r2 c
  f2 bes
  g2 g4 g
  c,1
  a'2 g
  f1
  c2 d
  c2 bes
  f'2 g
  d2 a4 a
  c2 d
  bes2 c
  f,1
  f'2 f
  f2 d
  f1
  f2 f
  f2 f
  bes,1
  c2 c
  f2 f
  \repeat volta 2 {
    e2 d4 c
    d2 d
    c2 bes4 a
    g2 g
    f2 f'^\markup{\italic cresc}
    bes2 bes
    a2 g4 f
    f2 e
    f2 c4 c
    d2 g,
    c2 f
    bes,2 d
    c2 a
    bes2 c
  }
  \alternative {
    {
      f,2f
      f'2 f
    }
    {
      f,1^\fermata
    }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  Lord, for the ten -- der mer -- cy's sake lay not our sins to our charge,
  but for -- give that is past and give us grace to a -- mend our sin -- ful lives,
  to de -- clare from sin and in -- cline to vir -- tue,
  that we may
  \repeat volta 2 {
    walk with a per -- fect hert, with a pre -- fect heart,
    that we may walk with a per -- fect heart, with a per -- fect heart,
    be -- fore Thee now and e -- ver --
    \alternative {
      { more. That we may } { more. }
    }
  }
}

wordsBassMidi = \lyricmode {
  "Lord, " "for " "the " ten "der " mer "cy's " "sake " "lay " "not " "our " "sins " "to " "our " "charge, "
  "\nbut " for "give " "that " "is " "past " "and " "give " "us " "grace " "to " a "mend " "our " sin "ful " "lives, "
  "\nto " de "clare " "from " "sin " "and " in "cline " "to " vir "tue, "
  "\nthat " "we " "may "
  \repeat volta 2 {
    "\nwalk " "with " "a " per "fect " "hert, " "with " "a " pre "fect " "heart, "
    "\nthat " "we " "may " "walk " "with " "a " per "fect " "heart, " "with " "a " per "fect " "heart, "
    "\nbe" "fore " "Thee " "now " "and " e ver
    \alternative {
      { "more.\n" "That " "we " "may " } { "more. " }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
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

\book {
  \bookOutputSuffix "midi-sop"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-alto"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-tenor"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
  \bookOutputSuffix "midi-bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
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
