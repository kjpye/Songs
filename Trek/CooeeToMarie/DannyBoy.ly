\version "2.25.29"

\include "../../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "“Danny Boy”"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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
  \textMark \markup { \box "1a" } s2.*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  r4 d' ees f | g c bes g | f ees c d | ees1~ | 4 bes' c d | ees2 d4 d |
  d4 c bes c | bes(g) ees2 | r4 bes'(c) d | ees2. d4 | d c bes g | f1~ | 4 bes4 4 4 |
  g'2. f4 | f ees c ees | bes(g) ees2 | r4 d ees f | g c bes g | f ees c d ees1~ | 1 |
}

wordsSop = \lyricmode {
  \repeat unfold 12 \skip 1
  And when we come,
  to the place where you are ly -- ing. __
  Then your grave will warm -- er, sweet -- er be, __
  as we bend down and tell thee that we loved ye.
  And may you rest in peace for all e -- ter -- ni -- ty. __
}

wordsMidi = \lyricmode {
  \repeat unfold 12 \skip 1
  "And " "when " "we " "come, "
  "\nto " "the " "place " "where " "you " "are " ly "ing. " 
  "\nThen " "your " "grave " "will " warm "er, " sweet "er " "be, " 
  "\nas " "we " "bend " "down " "and " "tell " "thee " "that " "we " "loved " "ye. "
  "\nAnd " "may " "you " "rest " "in " "peace " "for " "all " e ter ni "ty. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R1*4 | r4 ees' ees f | ees2 bes'4 4 |
  bes4 aes ees4 4 | d2 ees | r4 ees2 f4 | ees2. g4 | g g g ees | f2(ees | d4) d ees aes |
  g2. 4 | aes4 4 ees4 4 | 2 2 | r4 bes ees4 4 | 4 4 4 4 | c c c bes | 1~ | 1 |
}

wordsAlto = \lyricmode {
  And when we come,
  to the place where you are ly -- ing. __
  Then your grave will warm -- er, sweet -- er be, __
  as we bend down and tell thee that we loved ye.
  And may you rest in peace for all e -- ter -- ni -- ty. __
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R1*4 | r4 aes c bes | 2 ees4 4 |
  ees4 4 bes4 4 | aes2 g | r4 bes(aes4) 4 | g2. b4 | b c des4 4 | c1( | bes4) 4 c d |
  des2. 4 | c c aes c | bes2 2 | r4 bes a a | bes aes g bes | g g aes4 4 | g1~ | 1 |
}

wordsTenor = \lyricmode {
  And when we come,
  to the place where you are ly -- ing. __
  Then your grave will warm -- er, sweet -- er be, __
  as we bend down and tell thee that we loved ye.
  And may you rest in peace for all e -- ter -- ni -- ty. __
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R1*4 | r4 ees aes aes | g2 4 aes |
  aes4 4 g ees | bes2 c | r4 g'(ees) f | c2. f4 | ees4 4 4 4 | aes,2(a | bes4) aes' g f |
  ees2. 4 | aes4 4 4 4 | g2 2 | r4 g c, c | bes4 4 4 4 | c c f bes, | ees1~ | 1 |
  \bar "|."
}

wordsBass = \lyricmode {
  And when we come,
  to the place where you are ly -- ing. __
  Then your grave will warm -- er, sweet -- er be, __
  as we bend down and tell thee that we loved ye.
  And may you rest in peace for all e -- ter -- ni -- ty. __
}

pianoRHone = \relative {
  \global
  <g c ees>2 <aes c ees> |
  <bes ees g>4. <c ees aes>8 <bes ees g>2 |
  <c ees aes>4 <bes ees g> <c ees aes>2 | \vo g'4. 8 aes4 f \ov |
  <bes, ees g>1 | <g bes ees> |
  <aes c ees>2 <bes d f> | <bes g'>4. <c aes'>8 <bes g'>4 <aes f'> | % 2a
  <g bes ees>2 <bes d f> | <g c ees>1 |
  <aes c ees>2 <g bes ees> | <bes d f>1 | q |
  <g bes ees>1 | <aes c ees>2 <ges c ees> | <g bes ees> <g ees'> | % 2b
  <g c ees>2 <aes c ees> | <g bes ees>4. <aes c ees>8 <g bes ees>2 |
  <aes c ees>4 <g bes ees> <aes c ees>2 | <aes c ees>1 | q |
}

pianoRHtwo = \relative {
  \global \vt
  s1*3 | <bes ees>2 <c ees> | s1*17 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c2 aes | g4. aes8 g2 | f4 g bes2 | ees,1~ | 1 | 2 g |
  aes2 f | ees1 | 2 bes' | c bes | aes4 g8 f ees2 | bes'1 | 4 4 4 4 |
  ees,2 g | aes a | bes b | c aes | g4. aes8 g2 | f4 g bes2 | ees,1~ | 1 |
}

pianoLHtwo = \relative {
  \global
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \clef bass
            \new Voice \TempoTrack
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
%            \clef bass
            \new Voice \TempoTrack
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
