% Original from John Lemcke

\version "2.25.9"
\header{
  title = "Poverty"
  subtitle = "Nativity"
  subsubtitle = "Oxford Book of Carols 34"
  poet = "Tr. K. E. Roberts"
  composer = "Welsh"
  meter = ""
  opus = ""
  arranger = "(Dr. Caradog Roberts)"
  instrument = ""
  dedication = ""
  piece = ""
  head = ""
  copyright = ""
  footer = ""
  tagline = ""
}

#(set-default-paper-size "a4")

soprano = \relative c' {
  \set Staff.midiInstrument = "flute"
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  \time 4/4
  \key a \major
  \clef treble
  \voiceOne
  \repeat volta 2 {
    \partial 4 e4
    a4 a2 b8(a)
    gis4 a2 b4
    cis4 cis2 d4
    cis4 b2 a4
    cis4 a2 gis8(fis) % 5
    e4 fis2 gis4
    a2.
  }
  \section \tag #'single \break
  \repeat volta 2 {
    cis4
    cis4 e2 e4
    e4 cis2 b8(a)
    cis4 cis2 cis4 % 10
    cis4 cis2 cis4
    cis4 cis2 cis4
    e8(cis) a2 cis4
    b2 r4 e,4
    a4 a2 b8(a)
    gis4 a2 b4
    cis4 cis2 d4
    cis4 b2 a4
    cis4 a2 gis8(fis)
    e4 fis2 gis4
    a2. \section \break
  }
}

alto = \relative c' {
  \set Staff.midiInstrument = "oboe"
  \time 4/4
  \key a \major
  \clef treble
  \voiceTwo
  \repeat volta 2 {
    \partial 4 cis4
    e4 e2 fis4
    e4 cis2 e4
    e4 a2 a4
    a4 gis2 fis4
    e4 e2 e8(d)
    cis4 d2 e4
    e2.
  }
  \repeat volta 2 {
    a4
    a4 a2 a4
    a4 a2 fis4
    gis4 eis2 fis4
    eis8(fis) gis2 b4
    a8(gis) fis2 a4
    a4 a2 a4
    gis2 r4 d
    cis4 e2 fis4
    e4 cis2 e4
    e4 a2 a4
    a4 gis2 fis4 e4 e2 e8(d)
    cis4 d2 e4
    e2.
  }
}

tenor = \relative c' {
  \set Staff.midiInstrument = "clarinet"
  \time 4/4
  \key a \major
  \voiceThree
  \repeat volta 2 {
    \partial 4 a4
    a4 a2 d8(cis)
    b4 a2 d4
    cis4 cis2 fis4
    e4 e2 cis4
    a4 a2 a4
    a4 a2 d4
    cis2. \section
  }
  \repeat volta 2 {
    e4
    e4 e2 e4
    e4 e2 fis4
    eis4 cis2 a4
    gis4 gis2 gis4
    a8(b) cis2 fis4
    e4 e2 e4
    e2 r4 gis,
    a4 a2 d8(cis)
    b4 a2 d4 cis4 cis2 fis4
    e4 e2 cis4
    a4 a2 a4
    a4 a2 d4
    cis2.
    \section
  }
}

bass = \relative c {
  \set Staff.midiInstrument = "bassoon"
  \time 4/4
  \key a \major
  \clef bass
  \voiceFour
  \repeat volta 2 {
    \partial 4 a4
    cis4 cis2 d4
    e4 fis2 gis4
    a4 fis2 d4
    e4 e2 fis4
    a4 cis,2 d4
    e4 e2 e4
    a,2.
  }
  \repeat volta 2 {
    a'4
    a4 cis2 cis4
    cis4 a2 d4
    cis4 cis,2 fis4
    cis8(dis) eis2 eis4
    fis8(gis) a2 a4
    cis4 cis2 cis,8(d)
    e2 r4 e
    a,4 cis2 d4
    e4 fis2 gis4
    a4 fis2 d4
    e4 e2 fis4
    a4 cis,2 d4
    e4 e2 e4
    a,2.
  }
}

verseOneA = \lyricmode {
  \set stanza = "1."
  All poor men and Hum -- ble, All lame men who stum -- ble.
  Come haste ye, nor feel ye a -- fraid;
}

