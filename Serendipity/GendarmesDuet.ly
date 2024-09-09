\version "2.25.19"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gendarmes’ Duet"
  subtitle    = "from ‘Geneviéve de Brabant’"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. Offenbach"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "H. B. Farnie"
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
  \partial 2
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2 s1*3
  \textMark \markup { \box "1b" }    s1
  \repeat volta 3 {
    s1*2
    \textMark \markup { \box "1c" }    s1*3
    \textMark \markup { \box "2a" }    s1*3
    \textMark \markup { \box "2b" }    s1*3
    \textMark \markup { \box "2c" }    s1*3
    \textMark \markup { \box "3a" }    s1*3
    \textMark \markup { \box "3b" }    s1*3
    \textMark \markup { \box "3c" }    s1*3
    \alternative { { s1 } { s1 } }
  }
}

dynamicsVoice = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1*3 | s1 |
  \repeat volta 3 {
    s1*17 |
    s2 s\< | s\> s\! | s1*4 |
    \alternative { { s1 } { s1 } }
  }
}

tenor = \relative {
  \global
  r2 | R1*3 |
  R1
  \repeat volta 3 {
    R1 | r2 r8. ees'16 g,8. aes16 |
    bes8 r bes r aes r d, r | ees2 r | R1 |
    r2 r8. ees'16 g,8. aes16 | bes8 r bes r aes r d, r | ees2 r | % 2a
    R1 | r2 r8. ees16 ees'8. d16 | c8 r aes r c r aes r |
    bes2 r | r8. bes16 8. 16 4 r | r8. ees16 8. 16 8 r16 bes f'8.-> ees16 |
    ees8 r d r d r c r | bes2 r | r8. bes16 8. 16 4 r | % 3a
    r8. ees16 d8. ees16 f8. ees16 d8. c16 | bes4-> ees-> ees-> d-> | ees-> r r2 |
    R1*3 |
    \alternative {
      { R1 | }
      { R1 | }
    }
  }
  \bar "|."
}

wordsTenorOne = \lyricmode {
  And of our -- selves we take good care!
  When dan -- ger looms, we’re nev -- er there!
  Or lit -- tle boys that do no harm,
  We run them in,
  we run them in,
  We show them we’re the bold Gen -- darmes!
  We run them in, we run them in,
  We show them we’re the bold Gen -- darmes!
}

wordsTenorTwo = \lyricmode {
  Then lit -- tle but -- ter -- flies we chase!
  Com -- mune with Na -- ture, face to face!
  Re -- fresh’d by Na -- ture’s ho -- ly charm,
}

wordsTenorThree = \lyricmode {
  And punch each o -- ther’s heads at night,
  Pro -- vid -- ed that they make it right!
  Or give to us our pro -- per terms.
}

wordsTenorSingle = \lyricmode {
  \set stanza = "1."
  And of our -- selves we take good care!
  When dan -- ger looms, we’re nev -- er there!
  Or lit -- tle boys that do no harm,
  We run them in,
  we run them in,
  We show them we’re the bold Gen -- darmes!
  We run them in, we run them in,
  We show them we’re the bold Gen -- darmes!

  \set stanza = "2."
  Then lit -- tle but -- ter -- flies we chase!
  Com -- mune with Na -- ture, face to face!
  Re -- fresh’d by Na -- ture’s ho -- ly charm,
  We run them in,
  we run them in,
  We show them we’re the bold Gen -- darmes!
  We run them in, we run them in,
  We show them we’re the bold Gen -- darmes!

  \set stanza = "3."
  And punch each o -- ther’s heads at night,
  Pro -- vid -- ed that they make it right!
  Or give to us our pro -- per terms.
  We run them in,
  we run them in,
  We show them we’re the bold Gen -- darmes!
  We run them in, we run them in,
  We show them we’re the bold Gen -- darmes!
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "\n[1]And " "of " our "selves " "we " "take " "good " "care! "
  "\n[1]When " dan "ger " "looms, " "we’re " nev "er " "there! "
  "\n[1]Or " lit "tle " "boys " "that " "do " "no " "harm, "
  "\n[1]We " "run " "them " "in, "
  "\n[1]we " "run " "them " "in, "
  "\n[1]We " "show " "them " "we’re " "the " "bold " Gen "darmes! "
  "\n[1]We " "run " "them " "in, " "[A]we " "run " "them " "in, "
  "\nWe " "show " "them " "we’re " "the " "bold " Gen "darmes!\n"

  \set stanza = "2."
  "\n[1]Then " lit "tle " but ter "flies " "we " "chase! "
  "\n[1]Com" "mune " "with " Na "ture, " "face " "to " "face! "
  "\n[1]Re" "fresh’d " "by " Na "ture’s " ho "ly " "charm, "
  "\n[1]We " "run " "them " "in, "
  "\n[1]we " "run " "them " "in, "
  "\n[1]We " "show " "them " "we’re " "the " "bold " Gen "darmes! "
  "\n[1]We " "run " "them " "in, " "[A]we " "run " "them " "in, "
  "\nWe " "show " "them " "we’re " "the " "bold " Gen "darmes!\n"

  \set stanza = "3."
  "\n[1]And " "punch " "each " o "ther’s " "heads " "at " "night, "
  "\n[1]Pro" vid "ed " "that " "they " "make " "it " "right! "
  "\n[1]Or " "give " "to " "us " "our " pro "per " "terms. "
  "\n[1]We " "run " "them " "in, "
  "\n[1]we " "run " "them " "in, "
  "\n[1]We " "show " "them " "we’re " "the " "bold " Gen "darmes! "
  "\n[1]We " "run " "them " "in, " "[A]we " "run " "them " "in, "
  "\nWe " "show " "them " "we’re " "the " "bold " Gen "darmes! "
}

