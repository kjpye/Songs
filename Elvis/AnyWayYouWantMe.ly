\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Any Way You Want Me"
  subtitle    = "(That’s How I Will Be)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Aaron Schroeder and Cliff Owens"
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
  \key c \major
  \time 2/2
}

TempoTrack = {
  \global
  \tempo Slowly 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "69a" s1*4
  \repeat volta 2 {
    \textMark \markup\box "69b" s1*3
    \textMark \markup\box "69c" s1*3
    \textMark \markup\box "69d" s1*3
    \textMark \markup\box "70a" s1*3
    \textMark \markup\box "70b" s1*3
    \textMark \markup\box "70c" s1*3
    \textMark \markup\box "70d" s1*3
    \textMark \markup\box "71a" s1*3
    \textMark \markup\box "71b" s1*3
    \textMark \markup\box "71c" s1*3
    \textMark \markup\box "71d" s1
    \alternative { {s1} {s1*2} }
  }
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 2 {
    s1 a:m f2 g:7 | c1 s2 c:7 f fis:dim | c g:7 c1 s |
    a1:m s2 g:7 c1 | c2 c:7 f fis:dim c g:7 | c1 f c | f c d:7 | % 70
    s1*2 g1:7 | c a:m f2 g:7 | c1 s2 c:7 f fis:dim |
    c2 g:7 |
    \alternative { {c2. g4:7|} {c2 f | c1 |} }
  }
}

