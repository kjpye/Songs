\version "2.25.13"

\include "kjp.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Deep Peace"
  subtitle    = \markup{"from the Bill Douglas CD" \italic "Deep Peace"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Bill Douglas"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
%  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s1*4 s4 s1 s2. s1 |
  s2. s1 s2. s1 s2. |
  s1 s2. s1 s2. s2. |
  s2.*7 |
  s1 s2. s1 s2. s1 |
  s2. s1 s2. s4 \tempo 4=40 s4 \tempo 4=120 s2 | s2. | % 2a
  s1 s2. s1*23 |
  \tempo 4=60 s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s1*3 s1 s4 s1 s2. s1
  \textMark \markup { \box "1b" } s2. s1 s2. s1 s2.
  \textMark \markup { \box "1c" } s1 s2. s1 s2. s2.
  \textMark \markup { \box "1d" } s2.*7
  \textMark \markup { \box "1e" } s1 s2. s1 s2. s1
  \textMark \markup { \box "2a" } s2. s1 s2. s1 s2.
  \textMark \markup { \box "2b" } s1 s2. s1*5
  \textMark \markup { \box "2c" } s1*7
  \textMark \markup { \box "2d" } s1*9
  \textMark \markup { \box "2e" } s1*3
}

solo = \relative c'' {
  \global
  \time 4/4 s1*3
  \time 5/4 s1 s4
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  s2.*8
  \time 4/4 ees1(
  \time 3/4 d2 d8 c16 d
  \time 4/4 f8 ees~2.~
  \time 3/4 ees8 d~d4~8 c16 bes)^\markup \halign #RIGHT "to soprano line…"

}

soprano = \relative c' {
  \global \clef bass
  bes2(c | bes1 | aes2 f | \time 5/4 g1) r4 | \clef treble \time 4/4 g'4 4~8 16 16 8 aes | \time 3/4 g8. f16 2 | \time 4/4 g4 4~8 16 16 8 8 |
  \time 3/4 g8. f16 f2 | \time 4/4 aes4 aes~aes8 aes16 aes aes8 bes | \time 3/4 aes8. g16 g2 | \time 4/4 g4 g~g8 g16 g g8 aes | \time 3/4 g8. f16 2 | % 1b
  \time 4/4 c'4 4~8 16 16 ees8. d16 | \time 3/4 c8. bes16 2 | \time 4/4 g8 8 4 8 8 bes aes| \time 3/4 g8. f16 2 | ees8(^\markup\bold "Women only" f g aes bes4 |
  bes2. | aes8 g aes bes c d | ees2.) | d8(c c4. ees8| c4 bes2| bes4 aes4. ees8| g2.) | % 1d
  \time 4/4 g4^\markup\bold Tutti 4~8 16 16 8 aes | \time 3/4 g8. f16 2 | \time 4/4 g4 4~8 16 16 8 aes | \time 3/4 g8. f16 2 | \time 4/4 c'4 4~8 16 16 8 d |
  \time 3/4 c8. bes16 2 | \time 4/4 g4 4~8 16 16 bes8 aes | \time 3/4 g8. f16 2 | \time 4/4 ees4 ees'-\fermata d8 c bes aes | \time 3/4 aes8. g16 2 | % 2a
  \time 4/4 g8 8 4 8 8 bes aes | \time 3/4 g8. f16 2 | \time 4/4 g4 2 4 | g1 | g4 2 4| g1 | r8 c8(bes aes g f g aes |
  bes4 2.) | r8 bes(aes g f ees f g | g8 aes~2.) | g4 ees'2 d4 | c2(bes) | g4 2 4| g1 | % 2c
  g4 2 4 | g1 | aes2. g4 | bes1 | c2. bes8 c| d1 | ees4 2 4| c2(bes)\breathe | g4 2 4 | c2^\markup\italic "2 optional bars a capella" (bes) \breathe
  g4 2 4 | g1-\fermata |
  \bar "|."
}

