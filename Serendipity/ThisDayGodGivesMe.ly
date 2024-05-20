\version "2.25.16"

\include "kjp.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "This Day God Gives Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gaelic melody"
  arranger    = "arr. and harm. Martin Shaw 1875-1958"
%  opus        = "opus"

%  poet        = "poet"
  meter       = "55.54D"
  piece       = "Bunessan"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 9/4
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  c'4 e g c2. d
  b4 a g a2. g
  c,4 d e g2. a
  g4 e c d2.~d
  g4 e g c2. a
  g4 e c c2. d
  e4 d e g2. a
  d,4 e d c2.~c
}

alto = \relative {
  c'4 c e g2. a
  d,4 d d fis2. d
  c4 d e g2. f
  e4 d c d2.~d
  c4 c c e2. f
  e4 c g a2. a
  c4 d e b2. c
  a4 b b c2.~c
}

tenor = \relative {
  e4 g c c2. a
  g4 a b d2. b
  e,4 f g c2. c
  c4 g a b2.~b
  c4 c c c2. c
  c4 g e e2. f
  g4 g g e2.e
  a4 g g e2.~e
}

bass= \relative {
  c4 c c e2. f
  g4 fis g d2. g
  c,4 c c e2. f
  c4 e a g2.~g
  e4 c e a2. f
  c4 c c a2. d
  c4 b c e2. a,
  f4 g g c2.~c
}

pianoRH = \relative c' {
  \global
  c4
}

wordsOne = \lyricmode {
  \set stanza = "1."
  This day God gives me strength of high heav- en,
  Sun and moon shin- ing, flame in my hearth.
  Flash- ing of light- ning, wind in its swift- ness,
  Deeps of the o- cean, firm- ness of earth.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  This day God sends me strength to sus- tain me,
  Might to up- hold me, wis- dom to guide.
  Your eyes are watch- ful, your ears are lis- tening,
  Your lips are speak- ing, friend at my side.
}

wordsThree = \lyricmode {
  \set stanza = "3." 
  God’s way is my way, God’s shield is round me,
  God’s host def- end me, sav- ing from ill.
  An- gels of heav- en drive from me al- ways
  All that would harm me, stand by me still.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Ris- ing, I thank you, might- y and strong One,
  King of cre- a- tion, giv- er of rest.
  Firm- ly con- fess- ing three- ness of per- sons,
  One- ness of God- head, tri- ni- ty blest.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "This " "day " "God " "gives " "me " "strength " "of " "high " heav "en, "
  "\nSun " "and " "moon " shin "ing, " "flame " "in " "my " "hearth. "
  "\nFlash" "ing " "of " light "ning, " "wind " "in " "its " swift "ness, "
  "\nDeeps " "of " "the " o "cean, " firm "ness " "of " "earth.\n"

  \set stanza = "2."
  "\nThis " "day " "God " "sends " "me " "strength " "to " sus "tain " "me, "
  "\nMight " "to " up "hold " "me, " wis "dom " "to " "guide. "
  "\nYour " "eyes " "are " watch "ful, " "your " "ears " "are " lis "tening, "
  "\nYour " "lips " "are " speak "ing, " "friend " "at " "my " "side.\n"

  \set stanza = "3." 
 "\nGod’s " "way " "is " "my " "way, " "God’s " "shield " "is " "round " "me, "
  "\nGod’s " "host " def "end " "me, " sav "ing " "from " "ill. "
  "\nAn" "gels " "of " heav "en " "drive " "from " "me " al "ways "
  "\nAll " "that " "would " "harm " "me, " "stand " "by " "me " "still.\n"

  \set stanza = "4."
  "\nRis" "ing, " "I " "thank " "you, " might "y " "and " "strong " "One, "
  "\nKing " "of " cre a "tion, " giv "er " "of " "rest. "
  "\nFirm" "ly " con fess "ing " three "ness " "of " per "sons, "
  "\nOne" "ness " "of " God "head, " tri ni "ty " "blest. "
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
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
          \new Voice { \global \vo \soprano \bar "|." }
          \new Voice { \global \vt \alto    }
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
          \addlyrics \wordsThree
          \addlyrics \wordsFour
        >>
                                % Joint tenor/bass staff
        \new Staff = man \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        }
        <<
          \clef bass
          \new Voice { \global \vo \tenor }
          \new Voice { \global \vt \bass}
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
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
          \new Voice { \global \vo \repeat unfold 4 \soprano \bar "|." }
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        }
        <<
          \clef bass
          \new Voice { \global \vo \repeat unfold 4 \tenor }
          \new Voice { \global \vt \repeat unfold 4 \bass}
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
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
          \new Voice { \global \vo \repeat unfold 4 \soprano \bar "|." }
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        }
        <<
          \clef bass
          \new Voice { \global \vo \repeat unfold 4 \tenor }
          \new Voice { \global \vt \repeat unfold 4 \bass}
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice { \global
                       \soprano \section
                       \soprano \section
                       \soprano \section
                       \soprano
                       \bar "|." }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Voice { \global
                       \tenor \section
                       \tenor \section
                       \tenor \section
                       \tenor
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Voice { \global
                       \bass \section
                       \bass \section
                       \bass \section
                       \bass
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice { \global
                       \soprano \section
                       \soprano \section
                       \soprano \section
                       \soprano
                       \bar "|." }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global
                       \tenor \section
                       \tenor \section
                       \tenor \section
                       \tenor
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice { \global
                       \bass \section
                       \bass \section
                       \bass \section
                       \bass
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global
                       \soprano \section
                       \soprano \section
                       \soprano \section
                       \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global
                       \tenor \section
                       \tenor \section
                       \tenor \section
                       \tenor
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice { \global
                       \bass \section
                       \bass \section
                       \bass \section
                       \bass
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
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
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global
                       \soprano \section
                       \soprano \section
                       \soprano \section
                       \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Voice { \global
                       \tenor \section
                       \tenor \section
                       \tenor \section
                       \tenor
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice { \global
                       \bass \section
                       \bass \section
                       \bass \section
                       \bass
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global
                       \soprano \section
                       \soprano \section
                       \soprano \section
                       \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Voice { \global \vt
                       \alto \section \break
                       \alto \section \break
                       \alto \section \break
                       \alto
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global
                       \tenor \section
                       \tenor \section
                       \tenor \section
                       \tenor
                     }
          \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Voice { \global
                       \bass \section
                       \bass \section
                       \bass \section
                       \bass
                     }
          \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
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
    output-suffix = midi
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice { \global \vo \repeat unfold 4 \soprano \bar "|." }
          \addlyrics \wordsMidi
        >>
                                % Alto staff
        \new Staff = alto \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice { \global \vt \repeat unfold 4 \alto}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice { \global \vo \repeat unfold 4 \tenor }
        >>
                                % Bass staff
        \new Staff = bass \with {
          midiInstrument = "choir aahs"
          shortInstrumentName = #"B"
        }
        <<
          \clef bass
          \new Voice { \global \vt \repeat unfold 4 \bass}
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
