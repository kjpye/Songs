\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let It Be"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Lennon & Paul McCartney"
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
  \partial 4
}

TempoTrack = {
  \tempo "Slowly, with a beat" 4=66
  s4
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "14a" } s4 s1*2
  \textMark \markup { \box "14b" }    s1*2
  \repeat volta 3 {
    \textMark \markup { \box "15a" }    s1*2
    \textMark \markup { \box "15b" }    s1*2
    \textMark \markup { \box "16a" }    s1*2
    \textMark \markup { \box "16b" }    s1*2
    \textMark \markup { \box "17a" }    s1*2
    \textMark \markup { \box "17b" }    s1
    \alternative { { s1 } { s2. } }
  }
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*2 |
  s1 | s2 s4.\> s8\mp |
  \repeat volta 3 {
    s1*4 | % 15
    s1*3 | s2. s4\mf | % 16
    s1*3 |
    \alternative {
      { s2.. s8\mp | }
      { s2. }
    }
  }
}

soprano = \relative {
  \global
  b'8 a \section | g4 b8 d e(d) d d | b16(a g8) g g b(g4.) |
  b8 b c b b a r b16 a | a8(g4.~4) r8 d16 d \section |
  \repeat volta 3 {
    d8 d e g d d g16 a8. | b8 b b a a g g4 | % 15a
    b8 b c b b a r b16 a | a8(g4.~4) r8 d |
    d8 d e g d d g16 a8. | b8 b b a a g g4 | % 16a
    b8 b c b b a r b16 a | a8(g4.~4) b8 a \section |
    g4 b8 d e(d) d d | b16(a g8) e d b'(g4.) | % 17a
    b8 b c b b a r b16 a |
    \alternative {
      { a8(g) d' c b4. d,8 }
      { a'8(g) d' c b4\fermata }
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Let it be, let it be, __ let it be, __ let it be. __
  Whis -- per words of wis -- dom let it be. __
  When I find my -- self in times of trou -- ble
  Moth -- er Ma -- ry comes to me,
  speak -- ing words of wis -- dom, let it be. __
  And in my hour of dark -- ness
  she is stand -- ing right in front of me,
  speak -- ing words of wis -- dom, let it be. __
  Let it be, let it be, __ let it be, __ let it be. __
  Speak -- ing words of wis -- dom, let it be, __ let it be.
  And
  be, let it be.
}

wordsTwo = \lyricmode {
  \repeat unfold 23 _
  when the bro -- ken heart -- ed peo -- ple
  liv -- ing in the world a -- gree,
  there will be an an -- swer, let it be. __
  For tho' they may be part -- ed
  there is still a chance that they will see,
  there will be an an -- swer, let it be. __
  _ _ _ _ _ _ _ _ _ _ _ _
  There will be an an -- swer,
}

wordsThree = \lyricmode {
  \repeat unfold 23 _
  when then night is cloud -- y
  there is still a light that shines on me,
  shine un -- til to -- mor -- row, let it be. __
  I wake up to the sound of mu -- sic,
  Moth -- er Ma -- ry comes to me
  speak -- ing words of wis -- dom, let it be. __
  _ _ _ _ _ _ _ _ _ _ _ _
  Speak -- ing words of wis -- dom,
}

wordsSingle = \lyricmode {
  Let it be, let it be, __ let it be, __ let it be. __
  Whis -- per words of wis -- dom let it be. __

  \set stanza = "1."
  When I find my -- self in times of trou -- ble
  Moth -- er Ma -- ry comes to me,
  speak -- ing words of wis -- dom, let it be. __
  And in my hour of dark -- ness
  she is stand -- ing right in front of me,
  speak -- ing words of wis -- dom, let it be. __
  Let it be, let it be, __ let it be, __ let it be. __
  Speak -- ing words of wis -- dom, let it be, __ let it be.

  \set stanza = "2."
  And when the bro -- ken heart -- ed peo -- ple
  liv -- ing in the world a -- gree,
  there will be an an -- swer, let it be. __
  For tho' they may be part -- ed
  there is still a chance that they will see,
  there will be an an -- swer, let it be. __
  Let it be, let it be, __ let it be, __ let it be. __
  There will be an an -- swer, let it be, __ let it be.

  \set stanza = "3."
  And when then night is cloud -- y
  there is still a light that shines on me,
  shine un -- til to -- mor -- row, let it be. __
  I wake up to the sound of mu -- sic,
  Moth -- er Ma -- ry comes to me
  speak -- ing words of wis -- dom, let it be. __
  Let it be, let it be, __ let it be, __ let it be. __
  Speak -- ing words of wis -- dom, let it be, __ let it be.
}

wordsMidi = \lyricmode {
  "Let " "it " "be, " "let " "it " "be, "  "let " "it " "be, "  "let " "it " "be. " 
  "\nWhis" "per " "words " "of " wis "dom " "let " "it " "be. " 

  \set stanza = "1."
  "\nWhen " "I " "find " my "self " "in " "times " "of " trou "ble "
  "\nMoth" "er " Ma "ry " "comes " "to " "me, "
  "\nspeak" "ing " "words " "of " wis "dom, " "let " "it " "be. " 
  "\nAnd " "in " "my " "hour " "of " dark "ness "
  "\nshe " "is " stand "ing " "right " "in " "front " "of " "me, "
  "\nspeak" "ing " "words " "of " wis "dom, " "let " "it " "be. " 
  "\nLet " "it " "be, " "let " "it " "be, "  "let " "it " "be, "  "let " "it " "be. " 
  "\nSpeak" "ing " "words " "of " wis "dom, " "let " "it " "be, "  "let " "it " "be. "

  \set stanza = "2."
  "\nAnd " "when " "the " bro "ken " heart "ed " peo "ple "
  "\nliv" "ing " "in " "the " "world " a "gree, "
  "\nthere " "will " "be " "an " an "swer, " "let " "it " "be. " 
  "\nFor " "tho' " "they " "may " "be " part "ed "
  "\nthere " "is " "still " "a " "chance " "that " "they " "will " "see, "
  "\nthere " "will " "be " "an " an "swer, " "let " "it " "be. " 
  "\nLet " "it " "be, " "let " "it " "be, "  "let " "it " "be, "  "let " "it " "be. " 
  "\nThere <" "will " "be " "an " an "swer, " "let " "it " "be, "  "let " "it " "be. "

  \set stanza = "3."
  "\nAnd " "when " "then " "night " "is " cloud "y "
  "\nthere " "is " "still " "a " "light " "that " "shines " "on " "me, "
  "\nshine " un "til " to mor "row, " "let " "it " "be. " 
  "\nI " "wake " "up " "to " "the " "sound " "of " mu "sic, "
  "\nMoth" "er " Ma "ry " "comes " "to " "me "
  "\nspeak" "ing " "words " "of " wis "dom, " "let " "it " "be. " 
  "\nLet " "it " "be, " "let " "it " "be, "  "let " "it " "be, "  "let " "it " "be. " 
  "\nSpeak" "ing " "words " "of " wis "dom, " "let " "it " "be, "  "let " "it " "be. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\mf |
}

alto = \relative {
  \global
  g'8 fis \section | e4 g8 g fis4 8 8 | g16(fis e8) e d d(b4.) |
  g'8 g a g fis fis r fis16 16 | e2(d4) r8 b16 b \section |
  \repeat volta 3 {
    b8 b b b a a b16 e8. | g8 g g fis e e e4 | % 15a
    g8 g a g fis fis r fis16 16 | e4(d8 e d4) r8 b |
    b8 b b b a a b16 e8. | g8 g g fis e e e4 | % 16a
    g8 g a g fis fis r fis16 16 | e4(d8 e d4) g8 fis \section |
    e4 g8 g f4 8 8 | g16(fis e8) c b d(b4.) | % 17a
    g'8 g a g fis fis r fis16 16 |
    \alternative {
      { e4 g8 fis g4. b,8 | }
      { e4 g8 e d4\fermata }
    }
  }
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\mf |
}

tenor = \relative {
  \global
  d8 8 \section | b4 e8 b d4 8 a | e'16(d c8) c b g2 |
  d'8 d d d d d r d16 d | c2(b4) r8 g16 g \section |
  \repeat volta 3 {
    g8 g g g fis fis g16 c8. | d8 d d d c c c4 | % 15a
    d8 d d d d d r d16 d | c4(b8 c b4) r8 g |
    g8 g g g fis fis g16 c8. | d8 d d d c c c4 | % 16a
    d8 d d d d d r d16 d | c4(b8 c b4) d8 d \section |
    b4 e8 b d4 8 a | e'16(d c8) c b g2 | % 17a
    d'8 d d d d d r d16 d |
    \alternative {
      { c4 b8 c d4. g,8 | }
      { c4 b8 c g4\fermata }
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  b'8 a \section | g4 b8 d e d d d | b16 a g8 g g b g4. |
  
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  g'8 fis \section | e4 g8 g fis4 8 8 | g16 fis e8 e d d b4. |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  d8 8 \section | b4 e8 b d4 8 a | e'16 d c8 c b g2 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
%  \bar "|."
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsSop
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \transpose c c' \tenor
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat-noacc"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat-noacc-bass"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
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

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single-noacc"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsSingle
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
  \bookOutputSuffix "singlepage-noacc"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsSingle
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
  \bookOutputSuffix "singlepage-noacc-sop"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
%            \addlyrics {\tiny \wordsSingle}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
            \new Voice \tenor
%            \addlyrics \wordsSingle
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
  \bookOutputSuffix "singlepage-noacc-bass"
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
%            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
            \addlyrics \wordsSingle
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
  \bookOutputSuffix "midi"
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
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \new Voice \tenor
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
