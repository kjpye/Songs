\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Do Not Stand at my Grave and Weep"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Joseph Twist"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mary Frye"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo Distant 4=88
  s1
  \set Score.tempoHideNote = ##t
  s1*4
  \tempo 4=85 s1 s4 \tempo 4=88 s2.
  s1
  s1. % 2a
  s1 s4
  s1
  s1 % 2b
  s1
  s2..
  s1 % 3a
  s2..
  s1
  s1 s4 % 3b
  s1.
  s2..
  s2. % 4a
  s2..
  s2..
  s1
  s1 s4 % 4b
  s2 s8
  s1 s4
  s2.
  s1*4 % 5a
  s1*3 \tempo 4=83
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s1*4
  \mark \markup { \box "1b" } s1*4
  \mark \markup { \box "2a" } s1. s1 s4 s1
  \mark \markup { \box "2b" } s1*2 s2..
  \mark \markup { \box "3a" } s1 s2.. s1
  \mark \markup { \box "3b" } s1 s4 s1. s2..
  \mark \markup { \box "4a" } s2. s2.. s2.. s1
  \mark \markup { \box "4b" } s1 s4 s2 s8 s1 s4 s2.
  \mark \markup { \box "5a" } s1*4
  \mark \markup { \box "5b" } s1*5
}

soprano = \relative {
  \global
  a'4^\p^\< a a a8 d
  <a d>4^\> <a c> a2
  <f a>4\! <e g> <d f>^\<(<e g>)
  <f a>4 <e g> <f a> a
  a2\! a4^\> e % 1b
  e2^\markup\italic "poco rall." g4(e)
  e4\! \breathe e^\<^\markup\italic "A tempo" a e'
  e4\omit\mf^\markup{\dynamic mf \italic warmly} (b2) e4
  \time 6/4 e4 b8(d) cis4 r8 a8^\mp^\< 4 4 % 2a
  \time 5/4 <a c>4 a <a e'>2\! a4^\>
  \time 4/4 <gis b>1
  r2\! r4 e^\mp % 2b
  fis4^\>(gis2) r4\!
  \time 7/8 r4 e8^\mf fis4 b
  \time 4/4 gis4.^\< des8 aes'4 des % 3a
  \time 7/8 des4\! 8^\< ees4 fes
  \time 4/4 ees4\!(des) aes^\> f
  \time 10/8 des4. 4 8 ges4 aes % 3b
  \time 6/4 f2^\p r4 ees^\f aes ees'
  \time 7/8 ges4 des8 4 f4
  \time 3/4 ees2^\< 4 % 4a
  \time 7/8 ges4^\ff^\> (aes8 f4) des
  aes4 bes8 ges4 ees
  \time 4/4 f2.^\mp r4
  \time 10/8 bes4.^\pp 4^\< 8 2 % 4b
  \time 5/8 des8\!^> 4^\< bes
  \time 5/4 bes2 r8\! 8^\mp 4^\< 4
  \time 3/4 <bes des>2 bes4
  \time 4/4 <bes f'>2 bes % 5a
  <a c>1^\sf^\>
  a4^\p a a a8 d
  <a d>4^\> <a c> a2
  <f a>4\! <e g> <d f>^\< (<e g>) % 5b
  <f a> <e g> <f a> a
  a2\! 4^\> e
  e2^\markup\italic rit. g4(e)
  e1\pp
  \bar "|."
}

wordsSop = \lyricmode {
  Do not stand at my grave and weep,
  do not stand __ at my grave and weep,
  at my grave and __ weep,
  I am not there. __
  I do not __ sleep.
  I am a thou -- sand winds that blow on snow __
  on rip -- ened grain
  I am the gen -- tle au -- tumn rain __
  When you wake in the morn -- ing hush.
  I am the swift, up -- lift -- ing rush
  of qui -- et birds in cir -- cling flight.
  I am the soft star -- light at night
  I am not there, I did not die!
  Do not stand at my grave and weep,
  do not stand __ at my grave and weep,
  at my grave and __ weep.
}

wordsSopMidi = \lyricmode {
  "Do " "not " "stand " "at " "my " "grave " "and " "weep, "
  "\ndo " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and "  "weep, "
  "\nI " "am " "not " "there. " 
  "\nI " "do " "not "  "sleep. "
  "\nI " "am " "a " thou "sand " "winds " "that " "blow " "on " "snow " 
  "\non " rip "ened " "grain "
  "\nI " "am " "the " gen "tle " au "tumn " "rain " 
  "\nWhen " "you " "wake " "in " "the " morn "ing " "hush. "
  "\nI " "am " "the " "swift, " up lift "ing " "rush "
  "\nof " qui "et " "birds " "in " cir "cling " "flight. "
  "\nI " "am " "the " "soft " star "light " "at " "night "
  "\nI " "am " "not " "there, " "I " "did " "not " "die! "
  "\nDo " "not " "stand " "at " "my " "grave " "and " "weep, "
  "\ndo " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and "  "weep. "
}

