\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dance to your Daddy"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Northumbrian Folk-song"
  arranger    = "Arr. David Stone"
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
  \key bes \major
  \time 3/4
}

TempoTrack = {
  \tempo Allegretto 4=120
  s2.*52
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s2.*7
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2.*3
  \textMark \markup { \box "1b" } s2.*3
  \textMark \markup { \box "2a" } s2.*3
  \textMark \markup { \box "2b" } s2.*3
  \textMark \markup { \box "2c" } s2.*3
  \textMark \markup { \box "3a" } s2.*3
  \textMark \markup { \box "3b" } s2.*3
  \textMark \markup { \box "3c" } s2.*3
  \textMark \markup { \box "4a" } s2.*3
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "4c" } s2.*3
  \textMark \markup { \box "5a" } s2.*3
  \textMark \markup { \box "5b" } s2.*3
  \textMark \markup { \box "5c" } s2.*3
  \textMark \markup { \box "6a" } s2.*3
  \textMark \markup { \box "6b" } s2.*3
  \textMark \markup { \box "6c" } s2.*3
  \textMark \markup { \box "7a" } s2.*4
  \textMark \markup { \box "7b" } s2.*4
}

soprano = \relative {
  \global
  f'2.^\p~
  f2.
  bes4^\mf 8 g f d
  c8(c') c bes a f % 1b
  bes4 8 g f d
  f8(bes) bes a bes4
  f2.^\p % 2a
  g2(c4) f,2 bes4
  g4(c) bes % 2b
  bes8^\mf a g f g bes
  g8 c c bes a f
  bes8 a g f g bes % 2c
  f8 bes bes a bes4
  R2.*4
  d4^\p 8 c d f % 3b
  c4 8 bes a c
  d4 8 c d f |
  f,8(bes) bes a bes4 % 3c
  R2.*4
  f4^\p 8 8 g g % 4a++
  f4 8 8 g g % 4b
  f2.
  g2(c4)
  f,2 bes4 % 4c
  g4(c) bes
  d2.
  g,2 d'4 % 5a
  d2.
  c2(bes4)
  R2.*4
  bes8^\mf a g f g bes % 5c+
  g8 c c bes a f
  bes8 a g f g bes % 6a
  f8 bes bes a bes4
  R2.*4
  d4^\p 8 c d f % 6c
  c4 8 bes a c
  d4 8 c d f
  f,8(bes) bes a bes4 % 7a
  d4\omit\dim^\markup\italic "sempre dim."^\markup rall. 8(c d f)
  c4 8(bes a c)
  d4 8(c d f)
  f,8(bes) bes4(a) % 7b
  bes2.~
  bes2.~
  bes2.^\ppp
  \bar "|."
}

wordsSop = \lyricmode {
  Dance, __
  Dance to your Dad -- dy, my __ bon -- nie lad -- die,
  Dance to your Dad -- dy, my __ lit -- tle lamb,
  Dance, Dance __ to your Dad -- dy.
  And you’ll get a fish -- ie
  In a lit -- tle dish -- ie,
  You will get a fish -- ie
  When the boat comes in.

  Dance to your Dad -- dy,
  my bon -- nie lad -- die,
  Dance to you Dad -- dy,
  my __ lit -- tle lamb.

  Dance to your Dad -- dy,
  Dance to your Dad -- dy,
  Dance,
  Dance __ to your Dad -- dy.
  Dance to your Dad -- dy. __
  And you’ll get a coat -- ie
  And a pair of breek -- ies,
  You will get a whip -- pie,
  And some bread and jam.

  Dance to your Dad -- dy,
  my bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my __ lit -- tle lamb.
  M. __ _ _ _ _ _ _ _ _
}

wordsSopMidi = \lyricmode {
  "Dance, " 
  "\nDance " "to " "your " Dad "dy, " "my "  bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, " "my "  lit "tle " "lamb, "
  "\nDance, " "Dance "  "to " "your " Dad "dy. "
  "\nAnd " "you’ll " "get " "a " fish "ie "
  "\nIn " "a " lit "tle " dish "ie, "
  "\nYou " "will " "get " "a " fish "ie "
  "\nWhen " "the " "boat " "comes " "in. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " bon "nie " lad "die, "
  "\nDance " "to " "you " Dad "dy, "
  "\nmy "  lit "tle " "lamb. "

  "\nDance " "to " "your " Dad "dy, "
  "\nDance " "to " "your " Dad "dy, "
  "\nDance, "
  "\nDance "  "to " "your " Dad "dy. "
  "\nDance " "to " "your " Dad "dy. " 
  "\nAnd " "you’ll " "get " "a " coat "ie "
  "\nAnd " "a " "pair " "of " breek "ies, "
  "\nYou " "will " "get " "a " whip "pie, "
  "\nAnd " "some " "bread " "and " "jam. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  lit "tle " "lamb. "
  "\nM. "  "" "" "" "" "" "" "" ""
}

alto = \relative {
  \global
  <c' d>2.^\p ~
  q2.
  d2.
  ees2 4 % 1b
  d2.
  ees2(d4)
  d2. % 2a
  ees2(g4)
  d2 f4
  ees4(g) f % 2b
  d2 4
  g2 f4
  d4 4 ees8 8 % 2c
  ees2 d4
  R2.*4
  <a' c>4^\p <g bes> <f a> % 3b
  <ees g>2 <f a>4
  <g bes>4 <f a> <ees g>
  <d f>4(<c ees>) <bes d> % 3c
  R2.*4
  d4^\p 8 8 <c ees> q % 4a++
  d4 8 8 q q % 4b
  d2.
  ees2(g4)
  d2 f4 % 4c
  ees4(g) f
  bes4^\mf 8 g f d
  c8(c') c bes a f % 5a
  bes4 8 g f d
  f8(bes) bes a bes4
  R2.*4
  d,2^\p 4 % 5c+
  g2 f4
  d4 4 ees8 8 % 6a
  ees4 4 d
  R2.*4
  <a' c>4^\p <g bes> <f a> % 6c
  <ees g>2 f4
  <f a>4 <ees g> <d f>
  <c ees>2(d4) % 7a
  f2.\omit\dim^\markup\italic "sempre dim." (
  ees2.)
  f2.(
  ees4) <c ees>2 % 7b
  d2.~
  d2.~
  d2.^\ppp
  \bar "|."
}

wordsAlto = \lyricmode {
  Dance, __
  Dance to your Dad -- dy,
  Dance,
  Dance __ to your Dad -- dy, __
  And you’ll get a fish -- ie
  In a dish -- ie.

  Dance to your Dad -- dy,
  my bon -- nie lad -- dy.

  Dance to your Dad -- dy,
  Dance to your Dad -- dy,
  Dance,
  Dance __ to your Dad -- dy.
  Dance __ to your Dad -- dy,
  my bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my __ lit -- tle lamb.
  
  And you’ll get a coa -- tie
  And some bread and jam.

  Dance to your Dad -- dy,
  my lit -- tle lamb.
  M. __ _ _ _
}

wordsAltoMidi = \lyricmode {
  "Dance, " 
  "\nDance " "to " "your " Dad "dy, "
  "\nDance, "
  "\nDance "  "to " "your " Dad "dy, " 
  "\nAnd " "you’ll " "get " "a " fish "ie "
  "\nIn " "a " dish "ie. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " bon "nie " lad "dy. "

  "\nDance " "to " "your " Dad "dy, "
  "\nDance " "to " "your " Dad "dy, "
  "\nDance, "
  "\nDance "  "to " "your " Dad "dy. "
  "\nDance "  "to " "your " Dad "dy, "
  "\nmy " bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  lit "tle " "lamb. "
  
  "\nAnd " "you’ll " "get " "a " coa "tie "
  "\nAnd " "some " "bread " "and " "jam. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " lit "tle " "lamb. "
  "\nM. "  "" "" ""
}

tenor = \relative {
  \global
  f4^\p 8 8 g g
  f4 8 8 g g
  f2(a4)
  g2 c4 % 1b
  bes2(a4)
  g2(f4)
  bes2. % 2a
  bes2(ees4)
  bes2 d4
  bes4(ees) d % 2b
  bes2 4
  c2 4
  bes4 4 c8 8 % 2c
  bes4(c) bes
  bes8^\mf a g f g bes
  g8 c c bes a f % 3a
  bes a g f g bes
  f8 bes bes a bes4
  d2.^\p % 3b
  g,2(ees'4)
  d4 c bes
  a4(g) f % 3c
  d'4 8 c d f
  c4 8 bes a c
  d4 8 c d f % 4a
  f,8(bes) 4 a
  bes2.~
  bes2. % 4b
  bes2.
  bes2(ees4)
  bes2 d4 % 4c
  bes4(ees) d
  d2(bes4)
  g2 f4 % 5a
  f'2(bes,4) ees2(d4)
  bes8^mf a g f g bes % 5b
  g c c bes a f
  bes8 a g f g bes
  f8 bes bes a bes4 % 5c
  bes2^\p 4
  c2 4
  bes4 4 g8 8 % 6a
  bes4 c bes
  d4^\mf 8 c d f
  c4 8 bes a c % 6b
  d4 8 c d f
  f,8(bes) bes a bes4
  R2. % 6c
  R2.
  bes2^\p c4
  g4(f bes) % 7a
  a2^\markup\italic "sempre dim." ^\markup rall. (aes4
  g2.)
  a2(aes4
  g4) g2 % 7b
  f4 8 8 g g
  f4 8 8 g g
  f2.^\ppp
  \bar "|."
}

wordsTenor = \lyricmode {
  Dance to your Dad -- dy,
  Dance to your Dad -- dy,
  Dance __ to your Dad -- dy, __
  Dance,
  Dance __ to your Dad -- dy.
  And you’ll get a fish -- ie
  In a dish -- ie.
  And you’ll get a fish -- ie
  In a lit -- tle dish -- ie,
  You will get a fish -- ie
  When the boat comes in.

  Dance,
  Dance, __ my bon -- nie lad -- die.
  Dance to you Dad -- dy,
  my bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my __ lit -- tle lamb. __
  Dance,
  Dance __ to your Dad -- dy,
  Dance __ to your Dad -- dy. __
  And you’ll get a coat -- ie
  And a pair of breek -- ies,
  You will get a whip -- pie,
  And some bread and jam,
  And you’ll get a coat -- ie
  And some bread and jam.

  Dance to your Dad -- dy,
  my bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my lit -- tle lamb. __
  Dance my lamb.
  M __ _ _
  Dance to your dad -- dy,
  Dance to your dad -- dy,
  Dance.
}

wordsTenorMidi = \lyricmode {
  "Dance " "to " "your " Dad "dy, "
  "\nDance " "to " "your " Dad "dy, "
  "\nDance "  "to " "your " Dad "dy, " 
  "\nDance, "
  "\nDance "  "to " "your " Dad "dy. "
  "\nAnd " "you’ll " "get " "a " fish "ie "
  "\nIn " "a " dish "ie. "
  "\nAnd " "you’ll " "get " "a " fish "ie "
  "\nIn " "a " lit "tle " dish "ie, "
  "\nYou " "will " "get " "a " fish "ie "
  "\nWhen " "the " "boat " "comes " "in. "

  "\nDance, "
  "\nDance, "  "my " bon "nie " lad "die. "
  "\nDance " "to " "you " Dad "dy, "
  "\nmy " bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  lit "tle " "lamb. " 
  "\nDance, "
  "\nDance "  "to " "your " Dad "dy, "
  "\nDance "  "to " "your " Dad "dy. " 
  "\nAnd " "you’ll " "get " "a " coat "ie "
  "\nAnd " "a " "pair " "of " breek "ies, "
  "\nYou " "will " "get " "a " whip "pie, "
  "\nAnd " "some " "bread " "and " "jam, "
  "\nAnd " "you’ll " "get " "a " coat "ie "
  "\nAnd " "some " "bread " "and " "jam. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy " lit "tle " "lamb. " 
  "\nDance " "my " "lamb. "
  "\nM "  "" ""
  "\nDance " "to " "your " dad "dy, "
  "\nDance " "to " "your " dad "dy, "
  "\nDance. "
}

bass = \relative {
  \global
  bes,4^\p 8 8 8 8
  bes4 8 8 8 8
  bes2.
  bes2 4 % 1b
  bes2.
  c4(f, bes)
  bes'4^\mf 8 g f d % 2a
  c8(c') c bes a f
  bes4 8 g f d
  f8(bes) bes a bes4 % 2b
  g2^\p f4
  ees2 f4
  g4 4 c,8 8 % 2c
  g'4(f) bes,
  <g d'>2 <bes d>4
  <c ees>2 <f, d'>4 % 3a
  <g d'>4 <bes d> q8 8
  <c ees>4 <f, ees'> <bes d>
  bes2.^\p ~ % 3b
  bes2.
  bes2.~
  bes2. % 3c
  <a' c>4 <g bes> <f a>
  <ees g>4(<d f>) <c ees>
  <bes f'>2 <a f'>8 8 % 4a
  << {\vt g4(f2 | <bes f'>2. ~ q)} \new Voice {\vo ees2. s2. s2.} >>
  \ov bes'4^\mf 8 g f d % 4b+
  c8(c') c bes a f
  bes4 8 g f d % 4c
  f8(bes) bes a bes4
  g2^\p(d4)
  ees2 f4 % 5a
  f2.
  g4(f bes,)
  <g d'>2 <bes d>4 % 5b
  <c ees>2 <f, d'>4
  <g d'>4 <bes d>4 8 8
  <c ees>4 <f, ees'> <bes d> % 5c
  bes2^\p f'4
  ees2 f4
  g,4 4 c8 8 % 6a
  g'4 f bes,
  <a' c>4^\mf <g bes> <f a>
  <ees g>4(<d f>) <c ees> % 6b
  <bes f'>2 <a f'>8 8
  <<{\vo ees'2(d4)} \new Voice {\vt g,4(f bes)} >>
  \ov
  R2.*4
  bes2.\omit\p ^\markup{\dynamic p \italic "sempre dim."} ~ ( % 7a+
  bes2 f4)
  bes2. ~ (
  bes4 f2)
  bes4 8 8 8 8
  bes4 8 8 8 8
  bes2.^\ppp
  \bar "|."
}

wordsBass = \lyricmode {
  Dance to your Dad -- dy,
  Dance to your Dad -- dy,
  Dance __ to your Dad -- dy, __
  Dance to you Dad -- dy,
  my __ bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my __ lit -- tle lamb.
  And you’ll get a fish -- ie,
  In a dish -- ie.
  And you’ll get a fish -- ie
  When the boat comes in.
  Dance, __ Dance, __
  Dance to your Dad -- dy,
  my lit -- tle lamb. __

  Dance to your Dad -- dy,
  my __ bon -- nie lad -- die,
  Dance to your Dad -- dy,
  my __ lit -- tle lamb.
  Dance __ to your Dad -- dy. __
  And you’ll get a coat -- ie
  And some bread and jam.
  And you’ll get a coat -- ie
  And some bread and jam.

  Dance to your Dad -- dy,
  my lit -- tle lamb. __
  M __ _
  Dance to your Dad -- dy,
  Dance to your Dad -- dy,
  Dance.
}

wordsBassMidi = \lyricmode {
  "Dance " "to " "your " Dad "dy, "
  "\nDance " "to " "your " Dad "dy, "
  "\nDance "  "to " "your " Dad "dy, " 
  "\nDance " "to " "you " Dad "dy, "
  "\nmy "  bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  lit "tle " "lamb. "
  "\nAnd " "you’ll " "get " "a " fish "ie, "
  "\nIn " "a " dish "ie. "
  "\nAnd " "you’ll " "get " "a " fish "ie "
  "\nWhen " "the " "boat " "comes " "in. "
  "\nDance, "  "Dance, " 
  "\nDance " "to " "your " Dad "dy, "
  "\nmy " lit "tle " "lamb. " 

  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  bon "nie " lad "die, "
  "\nDance " "to " "your " Dad "dy, "
  "\nmy "  lit "tle " "lamb. "
  "\nDance "  "to " "your " Dad "dy. " 
  "\nAnd " "you’ll " "get " "a " coat "ie "
  "\nAnd " "some " "bread " "and " "jam. "
  "\nAnd " "you’ll " "get " "a " coat "ie "
  "\nAnd " "some " "bread " "and " "jam. "

  "\nDance " "to " "your " Dad "dy, "
  "\nmy " lit "tle " "lamb. " 
  "\nM "  ""
  "\nDance " "to " "your " Dad "dy, "
  "\nDance " "to " "your " Dad "dy, "
  "\nDance. "
}

pianoRHone = \relative {
  \global
  <c' d f>2.~
  q2.
  bes'4 8 g f d
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s2.
  s2.
  d'2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.
  s2.
}

pianoLHone = \relative {
  \global
  <bes, f'>4 8 8 <bes g'> q
  <bes f>4 8 8 <bes g'> q
  f'2 a4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s2.
  s2.
  bes,2.
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single-noacc
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
          >>
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
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

#(set-global-staff-size 18)

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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
