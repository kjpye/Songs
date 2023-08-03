\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ash Grove"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Welsh Air"
  arranger    = "Arr. Jeremy Rawson"
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
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo "Moderately, Gently" 4=105
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4
  \repeat volta 2 {
    s2.*4
    \textMark \markup { \box "1b" } s2.*5
    \textMark \markup { \box "2a" } s2.*5
    \textMark \markup { \box "2b" } s2.*5
    \textMark \markup { \box "3a" } s2.*4
    \textMark \markup { \box "3b" } s2.*5
    \textMark \markup { \box "4a" } s2.*3
    \alternative { { s2.*2 } { s2 } }
  }
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  \repeat volta 2 {
    s2.*7 | s4. s\mp | s2. |
    s2.*6 | s4. s\mf | s2. | s2 s4\> | s2.\p |
    s2 s4\mf | s2. | s | s2\< s4\! | s4. s\mp | s2. | s2 s4\f | s2. | s4. s\p |
    s2. | s4. s\p | s2. |
    \alternative {
      { s2. | s | }
      { s2 }
    }
  }
}

soprano = \relative {
  \global
  d'4
  \repeat volta 2 {
    g4 b d8(c) | b4 g g | a c8(b) a(g) | fis4 d d |
    g4 b8(a) g(fis) | e4 c e | d g fis | g4. r8 d4 | g b d8(c) |
    b4 g g | a c8(b) a(g) | fis4 d d | g b8(a) g(fis) | e4 c e | % 2a
    d4 g fis | g4. r8 b8.(c16) | d4 b8.(c16) d8.(e16) | d4 c b | a2. |
    a4 r a | b g8.(a16) b8.(c16) | b4 a g | fis d' cis | % 3a
    d4. r8 a4 | b8(a) g4 a | g g g | a c8(b) a(g) | fis4 d fis |
    g4 g b | c c c | b d c |
    \alternative {
      { b2 r4 | r2 d,4 | }
      { b'2 }
    }
  }
  
  \bar "|."
}

wordsWomenOne = \lyricmode {
  Down yon -- der green val -- ley where stream -- lets me -- an -- der,
  When twi -- light is fa -- ding I pen -- sive -- ly rove;
  Or, at the bright noon -- tide in so -- li -- tude wan -- der,
  A -- mid the dark shades of the lone -- ly Ash Grove.
  'Twas there while the black -- bird was sing -- ing
  I first met that dear one, the joy of my heart,
  A -- round us for glad -- ness the blue -- bells were ring -- ing,
  Ah! then lit -- tle thought I how soon we should part.

  Still
}

wordsWomenTwo = \lyricmode {
  _ glows the bright sun -- shine o'er val -- ley and moun -- tain,
  Still war -- bles the black -- bird its note from the tree.
  Still trem -- bles the moon -- beam on stream -- let and foun -- tain,
  But what are the beau -- ties of na -- ture to me?
  With sor -- row deep sor -- row deep sor -- row.
  All day I go mourn -- ing in search of my love!
  Ye e -- choes! oh tell me, where sweet is the mai -- den?
  “She sleeps 'neath the green turf down by the Ash _ _ Grove.”
}

wordsWomenSingle = \lyricmode {
  Down yon -- der green val -- ley where stream -- lets me -- an -- der,
  When twi -- light is fa -- ding I pen -- sive -- ly rove;
  Or, at the bright noon -- tide in so -- li -- tude wan -- der,
  A -- mid the dark shades of the lone -- ly Ash Grove.
  'Twas there while the black -- bird was sing -- ing
  I first met that dear one, the joy of my heart,
  A -- round us for glad -- ness the blue -- bells were ring -- ing,
  Ah! then lit -- tle thought I how soon we should part.

  Still glows the bright sun -- shine o'er val -- ley and moun -- tain,
  Still war -- bles the black -- bird its note from the tree.
  Still trem -- bles the moon -- beam on stream -- let and foun -- tain,
  But what are the beau -- ties of na -- ture to me?
  With sor -- row deep sor -- row deep sor -- row.
  All day I go mourn -- ing in search of my love!
  Ye e -- choes! oh tell me, where sweet is the mai -- den?
  “She sleeps 'neath the green turf down by the Ash Grove.”
}

wordsWomenMidi = \lyricmode {
  "Down " yon "der " "green " val "ley " "where " stream "lets " me an "der, "
  "\nWhen " twi "light " "is " fa "ding " "I " pen sive "ly " "rove; "
  "\nOr, " "at " "the " "bright " noon "tide " "in " so li "tude " wan "der, "
  "\nA" "mid " "the " "dark " "shades " "of " "the " lone "ly " "Ash " "Grove. "
  "\n'Twas " "there " "while " "the " black "bird " "was " sing "ing "
  "\nI " "first " "met " "that " "dear " "one, " "the " "joy " "of " "my " "heart, "
  "\nA" "round " "us " "for " glad "ness " "the " blue "bells " "were " ring "ing, "
  "\nAh! " "then " lit "tle " "thought " "I " "how " "soon " "we " "should " "part.\n"

  "\nStill " "glows " "the " "bright " sun "shine " "o'er " val "ley " "and " moun "tain, "
  "\nStill " war "bles " "the " black "bird " "its " "note " "from " "the " "tree. "
  "\nStill " trem "bles " "the " moon "beam " "on " stream "let " "and " foun "tain, "
  "\nBut " "what " "are " "the " beau "ties " "of " na "ture " "to " "me? "
  "\nWith " sor "row " "deep " sor "row " "deep " sor "row. "
  "\nAll " "day " "I " "go " mourn "ing " "in " "search " "of " "my " "love! "
  "\nYe " e "choes! " "oh " "tell " "me, " "where " "sweet " "is " "the " mai "den? "
  "\n“She " "sleeps " "'neath " "the " "green " "turf " "down " "by " "the " "Ash " "Grove.” "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  \repeat volta 2 {
    s2.*7 | s4. s\mp | s2. |
    s2.*6 | s4. s\mf | s2. | s2 s4\> | s2.\p |
    s2 s4\mf | s2. | s | s2\< s4\! | s4. s\mp | s2. | s | s | s4. s\p |
    s2. | s4. s\mf | s2. |
    \alternative {
      { s2. | s | }
      { s2 }
    }
  }
}

alto = \relative {
  \global
  d'4
  \repeat volta 2 {
    d4 d d | g8(fis) e4 d | c e8(d) c4 | d d d |
    d4 d d | c c c8(b) | a4 b c | b4. r8 d4 | d d d |
    g8(fis) e4 d | c e8(d) c4 | d d d | d d d | c c c8(b) | % 2a
    a4 b c | b4. r8 g'8.(a16) | b4 g8.(a16) b8.(c16) | b4 a g | e2. |
    d4 r d | g e8.(fis16) g8.(a16) | g4 fis e | d fis e | % 3a
    fis4. r8 fis8(e) | d4 d d | d b d | c e8(d) c4 | d d d |
    d4 g g | g e e | d g fis |
    \alternative {
      { g2 r4 | r2 d4 }
      { g2 }
    }
  }
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  \repeat volta 2 {
    s2.*7 | s4. s\mp | s2. |
    s2.*6 | s2. | s\p | s2 s4\mf | s2. |
    s2 s4\> | s2.\p | s2\< s4\mf | s2\< s4\! | s4. s\f | s2. | s2 s4\mp | s2. | s4. s\p |
    s2. | s4. s\p | s2. |
    \alternative {
      { s2. | s | }
      { s2 }
    }
  }
}

tenorR = \relative {
  b8(a) g4 a | g b8(a) g4 | g a a | 8(g) fis4 a |
  b8(a) g4 g | 8(fis) e4 g | fis g a | g4. r8 a4 | b8(a) g4 a |
  g4 b8(a) g4 | g a a | 8(g) fis4 a | b8(a) g4 g | 8(fis) e4 g | % 2a
  fis4 g a | g4. r8 r4 |
  \tag #'dash {\slurDashed d'2.( | 4) \slurSolid r b |}
  \tag #'v1   {            d2.~  | 4             r b |}
  \tag #'v2   {            d2.   | 4             r b |}
  c a8.(b16) c8.(d16) |
  c4 b a | b2.~ | 4 r b | d a g | % 3a
  a4. r8 d,4 | g b d8(c) | b4 g g | g a a | 8(g) fis4 a |
  b4 d d | c g g | g b a |
}

tenor = \relative {
  \global
  a4 |
  \repeat volta 2 {
    \tenorR
    \alternative {
      { g2 r4 | r2 a4 }
      { g2 }
    }
  }
  \bar "|."
}

tenorSingle = \relative {
  a4 | \keepWithTag #'v1 \tenorR g2 r4 | r2
  a4 | \keepWithTag #'v2 \tenorR | g2
}

wordsMenOne = \lyricmode {
  Down yon -- der green val -- ley where stream -- lets me -- an -- der,
  When twi -- light is fa -- ding I pen -- sive -- ly rove;
  Or, at the bright noon -- tide in so -- li -- tude wan -- der,
  A -- mid the dark shades of the lone -- ly Ash Grove.
  There __ was cheer -- ful -- ly sing -- ing
  I met __ the joy of my heart,
  A -- round us for glad -- ness the blue -- bells were ring -- ing,
  Ah! then lit -- tle thought I how soon we should part.

  Still
}

nom  = { \set   ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsMenTwo = \lyricmode {
  _ glows the bright sun -- shine o'er val -- ley and moun -- tain,
  Still war -- bles the black -- bird its note from the tree.
  Still trem -- bles the moon -- beam on stream -- let and foun -- tain,
  But what are the beau -- ties of na -- ture to me?
  \nom Sor -- row, \yesm my bo -- som is la -- den,
  All day __ in search of my love!
  Ye e -- choes! oh tell me, where sweet is the mai -- den?
  “She sleeps 'neath the green turf down by the Ash _ _ Grove.”
}

wordsMenSingle = \lyricmode {
  Down yon -- der green val -- ley where stream -- lets me -- an -- der,
  When twi -- light is fa -- ding I pen -- sive -- ly rove;
  Or, at the bright noon -- tide in so -- li -- tude wan -- der,
  A -- mid the dark shades of the lone -- ly Ash Grove.
  There __ was cheer -- ful -- ly sing -- ing
  I met __ the joy of my heart,
  A -- round us for glad -- ness the blue -- bells were ring -- ing,
  Ah! then lit -- tle thought I how soon we should part.

  Still glows the bright sun -- shine o'er val -- ley and moun -- tain,
  Still war -- bles the black -- bird its note from the tree.
  Still trem -- bles the moon -- beam on stream -- let and foun -- tain,
  But what are the beau -- ties of na -- ture to me?
  Sor -- row, my bo -- som is la -- den,
  All day __ in search of my love!
  Ye e -- choes! oh tell me, where sweet is the mai -- den?
  “She sleeps 'neath the green turf down by the Ash Grove.”
}

wordsMenMidi = \lyricmode {
  "Down " yon "der " "green " val "ley " "where " stream "lets " me an "der, "
  "\nWhen " twi "light " "is " fa "ding " "I " pen sive "ly " "rove; "
  "\nOr, " "at " "the " "bright " noon "tide " "in " so li "tude " wan "der, "
  "\nA" "mid " "the " "dark " "shades " "of " "the " lone "ly " "Ash " "Grove. "
  "\nThere "  "was " cheer ful "ly " sing "ing "
  "\nI " "met "  "the " "joy " "of " "my " "heart, "
  "\nA" "round " "us " "for " glad "ness " "the " blue "bells " "were " ring "ing, "
  "\nAh! " "then " lit "tle " "thought " "I " "how " "soon " "we " "should " "part.\n" 

  "\nStill " "glows " "the " "bright " sun "shine " "o'er " val "ley " "and " moun "tain, "
  "\nStill " war "bles " "the " black "bird " "its " "note " "from " "the " "tree. "
  "\nStill " trem "bles " "the " moon "beam " "on " stream "let " "and " foun "tain, "
  "\nBut " "what " "are " "the " beau "ties " "of " na "ture " "to " "me? "
  "\nSor" "row, " "my " bo "som " "is " la "den, "
  "\nAll " "day "  "in " "search " "of " "my " "love! "
  "\nYe " e "choes! " "oh " "tell " "me, " "where " "sweet " "is " "the " mai "den? "
  "\n“She " "sleeps " "'neath " "the " "green " "turf " "down " "by " "the " "Ash " "Grove.” "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  \repeat volta 2 {
    s2.*7 | s4. s\mp | s2. |
    s2.*6 | s2. | s\p | s2 s4\mf | s2. |
    s2 s4\> | s2.\p | s2\< s4\mf | s2\< s4\! | s4. s\mp | s2. | s | s | s4. s\mf |
    s2. | s4. s\p | s2. |
    \alternative {
      { s2. | s | }
      { s2 }
    }
  }
}

bassR = \relative {
  g4 g fis | g g b, | c8(b) a4 c | d d fis |
  g4 g b, | c c c | d d d | g4. r8 fis4 | g g fis |
  g4 g b, | c8(b) a4 c | d d fis | g g b, | c c c | % 2a
  d4 d d | g4. r8 r4 |
  \tag #'dash {\slurDashed g2.( | 4) \slurSolid r g |}
  \tag #'v1   {            g2.~ | 4             r g |}
  \tag #'v2   {            g2.  | 4             r g |}
  a fis8.(g16) a8.(b16) |
  a4 g fis | e2.~ | 4 r e | a a a, | % 3a
  d4. r8 d4 | g g fis | g g b, | c a c | d d d |
  g4 b8(a) g(fis) | e4 c c | d d d |
}

bass = \relative {
  \global
  fis4
  \repeat volta 2 {
    \bassR
    \alternative {
      { g,2 r4 | r2 fis'4 }
      { g,2 }
    }
  }
  \bar "|."
}

bassSingle = \relative {
  fis4  | \keepWithTag #'v1 \bassR | g,2 r4 | r2
  fis'4 | \keepWithTag #'v2 \bassR | g,2
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
  s4\p
  \repeat volta 2 {
    s2.*7 | s2 s4\mp | s2. |
    s2.*8 | s2 s4\mf | s2. |
    s2.*9 |
    s2.*3 |
    \alternative {
      { s2. | s | }
      { s2 }
    }
  }
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
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
            \addlyrics \wordsWomenOne
            \addlyrics \wordsWomenTwo
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
            \addlyrics \wordsWomenOne
            \addlyrics \wordsWomenTwo
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
            \new Voice \keepWithTag #'dash \tenor
            \addlyrics \wordsMenOne
            \addlyrics \wordsMenTwo
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
            \new Voice \keepWithTag #'dash \bass
            \addlyrics \wordsMenOne
            \addlyrics \wordsMenTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \keepWithTag #'dash \tenor
                                    \keepWithTag #'dash \bass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \unfoldRepeats \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsMenSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsMenSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
          >>
          \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \unfoldRepeats \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsMenSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsMenSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
          >>
          \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sop"
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
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = soprano} \unfoldRepeats \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \unfoldRepeats \dynamicsTenor}
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsMenSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats {\teeny \dynamicsBass}
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsMenSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
          >>
          \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-bass"
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
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \unfoldRepeats \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \unfoldRepeats \dynamicsTenor}
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsMenSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsMenSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \unfoldRepeats \soprano \unfoldRepeats \alto
          >>
          \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi-women"
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
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
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
            \new Dynamics \with {alignAboveContext = tenor} \unfoldRepeats \dynamicsTenor
            \new Voice \tenorSingle
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
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \unfoldRepeats \soprano
            \new Voice \unfoldRepeats \alto
            \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
            \new Voice \tenorSingle
            \new Voice \bassSingle
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

\book {
  \bookOutputSuffix "midi-men"
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
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          \unfoldRepeats <<
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
            \new Dynamics \with {alignAboveContext = tenor} \unfoldRepeats \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsMenMidi
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
            \new Dynamics \with {alignAboveContext = bass} \unfoldRepeats \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \unfoldRepeats \soprano
            \new Voice \unfoldRepeats \alto
            \new Dynamics {\teeny \unfoldRepeats \dynamicsPiano}
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
