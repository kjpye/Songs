\version "2.25.9"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weep O Mine Eyes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Bennet (1599)"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \numericTimeSignature
  \key c \major
  \time 4/4
  \tempo 4=90
}

RehearsalTrack = {
  \textMark \markup \box "34a" s1*3
  \textMark \markup \box "34b" s1*2 s2 s1
  \textMark \markup \box "34c" s1*4
  \textMark \markup \box "35a" s1*2 s2 s1
  \repeat volta 2 {
    \textMark \markup \box "35b" s1*4
    \textMark \markup \box "35c" s1*3
    \alternative {
      \volta 1 { s2 }
      \volta 2 { s1 }
    }
  }
}

soprano = \relative c'' {
  \global
  \override Score.TimeSignature.break-visibility = ##(#f #f #f)
  R1^\markup{\italic{Slow and expressive}} | R1 | r4 c2 b8 a |
  gis4 e'4.^- d8 c4 | b4 a4.^- a8 \> g4 | \time 2/4 g4 f \time 4/4 | e1 |
  e2 \! r2 | a2 c | b4 e2 d4 | e2 r4 e, |
  a2 g4 c~ | c4 b8(a) gis4 gis | \time 2/4 a4 a \time 4/4 | b2 e, | % 35a
  \repeat volta 2 {
    r4 c'2(b8 a) | b2^- r4 a~ | a4 g4.^- a8 f4 | e4 r r8 g a b |
    c8. b16 a8 a g g g4 | g4 g4. g8 f4 | e4 d e2 |
  }
  \alternative {
    {
      \time 2/4 e2 \time 4/4
    }
    { 
      e1^\fermata
    } 
  }
  \bar "|."
}

dynamicsSop = {
  s1 | s1 | s4 s2.^\p |
  s4 s2.^\mf | s2 s\> | \time 2/4 s2 \time 4/4 | s1 |
  s1 \! | s1^\mp | s1 | s2. s4^\mf |
  s1 | s1 | \time 2/4 s2 \time 4/4 | s1 \> | % 35a
  \repeat volta 2 {
    s4 \! s2^\f s4 \> | s2 \! s4 s^\mf | s1 | s2 s8 s4.^\mp\< |
    s1 \! | s4 s2.^\dim | s1 |
  }
  \alternative {
    {
      \time 2/4 s2\omit\pp \time 4/4
    }
    {
      s1^\pp
    }
  }
}

alto = \relative c' {
  \global
  r2 e~ | e4 d8 c b4. b8 | c8 d e2 e4 |
  e2 e4. a,8 | b4 e2 e4~ | e8 e d4 | d4 c b2 |
  cis4 e2 f4~ | f4 e2 a4~ | a4 gis a a, | c2 b4 e~ |
  e4 d e8. d16 c8 b | a2 d4 e | f4 e  d2 cis % 35a
  \repeat volta 2 {
    r4 a'2(gis8 fis) | gis2^- r4 f~ | f4 e4.^- f8 d4 | cis4 r r8 e f g |
    a8. g16 f8 e d c d4 | e4. e8 d4. c8 | b4 a b2 |
  }
  \alternative {
    {
      cis2
    }
    {
      cis1^\fermata
    }
  }
  \bar "|."
}

dynamicsAlto = {
  s2 s2^\p | s1 | s1 |
  s1 | s2. s4^\mf | s2 \> | s1 |
  s4 \! s2.^\p | s1 | s2. s4^\mf | s1 |
  s1 | s1 | s2 | s1 \> | % 35a
  \repeat volta 2 {
    s4 \! s2^\f s4 \> | s2 \! s4 s^\mf | s1 | s2 s8 s4.^\mp \< |
    s1 \! | s4. s8^\dim s2 | s1 |
  }
  \alternative {
    {
      s2\omit\pp
    }
    {
      s1^\pp
    }
  }
}

