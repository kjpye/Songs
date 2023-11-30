\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Merry Christmas"
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
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Brightly (with movement)" 4=120
  \repeat volta 2 {
    s1*16
  }
  \tempo Maestoso 4=110
  s1*16
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
                                %  \mark \markup { \box "1a" } s2.*4
  \repeat volta 2 {
    \textMark \markup { \box "47a" } s1*4
    \textMark \markup { \box "47b" } s1*5 
    \textMark \markup { \box "48a" } s1*5
    \textMark \markup { \box "48b" } s1*2
  }
  s1*3
  \textMark \markup { \box "48c" } s1*4
  \textMark \markup { \box "49a" } s1*5
  \textMark \markup { \box "49b" } s1*4
}

dynamicsVoice = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf| s4 s2.\< | s1\f | s |
    s1\mf | s4 s2.\< | s1\f | s | s\mp |
    s1\cresc | s | s2\< s\! | s1\mf | s4 s2.\< | % 48a
    s1\! | s |
  }
  s1\f s4 s2.\< | s1\! |
  s1 | s\mp | s | s\f |
  s1 | s\mf | s2\< s\! | s s\cresc | s1 | % 49a
  s1\f | s4 s2.\< | s1\omit\ff-\markup{\dynamic ff \italic "poco allargendo"} | s |
}

soprano = \relative {
  \global \voiceOne
  \repeat volta 2 {
    f'4 a c2 | d8(c) bes4 c2 | 4. d8 c4 a | g2 f |
    f4 a c2 | d8(c) bes4 c2 | f4. d8 c a g f | g2 f | bes4 a g2 |
    c4 bes a2 | d4. c8 bes4 a | 2 g | f4 a c2 | d8(c) bes4 c2 | % 48a
    f4. d8 c4 a | g2 f |
    \once\set Staff.caesuraType = #'((underlying-bar-line . ":|"))
    \caesura^\fermata
  }
  f4 a c2 | d8(c) bes4 c2 | 4. d8 c4 a |
  g2 f | f4 a c2 | d8(c) bes4 c2 | f4. d8 c a g f |
  g2 f | bes4 a g2 | c4 bes a2 | d4. c8 bes4 a | 2 g | % 49a
  f4 a c2 | d8(c) bes4 c2 | f4. d8 c a g f | g2 f |
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Sun gleams bright, Hearts are light,
  Mer -- ry, mer -- ry Christ -- mas.
  Bells ring out, Child -- ren shout,
  Mer -- ry, mer -- ry, mer -- ry Christ -- mas.
  Sheep in fold, Shine like gold,
  As the day is dawn -- ing,
  Rid -- ing by Stock -- men cry,
  “Wel -- come Christ -- mas morn -- ing”
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Gold -- en day, When we say,
  Mer -- ry, mer -- ry Christ -- mas.
  In the street, Where we meet,
  Mer -- ry, mer -- ry, mer -- ry Christ -- mas.
  And with pride, Far and wide,
  All our homes a -- dorn -- ing:
  Earth and sky, Sound the cry,
  “Wel -- come Christ -- mas morn -- ing”

  \set stanza = "3."
  So with joy, Man and boy,
  Sing with us to -- geth -- er;
  On this morn, Christ __ was born,
  Mer -- ry, mer -- ry, mer -- ry Christ -- mas.
  Raise the song, Loud and strong,
  In the shin -- ing weath -- er,
  Joy bells ring, Christ is King,
  Mer -- ry, mer -- ry, mer -- ry Christ -- mas.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sun " "gleams " "bright, " "Hearts " "are " "light, "
  "\nMer" "ry, " mer "ry " Christ "mas. "
  "\nBells " "ring " "out, " Child "ren " "shout, "
  "\nMer" "ry, " mer "ry, " mer "ry " Christ "mas. "
  "\nSheep " "in " "fold, " "Shine " "like " "gold, "
  "\nAs " "the " "day " "is " dawn "ing, "
  "\nRid" "ing " "by " Stock "men " "cry, "
  "\n“Wel" "come " Christ "mas " morn "ing”\n"

  \set stanza = "2."
  "\nGold" "en " "day, " "When " "we " "say, "
  "\nMer" "ry, " mer "ry " Christ "mas. "
  "\nIn " "the " "street, " "Where " "we " "meet, "
  "\nMer" "ry, " mer "ry, " mer "ry " Christ "mas. "
  "\nAnd " "with " "pride, " "Far " "and " "wide, "
  "\nAll " "our " "homes " a dorn "ing: "
  "\nEarth " "and " "sky, " "Sound " "the " "cry, "
  "\n“Wel" "come " Christ "mas " morn "ing”\n"

  \set stanza = "3."
  "\nSo " "with " "joy, " "Man " "and " "boy, "
  "\nSing " "with " "us " to geth "er; "
  "\nOn " "this " "morn, " "Christ "  "was " "born, "
  "\nMer" "ry, " mer "ry, " mer "ry " Christ "mas. "
  "\nRaise " "the " "song, " "Loud " "and " "strong, "
  "\nIn " "the " shin "ing " weath "er, "
  "\nJoy " "bells " "ring, " "Christ " "is " "King, "
  "\nMer" "ry, " mer "ry, " mer "ry " Christ "mas. "
}

