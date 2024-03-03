\version "2.25.13"

\include "kjp.ly"

\header {
  title    = "Clementine"
  composer = "Arr. by H.A.C."
}

TempoTrack = {
  \tempo 4=120
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

sopMaj = \relative c'' {
  g4 d b'8. b16
  b4 g g8 b
  d8. d16 c4 b
  a2 a8 b
  c4 c b8. a16
  b4 g g8 b
  a4. d,8 fis a
  g2 \section \break
}

sopChorus = \relative c'' {
  g8.^\markup\smallCaps Tutti g16
  g4 d b'8. b16
  b4 g g8 b
  d8. d16 c4 b
  a2 a8 b
  c4 c b8. a16
  b4 g g8 b
  a4. d,8 fis a
  g2
}

sopMin = \relative c'' {
  g4 d bes'8. bes16
  bes4 g g8 bes
  d8. d16 c4 bes
  a2 a8 bes
  c4 c bes8. a16
  bes4 g g8 bes
  a4. d,8 f a
  g2 \section \break
}

sopMChorus = \relative c'' {
  g8.^\markup\smallCaps Tutti g16
  g4 d bes'8. bes16
  bes4 g g8 bes
  d8. d16 c4 bes
  a2 a8 bes
  c4 c bes8. a16
  bes4 g g8 bes
  a4. d,8 f a
  g2
}

altMaj = \relative c'' {
  g8. g16
  d4 d g8. g16
  g4 d g8 g
  g8. g16 a4 g
  fis2 fis8 fis
  g4 g d8. d16
  d4 d e8 e
  e4. d8 d fis
  d2
}

altMin = \relative c'' {
  g8. g16
  d4 d g8. g16
  g4 d g8 g
  g8. g16 a4 g
  f2 f8 f
  g4 g d8. d16
  d4 d ees8 ees
  ees4. d8 d f
  d2
}

tenMaj = \relative c' {
  g8. g16
  a4 a d8. d16
  d4 b b8 d
  d8. d16 e4 e
  a,2 d8 d
  c4 c c8. c16
  b4 b b8 g
  a4. fis8 a c
  b2 \section
}

tenMin = \relative c' {
  g8. g16
  a4 a d8. d16
  d4 bes b8 d
  d8. d16 ees4 ees
  a,2 d8 d
  c4 c c8. c16
  bes4 bes bes8 g
  a4. f8 a c
  bes2 \section
}

basMaj = \relative c' {
  g8. g16
  g4 g g8. g16
  g4 g g8 g
  b,8. b16 c4 c
  d2 d8 d
  e4 e fis8. fis16
  g4 g e8 e
  c4. d8 d d
  g,2
}

basMin = \relative c' {
  g8. g16
  g4 g g8. g16
  g4 g g8 g
  bes,8. bes16 c4 c
  d2 d8 d
  ees4 ees f8. f16
  g4 g ees8 ees
  c4. d8 d d
  g,2
}

chorus = \lyricmode {
%  \set stanza = "All"
  Oh, my darl -- ing, oh, my darl -- ing,
  Oh, my darl -- ing Clem -- en -- tine,
  Thou art lost and gone for ev -- er,
  Dread -- ful sor -- ry, Clem -- ent -- ine.
}

verseOne = \lyricmode {
  \set stanza = "Men 1."
  In a cav -- ern, by a can -- yon,
  Ex -- ca -- vat -- ing for a mine,
  Dwelt a min -- er, for -- ty -- nin -- er,
  And his daugh -- ter Clem -- en -- tine.
}

verseTwo = \lyricmode {
  \set stanza = "Robert 2."
  Light she was, and like a fai -- ry
  And her shoes were num -- ber nine,
  Her -- ring box -- es with -- out top -- ses,
  San -- dals were for Clem -- ent -- ine.
}

verseThree = \lyricmode {
  \set stanza = "Diane 3."
  Drove she duck -- lings to the wat -- er,
  Ev -- ery morn -- ing just at nine,
  Struck her foot a -- gainst a splint -- er,
  Fell in -- to the foam -- ing brine.
}

verseFour = \lyricmode {
  \set stanza = "Kevin 4."
  Ros -- y lips a -- bove the wat -- er,
  Blow -- ing bub -- bles might -- y fine,
  But, al -- as I was no swim -- mer,
  So I lost my Clem -- ent -- ine.
}

verseFive = \lyricmode {
  \set stanza = "Geoff 5."
  How I missed her! How I missed her!
  How I missed my Clem -- ent -- ine,
  But I kissed her lit -- tle sis -- ter,
  And for -- got my Clem -- ent -- ine.
}