verseOneB = \lyricmode {
  For Je -- sus, our treas -- ure, With love past all mea -- sure,
  In lone -- ly poor man -- ger was laid.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Though wise men who found him laid rich gifts a -- round him,
  Yet ox -- en they gave him their hay;
  And Je -- sus in beau -- ty ac -- cept -- ed their dut -- y,
  Con -- tent -- ed in man -- ger he lay.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Then haste we to show him the prais -- es we owe Him;
  Our serv -- ice he ne'er can des -- pise,
  Whose love still is ab -- le to show us the stab -- le,
  Where soft -- ly in man -- ger he lies.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "poor " "men " "and " Hum "ble, " "All " "lame " "men " "who " stum "ble. "
  "\nCome " "haste " "ye, " "nor " "feel " "ye " a "fraid; "
  "\nFor " Je "sus, " "our " treas "ure, " "With " "love " "past " "all " mea "sure, "
  "\nIn " lone "ly " "poor " man "ger " "was " "laid.\n"

  \set stanza = "2."
  "\nThough " "wise " "men " "who " "found " "him " "laid " "rich " "gifts " a "round " "him, "
  "\nYet " ox "en " "they " "gave " "him " "their " "hay; "
  "\nAnd " Je "sus " "in " beau "ty " ac cept "ed " "their " dut "y, "
  "\nCon" tent "ed " "in " man "ger " "he " "lay.\n"

  \set stanza = "3."
  "\nThen " "haste " "we " "to " "show " "him " "the " prais "es " "we " "owe " "Him; "
  "\nOur " serv "ice " "he " "ne'er " "can " des "pise, "
  "\nWhose " "love " "still " "is " ab "le " "to " "show " "us " "the " stab "le, "
  "\nWhere " soft "ly " "in " man "ger " "he " "lies. "
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff  <<
      \new Staff = women <<
        \new Voice \removeWithTag #'single \soprano
        \new Voice \alto
        \addlyrics {\verseOneA \verseTwo}
        \addlyrics {\verseOneB \verseThree}
      >>
      \new Staff  <<
        \new Voice = tenor \tenor
        \new Voice = bass  \bass
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
      \context { \Staff
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new ChoirStaff  <<
      \new Staff = women <<
        \context Voice {\soprano \bar "|."}
        \context Voice \alto
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \context Voice = tenor \tenor
        \context Voice = bass  \bass
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
      \context { \Staff
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
    \new ChoirStaff  <<
      \new Staff = women <<
        \context Voice {\soprano \bar "|."}
        \context Voice \alto
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \context Voice = tenor \tenor
        \context Voice = bass  \bass
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
      \context { \Staff
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \new Voice {\soprano \bar "|."}
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \alto
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = tenor \tenor
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = bass  \bass
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
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
      \context { \Staff
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice {\soprano \bar "|."}
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff = alto <<
        \new Voice \alto
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = tenor \tenor
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = bass  \bass
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
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
      \context { \Staff
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice {\soprano \bar "|."}
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \alto
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \clef "treble_8"
        \new Voice = tenor \tenor
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = bass  \bass
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
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
      \context { \Staff
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
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
        \new Voice {\soprano \bar "|."}
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
        \new Voice \alto
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = tenor \tenor
        \addlyrics {\tiny \verseOneA \verseOneB \verseTwo \verseThree}
      >>
      \new Staff  <<
        \clef bass
        \new Voice = bass  \bass
        \addlyrics {\verseOneA \verseOneB \verseTwo \verseThree}
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
      \context { \Staff
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
  
% midi/karaoke version
\book {
  \bookOutputSuffix "midi"
  \score {
    \new ChoirStaff  <<
      \new Staff = soprano <<
        \context Voice = soprano \unfoldRepeats \soprano
        \addlyrics \wordsMidi
      >>
      \new Staff = alto <<
        \context Voice = alto    \unfoldRepeats \alto
      >>
      \new Staff = tenor <<
        \context Voice = tenor \unfoldRepeats \tenor
      >>
      \new Staff =bass <<
        \context Voice = bass  \unfoldRepeats \bass
      >>
    >>
    \midi {}
  }
}

