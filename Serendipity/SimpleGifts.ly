\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Simple Gifts/Pachelbel's Canon"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{ \right-column { \line {Traditional Shaker Tune}
                                         \line {and Canon in D}
                                         \line {by Johann Pachelbel (1653-1706)}
                                       }
                       }
  arranger    = "Arr. Donald Moore"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo Simply 4=116
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*2
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*2
  \mark \markup { \box "5b" } s1*2
  \mark \markup { \box "5c" } s1*2
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*3
  \mark \markup { \box "7a" } s1*2
  \mark \markup { \box "7b" } s1*2
  \mark \markup { \box "8a" } s1*2
  \mark \markup { \box "8b" } s1*2
  \mark \markup { \box "9a" } s1*3
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "10a" } s1*3
  \mark \markup { \box "10b" } s1*3
}

partI = \relative {
  \global
  R1*3 |
  r2^\markup "UNISON VOICES" c'4^\mp c | f2 4 g | a f a bes |
  c2 4 bes | a2 g4 f | g2 2 |
  g2 f | g4 a g e | c2. 4 | % 4a
  f4 e f g | a2 g4 4 |
  a2 bes | c2. a4 | g2 4 4 |
  a2 4 g | f2 4 4 | % 5a
  f1 | c'2^\mf a4. g8 |
  a8 bes a g f4. g8 | a4 8 bes c4 bes8(a) |
  g4 8 a g4 c, | f2 4. g8 | a4 8 bes c4 bes8 a | % 6a
  g4 4 a4 8 g | f4 4 2 | R1 |
  R1 | R1 | r2 r4 c8^\mp 8 |
  f4 8 g a f a bes | c4 8 bes a4 g8 f | % 7a
  g4 4 4 f | g8 a g e c4 4 |
  f8 e f g a4 g8 g | a4 bes c a | % 8a
  g4 8 8 a4 8 g | f4 8 8 4 c8^\< 8 |
  c'2.^\mf 8 bes | a2 4 8 c | bes2(a4) 8 8 | % 9a
  g2. c,8 8 | c'2. 8 bes | a1 |
  g2 a | g2. 4 | f1\omit\decresc^\markup\italic "gradually decresc." | % 10a
  r2 c'4 c | bes2 4 a | <g c>1 | <a f'>^\p\fermata
  \bar "|."
}

words = \lyricmode {
  'Tis the gift to be sim -- ple,
  'tis the gift to be free,
  'tis the gift to come down
  where we ought to be,
  and when we find our -- selves
  in the place just right,
  'twill be in the val -- ley of love
  and de -- light.
  When true sim -- plic -- i -- ty is gained,
  to bow and to bend we __ shan't be a -- shamed.
  To turn, turn will be our de -- light,
  till by turn -- ing, turn -- ing we come round right.

  'Tis the gift to be sim -- ple,
  'tis the gift to be free,
  'tis the gift to come down where we ought to be,
  and when we find our -- selves in the place just right,
  'twill be in the val -- ley of love and de -- light.
  
  'Tis the gift to be sim -- ple,
  'tis the gift __ to be free,
  'tis the gift to come down where we ought to be.

  al -- le -- lu, al -- le -- lu -- ia.
}

wordsMidi = \lyricmode {
  "'Tis " "the " "gift " "to " "be " sim "ple, "
  "\n'tis " "the " "gift " "to " "be " "free, "
  "\n'tis " "the " "gift " "to " "come " "down "
  "\nwhere " "we " "ought " "to " "be, "
  "\nand " "when " "we " "find " our "selves "
  "\nin " "the " "place " "just " "right, "
  "\n'twill " "be " "in " "the " val "ley " "of " "love "
  "\nand " de "light. "
  "\nWhen " "true " sim plic i "ty " "is " "gained, "
  "\nto " "bow " "and " "to " "bend " "we "  "shan't " "be " a "shamed. "
  "\nTo " "turn, " "turn " "will " "be " "our " de "light, "
  "\ntill " "by " turn "ing, " turn "ing " "we " "come " "round " "right. "

  "\n'Tis " "the " "gift " "to " "be " sim "ple, "
  "\n'tis " "the " "gift " "to " "be " "free, "
  "\n'tis " "the " "gift " "to " "come " "down " "where " "we " "ought " "to " "be, "
  "\nand " "when " "we " "find " our "selves " "in " "the " "place " "just " "right, "
  "\n'twill " "be " "in " "the " val "ley " "of " "love " "and " de "light. "
  
  "\n'Tis " "the " "gift " "to " "be " sim "ple, "
  "\n'tis " "the " "gift "  "to " "be " "free, "
  "\n'tis " "the " "gift " "to " "come " "down " "where " "we " "ought " "to " "be. "

  "\nal" le "lu, " al le lu "ia. "
}