alto = \relative {
  \global
  a'4^\p^\< g f <e g>8 8
  <d f>4^\> <e g> <d f>(<c e>)
  d4\! 4 2^\<
  d4 c f8(d) e(g)
  fis2\! e4^\> b % 1b
  cis4(d8 cis b4) d
  cis2\! r4 e^\omit\mf^\markup{\dynamic mf \italic warmly}
  g2(a4) a
  \time 6/4 g4 4 a r8 a^\mp^\< g4 f % 2a
  \time 5/4 e4 <d f> <c e>2\! 4^\>
  \time 4/4 <b e>1
  r2\! r4 e^\mp % 2b
  e2.^\> r4\!
  \time 7/8 r4 e8^\mf 4 fis
  eis4.^\< f8 4 aes % 3a
  \time 7/8 <g a>8\!-> 4^\< ~2
  \time 4/4 aes2\! f4^\> des
  \time 10/8 d4. 4 8 4 4 % 3b
  \time 6/4 ees2\!^\p r4 ees^\f aes aes
  \time 7/8 bes4 aes8 ges4 bes
  \time 3/4 des4^\< (c) c % 4a
  \time 7/8 des8^>^\ff 4^\> bes aes
  ees4.(des4) ees
  \time 4/4 ees2.^\mp r4
  \time 10/8 g4.^\pp 4^\< 8 aes4(g) % 4b
  \time 5/8 aes8^\> 4^\> 4
  \time 5/4 g2 r8\! bes8^\mp aes4^\< ges
  \time 3/4 f2 <ees ges>4
  <des ges>2 <des f> % 5a
  <c f>1^\sf^\>
  a'4^\p^\< g f <e g>8 8
  <d f>4^\><e g> <d f>(<c e>)
  d4\! 4 2^\< % 5b
  d4 c f8(d) e(g)
  fis2\! e4^\> b
  cis4(d8 cis b4) d
  cis1^\pp
  \bar "|."
}

wordsAlto = \lyricmode {
  Do not stand at my grave and weep,
  do not stand __ at my grave and weep,
  at my grave and __ weep,
  not there. __
  I do not __ sleep.
  I am a thou -- sand winds that blow on snow __
  on rip -- ened grain
  I am the gen -- tle rain __
  When you wake in the morn -- ing hush.
  I am the swift, up -- lift -- ing rush
  of qui -- et birds in cir -- cling flight.
  I am the soft star -- light at night
  I am not there, I did not die!
  Do not stand at my grave and weep,
  do not stand __ at my grave and weep,
  at my grave and __ weep.
}

wordsAltoMidi = \lyricmode {
  "Do " "not " "stand " "at " "my " "grave " "and " "weep, "
  "\ndo " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and "  "weep, "
  "\nnot " "there. " 
  "\nI " "do " "not "  "sleep. "
  "\nI " "am " "a " thou "sand " "winds " "that " "blow " "on " "snow " 
  "\non " rip "ened " "grain "
  "\nI " "am " "the " gen "tle " "rain " 
  "\nWhen " "you " "wake " "in " "the " morn "ing " "hush. "
  "\nI " "am " "the " "swift, " up lift "ing " "rush "
  "\nof " qui "et " "birds " "in " cir "cling " "flight. "
  "\nI " "am " "the " "soft " star "light " "at " "night "
  "\nI " "am " "not " "there, " "I " "did " "not " "die! "
  "\nDo " "not " "stand " "at " "my " "grave " "and " "weep, "
  "\ndo " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and "  "weep. "
}

tenor = \relative {
  \global
  R1
  R1
  bes4^\p 4 a^\< (d8 c)
  bes4 g c a
  a2\! 4^\> g % 1b
  e2 2
  e2\! r4 a\omit\mf^\markup{\dynamic mf \italic warmly}
  b2(cis4) 4
  \time 6/4 b4 4 cis r r2 % 2a
  \time 5/4 R4*5
  \time 4/4 R1
  r2 r4 cis^\mp % 2b
  cis4^\>(b2) r4\!
  \time 7/8 r4 cis8^\mf 4 4
  \time 4/4 cis4.^\< des8 4 f % 3a
  \time 7/8 e8^> \! 4^\< ~2
  \time 4/4 f2\! des4^\> des
  \time 10/8 ces4. 4 8 bes4 ces % 3b
  \time 6/4 c2^\p r4 ees^\f 4 4
  \time 7/8 ees4 8 ges4 des
  \time 3/4 ees2^\< 4 % 4a
  \time 7/8 ges8^> ^\ff^\> 4 ees4 des
  bes4.(aes4) 4
  \time 4/4 f2.^\mp r4
  \time 10/8 ees'4.^\pp 4^\< 8 f4(e) % 4b
  \time 5/8 ees8^> \! 4^\> 4
  \time 5/4 ees2 r4\! r2
  \time 3/4 R2.
  \time 4/4 R1 % 5a
  R1
  R1
  R1
  bes4^\p 4 a^\<(d8 c) % 5b
  bes4 g c a
  a2\! 4^\> g
  e2 2
  e1^\pp
  \bar "|."
}

