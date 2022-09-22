\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Loch Lomond"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Scottish Air"
  arranger    = "Arr. H. A. C."
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo Andante 4=100
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2.
  \repeat volta 2 {
    s4 s1*2
    \mark \markup { \box "B" } s1*3
    \mark \markup { \box "C" } s1*2 s2.
    \mark \markup { \box "D" } s4 s1*2
    \mark \markup { \box "E" } s1*3
    \mark \markup { \box "F" } s1*3
  }
}

melodyA = \relative {
  d'8(e) | g4 8 a b4 a8 g | a4 8 g e4 d8 e
  g4 4 4 b8 d | e2 d4 r8 d |
  \tag #'dash {e4 8 d b4 \slurDashed 8(d) \slurSolid |}
  \tag #'v2   {e4 8 d b4             8(d)            |}
  \tag #'v1   {e4 8 d b4             8 d             |}
  c8 b a g e4 d8^\cresc e |
  \tag #'dash {\slurDashed g16(8.) b16(d8.) \slurSolid e4 d8 b}
  \tag #'v2   {            g4      b16(d8.)            e4 d8 b}
  \tag #'v1   {            g16 8.  b16 d8.             e4 d8 b}
  a2 g4\omit\mf \bar "||" \break
  s4 s1*7 s2.
}

melody = \relative {
  \global
  r4 | R1 | r2 r4
  \repeat volta 2 {
    \keepWithTag #'dash \melodyA
  }
}

melodySingle = \relative {
  \global
  r4 | R1 | r2 r4
  \keepWithTag #'v1 \melodyA \bar "||" \break
  \keepWithTag #'v2 \melodyA
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  By yon bon -- nie banks and by yon bon -- nie braes,
  Where the sun shines bright on Loch Lo -- mond,
  Where me and my true \nom love were \yesm ev -- er wont to gae,
  On the \nom bon -- nie, bon -- nie \yesm banks of Loch Lo -- mond.
}

wordsTwo = \lyricmode {
  I __ mind when we part -- ed in yon sha -- dy glen,
  On the steep, steep side o' Ben Lo -- mond,
  Where in pur -- ple hue the __ Hee -- land hills we view,
  And the moon looks out from the gloam -- in'.
}

wordsMidi = \lyricmode {
  "By " "yon " bon "nie " "banks " "and " "by " "yon " bon "nie " "braes, "
  "\nWhere " "the " "sun " "shines " "bright " "on " "Loch " Lo "mond, "
  "\nWhere " "me " "and " "my " "true " "love " "were " ev "er " "wont " "to " "gae, "
  "\nOn " "the " bon "nie, " bon "nie " "banks " "of " "Loch " Lo "mond.\n"

  "\nI "  "mind " "when " "we " part "ed " "in " "yon " sha "dy " "glen, "
  "\nOn " "the " "steep, " "steep " "side " "o' " "Ben " Lo "mond, "
  "\nWhere " "in " pur "ple " "hue " "the "  Hee "land " "hills " "we " "view, "
  "\nAnd " "the " "moon " "looks " "out " "from " "the " gloam "in'.\n"
}

chorus = \lyricmode {
  Oh, ye'll tak the high -- road, and I'll tak the low road,
  An' I'll be in Scot -- land a -- fore __ ye,
  But me and my true love Will nev -- er meet a -- gain
  On the bon -- nie, bon -- nie banks o' Loch Lo -- mond.
}

chorusMidi = \lyricmode {
  "\nOh, " "ye'll " "tak " "the " high "road, " "and " "I'll " "tak " "the " "low " "road, "
  "\nAn' " "I'll " "be " "in " Scot "land " a "fore "  "ye, "
  "\nBut " "me " "and " "my " "true " "love " "Will " nev "er " "meet " a "gain "
  "\nOn " "the " bon "nie, " bon "nie " "banks " "o' " "Loch " Lo "mond.\n"
}

