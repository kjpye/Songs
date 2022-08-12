\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet Day"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ralph Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "George Herbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo "Andantino tranquillo" 4=90
  \set Score.tempoHideNote = ##t
  s4
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s4 s2.*5
  \mark \markup { \box "1b" }    s2.*7
  \mark \markup { \box "2a" }    s2.*6
  \mark \markup { \box "2b" }    s2.*5
  \mark \markup { \box "3a" }    s2.*5
  \mark \markup { \box "3b" }    s2.*6
  \mark \markup { \box "4a" }    s2.*8
  \mark \markup { \box "4b" }    s2.*5 s1 s1
}

soprano = \relative {
  \global
  b'4\omit\p^\markup{\dynamic p \italic dolce}
  e2 d4
  b2 4
  a4(g) a
  b2 e4
  g2 fis4
  d4 e2 % 1b
  d2 cis4
  b2 4
  d2 c4
  b2 4
  a4(g) e
  d2.
  d4^\< g^\> fis % 2a
  e2.^\pp ~
  e2.~
  e2.~
  e4 r\fermata b'^\mf
  e2.
  d2 b4 % 2b
  a4 g a
  b2^\> 4\! ~
  b4 r e
  g2 fis4
  d2 e4 % 3a
  d4 cis2
  b2 4
  d2 c4
  b2 4
  a4(g) e % 3b
  d2^\> 4\! \breathe
  d4^\< g^\> fis
  e2.^\pp ~
  e2.^\> ~
  e2.
  e4^\ppp 4 4 % 4a
  fis2 4
  g2 4
  d2 g4
  a2 d4
  c2 b4
  a2 gis4
  a2.
  a4 4 4^\< % 4b
  b4 2
  c2 d4
  e2\! ~ 8 r
  d2.^\ppp \bar "||" \time 4/4
%  c4^\> ^\markup{\rhythm {4} = \rhythm {4} \italic "poco rall"} !b a2
  c4^\> ^\markup\italic "poco rall" (b) a2
  gis1\fermata ^\pppp
  \bar "|."
}

words  = \lyricmode {
  \set stanza = "1."
  Sweet day! so cool, so calm, so bright,
  The bri -- dal of the earth and sky,
  The dew shall weep thy fall __ to -- night;
  For thou must die. __

  \set stanza = "2."
  Sweet spring! full of sweet days and ro -- ses, __
  A box where sweets com -- pact -- ed lie,
  My mu -- sic shows ye have your clos -- es,
  And all must die. __

  \set stanza = "3."
  On -- ly a sweet and vir -- tuous soul,
  Like sea -- soned tim -- ber, ne -- ver gives;
  But though the whole world tend to coal, __
  Then chief -- ly lives.
}

wordsMidi  = \lyricmode {
  \set stanza = "1."
  "Sweet " "day! " "so " "cool, " "so " "calm, " "so " "bright, "
  "\nThe " bri "dal " "of " "the " "earth " "and " "sky, "
  "\nThe " "dew " "shall " "weep " "thy " "fall "  to "night; "
  "\nFor " "thou " "must " "die.\n" 

  \set stanza = "2."
  "\nSweet " "spring! " "full " "of " "sweet " "days " "and " ro "ses, " 
  "\nA " "box " "where " "sweets " com pact "ed " "lie, "
  "\nMy " mu "sic " "shows " "ye " "have " "your " clos "es, "
  "\nAnd " "all " "must " "die.\n" 

  \set stanza = "3."
  "\nOn" "ly " "a " "sweet " "and " vir "tuous " "soul, "
  "\nLike " sea "soned " tim "ber, " ne "ver " "gives; "
  "\nBut " "though " "the " "whole " "world " "tend " "to " "coal, " 
  "\nThen " chief "ly " "lives. "
}

alto = \relative {
  \global
  e'4\omit\p^\markup{\dynamic p \italic dolce}
  g2 fis4
  e2 4
  fis4(e) fis
  g2 4
  g2 a4
  b4 g2 % 1b
  fis2 e4
  dis2 e4
  fis2 e4
  d2 g4
  e4(d) c8(b) a2.
  d2^\dim(c4) % 2a
  b2.~(
  b4^\> a) c
  b2.^\pp^\> ~
  b4 r\fermata e^\mf
  g2.
  fis2 e4 % 2b
  fis4 e fis
  g2^\> 4\! ~
  g4 r g
  b4(g) a
  g4(fis) e % 3a
  fis4 e2
  dis2 e4
  fis2 e4
  d2 g4
  e4(d) c8(b)
  a2^\> 4 \breathe
  d2^\dim (c4)
  b2.~(
  b4^\> a) c\!
  b2.^\pp^\>
  \mark\markup{ \musicglyph "scripts.ufermata" }
  b4\ppp 4 4 % 4a
  d2 4
  e4.(d8) c4
  g'2 4
  d2 fis4
  e2 d4
  c4.(d8) e4
  cis2.
  e4 4^\< 4 % 4b
  g4 d2
  f2 4
  e2\! ~8 r
  g2.^\ppp
  e2.^\>^\markup\italic "poco rall." d4
  e1\fermata^\pppp
  \bar "|."
}

