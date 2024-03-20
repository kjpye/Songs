\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All Through the Night"
  subtitle    = "(based on John Lemcke's version)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Welsh Air"
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
  \time 4/4
%  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=90
  s4
}

soprano = {
  \repeat volta 2 {
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4 |
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4 |
    c''4 b'4 c''4 d''4 |
    e''4. d''8 c''4 b'4 |
    c''4 b'4 a'4 g'4|
    b'4. a'8 g'4 fis'4 |
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  While the moon her watch is kee -- ping
  All through the night
  While the wea -- ry world is slee -- ping
  All through the night
  O'er my bos -- om gent -- ly stea -- ling
  Vis -- ions of de -- light re -- veal -- ing
  Breathes a pure and ho -- ly fee -- ling
  All through the night.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Love, to thee my thoughts are tur -- ning
  All through the night
  And for thee my heart is year -- ning,
  All through the night.
  Though sad fate our lives may se -- ver
  Par -- ting will not last for -- ev -- er,
  There's a hope that leaves me ne -- ver,
  All through the night.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "While " "the " "moon " "her " "watch " "is " kee "ping "
  "\nAll " "through " "the " "night "
  "\nWhile " "the " wea "ry " "world " "is " slee "ping "
  "\nAll " "through " "the " "night "
  "\nO'er " "my " bos "om " gent "ly " stea "ling "
  "\nVis" "ions " "of " de "light " re veal "ing "
  "\nBreathes " "a " "pure " "and " ho "ly " fee "ling "
  "\nAll " "through " "the " "night. "
 
  \set stanza = "2."
  "\nLove, " "to " "thee " "my " "thoughts " "are " tur "ning "
  "\nAll " "through " "the " "night "
  "\nAnd " "for " "thee " "my " "heart " "is " year "ning, "
  "\nAll " "through " "the " "night. "
  "\nThough " "sad " "fate " "our " "lives " "may " se "ver "
  "\nPar" "ting " "will " "not " "last " for ev "er, "
  "\nThere's " "a " "hope " "that " "leaves " "me " ne "ver, "
  "\nAll " "through " "the " "night. "
}

alto = {
  \repeat volta 2 {
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 d'4. c'8 |
    b2. r4 |
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 c'4. c'8 |
    b2. r4 |
    d'4 d'4 d'4 g'4 |
    fis'4. g'8 d'4 d'4 |
    fis'4 g'4 d'4 cis'4|
    d'4. d'8 d'4 d'8(c'8) |
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 c'4. c'8 |
    b2. r4
  }
}

tenor = {
  \repeat volta 2 {
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. a8 |
    g2. r4 |
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. d8 |
    d2. r4 |
    a4 gis4 a4 b4 |
    c'4. b8 a4 g4 |
    d'4 d'4 a4 a4|
    g4. c'8 b4 a4 |
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. d8 |
    d2. r4
  }
}

bass = {
  \repeat volta 2 {
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4 (a,4) d4. d8 |
    g,2. r4 |
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4_(a,4) d4. d8 |
    g,2. r4 |
    d4 d4 d4 d4 |
    d4. e8 fis4 g4 |
    a4 g4 fis4 e4|
    d4. d8 d4 d4 |
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4_(a,4) d4. d8 |
    g,2. r4
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice {\global \partCombine \soprano \alto}
            \new NullVoice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice {\global \partCombine \tenor \bass}
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto}
            \new NullVoice {\unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass}
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto}
            \new NullVoice {\unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass}
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
        \Voice
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice {\global \unfoldRepeats \alto}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \tenor}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
            \addlyrics {\wordsOne \wordsTwo}
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\global \unfoldRepeats \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo}
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice {\global \unfoldRepeats \alto}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo}
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\global \unfoldRepeats \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \tenor}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo}
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\global \unfoldRepeats \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice {s1*16 \section \break s1*16 \bar "|."}
            \new Voice {\global \unfoldRepeats \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
            \addlyrics {\wordsOne \wordsTwo}
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice {\global \unfoldRepeats \soprano}
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\global \unfoldRepeats \alto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\global \unfoldRepeats \tenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\global \unfoldRepeats \bass}
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