alto = \relative c' {
  \global \clef bass
  g2(aes | f2 g | ees2 d | \time 5/4 ees1) r4 \clef treble | \time 4/4 c'4 c~c8 c16 c16 c8 c | \time 3/4 d8. d16 d2 | \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees |
  \time 3/4 d8. d16 d2 | \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees | \time 3/4 ees8. ees16 ees2 | \time 4/4 ees4 ees~ees8 ees16 ees ees8 ees | \time 3/4 d8. d16 d2 | % 1b
  \time 4/4 aes'4 aes~aes8 aes16 aes c8 bes | \time 3/4 aes8. g16 g2 | \time 4/4 ees8 ees ees4 ees8 ees g f| \time 3/4 ees8. ees16 ees2 | c8(d ees2 |
  f2. | ees4. g8 aes bes | c2.) | aes2.(| g2. | ees2. | d2.) | % 1d
  \time 4/4 c4 4~8 16 16 8 8 | \time 3/4 d8. 16 2 | \time 4/4 ees4 4~8 16 16 8 8 | \time 3/4 d8. 16 2 | \time 4/4 aes'4 4~8 16 16 8 bes |
  \time 3/4 aes8. g16 2 | \time 4/4 ees4 4~8 16 16 8 8 | \time 3/4 d8. 16 2 | \time 4/4 c4 c'-\fermata bes8 aes g f | \time 3/4 f8. ees16 2 | % 2a
  \time 4/4 ees8 8 4 8 8 g8 f | \time 3/4 ees8. d16 2 | \time 4/4 ees4 2 4 | d1 | c4 2 4 | bes1 | c2(d |
  d4. f8 ees4 d | c2 d | ees2 d) | ees4 2 4 | g4(ees <d f>2) | c4 2 4 | d1 | % 2c
  ees4 2 4 | d1 | ees1( | g1 | g1 | f1) | g4 2 4 | <ees g>2(f) | ees4 2 4 |
  ees2(d) | ees4 2 4 | ees1-\fermata
  \bar "|."
}

tenor = \relative c {
  \global
  ees1(^\markup\bold "Men only" | d1 | c2 bes | \time 5/4 1) r4 | \time 4/4 ees4^\markup\bold Tutti  4~8 16 16 8 8 | \time 3/4 f8. 16 2 | \time 4/4 g4 4~8 16 16 8 8 |
  \time 3/4 aes8. 16 2 | \time 4/4 c4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2| \time 4/4 c4 4~8 16 16 8 8| \time 3/4 d8. 16 2 | % 1b
  \time 4/4 ees4 4~8 16 16 8 8 | \time 3/4 d8. 16 2 | \time 4/4 c8 8 4 8 8 8 8 | \time 3/4 bes8. 16 2 | c2.(|
  d2. | c4. d8 ees f | g2.) | ees2.( | d2. | c2. | bes2.) | % 1d
%  \clef "treble_8"
  \time 4/4 ees,4 4~8 16 16 8 8 | \time 3/4 f8. 16 2 | \time 4/4 g4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 ees4 4~8 16 16 8 8 |
  \time 3/4 d8. 16 2 | \time 4/4 c4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 ees4 ees-\fermata 8 8 8 8 | \time 3/4 bes8. 16 2 | % 2a
  \time 4/4 c8 8 4 8 8 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 g4 2 4 | g1 | ees4 2 4 | d1 | ees2(f |
  g1 | aes2 bes | c2 bes) | g4 2 4 | g4.(aes8 bes2) | aes4 2 4 | bes1 | % 2c
  c4 2 4 | bes1 | c1( | d1 | ees1 | d1) | g,4 2 4 | c2(d) | bes4 2 4 |
  g4(ees f2) | bes4 2 4 | bes1-\fermata
  \bar "|."
}

