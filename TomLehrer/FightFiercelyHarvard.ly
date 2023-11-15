\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fight Fiercely, Harvaɾd!"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
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
  \key g \major
  \time 2/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2*3 s4
  \textMark \markup { \box "1b" } s4
  \repeat volta 2 {
    s2*4 |
    \textMark \markup { \box "1c" } s2*5
    \textMark \markup { \box "1d" } s2*4
    \textMark \markup { \box "2a" } s2*4
    \textMark \markup { \box "2b" } s2*4
    \textMark \markup { \box "2c" } s2*4
    \textMark \markup { \box "2d" } s2*3
    \alternative {
      \volta 1 { s2
                 \textMark \markup { \box "3a" } s2*5
               }
      \volta 2 {
        \textMark \markup { \box "3b" } s2
      }
    }
  }
  s2*3 |
  \textMark \markup { \box "3c" } s2*4
  \textMark \markup { \box "3d" } s2*4
}

ChordTrack = \chordmode {
  s2*3 | s4
  d4:7 |
  \repeat volta 2 {
    g2 | s | c | s |
    a2:7 | d:7 | g | s4 d:7 | g2 |
    s2 | c | e:7aug | a:9 |
    s4 ees:7 | d2:7 | s4 c:6 | b2:7 | % 2a
    s2 | e:m | s4 e:m7 | a2:7 |
    s2 | d:7 | s | g |
    c2 | e4.:7aug e8:7 | s2
    \alternative {
      \volta 1 { a2:9 | d:7 | g4 r | s2 | s | s | }
      \volta 2 { a2:9 |}
    }
  }
  d2:7 | g4 d:m6 | e2:7 |
  a2:9 | d:7 | g4 d:m6 | e2:7 |
  a2:9 | d:7 | g4 d:7 | g2 |
}

melodyA = \relative {
  R2*3 | r4
  d'4 |
}

melodyB = \relative {
  b4 d | g d | e g |
  \tag #'dash {<<{\voiceTwo c4. a8} \new Voice {\voiceOne s4. r8}>> |}
  \tag #'v1   {\oneVoice    c4.                               r8    |}
  \tag #'v2   {             c4. a8                                  |}
  b8 a g e | g a~4 | g2~ |
  \tag #'dash {<<{\voiceTwo r8 d des c} \new Voice {\voiceOne g'8 r r des}>> \oneVoice |}
  \tag #'v1   {                                               g8  r r des              |}
  \tag #'v2   {             r8 d des c                                                 |}
  b4 d |
  g4 d | e g | c2 | b8 ais b b~ |
  \tag #'dash {<<{\voiceOne b8 8~8 bes8} \new Voice {\voiceTwo b4 bes}>> \oneVoice |} % 2a
  \tag #'v1   {             b8 8~8 bes8                                            |}
  \tag #'v2   {                                                b4 bes              |}
  a2~ | 8 gis a ais | r b~b fis |
  b4 a | g fis8 e~ | e fis g gis | a4 b | % 2b
  a4 g | fis g8 a~ | a fis ees ees | d4 g |
  e4 g | c4 8 b~ | 4 e, |
}

melodyC = \relative {
  b'2 | a2 | g8 r r4 | r r | r r | r d |
}

