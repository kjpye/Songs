\version "2.25.14"

\include "kjp.ly"

\header {
  title    = "Deep River"
}

tempoTrack = {
  \tempo 4=100
}

global = {
  \key ees \major
  \time 4/4
}

sopA = \relative {
    g'2(~g8 f ees4)
    f4 c2 ees4
    ees4 ees ees'4. c8
    bes4 g2(f4)
    g2(g8 f ees4)
    f4 c ees4. ees8
    ees8. ees16 g4 f8. ees16 c8. c16
    ees4 ees2.^\markup{\italic FINE}
}

sopB = \relative {
  c''8 c4 d8(c) bes g4
  bes4(g2)bes8. bes16
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  g8. g16 g8. g16 g8(f) ees f
  g8(f4) ees8g8(f4) ees8
  g2~g8 f ees f
  g4(^\markup{\italic{D.C. al FINE}} bes2.)
  \bar"|."
}

sop = \relative c'' {
  \global
  \repeat volta 2 {
    \sopA
  }
  \sopB
}

altoA = \relative {
  ees'2 ees
  c4 c2 c4
  bes4 bes g'4. g8
  d4 d2.
  bes4(des2.)
  c4 c c4. c8
  c8. c16 ees4 c8. c16 c8. c16
  bes4 bes2.
}

altoB = \relative {
  ees'8 ees4 ees8 ees4 ees
  d2. d8. d16
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  des8. des16 des8. des16 c4 c8 c
  c4. c8 c4. c8
  ees2~ees8 c c c
  d1
  \bar"|."
}

tenorA = \relative {
  bes2(bes8 aes g4)
  aes4 aes2 aes4
  g4 g c4. c8
  bes4 bes2(aes4)
  g2 bes8(aes g4)
  bes4 bes bes4. bes8
  g8. g16 c4 aes8. aes16 aes8. aes16
  g4 g2.
}

tenorB = \relative {
  g8 g4 g8 g4 c
  bes2. bes8. bes16
  g2 g
  bes2. bes4
  g2 a
  bes2. bes4
  g2 g
  bes2. bes4
  bes8. bes16 bes8. bes16 aes4 g8 g
  aes4. g8 aes4. c8 c4(a4~a8) a a a
  bes4(aes2.)
  \bar"|."
}

bassA = \relative {
  ees2 ees
  aes,4 aes2 aes'4
  ees4 ees ees4. ees8
  g4 g(bes,2)
  ees2 ees
  aes,4 aes aes4. aes8
  c8. c16 c4 f8. f16 bes,8. bes16
  ees4 ees2.
}

bassB = \relative {
  c8 c4 c8 c4 c
  g'2. g8. g16
  c,2 c
  g'2. g4
  c,2 f
  g2. g4
  c,2 c
  g'2. g4
  ees8. ees16 ees8. ees16 aes,4 c8 c
  aes4. c8 f4. aes8
  a4(f4~f8)f8 f f
  bes,1
  \bar"|."
}

words = \lyricmode {
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  O don't you want to go to the gos -- pel feast,
  That prom -- ised land where all is peace,
  O don't you want to go to that prom -- ised land
  that land where all is peace?
}