wordsMidi = \lyricmode {
  \set stanza = "Men 1."
  "[Men] In " "a " cav "ern, " "by " "a " can "yon, "
  "\nEx" ca vat "ing " "for " "a " "mine, "
  "\nDwelt " "a " min "er, " for ty nin "er, "
  "\nAnd " "his " daugh "ter " Clem en "tine. "
  "\n[All] Oh, " "my " darl "ing, " "oh, " "my " darl "ing, "
  "\nOh, " "my " darl "ing " Clem en "tine, "
  "\nThou " "art " "lost " "and " "gone " "for " ev "er, "
  "\nDread" "ful " sor "ry, " Clem ent "ine.\n"

  \set stanza = "Robert 2."
  "\n[Robert] Light " "she " "was, " "and " "like " "a " fai "ry "
  "\nAnd " "her " "shoes " "were " num "ber " "nine, "
  "\nHer" "ring " box "es " with "out " top "ses, "
  "\nSan" "dals " "were " "for " Clem ent "ine. "
  "\n[All] Oh, " "my " darl "ing, " "oh, " "my " darl "ing, "
  "\nOh, " "my " darl "ing " Clem en "tine, "
  "\nThou " "art " "lost " "and " "gone " "for " ev "er, "
  "\nDread" "ful " sor "ry, " Clem ent "ine.\n"

  \set stanza = "Diane 3."
  "\n[Diane] Drove " "she " duck "lings " "to " "the " wat "er, "
  "\nEv" "ery " morn "ing " "just " "at " "nine, "
  "\nStruck " "her " "foot " a "gainst " "a " splint "er, "
  "\nFell " in "to " "the " foam "ing " "brine. "
  "\n[All] Oh, " "my " darl "ing, " "oh, " "my " darl "ing, "
  "\nOh, " "my " darl "ing " Clem en "tine, "
  "\nThou " "art " "lost " "and " "gone " "for " ev "er, "
  "\nDread" "ful " sor "ry, " Clem ent "ine.\n"

  \set stanza = "Kevin 4."
  "\n[Kevin] Ros" "y " "lips " a "bove " "the " wat "er, "
  "\nBlow" "ing " bub "bles " might "y " "fine, "
  "\nBut, " al "as " "I " "was " "no " swim "mer, "
  "\nSo " "I " "lost " "my " Clem ent "ine. "
  "\n[All] Oh, " "my " darl "ing, " "oh, " "my " darl "ing, "
  "\nOh, " "my " darl "ing " Clem en "tine, "
  "\nThou " "art " "lost " "and " "gone " "for " ev "er, "
  "\nDread" "ful " sor "ry, " Clem ent "ine.\n"

  \set stanza = "Geoff 5."
  "\n[Geoff] How " "I " "missed " "her! " "How " "I " "missed " "her! "
  "\nHow " "I " "missed " "my " Clem ent "ine, "
  "\nBut " "I " "kissed " "her " lit "tle " sis "ter, "
  "\nAnd " for "got " "my " Clem ent "ine. "
  "\n[All] Oh, " "my " darl "ing, " "oh, " "my " darl "ing, "
  "\nOh, " "my " darl "ing " Clem en "tine, "
  "\nThou " "art " "lost " "and " "gone " "for " ev "er, "
  "\nDread" "ful " sor "ry, " Clem ent "ine. "
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
        \new Voice \TempoTrack
	\new Voice = sop { \global \voiceOne
                           \repeat volta 3 {
			   g'8. g'16 \sopMaj \sopChorus
			   } \key g \minor \break
			   g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \key g \major \bar ":|."
%			   g'8.^\markup{\bold{Geoff}}  g'16 \sopMaj \sopChorus  \bar "|."
			 }
	\new Voice = alt { \global \voiceTwo
                           \repeat volta 3 {
			   \altMaj \altMaj
			 }
			   \key g \minor
			   \altMin \altMin \key g \major
%			   \altMaj \altMaj \bar "|."
			 }
      >>
      \new Lyrics \lyricsto sop { \verseOne   \chorus \verseFour \chorus }
      \new Lyrics \lyricsto sop { \verseTwo }
      \new Lyrics \lyricsto sop { \verseThree }
      \new Lyrics \lyricsto sop { \verseFive }
      \new Staff = men <<
	\new Voice = ten \clef "bass" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj
                                        }
					\key g \minor
					\tenMin \tenMin \key g \major
				      }
	\new Voice = bas \clef "bass" { \global \voiceTwo
                                        \repeat volta 3 {
                                          \basMaj \basMaj
                                        }
					\key g \minor
					\basMin \basMin \key g \major
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff = women <<
          \new Voice \TempoTrack
          \new Voice = sop { \global \voiceOne
                             \repeat volta 3 {
                               g'8. g'16 \sopMaj \sopChorus \section
                             } \key g \minor \break
                             g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                             g'8. g'16 \sopMaj \sopChorus
                           }
          \new Voice = alt { \global \voiceTwo
                             \repeat volta 3 {
                               \altMaj \altMaj
                             }
                             \key g \minor
                             \altMin \altMin \key g \major
                             \altMaj \altMaj \bar "|."
                           }
        >>
        \new Lyrics \lyricsto sop { \verseOne   \chorus
                                    \verseTwo   \chorus
                                    \verseThree \chorus
                                    \verseFour  \chorus
                                    \verseFive  \chorus
                                  }
        \new Staff = men <<
          \new Voice = ten \clef "bass" { \global \voiceOne
                                          \repeat volta 3 {
                                            \tenMaj \tenMaj \section
                                          }
                                          \key g \minor
                                          \tenMin \tenMin \section \key g \major
                                          \tenMaj \tenMin
                                        }
          \new Voice = bas \clef "bass" { \global \voiceTwo
                                          \repeat volta 3 {
                                            \basMaj \basMaj
                                          }
                                          \key g \minor
                                          \basMin \basMin \key g \major
                                          \basMaj \basMaj
                                        }
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
    <<
      \new ChoirStaff <<
        \new Staff = women <<
          \new Voice \TempoTrack
          \new Voice = sop { \global \voiceOne
                             \repeat volta 3 {
                               g'8. g'16 \sopMaj \sopChorus \section \break
                             } \key g \minor
                             g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                             g'8. g'16 \sopMaj \sopChorus
                           }
          \new Voice = alt { \global \voiceTwo
                             \repeat volta 3 {
                               \altMaj \altMaj
                             }
                             \key g \minor
                             \altMin \altMin \key g \major
                             \altMaj \altMaj \bar "|."
                           }
        >>
        \new Lyrics \lyricsto sop { \verseOne   \chorus
                                    \verseTwo   \chorus
                                    \verseThree \chorus
                                    \verseFour  \chorus
                                    \verseFive  \chorus
                                  }
        \new Staff = men <<
          \new Voice = ten \clef "bass" { \global \voiceOne
                                          \repeat volta 3 {
                                            \tenMaj \tenMaj \section
                                          }
                                          \key g \minor
                                          \tenMin \tenMin \section \key g \major
                                          \tenMaj \tenMin
                                        }
          \new Voice = bas \clef "bass" { \global \voiceTwo
                                          \repeat volta 3 {
                                            \basMaj \basMaj
                                          }
                                          \key g \minor
                                          \basMin \basMin \key g \major
                                          \basMaj \basMaj
                                        }
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
    \unfoldRepeats
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
        \addlyrics { \verseOne   \chorus
                     \verseTwo   \chorus
                     \verseThree \chorus
                     \verseFour  \chorus
                     \verseFive  \chorus
                   }
        >>
        \new Staff = alto <<
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
        \addlyrics { \verseOne   \chorus
                     \verseTwo   \chorus
                     \verseThree \chorus
                     \verseFour  \chorus
                     \verseFive  \chorus
                   }
        >>
        \new Staff = tenor <<
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
        \addlyrics { \verseOne   \chorus
                     \verseTwo   \chorus
                     \verseThree \chorus
                     \verseFour  \chorus
                     \verseFive  \chorus
                   }
        >>
        \new Staff = bass <<
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
          \addlyrics { \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
          \addlyrics { \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
          \addlyrics { \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = alto <<
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
          \addlyrics {
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
          \addlyrics { \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = tenor <<
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
          \addlyrics {
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = bass <<
          \magnifyStaff #4/7
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
          \addlyrics { \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
          \addlyrics { \tiny
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
        >>
        \new Staff = bass <<
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
          \addlyrics {
                       \verseOne   \chorus
                       \verseTwo   \chorus
                       \verseThree \chorus
                       \verseFour  \chorus
                       \verseFive  \chorus
                     }
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
    <<
      \new ChoirStaff <<
        \new Staff = soprano \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice { \global \voiceOne
                       \repeat volta 3 {
                         g'8. g'16 \sopMaj \sopChorus \section \break
                       } \key g \minor
                       g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \section \key g \major \break
                       g'8. g'16 \sopMaj \sopChorus
                     }
          \addlyrics \wordsMidi
        >>
        \new Staff = alto \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice { \global \voiceTwo
                       \repeat volta 3 {
                         \altMaj \altMaj
                       }
                       \key g \minor
                       \altMin \altMin \key g \major
                       \altMaj \altMaj \bar "|."
                     }
        >>
        \new Staff = tenor \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \clef "treble_8" { \global \voiceOne
                                        \repeat volta 3 {
                                          \tenMaj \tenMaj \section
                                        }
                                        \key g \minor
                                        \tenMin \tenMin \section \key g \major
                                        \tenMaj \tenMin
                                      }
        >>
        \new Staff = bass \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \clef "bass" { \global \voiceTwo
                                    \repeat volta 3 {
                                      \basMaj \basMaj
                                    }
                                    \key g \minor
                                    \basMin \basMin \key g \major
                                    \basMaj \basMaj
                                  }
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
