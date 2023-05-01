\version "2.25.0"

\include "predefined-ukulele-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Silver Threads Among te Gold"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "H. P. Danks"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "E. E. Rexford"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante Catabile" 4=90
  s1*23
  s2 \tempo 4=30 s8 \tempo 4=90 s4.
  s1 | s | s2. \tempo 4=26 s8 \tempo 4=90 s | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*4
}

soprano = \relative {
  \global
  R1*4 \section
  d''4. ees8 d f, ees c' | bes2(d,4) r | f4. g8 a ees' g,8. ees'16 |
  d2. r4 | 4. ees8 d f, ees8. c'16 | bes2(d,4) r |
  f4. g8 a ees' g,8. a16 | bes2. r4 | a4. bes8 c f, ees a |
  bes4. f8 d'4 r | c4. 8 8 8 d8. c16 | c2. r4 |
  d4. ees8 d f, ees c' | bes2(d,4) r | f4. g8 a ees' d\fermata c | bes2. r4 |
  \section \sectionLabel "CHORUS."
  a4. bes8 c f, ees a | bes4. f8 d'4 r | c4. 8 8 8 d8. c16 | c2.\fermata r4 |
  d4. c8 d f, ees8. c'16 | bes2(d,4) r | f4. g8 a ees' d\fermata c | bes2. r4 |
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup { \fontsize #-2 \musicglyph "scripts.ufermata" }
  \bar "|."
}

chorus = \lyricmode {
  Dar -- ling, I am grow -- ing, grow -- ing old, __
  Sil -- ver threads a -- mong the gold
  Shine up -- on my brow to -- day, __
  Life is fad -- ing fast a -- way.
}

verseOne = \lyricmode {
  \set stanza = "1."
  Dar -- ling, I am grow -- ing old, __
  Sil -- ver threads a -- mong the gold
  Shine up -- on my brow to -- day, __
  Life is fad -- ing fast a -- way.
  But my dar -- ling, you will be, will be—
  Al -- ways young and fair to me,
  Yes, my dar -- ling, you will be __
  Al -- ways young and fair to me.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  When your hair is sil -- ver white __
  And your cheeks no long -- er bright
  With the ros -- es of the May, __
  I will kiss your lips and say—
  "\"Oh," my dar -- ling, mine a -- lone, a -- lone,
  You have nev -- er old -- er grown;
  Yes, my dar -- ling, mine a -- lone, __
  You have nev -- er old -- er "grown!\""
}

verseThree = \lyricmode {
  \set stanza = "3."
  Love can nev -- er more grow old, __
  Locks may lose their brown and gold;
  Cheeks may fade and hol -- low grow, __
  But the hearts that love will know
  Nev -- er, nev -- er win -- ter's frost and chill,
  Sum -- mer warmth is in them still.
  Nev -- er win -- ter's frost and chill, __
  Sum -- mer warmth is in them still.
}

wordsMidi = \lyricmode {
  "Dar" "ling, " "I " "am " grow "ing " "old, " 
  "\nSil" "ver " "threads " a "mong " "the " "gold "
  "\nShine " up "on " "my " "brow " to "day, " 
  "\nLife " "is " fad "ing " "fast " a "way. "
  "\nBut " "my " dar "ling, " "you " "will " "be, " "will " "be— "
  "\nAl" "ways " "young " "and " "fair " "to " "me, "
  "\nYes, " "my " dar "ling, " "you " "will " "be " 
  "\nAl" "ways " "young " "and " "fair " "to " "me. "
  "\nDar" "ling, " "I " "am " grow "ing, " grow "ing " "old, " 
  "\nSil" "ver " "threads " a "mong " "the " "gold "
  "\nShine " up "on " "my " "brow " to "day, " 
  "\nLife " "is " fad "ing " "fast " a "way.\n"

  "\nWhen " "your " "hair " "is " sil "ver " "white " 
  "\nAnd " "your " "cheeks " "no " long "er " "bright "
  "\nWith " "the " ros "es " "of " "the " "May, " 
  "\nI " "will " "kiss " "your " "lips " "and " "say— "
  "\n\"Oh, " "my " dar "ling, " "mine " a "lone, " a "lone, "
  "\nYou " "have " nev "er " old "er " "grown; "
  "\nYes, " "my " dar "ling, " "mine " a "lone, " 
  "\nYou " "have " nev "er " old "er " "grown!\" "
  "\nDar" "ling, " "I " "am " grow "ing, " grow "ing " "old, " 
  "\nSil" "ver " "threads " a "mong " "the " "gold "
  "\nShine " up "on " "my " "brow " to "day, " 
  "\nLife " "is " fad "ing " "fast " a "way.\n"

  "\nLove " "can " nev "er " "more " "grow " "old, " 
  "\nLocks " "may " "lose " "their " "brown " "and " "gold; "
  "\nCheeks " "may " "fade " "and " hol "low " "grow, " 
  "\nBut " "the " "hearts " "that " "love " "will " "know "
  "\nNev" "er, " nev "er " win "ter's " "frost " "and " "chill, "
  "\nSum" "mer " "warmth " "is " "in " "them " "still. "
  "\nNev" "er " win "ter's " "frost " "and " "chill, " 
  "\nSum" "mer " "warmth " "is " "in " "them " "still. "
  "\nDar" "ling, " "I " "am " grow "ing, " grow "ing " "old, " 
  "\nSil" "ver " "threads " a "mong " "the " "gold "
  "\nShine " up "on " "my " "brow " to "day, " 
  "\nLife " "is " fad "ing " "fast " a "way. "
}

alto = \relative {
  \global
  R1*4
  f'4. g8 f d c ees | d2(bes4) r | ees4. 8 8 8 8. g16 | f2. r4 |
  f4. g8 f d c8. ees16 | d2(bes4) r | ees4. 8 8 8 8. 16 | d2. r4 |
  ees4. 8 8 8 c ees | d4. 8 f4 r | 4. 8 e e e8. 16 | ees2. r4 |
  f4. g8 f d c ees | d2(bes4) r | ees4. 8 8 g f ees | d2. r4 |
  ees4. 8 8 8 c ees | d4.(8 f4) r | 4. 8 e e e8. 16 | ees2. r4 |
  f4. g8 f d c8. ees16 | d2(bes4) r | ees4. 8 8 g f ees | d2. r4 |
%  \bar "|."
}

tenor = \relative {
  \global
  R1*4
  bes4. 8 8 8 a a | f2~4 r | a4. bes8 c a a8. 16 | bes2. r4 |
  bes4. 8 8 8 a8. 16 | f2~4 r | a4. bes8 c a a8. c16 | bes2. r4 |
  c4. bes8 a a a c | bes4. 8 4 r | a4. 8 bes8 8 8. 16 | a2. r4 |
  bes4. 8 8 8 a a | f2~4 r | a4. bes8 c a a a | f2. r4 |
  c'4. bes8 a a a c | bes4. 8 4 r | a4. 8 bes8 8 8. 16 | a2. r4 |
  bes4. 8 8 8 a8. 16 | f2~4 r | a4. bes8 c a a a | f2. r4 |
%  \bar "|."
}

bass = \relative {
  \global
  R1*4
  bes,4. 8 8 8 f'8 f | bes,2~4 r | f'4. 8 8 8 8. 16 | bes,2. r4 |
  bes4. 8 8 8 f'8. 16 | bes,2~4 r | f'4. 8 8 8 8. 16 | bes,2. r4 |
  f'4. 8 8 8 8 8 | bes,4. 8 4 r | f'4. 8 g8 8 8. 16 | f2. r4|
  bes,4. 8 8 8 f' f | bes,2~4 r | f'4. 8 8 8 8 8 | bes,2. r4 \section |
  f'4. 8 8 8 8 8 | bes,4. 8 4 r | f'4. 8 g8 8 8. 16 | f2. r4 |
  bes,4. 8 8 8 f'8. 16 | bes,2~4 r | f'4. 8 8 8 8 8 | bes,2. r4 |
%  \bar "|."
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 3 {
    bes2 s8 % ????
  }
}

pianoRHone = \relative {
  \global
  d''4.(ees8 d f, ees c') | bes2(d,4) r | f4.(g8 a ees' g,8. 16) | bes8(f c' f, bes2) \section |
  r8 f,(<bes d> f) r8 f(<a ees'> f) | r8 f(<bes d> f) r f(q f) | r8 f(<a ees'> f) r f(q f) |
  r8 f'( \appoggiatura {g16 f} e8 f g a bes c) | d4.(ees8 d f, ees8. c'16) bes2(d,4) r |
  f4.(g8 a ees' g,8. a16) | bes8(f d' f, bes4) r | ees,8(f a f c' f, ees a) |
  d,8(f bes f d' f, d f) | c(f a f c' c, bes' e,) | ees(f a c) g'(f e ees) |
  d4.(ees8 d f, ees c') | bes2(d,4) r | <a c ees f>2. q4\fermata | <ees' g>(ees d2) \section |
  a'4. bes8 c f, ees a | bes4. f8 e'4 r | c4. 8 8 8 d8. c16 | c2~8\fermata f, e f |
  d'4.(ees8 d f, ees c') | bes2(d,8 f d' bes) | f4.(g8 a ees' d\fermata c) | bes2. r4 |
%  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
%  \mark \markup { \fontsize #-2 \musicglyph "scripts.ufermata" }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \partCombineApart
  s1*2 | ees'2. 4 | d4 ees d2 \section |
  s1*15 |
  bes1 |
  ees4-! 4 4-! 4-! | d-! d-! f-! r4 | f-! f-! e-! e-! | f e ees r |
  f4 f ees ees | d d bes r | c ees ees ees | d(ees d) \partCombineAutomatic r |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s | s | s |
  s1\p | s | s |
  s1*3 |
  s1*3 |
  s1 | s | s2 s-\markup\italic rall. |
  s1-\markup\italic "a tempo" | s | s | s2 s-\markup\italic rall. |
  s1*4 |
  s1 | s | s | s4 s2.-\markup\italic rall.
}

pianoLHone = \relative {
  \global \oneVoice
  bes,8(f' <bes d> f) f,(f' <a c> f) |
  bes,8(f' <bes d> f) bes,(f' <a c> f) |
  f,8(f' <bes d> f) f,(f' <a c> f) |
  <bes, bes'>4 <f' a> <bes, bes'>2 \section |
  <bes, bes'>4 r f' r | q r q r | f r f r |
  <c bes'>4 <f' bes d> q q | bes,8(f' <bes d> f) f,(f' <a c> f) | bes,(f' <bes d> f) bes,(f' q f) |
  f,(f' <a c ees> f) f,(f' q f) | <bes d>2~ (bes8 f d bes | f4) c''( a f) |
  bes,4(d f bes) | a(f e c) | <f a c>2. r4 |
  bes,8(f' <bes d> f) f,(f' <a c> f) | bes,(f' <bes d> f) bes,(f' q f) | <f, f'>2. 4\fermata | \voiceOne f'(g f2) \section |
  c'4-! c-! a-! c-! | bes-! 4-! 4-! r | a-! a-! c-! bes-! | a g8 bes a4\fermata r |
  bes4 4 a a | bes f f r | a a c a\fermata | bes(g f) r4 |
%  \bar "|."
}

pianoLHtwo = \relative {
  \global \partCombineApart
  s1*19 |
  bes,1 |
  f'4-! f-! f-! f-! | bes,-! bes-! bes8 d f bes | f4-! f-! c-! c-! | f c f\fermata r |
  bes,4 4 f' f | bes,2. r4 | f' f f f\fermata | bes,2. \partCombineAutomatic r4 |
%  \bar "|."
}

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
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics { \verseOne \chorus }
            \addlyrics \verseTwo
            \addlyrics \verseThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
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
    }
  }
}

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\soprano \soprano \soprano} {\alto \alto \alto}
            \new NullVoice {\repeat unfold 3 \soprano}
            \addlyrics { \verseOne \chorus \verseTwo \chorus \verseThree \chorus}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\repeat unfold 3 \tenor} \repeat unfold 3 {\bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine {\repeat unfold 3 \pianoRHone} {\repeat unfold 3 \pianoRHtwo}
          >>
          \new Dynamics {\repeat unfold 3 \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\repeat unfold 3 \pianoLHone} {\repeat unfold 3 \pianoLHtwo}
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
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
    }
  }
}

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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine {\soprano \soprano \soprano} {\alto \alto \alto}
            \new NullVoice {\repeat unfold 3 \soprano}
            \addlyrics { \verseOne \chorus \verseTwo \chorus \verseThree \chorus}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\repeat unfold 3 \tenor} {\repeat unfold 3 \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \partCombine {\repeat unfold 3 \pianoRHone} {\repeat unfold 3 \pianoRHtwo}
          >>
          \new Dynamics {\repeat unfold 3 \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\repeat unfold 3 \pianoLHone} {\repeat unfold 3 \pianoLHtwo}
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
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
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\repeat unfold 3 \soprano}
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"/Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\repeat unfold 3 \alto}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice {\repeat unfold 3 \tenor}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\repeat unfold 3 \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice {\repeat unfold 3 \pianoRHone}
            \new Voice {\repeat unfold 3 \pianoRHtwo}
            \new Dynamics {\repeat unfold 3 \dynamicsPiano}
            \new Voice {\repeat unfold 3 \pianoLHone}
            \new Voice {\repeat unfold 3 \pianoLHtwo}
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
