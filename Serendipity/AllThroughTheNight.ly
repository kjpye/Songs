\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All Through the Night"
  subtitle    = "(based on John Lemcke's version)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Welsh Air"
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
%  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

soprano = {
  \global
  \voiceOne
  \repeat volta 2 {
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4 |
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4 |
    c''4 b'4 c''4 d''4 |
    e''4. d''8 c''4 b'4 |
    c''4 b'4 a'4 g'4|
    b'4. a'8 g'4 fis'4 |
    g'4. fis'8 e'4 g' |
    a'4. g'8 fis'4 d' |
    e'2 fis'4. fis'8 |
    g'2. r4
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  While the moon her watch is kee -- ping
  All through the night
  While the wea -- ry world is slee -- ping
  All through the night
  O'er my bos -- om gent -- ly stea -- ling
  Vis -- ions of de -- light re -- veal -- ing
  Breathes a pure and ho -- ly fee -- ling
  All through the night.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Love, to thee my thoughts are tur -- ning
  All through the night
  And for thee my heart is year -- ning,
  All through the night.
  Though sad fate our lives may se -- ver
  Par -- ting will not last for -- ev -- er,
  There's a hope that leaves me ne -- ver,
  All through the night.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "While " "the " "moon " "her " "watch " "is " kee "ping "
  "\nAll " "through " "the " "night "
  "\nWhile " "the " wea "ry " "world " "is " slee "ping "
  "\nAll " "through " "the " "night "
  "\nO'er " "my " bos "om " gent "ly " stea "ling "
  "\nVis" "ions " "of " de "light " re veal "ing "
  "\nBreathes " "a " "pure " "and " ho "ly " fee "ling "
  "\nAll " "through " "the " "night. "
 
  \set stanza = "2."
  "\nLove, " "to " "thee " "my " "thoughts " "are " tur "ning "
  "\nAll " "through " "the " "night "
  "\nAnd " "for " "thee " "my " "heart " "is " year "ning, "
  "\nAll " "through " "the " "night. "
  "\nThough " "sad " "fate " "our " "lives " "may " se "ver "
  "\nPar" "ting " "will " "not " "last " for ev "er, "
  "\nThere's " "a " "hope " "that " "leaves " "me " ne "ver, "
  "\nAll " "through " "the " "night. "
}

alto = {
  \global
  \repeat volta 2 {
    \time 4/4
    \key g \major
    \clef treble
    \voiceTwo
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 d'4. c'8 |
    b2. r4 |
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 c'4. c'8 |
    b2. r4 |
    d'4 d'4 d'4 g'4 |
    fis'4. g'8 d'4 d'4 |
    fis'4 g'4 d'4 cis'4|
    d'4. d'8 d'4 d'8 c'8 |
    b4. d'8 e'4 d'4 |
    cis'4. cis'8 d'4 d'4 |
    c'2 c'4. c'8 |
    b2. s4
  }
}

tenor = {
  \global
  \repeat volta 2 {
    \time 4/4
    \key g \major
    \clef bass
    \voiceThree
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. a8 |
    g2. s4 |
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. d8 |
    d2. s4 |
    a4 gis4 a4 b4 |
    c'4. b8 a4 g4 |
    d'4 d'4 a4 a4|
    g4. c'8 b4 a4 |
    g4. g8 g4 g4 |
    e4. a8 a4 g4 |
    g2 a4. d8 |
    d2. s4
  }
}

bass = {
  \global
  \voiceFour
  \repeat volta 2 {
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4 (a,4) d4. d8 |
    g,2. r4 |
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4_(a,4) d4. d8 |
    g,2. r4 |
    d4 d4 d4 d4 |
    d4. e8 fis4 g4 |
    a4 g4 fis4 e4|
    d4. d8 d4 d4 |
    g,4. b,8 c4 b,4 |
    a,4. a,8 d4 b,4 |
    c4_(a,4) d4. d8 |
    g,2. r4
  }
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
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
      \context {
        \Staff \RemoveAllEmptyStaves
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
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice {\unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice {\unfoldRepeats \soprano}
            \addlyrics {\wordsOne \wordsTwo}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice {\unfoldRepeats \soprano}
            \addlyrics \wordsMidi
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}