melodyD = { b'2 | }

melodyE = \relative {
  a'2 | g8 \override NoteHead.style = #'cross b^\markup\italic "(Spoken)" ais b | fis e r4 | \revert NoteHead.style
  b'2^\markup\italic "(Sung)" | a | g8 \override NoteHead.style = #'cross b^\markup\italic "(Spoken)" ais b | fis e r4 \revert NoteHead.style |
  b'2^\markup\italic "(Sung)" | a | g4 r | r r |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1 { \melodyC }
      \volta 2 { \melodyD }
    }
  }
  \melodyE
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB
  \melodyC
  \keepWithTag #'v2 \melodyB
  \melodyD
  \melodyE
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Fight fierce -- ly, Har -- vard, fight, fight, fight!
  _ Dem -- on -- strate to them our skill. __
  _ _ Al -- be -- it \markup\italic they pos -- sess the might,
  None -- the -- less \markup\italic we __ have the will. __
  How we shall cel -- e -- brate our vic -- to -- ry, __
  We shall in -- vite the whole team up for tea. __
  "(How" jol -- ly!)
  Hurl that sphe -- roid down the field, __
  and fight, fight, fight!

  \set stanza = "2."
  Fight
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "(Fight)" fierce -- ly Har -- vard, fight, fight, fight!
  Im -- press them with our prow -- ess, \markup\italic do! __
  Oh, fel -- lows, do not
  let the crim -- son down,
  Be of stout heart __ _ and true. __
  Come on, chaps, fight __ for Har -- vard's glo -- rious name. __
  Won't it be peach -- y if we win the game? __
  "(oh," good -- y!)
  Let's try not to in -- jure them, __
  but _ _ _ _ fight, fight, fight!
  \markup\italic Let's \markup\italic not \markup\italic be \markup\italic rough \markup\italic though!
  Fight, fight, fight!
  \markup\italic And \markup\italic do \markup\italic fight \markup\italic fierce -- \markup\italic ly!
  Fight, fight, fight!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Fight fierce -- ly, Har -- vard, fight, fight, fight!
  Dem -- on -- strate to them our skill. __
  Al -- be -- it \markup\italic they pos -- sess the might,
  None -- the -- less \markup\italic we __ have the will. __
  How we shall cel -- e -- brate our vic -- to -- ry, __
  We shall in -- vite the whole team up for tea. __
  "(How" jol -- ly!)
  Hurl that sphe -- roid down the field, __
  and fight, fight, fight!

  \set stanza = "2."
  Fight fierce -- ly Har -- vard, fight, fight, fight!
  Im -- press them with our prow -- ess, \markup\italic do! __
  Oh, fel -- lows, do not
  let the crim -- son down,
  Be of stout heart __ and true. __
  Come on, chaps, fight __ for Har -- vard's glo -- rious name. __
  Won't it be peach -- y if we win the game? __
  "(oh," good -- y!)
  Let's try not to in -- jure them, __
  but fight, fight, fight!
  \markup\italic Let's \markup\italic not \markup\italic be \markup\italic rough \markup\italic though!
  Fight, fight, fight!
  \markup\italic And \markup\italic do \markup\italic fight \markup\italic fierce -- \markup\italic ly!
  Fight, fight, fight!
}

midiWords = \lyricmode {
  \set stanza = "1."
  "Fight " fierce "ly, " Har "vard, " "fight, " "fight, " "fight! "
  "\nDem" on "strate " "to " "them " "our " "skill. " 
  "\nAl" be "it "  "they " pos "sess " "the " "might, "
  "\nNone" the "less "  "we "  "have " "the " "will. " 
  "\nHow " "we " "shall " cel e "brate " "our " vic to "ry, " 
  "\nWe " "shall " in "vite " "the " "whole " "team " "up " "for " "tea. " 
  "\n(How " jol "ly!) "
  "\nHurl " "that " sphe "roid " "down " "the " "field, " 
  "\nand " "fight, " "fight, " "fight!\n"

  \set stanza = "2."
  "\nFight " fierce "ly " Har "vard, " "fight, " "fight, " "fight! "
  "\nIm" "press " "them " "with " "our " prow "ess, "  "do! " 
  "\nOh, " fel "lows, " "do " "not "
  "\nlet " "the " crim "son " "down, "
  "\nBe " "of " "stout " "heart "  "and " "true. " 
  "\nCome " "on, " "chaps, " "fight "  "for " Har "vard's " glo "rious " "name. " 
  "\nWon't " "it " "be " peach "y " "if " "we " "win " "the " "game? " 
  "\n(oh, " good "y!) "
  "\nLet's " "try " "not " "to " in "jure " "them, " 
  "\nbut " "fight, " "fight, " "fight! "
  "\n[Spoken] Let's " "not " "be " "rough " "though! "
  "\n[Sung] Fight, " "fight, " "fight! "
  "\n[Spoken] And " "do " "fight " fierce "ly! "
  "\n[Sung] Fight, " "fight, " "fight! "
}