bass = \relative c, {
  \global
  \clef bass
  ees2(aes | bes2 g | aes2 bes | \time 5/4 ees,1) r4 | \time 4/4 aes4 aes~aes8 aes16 aes aes8 aes | \time 3/4 bes8. bes16 bes2 | \time 4/4 c4 c~c8 c16 c c8 c |
  \time 3/4 d8. d16 d2 | \time 4/4 ees4 ees~8 16 16 8 8 | \time 3/4 ees8. 16 2 | \time 4/4 aes4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2 | % 1b
  \time 4/4 aes4 4~8 16 16 8 8 | \time 3/4 g8. 16 2 | \time 4/4 aes8 8 4 8 8 8 8 | \time 3/4 bes8. 16 2 |
  R2.*8

  \time 4/4 aes,4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 c4 4~8 16 16 8 8 | \time 3/4 d8. 16 2 | \time 4/4 aes'4 4~8 16 16 8 8 | % 1e
  \time 3/4 g8. 16 2 | \time 4/4 aes4 4~8 16 16 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 c4 4-\fermata aes8 8 8 8 | \time 3/4 ees8. 16 2 | % 2a
  \time 4/4 aes,8 8 4 8 8 8 8 | \time 3/4 bes8. 16 2 | \time 4/4 c4 2 4 | bes1 | aes4 2 4 | g1 | aes2(bes |
  g2 c | f,2 g | aes2 bes) | c2(bes | aes2 g) | f4 2 4 | g1 | % 2c
  aes4 2 4 | bes1 | f1(| g1 | aes1 | bes1) | c4 2 bes4 | aes2(bes) | <ees, ees'>4 2 4 |
  aes2(bes) | <ees, ees'>4 2 4 | q1-\fermata |
  \bar "|."
}

dynamicsPiano = {
  s1\mp | s | s | s s4 | s1\p | s2. | s1 |
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \vo
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \vt
  c4
  \bar "|."
}

pianoLH = \relative c' {
  \global
  \ov
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \vo
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \vt
  c4
  \bar "|."
}

wordsSolo = \lyricmode {
  Ah
}
  
wordsSop = \lyricmode {
  Ah __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you
  oo __
  oo __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you

  Deep peace to you
  Deep peace to you oo __ oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you oo _ _ _ _ _ _
  Deep peace to you
  Deep peace to you
  Deep peace to you
}

wordsSopSep = \lyricmode {
  Ah __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you
  oo __
  oo __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you

  Deep peace to you
  Deep peace to you oo __ oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you oo _ _ _ _ _ _
  Deep peace to you
  Deep peace to you
  Deep peace to you
}

wordsSopMidi = \lyricmode {
  "Ah "  ""  ""  ""  ""  ""
  "\nDeep " "peace " "of " "the " run "ning " "wave " "to " "you, "
  "\nDeep " "peace " "of " "the " flow "ing " "air " "to " "you, "
  "\nDeep " "peace " "of " "the " qui "et " "earth " "to " "you, "
  "\nDeep " "peace " "of " "the " shin "ing " "stars " "to " "you, "
  "\nDeep " "peace " "of " "the " gen "tle " "night " "to " "you, "
  "\nMoon " "and " "stars " "pour " "their " heal "ing " "light " "on " "you "
  "\noo " "" "" "" "" "" "" "" "" "" "" "" ""
  "\noo " "" "" "" "" "" "" "" "" ""
  "\nDeep " "peace " "of " "the " run "ning " "wave " "to " "you, "
  "\nDeep " "peace " "of " "the " flow "ing " "air " "to " "you, "
  "\nDeep " "peace " "of " "the " qui "et " "earth " "to " "you, "
  "\nDeep " "peace " "of " "the " shin "ing " "stars " "to " "you, "
  "\nDeep " "peace " "of " "the " gen "tle " "night " "to " "you, "
  "\nMoon " "and " "stars " "pour " "their " heal "ing " "light " "on " "you "

  "\nDeep " "peace " "to " "you "
  "\nDeep " "peace " "to " "you " "oo " "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "\nDeep " "peace " "to " "you "
  "\nDeep " "peace " "to " "you "
  "\nDeep " "peace " "to " "you " "oo " "" "" "" "" "" ""
  "\nDeep " "peace " "to " "you "
  "\nDeep " "peace " "to " "you "
  "\nDeep " "peace " "to " "you "
}

