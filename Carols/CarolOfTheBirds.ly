\version "2.25.9"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Carol of the Birds"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "William G. James"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Wheeler"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \tempo 4=120
}

soprano = \relative c' {
  \autoBeamOff \voiceOne
  ees8^\markup{Full choir}  ees f g4 aes8
  bes8. c16 bes8 aes4 g8
  f8 f g aes4 bes8
  c8 d c bes4 aes8
  g8 g aes bes4 g8
  f8 f g aes4 f8
  ees8 ees f g(f) ees
  f8 g aes bes c \section d
  ees4. bes4 g8
  ees'4. c4 g8
  ees'8 c aes g4 f8
  ees4.~ees4^\fermata \oneVoice r8
  \bar "|."
}

dynamicsWomen = {
  s4^\mf s2\<
  s4 \! s2 \>
  s4 \! s2 \<
  s2. \!
  s2.
  s4 s2 \>
  s4^\mf \! s2 \<
  s4 s2 \!
  s8 s4^\f s4.
  s2.
  s2.
  s2.
}

alto = \relative c' {
  \autoBeamOff
  bes8 c d ees4 8
  ees8. ees16 8 d4 ees8
  ees8 ees ees ees4 ees8
  ees8 ees ees d(ees) f
  ees8 ees ees ees4 ees8
  ees8 ees ees ees4 d8
  ees8 c d ees(d) ees
  c8 ees ees d c \section d
  ees4. bes'4 g8
  g4. ees4 8
  aes8 aes f d4 8
  ees4.~4 s8
  \bar "|."
}

tenor = \relative c' {
  \autoBeamOff \voiceOne
  g8 g bes bes4 8
  bes8. aes16 bes8 4 8
  c8 c c c4 bes8
  aes8 aes aes bes4 8
  bes8 bes bes bes4 8
  c8 c c c4 bes8
  g8 g bes bes(aes) bes
  aes8 c c bes c \section d
  ees4. bes4 g8
  c4. g4 c8
  c8 c c bes4 aes8
  g4.~g4^\fermata \oneVoice r8
  \bar "|."
}

bass= \relative c {
  \autoBeamOff
  ees8 c bes ees4 f8
  g8. aes16 g8 f4 ees8
  aes8 aes g f4 g8
  aes8 aes f bes,(c) d
  ees8 ees f g4 8
  aes8 aes g f4 bes,8
  c8 c bes ees(f) g
  aes8 aes f bes c \section d
  ees4. bes4 g8
  c,4. 4 8
  f8 f f bes,4 8
  ees4.~4 s8
  \bar "|."
}

dynamicsPiano = {
  s2.\mf | s | s |
  s2. | s | s4 s2\> |
  s2\mp s4\cresc | s4.\< s4.\! | s2.\f
  s2.*3 |
}

pianoRHone = \relative {
  \voiceOne
  ees'4(f8  g4 aes8 | bes8. c16 bes8 aes4 g8) | f4(g8 aes4 bes8 |
  c8 d c bes4 aes8) | g4(aes8 bes4 g8) | f4(g8 aes4 f8) |
  ees4(f8 g f ees) | f(g aes bes c) \section d( | ees4. bes4) g8( |
  ees'4. c4) g8( | ees' c aes g4 f8 | \oneVoice <g, bes ees>4.~4)\fermata r8 |
}

pianoRHtwo = \relative {
  \voiceTwo
  ees'4 d8 ees4.~ | 4. d4 ees8 | ees4.~4 8 |
  ees4. d8 ees f | ees4.~4 8 | 4. 4 d8 |
  c4 d8 ees d ees | 4. d8 ees \section f | ees4.~4 8 |
  <ees g>4.~4 ees8 | <ees aes>4 f8 d4. | s2. |
}


pianoLHone = \relative {
  \voiceOne
  \clef bass
  g4(bes8) 4.~ | 8. aes16 bes8 4 8 | c4.(4 bes8) |
  aes4. bes4 8 | 4.~4 8 | c4.~4 bes8 |
  g4(bes8) 4 8 | c4. bes4 \section 8 | 4.~4 8 |
  \oneVoice <c, g' c>4.~4 <c c'>8 | <f c'>4 8 \voiceOne bes4 aes8 \oneVoice <ees, bes' ees>4.~4\fermata r8 |
}

pianoLHtwo = \relative {
  \voiceTwo
  ees8(c bes ees4 f8 | g8.) aes16 g8( f4 ees8) | aes4 g8 d4 g8 |
  aes4(f8 bes, c d) | ees4(f8 g4 ees8) | aes4(g8 f4 bes,8) |
  c4(bes8 ees f g) | aes4 f8 bes4 \section aes8 | g4.~4 ees8 |
  s2. | s4. bes | s2. |
}

