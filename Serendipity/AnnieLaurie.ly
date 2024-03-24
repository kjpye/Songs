\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Annie Laurie"
%  subtitle    = "Sankey No. X"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Lady John Scott"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "William Douglas"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
%  \textMark \markup { \box \bold "A" } s2.*6
%  \textMark \markup { \box \bold "B" } s2.*5
%  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderately quick" 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8.[d16] | c4. 8 c'4. b8 |
  \tag #'dash    {b4 a2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {b4 a2 \slurDashed 4    \slurSolid |}
  \tag #'v3      {b4 a2 \slurDashed 8 8  \slurSolid |}
  g4. e8 4 d8[c] |
  \tag #'dash    {d2 r4 \bar "|" \break \slurDashed e8.(d16) \slurSolid |}
  \tag #'v2      {d2 r4 \bar "|" \break             e8.(d16)            |}
  \tag #'(v1 v3) {d2 r4 \bar "|" \break             e8. d16             |}
  c4. 8 c'4. b8 | 4 a2 4 | g4. e8 d4. c8 | 2 r4 g' |
  c4. 8 d4. 8 |
  \tag #'dash    {e2  r4 \slurDashed g,8(8) \slurSolid |}
  \tag #'(v1 v2) {e'2 r4             g,4               |}
  \tag #'v3      {e'2 r4             g,8 8             |}
  c4. 8 d4. 8 | e2. \bar "|" \break 8. d16 | c4. b8 a4 c8[a] | g4 e2 8[d] | c(c'4) e,8 d4. c8 | 2.
}

alto = \relative {
  \autoBeamOff
  b4 | c4. 8 e4. g8 |
  \tag #'dash    {g4 f2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {g4 f2             4               |}
  \tag #'v3      {g4 f2             8 8             |}
  e4. c8 4 4 |
  \tag #'dash    {b2 r4 \slurDashed 8.(16) \slurSolid |}
  \tag #'v2      {b2 r4             4                 |}
  \tag #'(v1 v3) {b2 r4             8. 16             |}
  c4. 8 e4. g8 | 4 f2 4 | e4. c8 b4. c8 | 2 r4 \section e |
  e4. 8 g4. 8 |
  \tag #'dash    {g2 r4 \slurDashed e8(8) \slurSolid |}
  \tag #'(v1 v2) {g2 r4             e                |}
  \tag #'v3      {g2 r4             e8 8             |}
  4. 8 f4. a8 | gis2. e8. f16 | e4. g8 f4 4 | e4 c2 b4 | c8(e4) c8 b4. c8 | 2.  
}

tenor = \relative {
  \autoBeamOff
  g8.[f16] | e4. 8 g4. c8 |
  \tag #'dash    {c4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {c4 2             4               |}
  \tag #'v3      {c4 2             8 8             |}
  c4. g8 4 fis |
  \tag #'dash    {g2 r4 \slurDashed 8.(f16) \slurSolid |}
  \tag #'v2      {g2 r4             8.(f16)            |}
  \tag #'(v1 v3) {g2 r4             8. f16             |}
  e4. 8 g4. c8 | 4 2 4 | 4. g8 f4. e8 | 2 r4 \section c' |
  g4. 8 b4. 8 |
  \tag #'dash    {c2 r4 \slurDashed c8(8) \slurSolid |}
  \tag #'(v1 v2) {c2 r4             c4               |}
  \tag #'v3      {c2 r4             c8 8             |}
  4. 8 a4. 8 | b2. 8. 16 | c4. 8 4 a8[c] | 4 g2 8[f] | e(g4) 8 f4. e8 | 2.
}

bass = \relative {
  \autoBeamOff
  g,4 | c4. 8 4. e8 |
  \tag #'dash    {f4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {f4 2             4               |}
  \tag #'v3      {f4 2             8 8             |}
  c4. 8 a4 d |
  \tag #'dash    {g,2 r4 \slurDashed 8.(16) \slurSolid |}
  \tag #'v2      {g 2 r4             4                 |}
  \tag #'(v1 v3) {g 2 r4             8. 16             |}
  c4. 8 4. e8 | f4 2 4 | g4. 8 g,4. c8 | 2 r4 \section 4 |
  c4. 8 g'4. 8 |
  \tag #'dash    {c2 r4 \slurDashed c8(8) \slurSolid  |}
  \tag #'(v1 v2) {c2 r4             c4                |}
  \tag #'v3      {c2 r4             c8 8              |}
  a4. 8 f4. 8 | e2. gis8. 16 |  a4. e8 f4 4 | c4 2 g4 | c4. 8 g4. c8 | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Max -- well -- ton's braes are bon -- nie,
  Where ear -- ly fa's the dew,
  \nom And 'twas \yesm there that An -- nie Lau -- rie
  Gave me her prom -- ise true;
  Gave me her prom -- ise true,
  Which ne'er for -- got will be,
  And for bon -- nie An -- nie Lau -- rie
  I'd lay me doon and dee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Her brow is like the snow -- drift,
  Her throat is like the swan;
  Her face it is the fair -- est
  That e'er the sun shone on;
  That e'er the sun shone on,
  And dark blue is her e'e,
  And for bon -- nie An -- nie Lau -- rie
  I'd lay me doon and dee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Like dew on "th' gow" -- an ly -- ing
  \nom Is th' \yesm fa' "o' her" fair -- y feet,
  \nom And like \yesm winds in sum -- mer sigh -- ing,
  Her voice is low and sweet,
  Her voice is low and sweet,
  \nom And she's \yesm a' the world to me,
  And for bon -- nie An -- nie Lau -- rie
  I'd lay me doon and dee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Max" well "ton's " "braes " "are " bon "nie, "
  "\nWhere " ear "ly " "fa's " "the " "dew, "
  "\nAnd " "'twas " "there " "that " An "nie " Lau "rie "
  "\nGave " "me " "her " prom "ise " "true; "
  "\nGave " "me " "her " prom "ise " "true, "
  "\nWhich " "ne'er " for "got " "will " "be, "
  "\nAnd " "for " bon "nie " An "nie " Lau "rie "
  "\nI'd " "lay " "me " "doon " "and " "dee.\n"

  \set stanza = "2."
  "\nHer " "brow " "is " "like " "the " snow "drift, "
  "\nHer " "throat " "is " "like " "the " "swan; "
  "\nHer " "face " "it " "is " "the " fair "est "
  "\nThat " "e'er " "the " "sun " "shone " "on; "
  "\nThat " "e'er " "the " "sun " "shone " "on, "
  "\nAnd " "dark " "blue " "is " "her " "e'e, "
  "\nAnd " "for " bon "nie " An "nie " Lau "rie "
  "\nI'd " "lay " "me " "doon " "and " "dee.\n"

  \set stanza = "3."
  "\nLike " "dew " "on " "th' gow" "an " ly "ing "
  "\nIs " "th' " "fa' " "o' her " fair "y " "feet, "
  "\nAnd " "like " "winds " "in " sum "mer " sigh "ing, "
  "\nHer " "voice " "is " "low " "and " "sweet, "
  "\nHer " "voice " "is " "low " "and " "sweet, "
  "\nAnd " "she's " "a' " "the " "world " "to " "me, "
  "\nAnd " "for " bon "nie " An "nie " Lau "rie "
  "\nI'd " "lay " "me " "doon " "and " "dee. "
}