tenor = \relative c' {
  \global
  r4 c2 b8 a | gis4 a4. gis16(fis gis4) | a4 a2 gis8 a |
  b8. d16 c4 b e^-~ | e8 d c4 b c^-~ | c8 b a4 | gis4 a2 gis4 |
  a2 r4 a | c2 a4 a | e'2 a, | r2 e |
  f2 e4 e'~ | e4 d e b~ | b8 a a4 ~ | a4 gis a2 | % 35a
  \repeat volta 2 {
    c2 e--~ | e2 a, | c4.-- c8 a2 | a8 a c d e8. d16 c8 b |
    a8 a d c b c4 b8 | c4. c8 b4 a | gis4 a2 gis4 |
    \alternative {
      \volta 1 { a2 }
      \volta 2 { a1^\fermata }
    }
  }
  \bar "|."
}

dynamicsTenor = {
  s4 s2.^\p | s1 | s1 | s2. s4^\mf |
  s1 | s2 \> | s1 | s2. \! s4^\p |
  s1 | s1 | s2 s^\mf | s1 |
  s1 | s2 | s1 \> | % 35a
  \repeat volta 2 {
    s2^\f \! s2 \> | s2 \! s2^\mf | s1 | s8 s^\p \< s4 s2 \! |
    s1 | s4. s8^\dim d2 | s1 |
    \alternative {
      \volta 1 { s2\omit\pp }
      \volta 2 { s1^\pp }
    }
  }
}

bass= \relative c' {
  \global
  a2. g8 f | e2. e4 | a,2 e'4 e |
  e4. fis8 gis4 a^- | gis4 a e2 | c4 d | e1 |
  a,4. b8(cis4) d | a2 r | e'2 f | e4 a2 gis4 |
  a2 r4 a, | f'2 e4. e8 | d4 c | b2 a | % 35a
  \repeat volta 2 {
    a'2 e--~ | e2 f | c4.-- c8 d2 | a8 a a' b c8. b16 a8 g |
    f4 f g2 | c,4. c8 d4 d | e4 f e2 |
    \alternative {
      \volta 1 { a,2 }
      \volta 2 { a1^\fermata }
    }
  }
  \bar "|."
}

dynamicsBass = {
  s1^\p | s1 | s1 |
  s2. s4^\mf | s1 | s2 \> | s1 |
  s4. \! s8^\p s2 | s1 | s1^\mp | s1 |
  s2. s4^\mf | s1 | s2 | s1 \> | % 35a
  \repeat volta 2 {
    s2^\f \! s2 \> | s2 \! s2^\mf | s1 | s8 s^\p \< s4 s2 \> |
    s2 \< s2 \! | s4. s8^\dim s2 | s1 |
    \alternative {
      \volta 1 { s2\omit\pp }
      \volta 2 { s1^\pp }
    }
  }
}

wordsSop = \lyricmode {
  Weep O mine eyes, weep O mine eyes,
  weep O mine eyes, and cease not:
  A- las these your spring- tides,
  a- las these your __ spring- tides,
  me thinks in- crease not.
  \repeat volta 2 {
    O __ when, O __ when be- gin you
    To swell so high that I may drown me in you,
    that I may drown me in
    \alternative {
      \volta 1 { you? }
      \volta 2 { you? }
    }
  }
}

wordsSopMidi = \lyricmode {
  "Weep " "O " "mine " "eyes, " "weep " "O " "mine " "eyes, "
  "\nweep " "O " "mine " "eyes, " "and " "cease " "not: "
  "\nA" "las " "these " "your " spring "tides, "
  "\na" "las " "these " "your "  spring "tides, "
  "\nme " "thinks " in "crease " "not. "
  \repeat volta 2 {
    "\nO "  "when, " "O "  "when " be "gin " "you "
    "\nTo " "swell " "so " "high " "that " "I " "may " "drown " "me " "in " "you, "
    "\nthat " "I " "may " "drown " "me " "in "
    \alternative {
      \volta 1 { "you? " }
      \volta 2 { you? }
    }
  }
}

wordsAlto = \lyricmode {
  Weep O mine eyes,
  weep O mine eyes, and cease not,
  and cease not,
  weep __ O mine eyes and cease not:
  A- las __ these your __ spring- tides.
  a- las these your __ spring- tides me thinks in- crease not.
  me thinks in- crease not.
  \repeat volta 2 {
    O __ when, O __ when be- gin you
    To swell so high that I may drown me in you,
    that I may drown me in
    \alternative {
      \volta 1 { you? }
      \volta 2 { you? }
    }
  }
}