wordsAltoSep = \lyricmode {
  Ah __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you
  oo __ oo __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you

  Deep peace to you
  Deep peace to you oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you
}

wordsTenorSep = \lyricmode {
  Ah __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you
  oo __ oo __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you

  Deep peace to you
  Deep peace to you oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  oo
  Deep…
}
  
wordsBassSep = \lyricmode {
  Ah __
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you
%  oo _ _ _ _ _ _ _ _ _ _ _ _
%  oo _ _ _ _ _ _ _ _ _
  Deep peace of the run -- ning wave to you,
  Deep peace of the flow -- ing air to you,
  Deep peace of the qui -- et earth to you,
  Deep peace of the shin -- ing stars to you,
  Deep peace of the gen -- tle night to you,
  Moon and stars pour their heal -- ing light on you

  Deep peace to you
  Deep peace to you
  oo __ oo __
%  Deep peace to you
  Deep peace to you
  Deep peace to you oo __
  Deep peace to you
  Deep peace to you
  Deep peace to you
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
                                %      \new Dynamics \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice { \vo \soprano }
          \addlyrics \wordsSop
          \new Voice { \vt \alto    }
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        }
        <<
          \new Dynamics \with {alignAboveContext = men} \dynamicsPiano
          \new Voice {\vo \tenor}
          \new Voice {\vt \bass}
          \addlyrics \wordsBass
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
                                % Joint soprano/alto staff
        \new Staff = women \with {
          instrumentName = #"Soprano/Alto"
          shortInstrumentName = #"SA"
        }
        <<
                                %      \new Dynamics \dynamicsWomen
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice { \vo \soprano }
          \addlyrics \wordsSop
          \new Voice { \vt \alto    }
        >>
                                % Joint tenor/bass staff
        \new Staff = men \with {
          instrumentName = #"Tenor/Bass"
          shortInstrumentName = #"TB"
        }
        <<
          \new Dynamics \with {alignAboveContext = men} \dynamicsPiano
          \new Voice {\vo \tenor}
          \new Voice {\vt \bass}
          \addlyrics \wordsBass
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsPiano
          \new Voice \soprano
          \addlyrics \wordsSopSep
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsPiano
          \new Voice \alto
          \addlyrics \wordsAltoSep
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsPiano
          \new Voice \tenor
          \addlyrics \wordsTenorSep
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsPiano
          \new Voice \bass
          \addlyrics \wordsBassSep
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsPiano
          \new Voice \soprano
          \addlyrics \wordsSopSep
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsPiano
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoSep}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsPiano
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorSep}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsPiano
          \new Voice \bass
          \addlyrics {\tiny \wordsBassSep}
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsPiano
          \new Voice \soprano
          \addlyrics {\tiny \wordsSopSep}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsPiano
          \new Voice \alto
          \addlyrics \wordsAltoSep
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsPiano
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorSep}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsPiano
          \new Voice \bass
          \addlyrics {\tiny \wordsBassSep}
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsPiano
          \new Voice \soprano
          \addlyrics {\tiny \wordsSopSep}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsPiano
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoSep}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsPiano
          \new Voice \tenor
          \addlyrics \wordsTenorSep
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsPiano
          \new Voice \bass
          \addlyrics {\tiny \wordsBassSep}
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsPiano
          \new Voice \soprano
          \addlyrics {\tiny \wordsSopSep}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsPiano
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoSep}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsPiano
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorSep}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsPiano
          \new Voice \bass
          \addlyrics \wordsBassSep
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
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \solo
%          \addlyrics \wordsSolo
        >>
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = Soprano
          shortInstrumentName = S
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsPiano
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \soprano
          \addlyrics \wordsSopMidi
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = Alto
          shortInstrumentName = A
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsPiano
          \new Voice \alto
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = Tenor
          shortInstrumentName = T
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsPiano
          \new Voice \tenor
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = B
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsPiano
          \new Voice \bass
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