wordsMidiMen = \lyricmode {
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
                                %    \articulate
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice { \repeat unfold \verses \TempoTrack     }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano
                     \keepWithTag #'v2 \soprano
                     \keepWithTag #'v3 \soprano
                     \bar "|." }
        \addlyrics \wordsMidi
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|." }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
        midiInstrument = "choir aahs"
      }
      <<
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics \wordsMidiMen
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
        midiInstrument = "choir aahs"
      }
      <<
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
                                % Joint soprano/alto staff
      \new Staff = women \with {
        \accidentalStyle Score.modern-cautionary
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \RehearsalTrack
        \new Voice \TempoTrack
        \new NullVoice = "aligner" {\keepWithTag #'dash \soprano}
        \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
        \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
        \new Lyrics \lyricsto "aligner"   \wordsTwo
        \new Lyrics \lyricsto "aligner"   \wordsThree
      >>
                                % Joint tenor/bass staff
      \new Staff = men \with {
        \accidentalStyle Score.modern-cautionary
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
        \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with {
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with {
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
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
    \singlescore
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
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano \nl
                     \keepWithTag #'v2 \soprano \nl
                     \keepWithTag #'v3 \soprano \nl
                     \bar "|." }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|."
                   }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
                   }
        \addlyrics { \wordsOne   \chorus
                     \wordsTwo   \chorus
                     \wordsThree \chorus
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
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano \nl
                     \keepWithTag #'v2 \soprano \nl
                     \keepWithTag #'v3 \soprano \nl
                     \bar "|." }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|."
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
                   }
        \addlyrics { \tiny \wordsOne   \chorus
                     \wordsTwo   \chorus
                     \wordsThree \chorus
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
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano \nl
                     \keepWithTag #'v2 \soprano \nl
                     \keepWithTag #'v3 \soprano \nl
                     \bar "|." }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|."
                   }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
                   }
        \addlyrics { \tiny \wordsOne   \chorus
                     \wordsTwo   \chorus
                     \wordsThree \chorus
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
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano \nl
                     \keepWithTag #'v2 \soprano \nl
                     \keepWithTag #'v3 \soprano \nl
                     \bar "|." }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|."
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics{ \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
                   }
        \addlyrics { \tiny \wordsOne   \chorus
                     \wordsTwo   \chorus
                     \wordsThree \chorus
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
                                % Soprano staff
      \new Staff = soprano \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global
                     \keepWithTag #'v1 \soprano \nl
                     \keepWithTag #'v2 \soprano \nl
                     \keepWithTag #'v3 \soprano \nl
                     \bar "|." }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Alto staff
      \new Staff = alto \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \new Voice { \global
                     \keepWithTag #'v1 \alto \nl
                     \keepWithTag #'v2 \alto \nl
                     \keepWithTag #'v3 \alto \nl
                     \bar "|."
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Tenor staff
      \new Staff = tenor \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global
                     \keepWithTag #'v1 \tenor
                     \keepWithTag #'v2 \tenor
                     \keepWithTag #'v3 \tenor
                   }
        \addlyrics{ \tiny \wordsOne   \chorus
                    \wordsTwo   \chorus
                    \wordsThree \chorus
                  }
      >>
                                % Bass staff
      \new Staff = bass \with {
        \accidentalStyle Score.modern-cautionary
      }
      <<
        \clef "bass"
        \new Voice { \global
                     \keepWithTag #'v1 \bass
                     \keepWithTag #'v2 \bass
                     \keepWithTag #'v3 \bass
                   }
        \addlyrics { \wordsOne   \chorus
                     \wordsTwo   \chorus
                     \wordsThree \chorus
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
