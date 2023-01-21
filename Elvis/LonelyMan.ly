\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lonely Man"
  subtitle    = "(from Elvis 100 Greatest Hits)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\center-column{"Bennie Benjamin" "Sol Marcus"}
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
  \time 2/2
  \partial 4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Moderately Slow" 4=80
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \box "158a" } s4 s1*3 s2.
  \mark \markup { \box "158b" } s4
  \repeat volta 2 {
    s1*3
    \mark \markup { \box "158c" }    s1*4
    \mark \markup { \box "158d" }    s1*4
    \mark \markup { \box "158e" }    s1*4
    \mark \markup { \box "159a" }    s1*4
    \mark \markup { \box "159b" }    s1*4
    \mark \markup { \box "159c" }    s1*4
    \mark \markup { \box "159d" }    s1*3
    \alternative {
      {\mark \markup { \box "159e" }    s1*2}
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s4 | s1 | s | s | s2.
  s4 \repeat volta 2 {
    ees1 | aes2 bes:7 | ees1 |
    s2. bes4:7 | ees1 | aes2 ees | bes1:7 |
    s1 | aes | s | ees2. fis4:dim |
    ees1 | aes | s | ees |
    bes1:7 | ees | aes2 bes:7 | ees1 | % 159a
    s2 bes:7 | ees1 | aes2 ees | bes1:7 |
    s1 | aes | s | ees2. fis4:dim |
    ees1 | bes:7 | s |
    \alternative {
      {ees2 aes:7 | bes1 |}
      {ees2 aes:7 | ees1 |}
    }
  }
}

melody = \relative {
  \global
  r4 | R1 | R | R | r2. \section
  ees'8. 16
  \repeat volta 2 {
    g4. bes8 g2 | r8. aes16 bes8. c16 bes4. aes8 | g1~ |
    g2 r4 ees8. f16 | g4. bes8 g2 | r8. aes16 bes8. c16 bes4. g8 | f1~ |
    f2 r | c'8 4.~4 8. d16 | ees8 4.~4. c8 | c bes4.~4 a8. c16 |
    bes1 | c8 4.~4 8. d16 | ees8 4.~4. c8 | bes8 4. \tuplet 3/2 {bes,4 ees g} |
    f2. ees8. f16 | g4. bes8 g2 | r8. aes16 bes8. c16 bes4. aes8 | g1~ | % 159a
    g2 r4 ees8. f16 | g4. bes8 g2 | r8. aes16 bes8. c16 bes4. g8 | f1~ |
    f2 r | c'8 4.~4 8. d16 | ees8 4.~4 c8. ees16 | c8 bes4.~4 a8. c16 |
    bes2. 8. 16 | d4. c8 4. bes8 | bes bes,4. \tuplet 3/2 {4(d) f} |
    \alternative {
      {ees1 | r2 r4 ees8.^\markup\italic "(Tacet)" f16 |}
      {ees1~ | ees\fermata |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  It's a
  \repeat volta 2 {
    lone -- ly man who wan -- ders all a -- round. __
    It's a lone -- ly man who roams from town to town, __
    Search -- in', __ al -- ways search -- in' __
    for some -- thing he can't find.
    Hop -- in', __ al -- ways hop -- in' __
    that some -- day
    Fate will be kind.
    It's a lone -- ly man who trav -- els all a -- lone, __
    When he has no one that he can call his own. __
    Al -- ways so un -- hap -- py, __
    tak -- in' shel -- ter __ where he can.
    Here I am; come meet a lone -- ly, lone -- ly
    \alternative {
      {man. It's a}
      {man. __}
    }
  }
}

midiWords = \lyricmode {
  "It's " "a "
  \repeat volta 2 {
    "\nlone" "ly " "man " "who " wan "ders " "all " a "round. " 
    "\nIt's " "a " lone "ly " "man " "who " "roams " "from " "town " "to " "town, " 
    "\nSearch" "in', "  al "ways " search "in' " 
    "\nfor " some "thing " "he " "can't " "find. "
    "\nHop" "in', "  al "ways " hop "in' " 
    "\nthat " some "day "
    "\nFate " "will " "be " "kind. "
    "\nIt's " "a " lone "ly " "man " "who " trav "els " "all " a "lone, " 
    "\nWhen " "he " "has " "no " "one " "that " "he " "can " "call " "his " "own. " 
    "\nAl" "ways " "so " un hap "py, " 
    "\ntak" "in' " shel "ter "  "where " "he " "can. "
    "\nHere " "I " "am; " "come " "meet " "a " lone "ly, " lone  "ly "
    \alternative {
      {"man.\n" "It's " "a "}
      {"man. " }
    }
  }
}

pianoRHone = \relative {
  \global \voiceOne
  bes'8.\( 16 | d4. c8 4. bes8 | bes bes,4. \tuplet 3/2 {bes4 d~<d f>} | ees2\) c'4(4 | bes2.) \section
  ees,8. 16 |
  \repeat volta 2 {
    g4. bes8 g2 | r8. aes16 bes8. c16 bes4. aes8 | g1~ |
    g4 <g, bes>8.(<aes c>16 <g bes>4) <c ees>8. <d f>16 | % 158c
    g4. bes8 g2 | r8. aes16 bes8. c16 bes4. g8 | f1~ |
    f4 d'8.(16 c4 bes) | c8 4.~4 8. d16 | ees8 4.~4. c8 | c bes4.~4 a8. c16 |
    bes1 | c8 4.~4 8. d16 | ees8 4.~4. c8 | bes8 4. \tuplet 3/2 {bes,4 e~<e g>} |
    <d f>2. <c ees>8. <d f>16 | g4. bes8 g2 | r8. aes16 bes8. c16 bes4. aes8 | g1~ | % 159a
    g4 <g, bes>8.(<aes c>16 <g bes>4) <c ees>8. f16 | g4. bes8 g2 | r8. aes16 bes8. c16 bes4. g8 | f1~ |
    f4 d'8.(16 c4 bes) | c8 4.~4 8. d16 | ees8 4.~4 c8. ees16 | c8 bes4.~4 a8. c16 |
    bes2. 8. 16 | d4. c8 4. bes8 | 8 bes,4. \tuplet 3/2 {4 d~ <d f>} |
    \alternative {
      {ees2 c'4(4 | bes2.) ees,8. f16 |}
      {<g, bes ees>2 <ges c>4(q | <g bes ees>2) <ees' g ees'>2\arpeggio\fermata |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r4 | r <f' aes> r <d aes'> | q2 aes | <g bes>2 <ees' ges>4 4 | <d aes'>2.
  r4 |
  \repeat volta 2 {
    <bes ees>2 2 | r4 <c ees> <d g>4. <c f>8 | <bes ees>1~ |
    q4 r r aes | % 158c
    <bes ees>2 2 |
    r4 <c ees> r <bes ees> |
    <aes d>1~ |
    q4 <f' aes>8. 16 4 <d aes'> | % 158d
    r4 <ees aes>~4 4 |
    r4 <ees aes c>4~4. <ees aes>8 |
    r4 <ees g>~4 <ees fis> |
    r4 <ees g>2. | % 158e
    r4 <ees aes>~4 4 |
    r4 <ees aes c>4~4. <ees aes>8 |
    r4 <bes ees g> <g bes>2 |
    aes2. 4 | % 159a
    <bes ees>2 2 |
    r4 <c ees> <d g>4. 8 |
    <bes ees>1~ |
    q4 r r aes | % 159b
    <bes ees>2 2 |
    r4 <c ees> r <bes ees> |
    <aes d>1~ |
    q4 <f' aes>8. 16 4 <d aes'> | % 159c
    r4 <ees aes>4~4 4 |
    r4 <ees aes c>~4 4 |
    r4 <ees g>~4 <ees fis> |
    r4 <bes ees g>2 ees4 | % 159d
    r4 <f aes> r <d aes'> |
    q2 aes |
    \alternative {
      {<g bes>2 <ees' ges>4 4 | <d aes'>2. r4 |}
      {s1 | s |}
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp | s1 | s | s | s2.
  s4\mp
  \repeat volta 2 {
    s1*30
    \alternative {
      {s1 | s |}
      {s1 | s-\markup\italic rall. |}
    }
  }
}

pianoLH = \relative {
  \global
  r4 | f,2 <bes, bes'> | f'4 bes8. c16 bes4 bes, | ees bes' aes2 | bes4( g8. f16 bes,4) \section
  r4 |
  \repeat volta 2 {
    ees4 bes' c8. bes16 c8. bes16 | aes2 bes4 bes, | ees bes' c8. bes16 c8. bes16 |
    ees4 bes8.(c16 bes4) bes, | ees4 bes' c8. bes16 c8. bes16 | aes2 g4. ees8 | f4 bes c8. bes16 c8. bes16 |
    f4 d''8.(16 c4 bes) | aes,4. ees'8 f4 ees | aes,4. ees'8 f8. ees16 aes,4 | ees4. g8 bes4 c8. a16 |
    bes4. 8 ees8. des16 c8. bes16 | aes4. ees'8 f4 ees | aes,4. ees'8 f8. ees16 aes,4 | ees4. ees'8 bes4 bes, |
    bes'4 g8.(f16 bes,4) bes' | ees,4 bes' c8. bes16 c8. bes16 | aes2 bes4 bes, | ees4 bes' c8. bes16 c8. bes16 | % 159a
    ees,4 bes'8.(c16 bes4) bes, | ees bes' c8. bes16 c8. bes16 | aes2 g4. ees8 | f4 bes c8. bes16 c8. bes16 |
    ees,4 d''8.(16 c4 bes) | aes,4. ees'8 f4 ees | aes,4. ees'8 f8. ees16 aes,4 | ees4. g8 bes4 c8. a16 |
    bes4. c8 bes4 g | f2 <bes, bes'> | f'4 bes8. c16 bes4 bes, |
    \alternative {
      {ees4 bes' aes2 | bes4(g8. f16 bes,4) r |}
      {ees4 bes' aes2 | ees4 bes' <ees, bes' g'>2\arpeggio\fermata |}
    }
  }
%  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage")
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
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