wordsAltoMidi = \lyricmode {
  "Weep " "O " "mine " "eyes, "
  "\nweep " "O " "mine " "eyes, " "and " "cease " "not, "
  "\nand " "cease " "not, "
  "\nweep "  "O " "mine " "eyes " "and " "cease " "not: "
  "\nA" "las "  "these " "your "  spring "tides. "
  "\na" "las " "these " "your "  spring "tides " "me " "thinks " in "crease " "not. "
  "\nme " "thinks " in "crease " "not. "
  \repeat volta 2 {
    "\nO "  "when, " "O "  "when " be "gin " "you "
    "\nTo " "swell " "so " "high " "that " "I " "may " "drown " "me " "in " "you, "
    "\nthat " "I " "may " "drown " "me " "in "
    \alternative {
      \volta 1 { "you? " }
      \volta 2 { you? }
    }
  }
}

wordsTenor = \lyricmode {
  Weep O mine eyes, and cease not,
  weep O mine eyes, and cease not,
  weep O mine eyes, weep O mine eyes, and cease not:
  A- las these your spring- tides,
  a- las these your __ spring- tides me- thinks in- crease not.
  \repeat volta 2 {
    O when, __
    O when be- gin you
    To swell so high that I may  drown
    that I may drown me in you,
    that I may drown me in
    \alternative {
      \volta 1 { you? }
      \volta 2 { you? }
    }
  }
}

wordsTenorMidi = \lyricmode {
  "Weep " "O " "mine " "eyes, " "and " "cease " "not, "
  "\nweep " "O " "mine " "eyes, " "and " "cease " "not, "
  "\nweep " "O " "mine " "eyes, " "weep " "O " "mine " "eyes, " "and " "cease " "not: "
  "\nA" "las " "these " "your " spring "tides, "
  "\na" "las " "these " "your "  spring "tides " me "thinks " in "crease " "not. "
  \repeat volta 2 {
    "\nO " "when, " 
    "\nO " "when " be "gin " "you "
    "\nTo " "swell " "so " "high " "that " "I " "may "  "drown "
    "\nthat " "I " "may " "drown " "me " "in " "you, "
    "\nthat " "I " "may " "drown " "me " "in "
    \alternative {
      \volta 1 { "you? " }
      \volta 2 { you? }
    }
  }
}

wordsBass = \lyricmode {
  Weep O mine eyes, and cease not,
  weep O mine eyes, weep O mine eyes,
  weep and cease not, and cease not:
  A- las these your spring- tides
  in- crease not, me thinks in- crease not.
  \repeat volta 2 {
    O when, __
    O when be- gin you
    To swell so high that I may drown me in you,
    that I may drown me in
    \alternative {
      \volta 1 { you? }
      \volta 2 { you? }
    }
  }
}

wordsBassMidi = \lyricmode {
  "Weep " "O " "mine " "eyes, " "and " "cease " "not, "
  "\nweep " "O " "mine " "eyes, " "weep " "O " "mine " "eyes, "
  "\nweep " "and " "cease " "not, " "and " "cease " "not: "
  "\nA" "las " "these " "your " spring "tides "
  "\nin" "crease " "not, " "me " "thinks " in "crease " "not. "
  \repeat volta 2 {
    "\nO " "when, " 
    "\nO " "when " be "gin " "you "
    "\nTo " "swell " "so " "high " "that " "I " "may " "drown " "me " "in " "you, "
    "\nthat " "I " "may " "drown " "me " "in "
    \alternative {
      \volta 1 { "you? " }
      \volta 2 { you? }
    }
  }
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
        \consists Ambitus_engraver
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
        \consists Ambitus_engraver
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
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
        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \magnifyStaff #4/7
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \addlyrics \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
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
        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \magnifyStaff #4/7
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \addlyrics \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \addlyrics {\tiny \wordsBass}
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
        \consists Ambitus_engraver
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \magnifyStaff #4/7
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice = "soprano" \soprano
          \addlyrics {\tiny \wordsSop}
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \addlyrics {\tiny \wordsTenor}
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \addlyrics \wordsBass
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
        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenorMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S" }
        <<
          \new Dynamics \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassMidi
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
