\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title    = "Jesus, Lover of my Soul"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  poet     = "Charles Wesley"
%  arranger    = "arranger"
%  opus        = "opus"

  composer = "Simeon Butler Marsh"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \repeat volta 3 {
    \textMark \markup { \box "A" } s1*4
    \textMark \markup { \box "B" } s1*4
    \textMark \markup { \box "C" } s1*4
    \textMark \markup { \box "D" } s1*4
  }
  s1*2
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  \voiceOne
  \repeat volta 3 {
    g'4 bes c bes
    bes4. aes8 g2 \caesura
    ees'4 d c bes
    g4 ees f2 \caesura
    g4 bes c bes
    bes4. aes8 g2 \caesura
    g4 a g f
    g4. f8 ees2 \caesura
    ees4 aes g aes
    des4 c bes2 \caesura
    c4 c d ees
    aes,4 g f2 \caesura
    g4 bes c bes
    bes4. aes8 g2 \caesura
    g4 aes g f
    g4. f8 ees2
  }
  ees1
  ees1
  \bar"|."
}

alto = \relative {
  \global
  \voiceTwo
  \repeat volta 3 {
    ees'4 ees c ees
    ees4 d ees2
    ees4 ees ees d
    ees4 ees d2
    ees4 ees ees8(aes) g4
    f4 ees d2
    ees4 ees ees ees
    ees4 d ees2
    c4 ees ees ees
    ees4 ees g2
    ees4 ees aes g
    f4 ees d2
    ees4 ees ees8(aes) g4
    f4 ees d2
    ees4 ees ees ees
    ees4 d ees2
  }
  c1
  bes1
  \bar"|."
}

tenor = \relative {
  \global
  \voiceOne
  \repeat volta 3 {
    bes4 bes ees bes
    c4 bes bes2
    bes4 bes aes aes
    bes4 a bes2
    bes4 g aes8(c) ees4
    d4 c b2
    c4 aes bes c
    bes4 aes g2
    aes4 c bes c
    bes4 c ees2
    c4 bes bes bes
    bes4 bes bes2
    bes4 g aes8(c) ees4
    d4 c b2
    c4 aes bes c
    bes4 aes g2
  }
  aes1
  g1
  \bar "|."
}

bass = \relative {
  \global
  \voiceTwo
  \repeat volta 3 {
    ees4 g aes g | f4 bes, ees2 | g4 g aes f | ees4 c bes2 |
    ees4 ees ees ees | f4 f g2 | c,4 c bes aes | bes4 bes ees2 |
    ees4 ees ees aes | g4 aes ees2 | aes4 g f ees | d4 ees bes2 |
    ees4 ees ees ees | f4 f g2 | c,4 c bes aes | bes4 bes ees2 |
  }
  aes,1
  ees'1
  \bar"|."
}

trebleaccOne = \relative c' {
  \global
  \bar"|."
}

trebleaccTwo = \relative c' {
  \global
  \bar"|."
}

bassaccOne = \relative c' {
  \global
  \bar"|."
}

bassaccTwo = \relative c {
  \global
  \bar"|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, lov -- er of my soul,
  Let me to Thy bos -- om fly,
  While the near -- er wat -- ers roll,
  While the temp -- est still is high:
  Hide me, O my Sav -- iour, hide,
  Till the storm of life is past;
  Safe in to the hav -- en guide;
  O re -- ceive my soul at last
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Oth -- er ref -- uge have I none;
  Hangs my help -- less soul on Thee;
  Leave, O leave me not a -- lone,
  Still sup -- port and com -- fort me:
  All my trust on Thee is stayed,
  All my help from Thee I bring;
  Cov -- er my def -- ense -- less head
  With the shad -- ow of Thy wing.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Plent -- eous grace with Thee is found,
  Grace to cov -- er all my sin;
  Let the heal -- ing streams a -- bound;
  Make and keep me pure with -- in:
  Thou of life the fount -- ain art,
  Free -- ly let me take of Thee;
  Spring Thou up with -- in my heart,
  Rise to all e -- tern -- i -- ty.
  A -- men
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " lov "er " "of " "my " "soul, "
  "\nLet " "me " "to " "Thy " bos "om " "fly, "
  "\nWhile " "the " near "er " wat "ers " "roll, "
  "\nWhile " "the " temp "est " "still " "is " "high: "
  "\nHide " "me, " "O " "my " Sav "iour, " "hide, "
  "\nTill " "the " "storm " "of " "life " "is " "past; "
  "\nSafe " "in " "to " "the " hav "en " "guide; "
  "\nO " re "ceive " "my " "soul " "at " "last\n"

  \set stanza = "2."
  "\nOth" "er " ref "uge " "have " "I " "none; "
  "\nHangs " "my " help "less " "soul " "on " "Thee; "
  "\nLeave, " "O " "leave " "me " "not " a "lone, "
  "\nStill " sup "port " "and " com "fort " "me: "
  "\nAll " "my " "trust " "on " "Thee " "is " "stayed, "
  "\nAll " "my " "help " "from " "Thee " "I " "bring; "
  "\nCov" "er " "my " def ense "less " "head "
  "\nWith " "the " shad "ow " "of " "Thy " "wing.\n"

  \set stanza = "3."
  "\nPlent" "eous " "grace " "with " "Thee " "is " "found, "
  "\nGrace " "to " cov "er " "all " "my " "sin; "
  "\nLet " "the " heal "ing " "streams " a "bound; "
  "\nMake " "and " "keep " "me " "pure " with "in: "
  "\nThou " "of " "life " "the " fount "ain " "art, "
  "\nFree" "ly " "let " "me " "take " "of " "Thee; "
  "\nSpring " "Thou " "up " with "in " "my " "heart, "
  "\nRise " "to " "all " e tern i "ty. "
  "\nA" "men "
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \alto
            \addlyrics \verseOne
            \addlyrics \verseTwo
            \addlyrics \verseThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\unfoldRepeats \soprano} {\unfoldRepeats \alto}
            \new NullVoice \alto
            \addlyrics {\verseOne \verseTwo \verseThree}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\unfoldRepeats \tenor} {\unfoldRepeats \bass}
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\unfoldRepeats \soprano} {\unfoldRepeats \alto}
            \new NullVoice \alto
            \addlyrics {\verseOne \verseTwo \verseThree}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\unfoldRepeats \tenor} {\unfoldRepeats \bass}
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
  \bookOutputSuffix "singlepage-sep"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\verseOne \verseTwo \verseThree}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \new NullVoice \alto
            \addlyrics {\verseOne \verseTwo \verseThree}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\verseOne \verseTwo \verseThree}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\verseOne \verseTwo \verseThree}
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
  \bookOutputSuffix "singlepage-sep-bass"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \new NullVoice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics {\verseOne \verseTwo \verseThree}
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

\book {
  \bookOutputSuffix "midi"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \new NullVoice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMidi
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