wordsTenor = \lyricmode {
  Do not stand __ at my grave and weep,
  at my grave and weep,
  not there. __
  I do not __ sleep.
  on snow __
  on rip -- ened grain
  I am the gen -- tle rain __
  When you wake in the morn -- ing hush.
  I am the swift, up -- lift -- ing rush
  of qui -- et birds in cir -- cling flight.
  I am the soft star -- light at night.
  Do not stand at my grave and weep,
  at my grave and weep.
}

wordsTenorMidi = \lyricmode {
  "Do " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and " "weep, "
  "\nnot " "there. " 
  "\nI " "do " "not "  "sleep. "
  "\non " "snow " 
  "\non " rip "ened " "grain "
  "\nI " "am " "the " gen "tle " "rain " 
  "\nWhen " "you " "wake " "in " "the " morn "ing " "hush. "
  "\nI " "am " "the " "swift, " up lift "ing " "rush "
  "\nof " qui "et " "birds " "in " cir "cling " "flight. "
  "\nI " "am " "the " "soft " star "light " "at " "night. "
  "\nDo " "not " "stand " "at " "my " "grave " "and " "weep, "
  "\nat " "my " "grave " "and " "weep. "
}

bass = \relative {
  \global
  R1
  R1
  R1
  r2 f4^\mf e
  d4(e8 d) c4^\> b % 1b
  a2 g
  a2\! r4 cis4\omit\mf^\markup{\dynamic mf \italic Warmly}
  e2. 4
  \time 6/4 e4 4 4 r r2 % 2a
  \time 5/4 r4*5
  \time 4/4 r4 r8 g,^\mf c4 g'
  a4 gis cis b % 2b
  a4^\>(e) r8\! b^\mf e b'
  \time 7/8 a8 gis cis b4 a
  \time 4/4 gis2^\< r % 3a
  \time 7/8 des'8^> \! 4^\< ~2
  \time 4/4 des2\! 4^\> aes
  \time 10/8 aes4. 4 8 4 4 % 3b
  \time 6/4 aes2^\p r4 ees'4^\f des c
  \time 7/8 bes4 8 ees,4 4
  \time 3/4 aes2^\< c4 % 4a
  \time 7/8 bes8^> ^\ff 4^\> ges ees
  des4.(ces4) 4
  \time 4/4 bes2.^\mp r4
  \time 10/8 bes'4.^\pp 4^\< 8 2 % 4b
  \time 5/8 ges8^> \! 4^\> 4
  \time 5/4 bes2 r4\! r2
  \time 3/4 R2.
  \time 4/4 R1 % 5a
  r2 f4^\mp e
  d2 4 4
  d2 r
  R1 % 5b
  r2 f4^\mf e
  d4(e8 d) c4^\> b
  a2 2
  a1^\pp
  \bar "|."
}

wordsBass = \lyricmode {
  Do not stand __ at my grave and weep,
  not there. __
  I do not __ sleep.
  I am the dia -- mond glint on snow __
  I am the sun -- light on rip -- ened grain
  gen -- tle rain __
  When you wake in the morn -- ing hush.
  I am the swift, up -- lift -- ing rush
  of qui -- et birds in cir -- cling flight.
  I am the soft star -- light at night
  Do not stand at my grave
  do not stand __ at my grave and weep.
}

wordsBassMidi = \lyricmode {
  "Do " "not " "stand "  "at " "my " "grave " "and " "weep, "
  "\nnot " "there. " 
  "\nI " "do " "not "  "sleep. "
  "\nI " "am " "the " dia "mond " "glint " "on " "snow " 
  "\nI " "am " "the " sun "light " "on " rip "ened " "grain "
  "\ngen" "tle " "rain " 
  "\nWhen " "you " "wake " "in " "the " morn "ing " "hush. "
  "\nI " "am " "the " "swift, " up lift "ing " "rush "
  "\nof " qui "et " "birds " "in " cir "cling " "flight. "
  "\nI " "am " "the " "soft " star "light " "at " "night "
  "\nDo " "not " "stand " "at " "my " "grave "
  "\ndo " "not " "stand "  "at " "my " "grave " "and " "weep. "
}

pianoRHone = \relative {
  \global

  \bar "|."
}

pianoRHtwo = \relative {
  \global

  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global

  \bar "|."
}

pianoLHtwo = \relative {
  \global

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
    system-system-spacing.basic-distance = #22
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
            \addlyrics \wordsSopMidi
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
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          } <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
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
            \addlyrics \wordsAltoMidi
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
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          } <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
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
            \addlyrics \wordsTenorMidi
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
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          } <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
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
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          } <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