alto = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    c'4 f g2 | f4 4 2 | 4 a8(f) g4 f | d(e) f2 |
    c4 f f2 | 4 4 4(g) | a bes e,8 8 8 d | 4(e) f2 | d4 d e2 |
    f4 e f(ees) | d f e f | f(d) e2 | f4 f f(e) | d f f(g) | % 47a
    a4 g g f | d(e) f2 |
  }
  f4 a c2 | d8(c) bes4 c2 | 4. d8 c4 a |
  g2 f | 4 a c2 | d8(c) bes4 c2 | \tiny \parenthesize f,4. \normalsize d'8 c a g f |
  g2 f | d4 d e2 | f4 e f(ees) | d f e f | f(d) e2 |
  f4 f f(e) | d f f(g) | a bes e,8 8 8 d | 4(e) f2 |
  \bar "|."
}

tenor = \relative {
  \global \voiceOne
  \repeat volta 2 {
    a4 4 2 | f4 d' c(bes) | a c8(bes) c4 c | bes2 a |
    a4 4 2 | f4 d' c2 | d4 d a8 c bes a | bes2 a | g4 bes c(bes) |
    a4 c4 2 | bes4 c c c | b2 c4(bes) | a4 4 2 | f4 d' c2 | % 48a
    d8(c) bes4 c c | bes2 a |
    \once\set Staff.caesuraType = #'((underlying-bar-line . ":|"))
    \caesura^\fermata
  }
  f4 a c2 | d8(c) bes4 c2 | 4. d8 c4 a |
  g2 f | 4 a c2 | d8(c) bes4 c2 | f4. d8 c a g f |
  g2 f | g4 g c(bes) | a c4 2 | bes4 c c c | b2 c4(bes) | % 49a
  a4 4 2 | f4 d' c2 | d4 d a8 c bes a | bes2 a |
  \bar "|."
}

bass = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    f4 d a2 | bes4 bes' a(g) | f f e f | bes,(c) f2 |
    f4 d a2 | bes4 bes' a(e) | d g a8 a d, d | bes4(c) f2 | g4 g c,2 |
    a'4 g f2 | bes4 a g f | g2 c, | f4 d a2 | bes4 bes' a(e) | % 48a
    d4 g e f | g(c,) f2 |
  }
  f4 a c2 | d8(c) bes4 c2 | 4. d8 c4 a |
  g2 f | 4 a c2 | d8(c) bes4 c2 | \tiny \parenthesize f,4. \normalsize d'8 c a g f |
  g2 f | g4 g c,2 | a'4 g f2 | bes4 a g f | g2 c, | % 49a
  f4 d a2 | bes4 bes' a(e) | d g a8 a d, d | g,4(c) <f, f'>2 |
  \bar "|."
}

