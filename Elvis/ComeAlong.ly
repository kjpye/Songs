\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Along"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "David Hess"
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
  \key f \major
  \time 2/2
  \partial 4.
}

TempoTrack = {
  \global
  \tempo "With a Dixieland beat" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "88a" s4. s1*4
  \repeat volta 3 {
    \textMark \markup\box "88b" s1*4
    \textMark \markup\box "88c" s1*4
    \textMark \markup\box "88d" s1*4
    \textMark \markup\box "88e" s1*2
    \alternative {
      {
        s1*2
        \textMark \markup\box "89b" s1*5
        \textMark \markup\box "89c" s1*5
        \textMark \markup\box "89d" s1*4
        \textMark \markup\box "89e" s1*4
      }
      {
        \textMark \markup\box "89a" s1*4
      }
    }
  }
}

ChordTrack = \chordmode {
  s4. | s1*4 |
  \repeat volta 3 {
    f1 s d:m s | f s c:7 s | f f:7 bes bes:m | f c:7
    \alternative {
      {
        f1 s |
        bes1 s f s c2.:7 c4:dim | c1:7 f s8 c4:7 f8:8 s2 bes1 s | f s g:7 s | c:7 s s s |
      }
      {f1 s s s |}
    }
  }
}

melody = \relative {
  \global
  r4. \section R1*4 \section
  \repeat volta 3 {
    r4 c''2 d4 | c1 | r4 a2 f4 | d2 f4 g |
    r4 a4 2 | r2 a4 f | a(g2.~) | g1 |
    r4 c2 d4 | c1 | r4 a2 f4 | d f f g |
    r4 a4 2 | a4 g2 4 |
    \alternative {
      {
        f1 | R | \section
        r4 f2 d4 | f bes2. | r8 a4 gis8 a4 c | a8 g4 f8~2 | r4 g2 fis4 | % 89b
        g4 c,2. | r8 f4 e8 f4 r8 c | f g4 a8~2 | r4 f2 d4 | f bes2. |
        r8 a4 gis8 a4 c | a8 g4 f8~2 | r4 g2 4 | 4 2. |
        r8 c4 a8 c4 a | c8 a4 g8~2~ | g1~ | g2 r |
      }
      { f1~ | f | R1*2 | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Come a -- long, Come a -- long,
  There’s a full moon shin -- in’ bright. __
  Come a -- long, Come a -- long,
  We’re gon -- na hit Saint Lou -- is to -- night.
  \set stanza = "1."
  Spend your mon -- ey
  Look -- in’ at the chor -- us line, __
  Spend you mon -- ey,
  Win -- nin’ on the num -- ber nine; __
  Take your sweet -- heart,
  E -- ven though she’s nev -- er been,
  If she’s wor -- ried,
  Tell her that you al -- ways win. __

  night. __
}

wordsTwo = \lyricmode {
  \repeat unfold 22 ""
  win a for -- tune "" ""

  \set stanza = "2."
  Hear the whis -- tle,
  La -- dy Luck is bound to go, __
  Is she smil -- in’,
  May -- be yes or may -- be no, __
  Now’s the time when,
  You can build a sweet to -- mance,
  Don’t be bash -- ful,
  Step right up and take a chance. __
}

wordsSingle = \lyricmode {
  Come a -- long, Come a -- long,
  There’s a full moon shin -- in’ bright. __
  Come a -- long, Come a -- long,
  We’re gon -- na hit Saint Lou -- is to -- night.
  \set stanza = "1."
  Spend your mon -- ey
  Look -- in’ at the chor -- us line, __
  Spend you mon -- ey,
  Win -- nin’ on the num -- ber nine; __
  Take your sweet -- heart,
  E -- ven though she’s nev -- er been,
  If she’s wor -- ried,
  Tell her that you al -- ways win. __

  Come a -- long, Come a -- long,
  There’s a full moon shin -- in’ bright. __
  Come a -- long, Come a -- long,
  We’re gon -- na win a for -- tune to -- night.
  \set stanza = "2."
  Hear the whis -- tle,
  La -- dy Luck is bound to go, __
  Is she smil -- in’,
  May -- be yes or may -- be no, __
  Now’s the time when,
  You can build a sweet to -- mance,
  Don’t be bash -- ful,
  Step right up and take a chance. __

  Come a -- long, Come a -- long,
  There’s a full moon shin -- in’ bright. __
  Come a -- long, Come a -- long,
  We’re gon -- na hit Saint Lou -- is to -- night.
}

midiWords = \lyricmode {
  "Come " a "long, " "Come " a "long, "
  "\nThere’s " "a " "full " "moon " shin "in’ " "bright. " 
  "\nCome " a "long, " "Come " a "long, "
  "\nWe’re " gon "na " "hit " "Saint " Lou "is " to "night. "
  \set stanza = "1."
  "\nSpend " "your " mon "ey "
  "\nLook" "in’ " "at " "the " chor "us " "line, " 
  "\nSpend " "you " mon "ey, "
  "\nWin" "nin’ " "on " "the " num "ber " "nine; " 
  "\nTake " "your " sweet "heart, "
  "\nE" "ven " "though " "she’s " nev "er " "been, "
  "\nIf " "she’s " wor "ried, "
  "\nTell " "her " "that " "you " al "ways " "win.\n" 

  "\nCome " a "long, " "Come " a "long, "
  "\nThere’s " "a " "full " "moon " shin "in’ " "bright. " 
  "\nCome " a "long, " "Come " a "long, "
  "\nWe’re " gon "na " "win " "a " for "tune " to "night. "
  \set stanza = "2."
  "\nHear " "the " whis "tle, "
  "\nLa" "dy " "Luck " "is " "bound " "to " "go, " 
  "\nIs " "she " smil "in’, "
  "\nMay" "be " "yes " "or " may "be " "no, " 
  "\nNow’s " "the " "time " "when, "
  "\nYou " "can " "build " "a " "sweet " to "mance, "
  "\nDon’t " "be " bash "ful, "
  "\nStep " "right " "up " "and " "take " "a " "chance.\n" 

  "\nCome " a "long, " "Come " a "long, "
  "\nThere’s " "a " "full " "moon " shin "in’ " "bright. " 
  "\nCome " a "long, " "Come " a "long, "
  "\nWe’re " gon "na " "hit " "Saint " Lou "is " to "night. "
}

pianoRHone = \relative {
  \global
  c'8 d f \section | \acciaccatura gis8 a4->(f) \acciaccatura dis8 e4->(c8) f~ |
  f8 4 8 \acciaccatura dis8 e4->(c) |
  f8 8 4 \acciaccatura dis8 e4->(c8) c~ |
  c8 <a a'>4-> 8-> <bes bes'>-> q-> <b b'>4-> \section | \break
  \repeat volta 3 {
    r4 <c f a c>2 <d f a d>4 | \vo <c c'>1 | \ov % 88b
    r4 <d f a>2 <a d f>4 | \vo d2 f4 g |
    r4 a4 2~ | 2 4 f | a(g2.)~ | 1 | % 88c
    \ov r4 <f a c>2 <e a d>4 | <ees a c>1 | r4 <d f a>2 <bes d f>4 | % 88d
    <bes d>4 <bes des f> \vo f' g |
    \ov r4 <c, f a> \vo a'2 | \ov <c, e a>4 <bes e g>2 4 | % 88e
    \alternative {
      {
        \vo f'1~ | 1 \section |
        \ov r4 <d f>2 <bes d>4 | <d f>4 <d f bes>2. | % 89b
        r8 <c f a>4 gis'8 \vo a4 c | \ov <c, f a>8 g'4 <a, c f>8~ \vo f'2 |
        \ov r4 <bes, e g>2 <a dis fis>4 |
        <bes e g>4 <e, bes' c>2. | r8 <a c f>4 e'8 q4 r8 c | % 89c
        q8 <bes e g>4 <c ees a>8~2 | r4 <d f>2 <bes d>4 | q <d f bes>2. |
        r8 <c f a>4 gis'8 \vo a4 c | \ov <c, f a>8 g'4 <a, c f>8~2 | % 89d
        r4 \vo g'2 4 | 4 2. |
        r8 c4 a8 c4 a | c8 a4 g8~2 \ov |
        c8 b c d e d e f | g f e d c bes a g |
      }
      {
        <a, c f>4 f' \acciaccatura dis8 e4(c8) f~ | % 89a
        f8 4 8 \acciaccatura dis8 e4(c) | f4 r8 f d4 e8 f~ | 4 r <f a c f>-> r |
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s4. \section | \grace s8 s1*4 \section |
  \repeat volta 3 {
    s1 | r4 <f' a>4 r q | s1 | r4 <f, a> <a d>2 | % 88b
    r4 <c f> r q | r q r c | <c e> <bes e> r q | r q r q |
    s1*3 | s2 <bes des>2 |
    s2 r4 <c f> | s1 |
    \alternative {
      {
        r4 <a c> r q | r a bes c \section | % 89b
        s1*2 | s2 <c f> | \vo s4. \once\hideNotes <a c>8_~ 4 s \vt | s1 |
        s1*5 |
        s2 <c f> | s1 | s4 <b f'>2. | q4 2. |
        <bes e>4 r r2 | R1 | s1*2 |
      }
      { s1*4 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf | s1*4 |
  \repeat volta 3 {
    s1\mf s1*13
    \alternative {
      { s1*2 | s1\mp | s1*17 | }
      { s1*4 | }
    }
  }
}

pianoLHone = \relative {
  \global
  r8 r4 \section | \grace s8 R1*3 | r4 c,4-> d-> e-> \section |
  \repeat volta 3 {
    f4 r c r | f r c f | d r a' r | d, r a' d, | % 88b
    f4 r c r | f a c a | c r g r | c c, d e |
    f4 r c r | f f g a | bes r f r | bes4 4 a g |
    f4 r c r | g' r c, r |
    \alternative {
      {
        f4 r c r | f f g a \section |
        bes4 r f r | bes4 4 a g | f r c r | f a c a | c r g r | % 89b
        c4 r g c, | f r c r | f f g a | bes r f r | bes4 4 a g |
        f4 r c r | f a c a | g r d r | g r a b |
        c4 r r2 | R1*2 | r4 c,-> d-> e-> |
      }
      { f4 r r2 | R1*2 | r2 <f c' a'>4->\arpeggio r | }
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      \override Score.VoltaBracket.musical-length = \musicLength 1*2
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
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
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
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
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