soprano = \relative {
  \autoBeamOff
  \global \voiceOne
  r4 | R1 | r2.
  \repeat volta 2 {
    r4 R1*7 r2.
    d'4^\mf^\markup\smallCaps Chorus | g4 8. a16 b4 8. a16 | g4 8. e16 d4 8 e | % D
    g4^\cresc 8 8 4 b8 d | e2 d4 r8 d^\mf e4 8 d b4 8 d % E
    c8 b a g e4 d8 e | g16 8. b16 d8. e4 d8 b | a2 g4
  }
}

alto = \relative {
  \autoBeamOff
  \global \voiceTwo
  r4 | R1 | r2.
  \repeat volta 2 {
    r4 R1*7 r2.
    d'4\omit\mf | d g8. 16 4 d8. 16 | e4 8. c16 b4 8 c | % C
    d4\omit\cresc 8 8 e4 f8 8  e4(fis) g r8 g\omit\mf | 4 e8 fis8 4 e8 g |
    a8 e e d c4 8 8 | b16 8. f'16 8. e8[fis] d e | e4(d8 c) b4
  }
}

tenor = \relative {
  \autoBeamOff
  \global \voiceOne
  r4 | R1 | r2.
  \repeat volta 2 {
    r4 R1*7 r2.
    d4^\mf | b'4 8. c16 d4 g,8. a16 | b4 c8. g16 4 8 8 |
    b4^\cresc 8 8 4 g8 8 | g4(a) b r8 b^\mf | c4 8 b a4 g8 d' |
    e8 d c b g4 fis8 8 | e16 8. g16 b8. c8[a] fis g | g4(fis) g
  }
}

bass = \relative {
  \autoBeamOff
  \global \voiceTwo
  r4 | R1 | r2.
  \repeat volta 2 {
    r4 R1*7 r2.
    d4\omit\mf | g4 8. 16 4 8. fis16 | e4 c8. e16 g4 8 8 |
    g4 fis8 8 e4 d8 8 | c2 g'4 r8 g\omit\mf | c,4 8 d e4 8 b |
    a8 8 8 b c4 d8 8 | e16 8. d16 8. c4 b8 e | c4(d) g,
  }
}

pianoRHone = \relative {
  \global
  d'8 e
  g4 8 a b4 8 a
  a2 g4
  \repeat volta 2 {
    d8 e | g4 8 a b4 a8 g | a4 8 g e4 d8 e |
    g4 4 4 b8 d | e2 d4 r8 d | e4 8 d b4 8 d |
    c8 b a g e4 d8 e | g4 b16 d8. e4 d8 b | a2 g4
    s4 s1*7 s2.
  }
}

pianoRHtwo = \relative {
  \global
  s4 | b4 c b d | <e g> <c fis> <b g'>
  \repeat volta 2 {
    b8 c | b4 c b2 | c4 4 4 4 |
    d4 c d g | e4 fis g r8 g | g4 8 fis g4 8 d |
    e8 d c d c4 4 | b4 fis' e8 fis d e | e4 d8 c b4
    s4 s1*7 s2.
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  s1
  s2.
  \repeat volta 2 {
    s4 s1*5
  }
}

pianoLHone = \relative {
  \global
  r4 | d e d b | c4 d g,
  \repeat volta 2 {
    g'4 | d e d2 | e4 4 g fis |
    g4 4 4 8 b | g4 a b r8 b | c4 8 a g4 b8 g |
    e4. g8 4 fis | e4 g16 b8. c8 a fis g | g4 fis g
    s4 s1*7 s2.
  }
}

pianoLHtwo = \relative {
  \global
  r4 | g, g g s | s2.
  \repeat volta 2 {
    s4 | g g g2 | g4 4 4 a |
    b4 a b g | c2 g'4 r8 g | c4 c,8 d e4 8 b |
    a4. b8 c4 d | e4 d c b8 e | c4 d g,
    s4 s1*7 s2.
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single verse staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \addlyrics \chorus
            \new Voice \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single verse staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\soprano \bar "|."}
            \addlyrics {\chorus \chorus}
            \new Voice \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single verse staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\soprano \bar "|."}
            \addlyrics {\chorus \chorus}
            \new Voice \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single verse staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsMidi
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\soprano \bar "|."}
            \addlyrics {\chorusMidi \chorusMidi}
            \new Voice \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    \midi {}
  }
}
