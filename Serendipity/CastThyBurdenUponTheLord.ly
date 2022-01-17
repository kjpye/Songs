\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cast Thy Burden Upon the Lord."
  subtitle    = "Elijah, No. 15"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Felix Mendelssohn"
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

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 4/4
  \partial 2
}

TempoTrack = {
  \tempo "Piu Adagio" 4=52
  s2
  \set Score.tempoHideNote = ##t
  s1
  s2 \tempo 4=26 s2 \tempo 4=52
  s1
  s2 \tempo 4=13 s4 \tempo 4=52 s4
  s1 % 1b
  s2 \tempo 4=26 s2 \tempo 4=52
  s1
  s2 \tempo 4=13 s4 \tempo 4=52 s4
  s1
  s2 \tempo 4=13 s4 \tempo 4=52 s4 % 2a
  s1
  s2 \tempo 4=13 s4 \tempo 4=52 s4
  s1
  s2 \tempo 4=13 s4 \tempo 4=52 s4 % 2b
  s1
  s1
  s4 \tempo 4=13 s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2 s1*4
  \mark \markup { \box "1b" }    s1*5
  \mark \markup { \box "2a" }    s1*4
  \mark \markup { \box "2b" }    s1*3 s2
}

soprano = \relative {
  \global
  ees'4^\pp 8(f)
  g4 c8 8 bes4 aes
  g1\fermata
  g4 bes bes aes
  f2 ees4\fermata 8(f)
  g4 c8^\cresc 8 bes4 aes8 8 % 1b
  g4 8 8 2\fermata
  g4 bes~4 aes8 g
  f2 ees4\fermata f
  f4^\< g aes aes\!
  g2.\fermata c4^\cresc % 2a
  ees4 c^\< g a\!
  bes2.\fermata 4
  bes4 g^\< aes bes\!
  c4 2\fermata bes4^\p % 2b
  aes4 g f2
  ees2 r
  r2
  \bar "|."
}

words = \lyricmode {
  Cast thy bur -- den up -- on the Lord;
  and He shall sus -- tain thee:
  He ne -- ver will suf -- fer the right -- eous to fall;
  He is at thy right hand.
  Thy mer -- cy, Lord is great, and far a -- bove the heavens.
  Let none be made a -- sham -- ed that wait up -- on Thee!
}

wordsMidi = \lyricmode {
  "Cast " "thy " bur "den " up "on " "the " "Lord; "
  "\nand " "He " "shall " sus "tain " "thee: "
  "\nHe " ne "ver " "will " suf "fer " "the " right "eous " "to " "fall; "
  "\nHe " "is " "at " "thy " "right " "hand. "
  "\nThy " mer "cy, " "Lord " "is " "great, " "and " "far " a "bove " "the " "heavens. "
  "\nLet " "none " "be " "made " a sham "ed " "that " "wait " up "on " "Thee! "
}

alto = \relative {
  \global
  bes4^\pp 8(d)
  ees4 8 8 d4 f
  ees1\fermata
  ees4 4 4 4
  ees4(d) ees\fermata bes8(d)
  ees4 g8^\cresc 8 f4 8 ees % 1b
  d4 8 8 2\fermata
  c4(d) ees4 8 8
  ees4(d) ees\fermata d
  d4^\< e f f\!
  ees2.\fermata f4^\cresc % 2a
  ees4 g g f8(ees)
  d2.\fermata f4
  ees4 4^\< 4 f8(g)\!
  aes4 2\fermata ees4^\p % 2b
  ees4 4 4(d)
  ees2 r
  r2
  \bar "|."
}

tenor = \relative {
  \global
  g4^\pp 8(aes)
  bes4 aes8 g f4 bes
  bes1\fermata
  bes4 4 4 c
  f,4(aes) g\fermata 8(aes)
  bes4 ees8^\cresc 8 d4 c8 8 % 1b
  b4 8 8 2\fermata
  ees4 bes~4 c8 8
  aes2 g4\fermata bes
  bes4^\< 4 c c\!
  c2.\fermata aes4^\cresc % 2a
  g4 ees'8(d) c4 4
  bes2.\fermata aes4
  g4 bes^\< ees des\!
  c4 ees2\fermata 4^\p % 2b
  aes,4 c f,(aes)
  g2 r
  r2
  \bar "|."
}

bass = \relative {
  \global
  ees4^\pp g8(f)
  ees4 aes,8 8 bes4 d
  ees1\fermata
  ees4 g g, aes
  bes2 ees4\fermata g8(f)
  ees4 c8^\cresc 8 d(ees) f f % 1b
  g4 8 8 2\fermata
  c,4 g~4 aes8 8
  bes2 ees4\fermata bes'
  aes4^\< g f f\!
  c2.\fermata 4^\cresc % 2a
  c4 8(d) ees4 f
  bes,2.\fermata d4
  ees4 des^\< c bes\!
  aes4 2\fermata g4^\p % 2b
  c4 aes bes2
  ees2 r
  r2
  \bar "|."
}

pianoRHone = \relative {
  \global \oneVoice
  r2^\markup "Piu Adagio"
  R1
  r16 \voiceOne bes(ees g \voiceTwo bes ees g bes) bes2\fermata ~ \oneVoice
  bes2~4 r
  r2 r4\fermata r
  R1 % 1b
  r16 g,,(b d g b d g) g2\fermata ~
  g2~4 r
  R1\fermata
  R1
  r16 c,,(ees g c ees g c) ~ 4\fermata ~ 4 ~ % 2a
  c2 r
  r16 bes,,(d f bes d f bes) bes4\fermata ~ 4 ~
  bes4 r r2
  r16 ees,,(aes c ees a c ees) 4\fermata ~ 4 ~ % 2b
  ees4 r r2
  r16 bes,,(ees g bes ees g bes) \voiceOne ees4(bes)
  bes2\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r2
  R1
  g1\fermata
  s1*13
  s2 ees''4 bes16( ees g bes)
  <d, aes'>8. <ees g>16 q4\fermata
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2
  s1
  s1\pp
  s1*7
  s1\pp % 2a
  s1*3
  s4 s2.\cresc % 2b
  s1
  s1\pp
  s2
}

pianoLHone = \relative {
  \global
  r2
  R1
  <ees, bes' ees>1\fermata
  R1*3
  <g, g' b d>1\fermata % 1b+
  R1
  R1\fermata
  R1
  \voiceOne <ees'' g>2. \oneVoice r4 % 2a
  R1
  \voiceOne <f bes d>2. \oneVoice r4
  R1
  \voiceOne <c ees aes c>2. \oneVoice r4 % 2b
  R1
  \voiceOne <ees g>2 \clef treble <g' bes>4 s
  <ees bes'>2\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2
  s1*9
  <c, c'>2.\fermata s4 % 2a
  s1
  <bes bes'>2.\fermata s4
  s1
  <aes aes'>2.\fermata s4 % 2b
  s1
  <ees' bes'>2 \clef treble r16 bes'' ees g s4
  f8. g16 4\fermata
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "church organ"
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
        \Staff \RemoveAllEmptyStaves
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "church organ"
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
        \Staff \RemoveAllEmptyStaves
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
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
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "church organ"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