wordsAlto = \lyricmode {
  Sweet day! so cool, so calm, so bright,
}

tenor = \relative {
  \global
  g4\omit\p^\markup{\dynamic p \italic dolce}
  b2 a4
  g4(a) b
  c4(d) c
  b2 4
  e2 d4
  b4 c(b) % 1b
  a2 8(g)
  fis2 g4
  b2 g4
  g2 d'4 c4(b8 a) g4
  g4(fis2)g2^\dim (a4) % 2a
  b4(a g8 fis
  e2) fis4
  gis2.^\pp^\> ~
  gis4\! r\fermata g^\mf
  b2.
  a2 b4 % 2b
  c4 d c
  b2^\> 4\! ~
  b4 r b
  b4(e) d
  b4(a) g % 3a
  fis4 a(g)
  fis2 g4
  b2 g4
  g2 d'4
  c4(b8 a) g4 % 3b
  g4^\> (fis) 4 \breathe g2^\dim (a4)
  b4(a g8 fis
  e2^\> ) fis4
  gis2.^\pp^\>
  gis4^\ppp 4 4 % 4a
  a2 4
  c2 g4
  b2 4
  a2 b4
  g4.(a8) b4
  c2 b4
  a2.
  cis4 4^\< 4 % 4b
  d4 c2
  a2 8(b) c2\! ~ 8 r
  b2.^\ppp
  c4^\markup\italic "poco rall." (d) c2
  b1\fermata^\pppp
  \bar "|."
}

wordsTenor = \lyricmode {
  Sweet day! so cool, so calm, so bright,
}

bass = \relative {
  \global
  e4\omit\p^\markup{\dynamic p \italic dolce}
  e2 4
  e4(fis) g
  a4^\> (b) a
  e2\! 4
  e2 fis4
  g4 c,2 % 1b
  d2 a4
  b2 e4
  b2 c4
  g'2 g,4
  a4(b) c
  d2(c4)
  b2^\dim (a4) % 2a
  g2(a8 b
  c2) d4
  e2.^\p^\> ~
  e4\! r\fermata e^\mf
  e2.
  fis2 g4 % 2b
  a4 b a
  e2^\> 4\! ~
  e4 r e
  e2 fis4
  g2 c,4 % 3a
  d4 a2
  b2 e4
  b2 c4
  g'2 g,4
  a4(b) c % 3b
  d2^\> c4\! \breathe
  b2^\dim (a4)
  g2(a8 b
  c2^\>) d4
  e2.^\pp^\>
  e4^\ppp e e % 4a
  d2 4
  c4.(d8) e4
  g2 e4
  fis2 b,4
  c2 g'4
  a2 e4
  a,2.
  a'4 4^\< 4 % 4b
  g4 2
  f4.(e8) d4
  c2\! ~ 8 r
  g2.^\ppp
  a2^\>^\markup\italic "poco rall." a
  <e e'>1\fermata^\pppp
  \bar "|."
}

wordsBass = \lyricmode {
  Sweet day! so cool, so calm, so bright,
}

pianoRHone = \relative {
  \global
  <e' b'>4^\markup\bold "Andantino tranquillo"
  <g e'>2 <fis d'>4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4
  s2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\p-\markup{\dynamic p \italic dolce}
  s2.
}

pianoLHone = \relative {
  \global \oneVoice
  <e g>4
  <e b'>2 <e a>4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s4
  s2.
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
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "single-noacc"
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
  \bookOutputSuffix "midi-sop"
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
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \pianoRHone
%%            \new Voice \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \pianoLHone
%%            \new Voice \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidi
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
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \pianoRHone
%%            \new Voice \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \pianoLHone
%%            \new Voice \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
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
            \new Voice \soprano
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
            \addlyrics \wordsMidi
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
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \pianoRHone
%%            \new Voice \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \pianoLHone
%%            \new Voice \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
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
            \new Voice \soprano
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
            \addlyrics \wordsMidi
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%%            \new Voice \pianoRHone
%%            \new Voice \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%%            \new Voice \pianoLHone
%%            \new Voice \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}