chorus = \lyricmode {
  “O- ra -- na! O -- ra -- na! O -- ra -- na to Christ -- mas Day.”
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Out on the plains the Brol -- gas are danc -- ing
  Lift -- ing their feet like
  war -- hor -- ses pranc -- ing:
  Up to the sun the wood -- larks go wing -- ing
  Faint in the dawn -- light ech -- oes their sing -- ing
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Down where the tree -- ferns grow by the riv -- er,
  There where the wat -- ers spar -- kle and qui -- ver,
  Deep in the gul -- lies Bell -- birds are chim -- ing,
  Soft-ly and sweet -- ly their lyr -- ic notes rhym -- ing—
  \chorus
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Fri -- ar birds sip the nec -- tar of flow -- ers,
  Cur -- ra -- wongs chant in wat -- tle -- tree bow -- ers;
  In the blue ran -- ges Lor -- i -- keets cal -- ling—
  Car -- ols of bush -- birds ris -- ing and fal -- ling—
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Out " "on " "the " "plains " "the " Brol "gas " "are " danc "ing "
  "\nLift" "ing " "their " "feet " "like "
  "\nwar" hor "ses " pranc "ing: "
  "\nUp " "to " "the " "sun " "the " wood "larks " "go " wing "ing "
  "\nFaint " "in " "the " dawn "light " ech "oes " "their " sing "ing "
  "\n“O" ra "na! " O ra "na! " O ra "na " "to " Christ "mas " "Day.”\n"

  \set stanza = "2."
  "\nDown " "where " "the " tree "ferns " "grow " "by " "the " riv "er, "
  "\nThere " "where " "the " wat "ers " spar "kle " "and " qui "ver, "
  "\nDeep " "in " "the " gul "lies " Bell "birds " "are " chim "ing, "
  "\nSoft-ly " "and " sweet "ly " "their " lyr "ic " "notes " rhym "ing— "
  "\n“O" ra "na! " O ra "na! " O ra "na " "to " Christ "mas " "Day.”\n"

  \set stanza = "3."
  "\nFri" "ar " "birds " "sip " "the " nec "tar " "of " flow "ers, "
  "\nCur" ra "wongs " "chant " "in " wat tle "tree " bow "ers; "
  "\nIn " "the " "blue " ran "ges " Lor i "keets " cal "ling— "
  "\nCar" "ols " "of " bush "birds " ris "ing " "and " fal "ling— "
  "\n“O" ra "na! " O ra "na! " O ra "na " "to " Christ "mas " "Day.” "
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Dynamics \dynamicsWomen
        \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
          \new Voice = "soprano" { \global \voiceOne \soprano }
          \new Voice = "alto"    { \global \voiceTwo \alto    }
          \new Lyrics \lyricsto "soprano" \wordsOne
          \new Lyrics \lyricsto "soprano" \wordsTwo
          \new Lyrics \lyricsto "soprano" \wordsThree
        >>
                                % Joint tenor/bass staff
        \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
          \clef bass
          \new Voice = "tenor" { \global \voiceOne \tenor }
          \new Voice = "bass"  { \global \voiceTwo \bass }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice {\global \pianoRHone}
          \new Voice {\global \pianoRHtwo}
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \new Voice {\global \pianoLHone}
          \new Voice {\global \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
          \new Dynamics \with {alignAboveContext = women} {\repeat unfold 3 \dynamicsWomen}
          \new Voice = "soprano" { \global \voiceOne \soprano \soprano \soprano}
          \new Voice = "alto"    { \global \voiceTwo \alto    \alto    \alto   }
          \new Lyrics \lyricsto "soprano" {\wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \global \tenor \tenor \tenor}
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics \repeat unfold 3 \dynamicsPiano
        \new Staff <<
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
          \new Dynamics \with {alignAboveContext = women} {\repeat unfold 3 \dynamicsWomen}
          \new Voice = "soprano" { \global \voiceOne \soprano \soprano \soprano}
          \new Voice = "alto"    { \global \voiceTwo \alto    \alto    \alto   }
          \new Lyrics \lyricsto "soprano" {\wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \global \tenor \tenor \tenor}
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics \repeat unfold 3 \dynamicsPiano
        \new Staff <<
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceOne \soprano \soprano \soprano}
          \addlyrics {\wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo \alto    \alto    \alto   }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \voiceOne \global \tenor \tenor \tenor}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceOne \soprano \soprano \soprano}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Voice { \global \voiceTwo \alto    \alto    \alto   }
          \addlyrics {\wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \voiceOne \global \tenor \tenor \tenor}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceOne \soprano \soprano \soprano}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo \alto    \alto    \alto   }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        } <<
          \clef "treble_8"
          \new Voice { \voiceOne \global \tenor \tenor \tenor}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceOne \soprano \soprano \soprano}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo \alto    \alto    \alto   }
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \voiceOne \global \tenor \tenor \tenor}
          \addlyrics {\tiny \wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
          \addlyrics {\wordsOne \chorus \wordsTwo \wordsThree \chorus}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
        \new Staff <<
          \magnifyStaff #4/7
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceOne \soprano \soprano \soprano}
          \addlyrics \wordsMidi
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} {\repeat unfold 3 \dynamicsWomen}
          \new Voice { \global \voiceTwo \alto    \alto    \alto   }
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        } <<
          \clef "tgreble_8"
          \new Voice { \voiceOne \global \tenor \tenor \tenor}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        } <<
          \clef bass
          \new Voice = "bass"  { \voiceTwo \global \bass  \bass  \bass }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice {\global \pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\global \pianoRHtwo \pianoRHtwo \pianoRHtwo}
          \new Dynamics \repeat unfold 3 \dynamicsPiano
          \new Voice {\global \repeat unfold 3 \pianoLHone}
          \new Voice {\global \repeat unfold 3 \pianoLHtwo}
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
