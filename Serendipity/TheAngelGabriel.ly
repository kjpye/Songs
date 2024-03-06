\version "2.25.13"

\include "kjp.ly"

\header {
  title = "The Angel Gabriel from Heaven Came"
%  poet = "Tr. K. E. Robertzs"
  composer = "Basque traditional carol melody"
  meter = "10.10.12.7.3"
  arranger = "arr. Charles Edgar Pettman 1866-1945"
  tagline = ""
}

TempoTrack = {
  \tempo 4.=90
}

global = {
  \key bes \major
  \time 9/8
  \partial 8
}

soprano = \relative {
  \set Staff.midiInstrument = "flute"
  d'8 | g4 bes8 a4 c8 bes4 a8
  \time 12/8 g4. a4. d,4.~d4 \breathe \bar "|" \break
  d8 \time  9/8 g4 bes8 a4 c8 bes4 a8 |
  \time 12/8 g4. g4(f8) g4.~g4 \breathe \bar "|" \break
  bes8 | bes4 c8 bes4 a8 bes4 c8 d4 d8
  \tag #'dash       {\slurDashed c4.(bes) \slurSolid a4.~a4 \breathe \bar "|" \break}
  \tag #'v1         {            c4.(bes)            a4.~a4 \breathe \bar "|" \break}
  \tag #'(v2 v3 v4) {            c4. bes             a4.~a4 \breathe \bar "|" \break}
  bes8 | c4 bes8 a4 g8 a4. d, \breathe | g4.( bes8 a bes g4.~g4) f8 |
  \time  9/8 g2.~g4
}

alto = \relative c' {
  \set Staff.midiInstrument = "oboe"
  d8 | bes4 d8 c4 ees8 d4 c8 | d4. ees c~c4
  c8 | bes4 d8 c4 ees8 d4 ees8 | d4. d d~d4
  d8 | d4 ees8 d4 ees8 f4 ees8 d4 d8 |
  \tag #'dash       {\slurDashed g4.(g) \slurSolid g(f4)}
  \tag #'v1         {            g4.(g)            g(f4)}
  \tag #'(v2 v3 v4) {            g4. g             g(f4)}
  f8 | c4 c8 c4 c8 c4. c | bes4.(ees d) d | bes2.~bes4
}

tenor = \relative c {
  \set Staff.midiInstrument = "clarinet"
  d8 | d4 d8 d4 d8 d4 d8 | bes'4. c a(a4)
  a8 | g4 g8 g4 g8 g4 a8 | bes4. a bes~bes4
  bes8 | bes4 f8 f4 c'8 bes4 a8 bes4 bes8 |
  \tag #'dash       {\slurDashed a4.(c) \slurSolid c~c4}
  \tag #'v1         {            a4.(c)            c~c4}
  \tag #'(v2 v3 v4) {            a4. c             c~c4}
  bes8 | g4 g8 g4 g8 g4. fis | g2.(bes4.)a | g2.~g4
}

bass = \relative c {
  \set Staff.midiInstrument = "bassoon"
  d8 | g,4 g8 g4 g8 g4 g8 | g'4. g g(fis4)
  fis8 | g4 g,8 g4 g8 g4 c8 | bes4. d g~g4
  bes,8 | bes4 a8 bes4 c8 d4 c8 bes4 bes8 |
  \tag #'dash       {\slurDashed ees4.(e)  \slurSolid f4.~f4}
  \tag #'v1         {            ees4.(e)             f4.~f4}
  \tag #'(v2 v3 v4) {            ees4. e              f4.~f4}
  d8 | ees4 ees8 ees4 ees8 d4. d | ees4.(c bes) d | <g, d'>2.~q4
}

verseOne = \lyricmode {
  The ang -- el Gab -- ri -- el from heav -- en came,
  his wings as drift -- ed snow, his eyes as flame;
  ‘All hail,’ said he, ‘thou low -- ly maid -- en Mar -- y,
  most high -- ly fav -- oured lad -- y,
  Glor -- i -- a!
}

verseTwo = \lyricmode {
  ‘for now a bles -- sed Moth -- er thou shalt be,
  all gen -- er -- a -- tions laud and hon -- our thee,
  the Son shall be Em -- man -- u -- el, by \nom seers fore -- told; \yesm
%  most high -- ly fav -- oured lad -- y.’
%  Glor -- i -- a!
}

verseThree = \lyricmode {
  The gent -- le Mar -- y meek -- ly bowed her head,
  ‘To me be as it pleas -- eth God,’ she said,
  ‘my soul shall laud and mag -- ni -- fy his \nom ho -- ly name’; \yesm
%  most high -- ly fav -- oured lad -- y.
%  Glor -- i -- a!
}