bass = \relative {
  \global
  r2 | R1*3 |
  r2 r8. ees'16 g,8. aes16
  \repeat volta 3 {
    bes8 r bes r bes r bes r | bes4.(c8) bes4 r |
    R1 | r2 r8. ees16 g,8. aes16 | bes8 r bes r bes r bes r |
    bes4.(c8) bes4 r | R1 | r2 r8. ees,16 ees'8. d16 | % 2a
    c8 r aes r c r aes r | bes2 4 r | R1 |
    r2 r8. g16 f8. g16 | aes4 r r8. aes16 g8. aes16 | bes4 r r2 |
    R1 | r2 r8. g16 f8. g16 | aes4 r r8. aes16 g8. aes16 | % 3a
    g8. c16 8. 16 d8. c16 bes8. aes16 | g4-> g-> aes-> bes-> | g-> r r2 |
    R1*3 |
    \alternative {
      { r2 r8. ees'16 g,8. aes16 | }
      { R1 | }
    }
  }
  \bar "|."
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  We’re pub -- lic guard -- ians, bold, yet wa -- ry,
  To risk our pre -- cious lives we’re cha -- ry,
  But when we meet a help -- less wo -- man,
  We run them in,
  we run them in,
  We run them in,
  we run them in, we run them in,
  We show them we’re the bold Gen -- darmes!
  \set stanza = "2."
  Some -- times our
}

wordsBassTwo = \lyricmode {
  \set stanza = "2."
  Some -- times our du -- ty’s ex -- tra mu -- ral,
  We like to gam -- bol in things ru -- ral,
  Un -- to our beat then back re -- turn -- ing,
  \repeat unfold 28 \skip 1
  \set stanza = "3."
  If gen -- tle % -- ""
}

wordsBassThree = \lyricmode {
  \set stanza = "3."
  If gen -- tle -- men will make a ri -- ot,
  We’re quite dis -- posed to keep it qui -- et,
  But if they do not seem to see it,
}

wordsBassSingle = \lyricmode {
  \set stanza = "1."
  We’re pub -- lic guard -- ians, bold, yet wa -- ry,
  To risk our pre -- cious lives we’re cha -- ry,
  But when we meet a help -- less wo -- man,
  We run them in,
  we run them in,
  We run them in,
  we run them in, we run them in,
  We show them we’re the bold Gen -- darmes!

  \set stanza = "2."
  Some -- times our du -- ty’s ex -- tra mu -- ral,
  We like to gam -- bol in things ru -- ral,
  Un -- to our beat then back re -- turn -- ing,
  We run them in,
  we run them in,
  We run them in,
  we run them in, we run them in,
  We show them we’re the bold Gen -- darmes!

  \set stanza = "3."
  If gen -- tle -- men will make a ri -- ot,
  We’re quite dis -- posed to keep it qui -- et,
  But if they do not seem to see it,
  We run them in,
  we run them in,
  We run them in,
  we run them in, we run them in,
  We show them we’re the bold Gen -- darmes!
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "[2]We’re " pub "lic " guard "ians, " "bold, " "yet " wa "ry, "
  "\n[2]To " "risk " "our " pre "cious " "lives " "we’re " cha "ry, "
  "\n[2]But " "when " "we " "meet " "a " help "less " wo "man, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, " 
  \repeat unfold 12 \skip 1

  \set stanza = "2."
  "\n[2]Some" "times " "our " du "ty’s " ex "tra " mu "ral, "
  "\n[2]We " "like " "to " gam "bol " "in " "things " ru "ral, "
  "\n[2]Un" "to " "our " "beat " "then " "back " re turn "ing, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, "
  \repeat unfold 12 \skip 1

  \set stanza = "3."
  "\n[2]If " gen tle "men " "will " "make " "a " ri "ot, "
  "\n[2]We’re " "quite " dis "posed " "to " "keep " "it " qui "et, "
  "\n[2]But " "if " "they " "do " "not " "seem " "to " "see " "it, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, "
  "\n[2]We " "run " "them " "in, "
  "\n[2]we " "run " "them " "in, "
  \repeat unfold 12 \skip 1
}

pianoRH = \relative {
  \global
  g''8. bes,16 4 |
  aes'8. bes,16 4 f'8. bes,16 4 |
  g'8. ees16 4 <d f>8. <c ees>16 <bes d>8. <aes c>16 |
  <g bes>8-> r <g ees' g>-> r <aes c f>-> r <f aes bes d>-> r |
  <ees g bes ees>8-> r r4 r8. ees''16 g,8. aes16 | % 1b
  \repeat volta 3 {
    bes8 r bes r bes r bes r |
    bes4.(c8) bes8 r16 ees g,8. aes16 |
    bes8 r bes r bes r d, r | % 1c
    \tuplet 3/2 {ees8-! ees, g} \tuplet 3/2 {bes g bes} ees r16 ees' g,8. aes16 |
    bes8 r bes r bes r bes r |
    bes4.(c8) bes8 r16 ees g,8. aes16 | % 2a
    bes8 r bes r aes r d, r |
    \tuplet 3/2 {ees8 ees, g} \tuplet 3/2 {bes g bes} ees r16 ees ees'8. d16 |
    c8 r aes r c r aes r | % 2b
    bes2 8 r16 ees, ees'8. d16 |
    c8 r aes r c r aes r |
    bes4 r r8. g16 f8. g16 | % 2c
    aes4 r r8. aes16 g8. aes16 |
    bes4 r r8. bes16 f'8. ees16 |
    ees8 r d r d r c r | % 3a
    bes2~8. g16 f8. g16 |
    aes4 r r8. aes16 g8. aes16 |
    g8. \ottava #1 <c ees>16 <c d>8. <c ees>16 <d f>8. <c ees>16 <bes d>8. <aes c>16 | % 3b
    <g bes>8-> r <ees g bes ees>-> r q-> r <f aes bes d>-> r |
    <ees g bes ees>2-> \ottava #0 g8. bes,16 4 |
    aes'8. bes,16 4 f'8. bes,16 4 | % 3c
    g'8. ees16 4 <d f>8. <c ees>16 <bes d>8. <aes c>16 |
    <g bes>8-> r <g ees' g>-> r <aes c f>-> r <f aes bes d>-> r |
    \alternative {
      { <ees g bes ees>8-> r r4 r8. ees''16 g,8. aes16 | }
      { <ees, g bes ees>2\fermata r | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\f | s1 | s2 s\< | s1\! | s1 |
  \repeat volta 3 {
    s1*16 | s2 s\cresc | s1 | s\dim | s2 s\f | s1 | s2 s\< | s1\! |
    \alternative { { s1 } { s1 } }
  }
}

pianoLH = \relative {
  \global
  <ees g bes>8. 16 4 |
  <d f aes bes>8. 16 4 8. 16 4 |
  <ees g bes>8. 16 4 <aes,, aes'>8. <bes bes'>16 <c c'>8. <d d'>16 |
  <ees ees'>8-> r q-> r <aes, aes'>-> r <bes bes'>-> r |
  <ees ees'>8-> r <ees' g bes>-! r q-! r q-! r | % 1b
  \repeat volta 3 {
    q8 r q r <bes d f bes> r q r |
    <ees g bes>8 r q r q r q r |
    q8 r q r <f aes bes> r q r | % 1c
    <ees g bes>8 r q r q r q r |
    q8 r q r <bes d f bes> r q r |
    <ees g bes>8 r q r q r q r | % 2a
    q8 r q r <f aes bes> r q r |
    <ees g bes>8 r q r q r q r |
    <ees aes c>8 r q r q r q r | % 2b
    <ees g bes>8 r q r q r q r |
    <ees aes c>8 r q r q r q r |
    <ees g bes>8 r q r q r q r | % 2c
    f8. <aes bes d>16 8. 16 bes,8. q16 8. 16 |
    g'8. <g bes ees>16 8. 16 ees8. q16 8. 16 |
    f8. <aes bes d>16 8. 16 bes,8. q16 8. 16 | % 3a
    ees8. <g aes ees>16 8. 16 8. 16 8. 16 |
    f8. <aes bes d>16 8. 16 bes,8. q16 b8. <aes' b d>16 |
    c,8. <g' c ees>16 8. 16 aes,8. <aes' c ees> 16 8. 16 | % 3b
    <bes, bes'>8-> r <bes ees g bes>-> r <bes f' bes>-> r q-> r |
    <ees f bes>8-> r q r q8. 16 4 |
    <d f aes bes>8. 16 4 8. 16 4 | % 3c
    <ees g bes>8. 16 4 <aes,, aes'>8. <bes bes'>16 <c c'>8. <d d'>16 |
    <ees ees'>8-> r q-> r <aes, aes'>-> r <bes bes'>-> r |
    \alternative {
      { <ees ees'>8-> r <ees' g bes>-! r q-! r q-! r | }
      { <ees, ees'>2\fermata r | }
    }
  }
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
            \addlyrics \wordsTenorThree
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \transpose c c' \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
            \addlyrics \wordsBassThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \transpose c c' \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
%            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \transpose c c' \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
  \paper {
    output-suffix = "singlepage-1"
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
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVoice
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
  \paper {
    output-suffix = "singlepage-2"
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
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVoice
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