melody = \relative {
  \global
  R1*4 \section |
  \repeat volta 2 {
    e'4~ \tuplet 3/2 {8 8 g} e4~ \tuplet 3/2 {8 d e} | % 69b
    d8 c4.~4. 8 | a'4~\tuplet 3/2 {8 8 8} 8(b4) c8 |
    c16(a g4.)~2 | e'4. g8 e4. d8 | d c4.~4. 8 | % 69c
    c16(a g4) c8 d4. e8 | 16(d c4.)~2 | % 69d
    e,4~\tuplet 3/2 {8 8 g} e4~\tuplet 3/2 {8 d e} |
    d8 c4.~4. 8 | a'4~\tuplet 3/2 {8 8 8} 8 b4(c8) | 16(a g4.)~2 | % 70a
    e'4. g8 e4. d8 | d c4.~4. 8 | 16(a g4) c8 d4. e8 |
    e16(d c4.)~2 | a4. b8 c(a4) 8 | g4. e8 g4. c,8 |
    a'4. b8 c4~\tuplet 3/2 {8 a c} | c(g4.)~2 | a4~\tuplet 3/2 {8 8 b} c a4 d,8 |
    a'4~\tuplet 3/2 {8 8 b} c a4 d,8 | e'4. 8 4~\tuplet 3/2 {8 d c} | d2(e) | % 71a
    e,4~\tuplet 3/2 {8 8 g} e4~\tuplet 3/2 {8 d e} | % 71b
    d8 c4.~4. 8 | a'8 4 8 8_(b4) c8 |
    c16(a g4.)~4. 8 | e'4. g8 e4. d8 | d c4.~4. 8 | % 71c
    c16(a g4) c8 d4. e8 | % 71d
    \alternative {
      {c16(d c4.)~4 r4|}
      {e16(d c4.) 4 4 | e8(d c2.\fermata) |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  \repeat volta 2 {
    I’ll __ be as strong __ as a moun -- tain __
    or weak __ as a wil -- low tree. __
    An -- y way you want me, __ well,
    that’s __ how I will be. __
    I’ll __ be as tame as a ba -- by __
    or wild __ as the rag -- ing sea. __ % 70a
    An -- y way you want me, __ well,
    that’s __ how I will be. __
    In your hands __ my heart is clay,
    to take, and mold __ as you may. __
    I’m __ what you make me;
    you’ve on -- ly to take me,
    and in your arms __ I will stay. __ % 71a
    I’ll __ be a fool __ or a wise man; __
    my darl -- ing, you hole __ the key. __
    Yes, an -- y way you want me, __ well,
    that’s __ how I will
    \alternative {
      { be. __ }
      { be, __ I will be. __ }
    }
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "I’ll "  "be " "as " "strong "  "as " "a " moun "tain " 
    "\nor " "weak "  "as " "a " wil "low " "tree. " 
    "\nAn" "y " "way " "you " "want " "me, "  "well, "
    "\nthat’s "  "how " "I " "will " "be. " 
    "\nI’ll "  "be " "as " "tame " "as " "a " ba "by " 
    "\nor " "wild "  "as " "the " rag "ing " "sea. "  % 70a
    "\nAn" "y " "way " "you " "want " "me, "  "well, "
    "\nthat’s "  "how " "I " "will " "be. " 
    "\nIn " "your " "hands "  "my " "heart " "is " "clay, "
    "\nto " "take, " "and " "mold "  "as " "you " "may. " 
    "\nI’m "  "what " "you " "make " "me; "
    "\nyou’ve " on "ly " "to " "take " "me, "
    "\nand " "in " "your " "arms "  "I " "will " "stay. "  % 71a
    "\nI’ll "  "be " "a " "fool "  "or " "a " "wise " "man; " 
    "\nmy " darl "ing, " "you " "hole "  "the " "key. " 
    "\nYes, " an "y " "way " "you " "want " "me, "  "well, "
    "\nthat’s "  "how " "I " "will "
    \alternative {
      { "be.\n "  }
      { "be, "  "I " "will " "be. "  }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  e''4. <e g>8 e4. d8 | d c4.~4. 8 | 16 a g4 c8 d4. e8 | c1 \section |
  \repeat volta 2 {
    e,4~\tuplet 3/2 {8 8 g} e4~\tuplet 3/2 {8 d e} | % 69b
    d8 c4.~4. 8 | a'4~\tuplet 3/2 {8 8 8} 8 b4 c8 |
    c16(a g4.)~2 | e'4. <e g>8 e4. d8 | d c4.~4. 8 | % 69c
    c16 a g4 c8 d4. e8 | 16 d c4.~2 | % 69d
    e,4~\tuplet 3/2 {8 8 g} e4~\tuplet 3/2 {8 d e} |
    d8 c4.~4. 8 | a'4~\tuplet 3/2 {8 8 8} 8 b4(c8) | 16 a g4.~2 | % 70a
    e'4. <e g>8 e4. d8 | d c4.~4. 8 | 16 a g4 c8 d4. e8 |
    e16 d c4.~2 | <f, a>4. <g b>8 <a c> <f a>4 8 | <c e g>4. <c e>8 <c e g>4. c8 |
    <f a>4. <g b>8 <a c>4~\tuplet 3/2 {8 <f a> <a c>} | % 70d
    c g4.~2 | a4~\tuplet 3/2 {8 8 b} c a4 d,8 |
    a'4~\tuplet 3/2 {8 8 b} c a4 d,8 | % 71a
    e'4. 8 <c e>4~\tuplet 3/2 {8 <b d> <a c>} | \ov <f b d>2 <f b e> |
    \vo e4~\tuplet 3/2 {8 8 g} e4~\tuplet 3/2 {8 d e} | % 71b
    d8 c4.~4. 8 | a'8 4 8 8 b4 c8 |
    c16 a g4.~4. 8 | e'4. <e g>8 e4. d8 | d c4.~4. 8 | % 71c
    c16 a g4 c8 d4. e8 | % 71d
    \alternative {
      {c16 d c4. g8(a b4)|}
      {e16 d c4. 4 4 | <g e'>8 <f d'> <e c'>4 <c' e c'>2\fermata |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r4 <g' c> <g bes>4. <e bes'>8 | r4 <c f a> r <c ees a> |
  r4 <c e> r <f b> | <e g> <c f a> <c e g>2 \section |
  \repeat volta 2 {
  r4 <g c> r q | r <e a> r q | r <c' f> r <d f> | % 69b
  r4 <c e>2. | r4 <g' c> <g bes>4. <e bes'>8 | r4 <c f a> r <c ees a> |
  r4 <c e> r <f b> | r <c e g>2. | r4 <g c> r q |
  r4 <e a> r q | r <c' f> r <d f> | r <c e>2. | % 70a
  r4 <g' c> <g bes>4. <e bes'>8 | r4 <c f a> r <c ees a> | r <c e> r <f b> |
  r4 <c e g>2. | c2 c | s1 |
  c2 c | <c e>~2 | r4 <c fis> r q |
  r4 q r q | r <fis c'> fis2 | s1 | % 71a
  r4 <g, c> r q | r <e a> r q | r <c' f> r <d f> |
  r4 <c e>2. | r4 <g' c> <g bes>4. <e bes'>8 | r4 <c f a> r <c ees a> |
  r4 <c e> r <f b> |
    \alternative {
      {r4 <c e g> r <b f'> |}
      {r4 <c e g> <c f a> q | s1 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*2 | s2 \after 2 \! s2\> |
  \repeat volta 2 {
    s1\mp | s1*2 | s2 s\< | s1\mf | s1*2 | s2 s\> | s1\mp | % 69bcd
    s1*2 | s2 s8 s4.\< | s1\mf | s1*8 |
    s2 s8 s4.\< | s1\ff | s | s\mp | s1*2 | s2 s8 s4.\< | s1\mf | s1*2 |
    \alternative {
      {s2 s8 \after 4.\! s4.\>}
      {s1 | s-\markup\bold\italic rit. |}
    }
  }
}

pianoLH = \relative {
  \global
  c,2 c'4 c, | f4. 8 fis2 | g g | c,4 f c' a8 g \section \break |
  \repeat volta 2 {
    c,2 g' | a a, | f' g | % 69b
    c,2 a'4 g | c,2 c'4 c, | f4. 8 fis2 |
    g2 g | c, a'8(g a g) | c,2 g' |
    a2 a, | f' g | c, a'4 g | % 70a
    c,2 c'4 c, | f4. 8 fis2 | g2 g |
    c,2 a'8(g a g) | f4 c' f f, | c' g c c, |
    f4 c' f f, | c a'8 g c4 a8 g | d2 a' |
    d,2 a' | d, d'4 d, | r g r g8 8 | % 71a
    c,2 g' | a a, | f' g |
    c,2 a'4 g | c,2 c'4 c, | f4. 8 fis2 |
    g2 g |
    \alternative {
      {c,2 g'8(a g4) |}
      {c,2 f | c4 g' \arpeggioParenthesis <c, g' e'>2\fermata\arpeggio}
    }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
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
            \addlyrics \words
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
    output-suffix = single
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
            \addlyrics \words
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
            \addlyrics \words
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