verseFour = \lyricmode {
  of her, Em -- man -- u -- el, the Christ was born
  in Beth -- le -- hem, all on a Christ -- mas morn,
  and christ -- ian folk through -- out the world will \nom e -- ver \yesm say
%  ‘most high -- ly fav -- oured lad -- y’.
%  Glor -- i -- a!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  The ang -- el Gab -- ri -- el from heav -- en came,
  his wings as drift -- ed snow, his eyes as flame;
  ‘All hail,’ said he, ‘thou low -- ly maid -- en Mar -- y,
  most high -- ly fav -- oured lad -- y,
  Glor -- i -- a!

  \set stanza = "2."
  ‘for now a bles -- sed Moth -- er thou shalt be,
  all gen -- er -- a -- tions laud and hon -- our thee,
  the Son shall be Em -- man -- u -- el, by \nom seers fore -- \yesm told;
  most high -- ly fav -- oured lad -- y.’
  Glor -- i -- a!

  \set stanza = "3."
  The gent -- le Mar -- y meek -- ly bowed her head,
  ‘To me be as it pleas -- eth God,’ she said,
  ‘my soul shall laud and mag -- ni -- fy his \nom ho -- ly \yesm name’;
  most high -- ly fav -- oured lad -- y.
  Glor -- i -- a!

  \set stanza = "4."
  of her, Em -- man -- u -- el, the Christ was born
  in Beth -- le -- hem, all on a Christ -- mas morn,
  and christ -- ian folk through -- out the world will \nom e -- ver \yesm say
  ‘most high -- ly fav -- oured lad -- y’.
  Glor -- i -- a!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " ang "el " Gab ri "el " "from " heav "en " "came, "
  "\nhis " "wings " "as " drift "ed " "snow, " "his " "eyes " "as " "flame; "
  "\n‘All " "hail,’ " "said " "he, " "‘thou " low "ly " maid "en " Mar "y, "
  "\nmost " high "ly " fav "oured " lad "y, "
  "\nGlor" i "a!\n"

  \set stanza = "2."
  "\n‘for " "now " "a " bles "sed " Moth "er " "thou " "shalt " "be, "
  "\nall " gen er a "tions " "laud " "and " hon "our " "thee, "
  "\nthe " "Son " "shall " "be " Em man u "el, " "by " "seers " fore "told; "
  "\nmost " high "ly " fav "oured " lad "y.’ "
  "\nGlor" i "a!\n"

  \set stanza = "3."
  "\nThe " gent "le " Mar "y " meek "ly " "bowed " "her " "head, "
  "\n‘To " "me " "be " "as " "it " pleas "eth " "God,’ " "she " "said, "
  "\n‘my " "soul " "shall " "laud " "and " mag ni "fy " "his " ho "ly " "name’; "
  "\nmost " high "ly " fav "oured " lad "y. "
  "\nGlor" i "a!\n"

  \set stanza = "4."
  "\nof " "her, " Em man u "el, " "the " "Christ " "was " "born "
  "\nin " Beth le "hem, " "all " "on " "a " Christ "mas " "morn, "
  "\nand " christ "ian " "folk " through "out " "the " "world " "will " e "ver " "say "
  "\n‘most " high "ly " fav "oured " lad "y’. "
  "\nGlor" i "a! "
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff  <<
      \new Staff = women <<
        \new Voice \TempoTrack
        \new Voice {\global \vo \keepWithTag #'dash \soprano \bar "|."}
        \addlyrics \verseOne
        \addlyrics \verseTwo
        \addlyrics \verseThree
        \addlyrics \verseFour
        \new Voice {\global \vt \keepWithTag #'dash \alto}
      >>
      \new Staff = men <<
        \clef bass
        \new Voice {\global \vo \keepWithTag #'dash \tenor}
        \new Voice {\global \vt \keepWithTag #'dash \bass}
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
    output-suffix = single
  }
  \score {
    \new ChoirStaff  <<
      \new Staff = women <<
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics \wordsSingle
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
      >>
      \new Staff = men <<
        \clef bass
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
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
    \new ChoirStaff  <<
      \new Staff = women <<
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics \wordsSingle
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
      >>
      \new Staff = men <<
        \clef bass
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
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
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics \wordsSingle
      >>
      \new Staff = alto <<
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
        \addlyrics \wordsSingle
      >>
      \new Staff = tenor <<
        \clef "treble_8"
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \addlyrics \wordsSingle
      >>
      \new Staff = bass <<
        \clef bass
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
        \addlyrics \wordsSingle
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics \wordsSingle
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
        \addlyrics {\tiny \wordsSingle}
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
        \addlyrics \wordsSingle
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
        \addlyrics {\tiny \wordsSingle}
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = tenor <<
        \clef "treble_8"
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \addlyrics \wordsSingle
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
        \addlyrics {\tiny \wordsSingle}
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = bass <<
        \clef bass
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
        \addlyrics \wordsSingle
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
    \new ChoirStaff  <<
      \new Staff = women <<
        \new Voice \TempoTrack
        \new Voice {\global \vo
                    \keepWithTag #'v1 \soprano \nl
                    \keepWithTag #'v2 \soprano \nl
                    \keepWithTag #'v3 \soprano \nl
                    \keepWithTag #'v4 \soprano \bar "|."
                  }
        \addlyrics \wordsMidi
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                   \keepWithTag #'v3 \alto
                                   \keepWithTag #'v4 \alto
                                 }
      >>
      \new Staff = men <<
        \clef bass
        \new Voice \unfoldRepeats {\global \vo
                                   \keepWithTag #'v1 \tenor \nl
                                   \keepWithTag #'v2 \tenor \nl
                                   \keepWithTag #'v3 \tenor \nl
                                   \keepWithTag #'v4 \tenor
                                 }
        \new Voice \unfoldRepeats {\global \vt
                                   \keepWithTag #'v1 \bass
                                   \keepWithTag #'v2 \bass
                                   \keepWithTag #'v3 \bass
                                   \keepWithTag #'v4 \bass
                                 }
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