partII = \relative {
  \global
  R1*14 \break |
  f'2 d | c2. f4 | d2 bes4 4 | % 4c
  c2 d4 e | f2 4 4 | % 5a
  f1 | r4 c^\mf d4. 8 |
  c8 8 8 8 f2 | r4 f e2 |
  d4 8 8 c2 | r4 f d4. 8 | c4 8 8 d2 | % 6a
  bes4 4 c d8 e | f4 4 2 | 2^\mp e |
  d2 c | d c | d e |
  f2 e | d c | % 7a
  d2 c | d e |
  f2 e | d c | % 8a
  d2 c | d4(e) f2 |
  <f a>2 <e g> | <d f> <c e> | <bes d> <a c> | % 9a
  <bes d>2 <c e> | <f a> <e g> | <d f> <c e> |
  <bes d>2 <a c> | <bes d>(<c e>) | f2\omit\decresc^\markup\italic "gradually decresc." e4 4 | % 10a
  d2 c4 4 | d2 c4 4 | d2(e) | f1^\p\fermata |
  \bar "|."
}

partIIMidi = \relative {
  \global
  R1*3 |
  r2^\markup "UNISON VOICES" c'4^\mp c | f2 4 g | a f a bes |
  c2 4 bes | a2 g4 f | g2 2 |
  g2 f | g4 a g e | c2. 4 | % 4a
  f4 e f g | a2 g4 4 |
  f'2 d | c2. f4 | d2 bes4 4 | % 4c
  c2 d4 e | f2 4 4 | % 5a
  f1 | r4 c^\mf d4. 8 |
  c8 8 8 8 f2 | r4 f e2 |
  d4 8 8 c2 | r4 f d4. 8 | c4 8 8 d2 | % 6a
  bes4 4 c d8 e | f4 4 2 | 2^\mp e |
  d2 c | d c | d e |
  f2 e | d c | % 7a
  d2 c | d e |
  f2 e | d c | % 8a
  d2 c | d4(e) f2 |
  <f a>2 <e g> | <d f> <c e> | <bes d> <a c> | % 9a
  <bes d>2 <c e> | <f a> <e g> | <d f> <c e> |
  <bes d>2 <a c> | <bes d>(<c e>) | f2\omit\decresc^\markup\italic "gradually decresc." e4 4 | % 10a
  d2 c4 4 | d2 c4 4 | d2(e) | f1^\p\fermata |
  \bar "|."
}

wordsII = \lyricmode {
  place just right,
  'twill be in the val -- ley of love
  and de -- light.
  When true sim -- plic -- i -- ty is gained,
  bow, bend, shan't be a -- shamed.
  To turn will be our de -- light,
  turn -- ing, turn -- ing we come round right.

  Al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Al -- le -- lu,
  al -- le -- lu,
  al -- le -- lu -- ia.
}

wordsIIMidi = \lyricmode {
  "'Tis " "the " "gift " "to " "be " sim "ple, "
  "\n'tis " "the " "gift " "to " "be " "free, "
  "\n'tis " "the " "gift " "to " "come " "down "
  "\nwhere " "we " "ought " "to " "be, "
  "\nand " "when " "we " "find " our "selves "
  "\nin " "the " "place " "just " "right, "
  "\n'twill " "be " "in " "the " val "ley " "of " "love "
  "\nand " de "light. "
  "\nWhen " "true " sim plic i "ty " "is " "gained, "
  "\nbow, " "bend, " "shan't " "be " a "shamed. "
  "\nTo " "turn " "will " "be " "our " de "light, "
  "\nturn" "ing, " turn "ing " "we " "come " "round " "right. "

  "\nAl" le lu "ia, "
  "\nal" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nal" le lu "ia. "
  "\nAl" le lu "ia, "
  "\nal" le lu "ia, "
  "\nAl" le lu "ia, "
  "\nal" le lu "ia. "
  "\nal" le lu "ia, "
  "\nal" le lu "ia. "
  "\nAl" le "lu, "
  "\nal" le "lu, "
  "\nal" le lu "ia. "
}

cInstr = \relative {
  \global
  a''2 g | f e | d c |
  d2 e | f r | R1 |
  R1*26 |
  \ottava #1 a'2 g | f e | % 7a
  d2 c | d e |
  a2 g | f e | % 8a
  d2 c | d4 e f2 \ottava #0 |
  f,4 a c bes | a f a g | f d f c' | % 9a
  bes4 d c bes | f a c bes | a f a g |
  f4 d f c' | bes d c c,8 8 | f4\omit\cresc_\markup\italic "gradually decresc." f8 g a f a bes | % 10a
  c4 8 bes a4 g8 f | g4 4 4 f | g_\markup\italic rit. a g g | f1\p\fermata |
}
  
