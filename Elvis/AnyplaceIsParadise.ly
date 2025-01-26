\version "2.25.23"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Anyplace is Paradise"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Joe Thomas"
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
  \partial 4
}

TempoTrack = {
  \global
  \tempo "Moderately slow rock" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "64a" s4 s1 s2.
  \textMark \markup\box "64b" s4
  \repeat volta 4 {
    s1
    \textMark \markup\box "64c" s1*2
    \textMark \markup\box "64d" s1*2
    \textMark \markup\box "65a" s1*2
    \alternative {
      {
        \textMark \markup\box "65b" s1
      }
      { s1 }
    }
  }
}

ChordTrack = \chordmode {
  s4 s1 s2. r4
  \repeat volta 4 {
    ees1 | ees s | ees2. ees4:7 a1 |
    aes1 bes:7
    \alternative {
      { ees2. r4 }
      {ees1 }
    }
  }
}

melody = \relative {
  \global
  r4 | R1 | r2. \section
  \tuplet 3/2 {bes'8 c bes}
  \repeat volta 4 {
    ees8. d16 bes8. aes16 g8 bes4 \slurDashed 16(16) \slurSolid |
    ees8. des16 bes8. aes16 g4 r8 bes | ees8. 16 8. bes16 \tuplet 3/2 {des8 bes des~} 8. bes16 |
    \tuplet 3/2 {\slurDashed des8(c) \slurSolid bes} aes8. bes16 g4 \tuplet 3/2 {ees8 8 8} |
    g8. ees16 \tuplet 3/2 {f8 ees g~} 8. ees16 8. 16 |
    ges8. ees16 \tuplet 3/2 {f8 ees g~} 4 c8. bes16 | % 65a
    f'8. d16 \tuplet 3/2 {bes8 a aes~} 8. ges16 8. f16 |
    \alternative {
      { ees2. \tuplet 3/2 {bes'8 c bes} | }
      { ees,1 | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mf
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Wheth -- er I’m rid -- ing down the high -- way
  or walk -- ing down the street,
  It makes no dif -- f’frence, ba -- by doll, __
  \nom wher -- ev -- er \yesm we chance to meet,
  Each time I hold your lit -- tle hand, __
  it makes me feel so ver -- y nice. __
  An -- y -- place is par -- a -- dise __ when I’m with you.

  \set stanza = "2."
  Wheth -- er we’re
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "(Wheth" -- er we’re) stand -- ing on your door -- step
  or sit -- ting in the park,
  Or stroll -- ing down a shad -- y lane __
  or danc -- ing in the dark,
  Where I can take you in my arms __
  and look in -- to your pret -- ty eyes. __
  An -- y -- place is par -- a -- dise __ when I’m with you.

  \set stanza = "3."
  Give me a
}

wordsThree = \lyricmode {
  \set stanza = "3."
  "(Give" me a) cave up in the moun -- tains
  \nom Or a \yesm shack down by the sea,
  And I will be in heav -- en
  If I have you there with me,
  Where I can kiss your ten -- der lips
  And see the hea -- ven in your eyes,
  An -- y -- place is par -- a -- dise __ when I’m with you.

  \set stanza = "4."
  Ba -- by I’d
}

wordsFour = \lyricmode {
  \set stanza = "4."
  "(Ba" -- by, I’d) lice deep in the jun -- gle
  And sleep up in a tree,
  And let the rest of~the world go by,
  If you were there with me,
  Where I could love you all the time;
  ba -- by the jun -- gle would be nice.
  An -- y -- place is par -- a -- dise __ when I’m with "" "" "" "" you.
}

midiWords = \lyricmode {
}

pianoRH = \relative {
  \global
  c''8. bes16 |
  <aes f'>8. <f d'>16 \tuplet 3/2 {<d bes'>8 <cis a'> <c aes'>} 8. <bes ges'>16 8. <aes f'>16 |
  <g ees'>2. \section
  \tuplet 3/2 {bes'8 c bes} |
  \repeat volta 4 {
    <g ees'>8. <f des'>16 <des bes'>8. <c aes'>16 <bes g'>8 <des bes'>4 8 |
    <g ees'>8. <f des'>16 <des bes'>8. <c aes'>16 <bes g'>4. <des bes'>8 | % 64c
    <g ees'>8. 16 8. <des bes'>16 \tuplet 3/2 {<f des'>8 <d bes'> <f des'>~} 8. <des bes'>16 |
    \tuplet 3/2 {des'8 c bes} aes8. bes16 g4 \tuplet 3/2 {ees8 8 8} | % 64d
    <bes ges'>8. <ges ees'>16 \tuplet 3/2 {<aes f'>8 <ges ees'> <bes ges'>~}8. <ges ees'>16 8. 16 |
    <bes ges'>8. <ges ees'>16 \tuplet 3/2 {<aes f'>8 <ges ees'> <bes ges'>~} 4 <ges' c>8. <ges bes>16 | % 65a
    <aes f'>8. <f d'>16 \tuplet 3/2 {<d bes'>8 <cis a'> <c aes'>~}8. <bes ges'>16 8. 16 |
    \alternative {
      { <g ees'>2. \tuplet 3/2 {bes'8 c bes} | }
      { <g, ees'>2 <ees' g ees'> | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1 | s2. s4 |
  \repeat volta 4 {
    s1*7 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
}

pianoLH = \relative {
  \global
  r4 | bes,,4 bes' bes,8. 16 c8. d16 | ees8. bes'16 c8. bes16 ees,4 \section
  r4 |
  \repeat volta 4 {
    ees4 g8. aes16 bes4 g |
    ees4 g8. aes16 bes4 g | ees g bes g8. 16 |
    \tuplet 3/2 {bes8 aes g} f8. g16 ees8. 16 \tuplet 3/2 {des8 c bes} | aes4 c ees c |
    aes4 c ees8. c16 aes4 | bes bes' bes,8. 16 c8. d16 |
    \alternative {
      { ees8. bes'16 c8. bes16 ees,4 r | }
      { ees8. bes'16 c8. bes16 \arpeggioParenthesis <ees, bes' g'>2\arpeggio | }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
          >>
        >>
        \new PianoStaff
        <<
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
      \context { \Score
        \accidentalStyle Score.modern
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
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
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics { \wordsOne \wordsTwo }
          >>
        >>
        \new PianoStaff
        <<
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
      \context { \Score
        \accidentalStyle Score.modern
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics { \wordsOne \wordsTwo }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny\dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
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