pianoRHone = \relative {
  \global \voiceOne
  \repeat volta 2 {
    <c' f>4(<f a> <g c>2 | d'8 c bes4 <f c'>2 | c'4. d8 <g, c>4 <f a> | g2 f) |
    <c f>4(<f a> <f c'>2 | d'8 c bes4 c2 | f4. d8 c a g f | g2 f) | bes4(a <e g>2 |
    <f c'>4 <e bes'> a2 | d4. c8 bes4 a | a2 g) | f4( a c2 | d8 c bes4 c2 | % 48a
    f4. d8 c4 a | g2 f) |
    \once\set Staff.caesuraType = #'((underlying-bar-line . ":|"))
    \caesura^\fermata
  }
  f4(a c2 | d8 c bes4 c2 | 4. d8 c4 a |
  g2 f) | <d f>4 <e a> c'2 | <bes d>8 <a c> bes4 c2 | f4.(d8 c a g f |
  <bes, g'>2 <a f'>) | bes'4(a g2 | <f c'>4 <e bes'> <c a'>2 | d'4. c8 <e, bes'>4 <f a> | <b, a'>2 <e g>) | % 49a
  <a, c f>4(<a d f a> <c c'>2 | d'8 c bes4 <c, c'>2 | <f f'>4. d'8 c a g f | <bes, g'>2 <a f'>) |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    s1 | f'2 s | f4 a8(f) s2 | d4(e) f2 |
    s1 | f2 4(g) | a bes e,~8 d | 4(e) f2 | d s |
    s2 f4(ees) | d(f) e f | f(d) e2 | f2 4(e) | d f f(g) | % 48a
    a4(g) g f | d(e) f2 |
  }
  c2 f4(e) | d2 e | f4 e8 d e4 f |
  d4(c) s2 | s e4(f) | d g8(f) e2 | f4(bes) e, d |
  d4(e) s2 | d e | c f4(ees) | d(f) c2 | f4(d) c(bes) | % 49a
  s2 f'4(e) | <d f> q f4(g) | a(bes) e,4 8 d | d4(e) s2 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf | s2\< s\! | s1\f | s |
    s1\mf | s4 s2.\< | s1\f | s | s\mp |
    s1\cresc | s | s | s\mf | s\< | % 48a
    s1\f | s |
  }
  s1\f | s2\< s\! | s1 |
  s2\> s\! | s1\mp | s\< | s\f |
  s1 | s\mf | s2\< s\! | s s\cresc | s1 | % 49a
  s1\f | s4 s2.\< | s1\omit\ff-\markup{\dynamic ff \italic "colla voce"} | s1 |
}

pianoLHone = \relative {
  \global \voiceOne
  \repeat volta 2 {
    a2 \oneVoice <a, a'> | <bes f'>4 <bes' d>(<a c> <g bes> \voiceOne | a4) c8(bes c2) | bes2 \oneVoice <f a> | \voiceOne
    a2 \oneVoice <a, a'> | <bes f'>4(<bes' d>) \voiceOne c2 | d a8 c bes a | bes2 a | g4(bes) c(bes) |
    \oneVoice a4 <g c> <f c'>2 | \voiceOne bes4 c4 2 | b c4(bes) | a2 \oneVoice <a, a'> | <bes f'>4 <bes' d> \voiceOne c2 | % 48a
    d8(c bes4) c2 | bes a |
  }
  a2~2 | f4 bes8(a) g4 c8(bes) \oneVoice <a, a'>4. <bes f'>8 <c bes'>4 <d a'> |
  bes'4(a <g bes> <f a>8 <e g>) | \voiceOne a2(g4 f) | d(g) e(a)~ | a g(bes a) |
  g2 \oneVoice <f, f'> | <g g'>(<c c'>4 <bes bes'> | <a a'> <g g'> <f f'>2) | <bes bes'>4( <a a'> <g g'> <f f'>) | <g g'>2 c | % 49a
  <f, f'>4(<d d'> <a a'>2) | <bes bes'>4(<bes' bes'> <a a'> <e e'>) | <d d'> <g g'> <a a'> \voiceOne bes'8(a) | bes2 \oneVoice <f, f'> |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    f4(d) <a a'>2 | s1 | f'2 e4(f) | bes,(c) s2 |
    f4(d) s2 | s a'4(e) | d(g) a d, | bes(c) f2 | g c, |
    s1 | bes'4(a g f) | g2 c, | f4(d) s2 | s a'4(e) | % 48a
    d4 g e f | g(c,) f2 |
  }
  f4(e d c) | bes2 c | s1 |
  s1 | d4 c bes a | g2 a | d c4(d) |
  g,4(c) s2 | s1*4 | % 49a
  s1*3 | g4(c) s2 |
  \bar "|."
}

#(set-global-staff-size 19)

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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVoice
            \new Voice \soprano
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVoice
            \new Voice \soprano
            \new Voice \alto
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVoice
            \new Voice \soprano
            \new Voice \alto
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \soprano
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \new Voice \tenor
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \new Voice \bass
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \soprano
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \new Voice \tenor
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \new Voice \bass
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \soprano
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \new Voice \bass
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \soprano
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \new Voice \tenor
            \addlyrics {\tiny \wordsOne \wordsTwo}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics {\wordsOne \wordsTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Dynamics \dynamicsVoice
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \dynamicsVoice
            \new Voice \alto
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
            \new Dynamics \dynamicsVoice
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
            \new Dynamics \dynamicsVoice
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