pianoRH = \relative {
  \global
  r8 c' f a r c, e g | r a, d f r a, c e | r f, bes d r f, a c |
  r8 f, bes d r g, c e | r a, c f r g, c g'  r a, d f r bes, d f |
  r8 a, c e r g, bes d | r a c f r f, a d | r g, c g' r g, b g' |
  r8 g, c g' r a, d f | r c e a r f, g b | r g c e r e, g c | % 4a
  r8 a c e r g, bes d | r a c e r g, c g' |
  r8 a, d f r g, d' g | r c, e a r a, d f | r g, bes d r bes d g |
  r8 a, c e r bes e g | r8 a, c e r g, bes d | % 5a
  r8 f, a c f c f a | r c, e a r a, d f |
  r8 g, bes e r f, a c | r a c f r g, c e |
  r8 g, bes d r e, g c | r f, c' f r a, d g | r c, e a r a, d f | % 6a
  r8 g, bes d r bes c g' | c,4 bes a8 c' f g | a c, f a g c, e g |
  f8 a, d f e a, c e | d f, bes d c f, a c | d f, bes d e g, c e |
  a8 c, f a g c, e g | f a, d f e a, c e | % 7a
  d8 f, bes d c f, a c | d f, bes d e g, c e |
  a8 c, f a g c, e g | f a, d f e a, c e | % 8a
  d8 g, bes d c e, a c | r d, g bes a2 |
  r8 c, f a r c, e g | r a, d f r a, c e | r f, bes d r f, a c | % 9a
  r8 f, bes d r g, c e | r c f a r c, e g | r a, d f r a, c e |
  r8 f, bes d r f a c | r f, bes d r g, c e | r c f a r c, e g | % 10a
  r a, d f r a, c e | r f, bes d r f, a c | r f, bes d r g, c e | <a, f'>1\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s1 | s1 |
  s1*16
  s2 s\< | s1\mf | % 5b
  s1*5
  s1 | s2 s\> | s1\mp | % 6b
  s1*9
  s1 | s2 s\< | % 8c
  s1\mf | s1 | s1 | % 9a
  s1*3
  s1 | s1 | s1\omit\decresc-\markup\italic "gradually decresc." % 10a
  s1 | s | s-\markup\italic rit. | s\p |
}

pianoLH = \relative {
  \global
  f2 c | d a | bes f |
  bes2 c | f, e' | d bes |
  a2 c | f d | e d |
  e2 f | g g, | c bes | % 4a
  a2 g | f e' |
  d2 bes | a d | bes g |
  c2 c, | f f' | % 5a
  f,1 | a2 d |
  c2 a | f' e |
  g,2 c | a d | c d | % 6a
  g,2 c | a4 g f2 | f' c |
  d2 a | bes f | bes c |
  f2 c | d a | % 7a
  bes2 f | bes c |
  f2 c | d a | % 8a
  bes2 c | f4 c f, c' |
  f2 c | d a | bes f | % 9a
  bes2 c | f c | d a |
  bes2 f | bes c | f c | % 10a
  d2 a | bes f | bes c | <f, f'>1\fermata |
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "part 1" \with {
            instrumentName = #"Part 1"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partI
            \addlyrics \words
          >>
                                % partII staff
          \new Staff = "part 2" \with {
            instrumentName = #"Part 2"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new Staff = "C instrument" \with {
          instrumentName = "C-Instr"
        }
        <<
          \new Voice \cInstr
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "part 1" \with {
            instrumentName = #"Part 1"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partI
            \addlyrics \words
          >>
                                % partII staff
          \new Staff = "part 2" \with {
            instrumentName = #"Part 2"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new Staff = "C instrument" \with {
          instrumentName = "C-Instr"
        }
        <<
          \new Voice \cInstr
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "part 1" \with {
            instrumentName = #"Part 1"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partI
            \addlyrics \wordsMidi
          >>
                                % partII staff
          \new Staff = "part 2" \with {
            instrumentName = #"Part 2"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIMidi
          >>
        >>
        \new Staff = "C instrument" \with {
          instrumentName = "C-Instr"
        }
        <<
          \new Voice \cInstr
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "part 1" \with {
            instrumentName = #"Part 1"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partI
          >>
                                % partII staff
          \new Staff = "part 2" \with {
            instrumentName = #"Part 2"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partIIMidi
            \addlyrics \wordsIIMidi
          >>
        >>
        \new Staff = "C instrument" \with {
          instrumentName = "C-Instr"
        }
        <<
          \new Voice \cInstr
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