wordsSopMidi = \lyricmode {
  "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

wordsAltoMidi = \lyricmode {
  "Deep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

wordsBass = \lyricmode {
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

wordsSingle = \lyricmode {
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  O don't you want to go to the gos -- pel feast,
  That prom -- ised land where all is peace,
  O don't you want to go to that prom -- ised land
  that land where all is peace?
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground.
}

wordsBassMidi = \lyricmode {
  "Deep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

wordsBassSingle = \lyricmode {
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
}

wordsAltoSingle = \lyricmode {
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  O don't you want to go to the gos -- pel feast,
  That prom -- ised land where all is peace,
  O don't you want to go to that prom -- ised land
  that land where all is peace?
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground.
}

wordsTenorSingleSep = \lyricmode {
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  O don't you want to go to the gos -- pel feast,
  That prom -- ised land where all is peace,
  O don't you want to go to that prom -- ised land
  that land where all is peace?
  Deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground.
}

wordsBassSingleSep = \lyricmode {
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground,
  O don't you want to go to the gos -- pel feast,
  That prom -- ised land where all is peace,
  O don't you want to go to that prom -- ised land
  that land where all is peace?
  Deep, deep Riv -- er, my home is o -- ver Jor -- dan,
  Deep, deep Riv -- er, Lord, I want to cross o -- ver in -- to camp -- ground.
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice {\global \vo \repeat volta 2 {\sopA } \sopB  }
        \addlyrics \words
	\new Voice {\global \vt \repeat volta 2 {\altoA} \altoB }
      >>
      \new Staff = men <<
        \clef bass
	\new Voice         {\global \vo \repeat volta 2 {\tenorA} \tenorB }
	\new Voice = bass  {\global \vt \repeat volta 2 {\bassA } \bassB  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bass \wordsBass
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
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \wordsSingle
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
      >>
      \new Staff = men <<
        \clef bass
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
	\new Voice = bas {\global \vt \bassA  \bassA  \bassB  \bassA  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bas \wordsBassSingle
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
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \wordsSingle
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
      >>
      \new Staff = men <<
        \clef bass
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
	\new Voice = bas {\global \vt \bassA  \bassA  \bassB  \bassA  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bas \wordsBassSingle
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
    \new ChoirStaff <<
      \new Staff = soprano <<
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \wordsSingle
      >>
      \new Staff = alto <<
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
        \addlyrics \wordsAltoSingle
      >>
      \new Staff = tenor <<
        \clef "treble_8"
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
        \addlyrics \wordsTenorSingleSep
      >>
      \new Staff = bass <<
        \clef bass
	\new Voice {\global \vt \bassA  \bassA  \bassB  \bassA  }
        \addlyrics \wordsBassSingleSep
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
    \new ChoirStaff <<
      \new Staff = soprano <<
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \wordsSingle
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
        \addlyrics {\tiny \wordsAltoSingle}
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
        \addlyrics {\tiny \wordsTenorSingleSep}
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice {\global \vt \bassA  \bassA  \bassB  \bassA  }
        \addlyrics {\tiny \wordsBassSingleSep}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
        \addlyrics \wordsAltoSingle
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
        \addlyrics {\tiny \wordsTenorSingleSep}
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice {\global \vt \bassA  \bassA  \bassB  \bassA  }
        \addlyrics {\tiny \wordsBassSingleSep}
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
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
        \addlyrics {\tiny \wordsAltoSingle}
      >>
      \new Staff = tenor <<
        \clef "treble_8"
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
        \addlyrics \wordsTenorSingleSep
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice {\global \vt \bassA  \bassA  \bassB  \bassA  }
        \addlyrics {\tiny \wordsBassSingleSep}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \vo \sopA  \sopA  \sopB  \sopA  }
        \addlyrics {\tiny \wordsSingle}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \vt \altoA \altoA \altoB \altoA }
        \addlyrics {\tiny \wordsAltoSingle}
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice       {\global \vo \tenorA \tenorA \tenorB \tenorA }
        \addlyrics {\tiny \wordsTenorSingleSep}
      >>
      \new Staff = bass <<
        \clef bass
	\new Voice {\global \vt \bassA  \bassA  \bassB  \bassA  }
        \addlyrics \wordsBassSingleSep
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
    output-suffix = midi
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tempoTrack
	\new Voice {\global \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \wordsSopMidi
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \altoA \altoA \altoB \altoA }
      >>
      \new Staff = ten \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \bassA  \bassA  \bassB  \bassA  }
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tempoTrack
	\new Voice {\global \sopA  \sopA  \sopB  \sopA  }
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \altoA \altoA \altoB \altoA }
        \addlyrics \wordsAltoMidi
      >>
      \new Staff = ten \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \bassA  \bassA  \bassB  \bassA  }
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tempoTrack
        \new Voice {\global \sopA  \sopA  \sopB  \sopA  }
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \altoA \altoA \altoB \altoA }
      >>
      \new Staff = ten \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice {\global \bassA  \bassA  \bassB  \bassA  }
        \addlyrics \wordsBassMidi
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