pianoRHone = \relative {
  \global
  \oneVoice <d' d'>8 16 16 8 8 | 8 16 16 8 8 | 8 8 8 8 | 4 \section \break
  <f, c' d>4 |
  \repeat volta 2 {
    \voiceOne b4 d | g d | e g | c4. r8 |
    b8 a g e | g a~4 | g2~ | 8 r r4 | b,4 d |
    g4 d | e g | c2 | b8 ais b b~ |
    b8 8~8 bes | a2~ | 8 gis a ais | r b~b fis | % 2a
    b4 a | g fis8 e~ | e fis g gis | a4 b |
    a4 g | fis g8 a~ | a fis e ees | d4 g |
    e4 g | c4 8 b~ | 4 e, |
    \alternative {
      \volta 1 {
        \oneVoice <cis g' b>2 |
        <c f a>2 | <b d g>8 <d d'>16[16] 8 8 | 8 16 16 8 8 | 8 8 8 8 | 4 <fis, c' d> |
      }
      \volta 2 { \voiceOne <cis' b'>2 } |
    }
  }
  <c a'>2 | g'8 b ais b | fis e r4 |
  <cis b'>2 | <c a'> | g'8 b ais b | fis e r4 |
  <cis b'>2 | <c a'> \oneVoice | <b d g>4 <c fis a c>-.-^ | <g' b d g>-.-^ r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2*3 s4 \section
  s4
  \repeat volta 2 {
    r8 g [ r <g b> ] | r <b d> [ r <g b> ] | r <g c> [ r<c e> ] | r <e g> [r q] |
    r8 <cis e> [ r c] | r <c f> r q | r8 d16-> 16-> 8-> 8-> | 8-> 8-> des-> c-> | r g [ r <g b> ] |
    r8 <b d> [ r <g b> ] | r8 <g c> [ r <c e> ] | r <d e gis> [ r q ] | r <cis g'> [ r q ] |
    r8 <cis g'> [ r q ] | r <c f> <c e> <c ees> | <c d> [ r <c g'> ] r | r <fis a> [ r < a, dis> ] | % 2a
    r8 <a dis> [ r q ] | r <b e> [ r <g b>~ ] | q4 <b e> | r8 <e g> [ r <cis e> ] |
    r8 <g cis e> [ r q ] | r <c d> [ r <c d f>~ ] | q r r4 | r8 <g b> [ r q ] |
    r8 <g c> [ r <c e> ] | r <d gis> [ r q ] | r q [ r <b d> ] |
    \alternative {
      \volta 1 { s2*6 }
      \volta 2 { r8 <e g> [ r q ] | }
    }
  }
  r8 <d fis> [ r q ] | r <d g> [ r <d f> ] | r <gis, d'> [ r <gis d' e> ] |
  r8 <e' g> [ r q ] | r <d f> [ r q ] | r <d g> [ r <d f> ] | r <gis, d'> [ r <gis d' e> ] |
  r8 <e' g> [ r q ] | r <d f> [ r q ] | s2 | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\omit\f-\markup{\dynamic f \bold marcato} | s | s | s4
  s4\mf | 
  \repeat volta 2 {
    s2*4 |
    s2*5 |
    s2*4 |
    s2*4 | % 2a
    s2*4 |
    s2*4 |
    s2*3 |
    \alternative {
      \volta 1 {
        s2\omit\cresc-\markup\bold "cresc. poco a poco" |
        s2 | s8 s\f s4 | s2 | s | s4 s\mf |
      }
      \volta 2 { s2\omit\cresc-\markup\bold "cresc. poco a poco" | }
    }
  }
  s2*3 |
  s2*4 |
  s2 | s | s4 s\ff | s2 |
}

pianoLH = \relative {
  \global
  d4. <des des'>8 | <c c'>4. <b b'>8 | <a a'> <g g'> <fis fis'> <e e'> | <d d'>4 \section
d'4 |
  \repeat volta 2 {
    g,8[r d] r | g[r b] r | c[r g] r c,[r c'] r |
    cis8 [ r a ] r | d [ r d, ] r | g d'16-> 16-> 8-> 8-> | 8-> d,-> e-> fis-> | g8 [ r d ] r |
    g8 [ r b ] r | c [ r g ] r | e r e' d | cis [ r a ] r |
    <e e'> [ r <ees ees'> ] r | <d d'> [ r <e e'> ] r | <f f'> [ r <e e'> ] r | <dis dis'> [ r b' ] r | % 2a
    q8 [ r b ] r | <d, d'> [ r a' ] r | <d, d'> fis' e ees | d [ r b ] r |
    <cis, cis'>8 [ r a' ] r | <d, d'> [ r a' ] r | q fis' e ees | d [ r b ] r |
    c8 [ r g ] r | e' [ r fis ] r | gis e fis gis |
    \alternative {
      \volta 1 {
        <a, a'>8 <g g'> <fis fis'> <e e'> |
        <d d'>8 <c c'> <b b'> <a a'> | % 3a
        <g g'> r r <des'' des'> |
        <c c'>4. <b b'>8 |
        <a a'>8 <g g'> <fis fis'> <e e'> |
        <d d'>4 d' |
      }
      \volta 2 { <a a'>8 [ r e' ] r | }
    }
  }
  <fis, fis'>8 [ r d' ] r | <g, g'> [ r <f f'> ] r | <e e'> [ r b' ] r |
  <a a'>8 [ r e' ] r | <fis, fis'> [ r d' ] r | <g, g'> [ r <f f'> ] r | <e e'> [ r b' ] r |
  <a a'>8 [ r e' ] r | <fis, fis'> [ r d' ] r | g,4 <d d'>-.-^ | <g, g'>-.-^ r |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag #'dash \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
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
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
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
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
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

#(set-global-staff-size 20)

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
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
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

#(set-global-staff-size 20)

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \melodySingle
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
