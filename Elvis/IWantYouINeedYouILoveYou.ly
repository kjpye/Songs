\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Want You, I Need You, I Love You"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira Kosloff"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Maurice Mysels"
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
  \partial 8
}

TempoTrack = {
  \global
  \tempo "Moderately Slow" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "25a" s8 s1*3 s2.
  \textMark \markup\box "25b" s4
  \repeat volta 2 {
    s1*2
    \textMark \markup\box "25c" s1*3
    \textMark \markup\box "25d" s1*3
    \textMark \markup\box "26a" s1*2
    \textMark \markup\box "26b" s1*3
    \textMark \markup\box "26c" s1*4
    \textMark \markup\box "26d" s1*4
    \textMark \markup\box "27a" s1*3
    \textMark \markup\box "27b" s1*2
    \textMark \markup\box "27c" s1*3
    \textMark \markup\box "27d" s1*2
    \alternative { { s1 } { s1 } }
  }
}

ChordTrack = \chordmode {
  s8 | s1*3 | s2.
  s4
  \repeat volta 2 {
    c2 a:m | d:m g:7 |
    c2 c:7 | f1 | c2 e:7 |
    a1:7 | d:7 | f2:7 g:7 |
    c2 a:m | d:m g:7 | % 26a
    c2 c:7 | f1 | c2 e:7 |
    a1:7 d2:m7 g:7 | c4 f:m c2 | g:m7 c:7 |
    f1 | g2:m7 c4.:7sus4 c8:7 | f1 | a2:m7 d:7 |
    g2 e:m | a:m7 d:7 | g:7sus4 g:7 | % 27q
    c2 a:m | d:m g:7 |
    c2 c:7 | f1 | c2 e:7 |
    a1:7 | d2:m7 g:7 |
    \alternative {
      { c4 aes:7 g2:7 | }
      { c1 | }
    }
  }
}

melody = \relative {
  \global
  r8 | R1*3 | r2. \section \break
  g'8 a |
  \repeat volta 2 {
    g4~ \tuplet 3/2 {g8 e d} c4~ \tuplet 3/2 {c8 a' b} | a4~ \tuplet 3/2 {8 f e} d4~ \tuplet 3/2 {8 b' c} |
    b4~ \tuplet 3/2 {8 g f} e4~ \tuplet 3/2 {8 d c} | c'2~4. b8 | d c4 b8 d c4 e,8 |
    bes'8 a4.~4. 8 | e'2. a,4 | d2. g,8 a |
    g4~ \tuplet 3/2 {8 e d} c4~ \tuplet 3/2 {8 a' b} | a4~ \tuplet 3/2 {8 f e} d4~ \tuplet 3/2 {8 b' c} | % 26a
    b4~ \tuplet 3/2 {8 g f} e4~ \tuplet 3/2 {8 d c} | c'2~4. b8 | d c4 b8 d c4 e,8 |
    bes'8 a4.~2 | c d | c2. r8 cis | d4~ \tuplet 3/2 {8 bes a} g4~ \tuplet 3/2 {8 a b} |
    c8 4.~4. a8 | bes4. g8 f4. e8 | a2. r8 d | e4. c8 b4. a8 |
    d4. b8 a4. g8 | c8 d c d b4 c | d2. g,8 a | % 27a
    g4~ \tuplet 3/2 {8 e d} c4~ \tuplet 3/2 {8 a' b} | a4~ \tuplet 3/2 {8 f e} d4~ \tuplet 3/2 {8 b' c} |
    b4~ \tuplet 3/2 {8 g f} e4~ \tuplet 3/2 {8 d c} | c'2~4. b8 | d c4 b8 d c4 e,8 |
    bes'8 a4.~4. 8 | e'2 e |
    \alternative {
      { c2 r4 g8 a | }
      { c1 | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  Hold me
  \repeat volta 2 {
    close, __ hold me tight; __ make me thrill __ with de -- light. __
    Let me know __ where I stand __ from the start. __
    I want you, I need you, I love you __
    With all my heart.
    Ev -- ’ry time __ that you’re near __ all my cares __ dis -- ap -- pear. __
    Dar -- ling, you’re all that I’m liv -- ing for. __
    I want you, I need you, I love you __
    More and more.
    I thought __ I could live __ with -- out ro -- mance __
    Be -- fore you came to me,
    But now I know that I will go on lov -- ing you e -- ter -- nal -- ly.
    Won’t you please __ be my own? __
    Nev -- er leave __ me a -- lone, __
    ’Cause I die __ ev -- ’ry time __ we’re a -- part. __
    I want you, I need you, I love you __
    With all my heart.
    \alternative {
      { Hold me }
      { heart. }
    }
  }
}

midiWords = \lyricmode {
  "Hold " "me "
  \repeat volta 2 {
    "close, "  "hold " "me " "tight; "  "make " "me " "thrill "  "with " de "light. " 
    "\nLet " "me " "know "  "where " "I " "stand "  "from " "the " "start. " 
    "\nI " "want " "you, " "I " "need " "you, " "I " "love " "you " 
    "\nWith " "all " "my " "heart. "
    "\nEv" "’ry " "time "  "that " "you’re " "near "  "all " "my " "cares "  dis ap "pear. " 
    "\nDar" "ling, " "you’re " "all " "that " "I’m " liv "ing " "for. " 
    "\nI " "want " "you, " "I " "need " "you, " "I " "love " "you " 
    "\nMore " "and " "more. "
    "\nI " "thought "  "I " "could " "live "  with "out " ro "mance " 
    "\nBe" "fore " "you " "came " "to " "me, "
    "\nBut " "now " "I " "know " "that " "I " "will " "go " "on " lov "ing " "you " e ter nal "ly. "
    "\nWon’t " "you " "please "  "be " "my " "own? " 
    "\nNev" "er " "leave "  "me " a "lone, " 
    "\n’Cause " "I " "die "  ev "’ry " "time "  "we’re " a "part. " 
    "\nI " "want " "you, " "I " "need " "you, " "I " "love " "you " 
    "\nWith " "all " "my " "heart. "
    \alternative {
      { "\nHold " "me " }
      { "\nheart. " }
    }
  }
}

pianoRHone = \relative {
  \global
  b'8 |
  \vo d c4 b8 d c4 e,8 | bes'8 a4.~4. 8 | e'2 e | c4 bes g \section \break
  g8 a |
  \repeat volta 2 {
    \ov <c, e g>4~ \tuplet 3/2 {8 e d} <a c>4~ \tuplet 3/2 {8 a' b} |
    <d, f a>4~ \tuplet 3/2 {8 f e} <f, b d>4~ \tuplet 3/2 {8 b' c} |
    <e, g b>4~ \tuplet 3/2 {8 g f} <bes, e>4~ \tuplet 3/2 {8 d c} | % 25c
    <c a' c>2~4. b'8 |
    \vo d8 c4 b8 d c4 e,8 |
    bes'8 a4.~a a8 \ov | % 25d
    <fis c' e>2. <c fis a>4 |
    \vo d'2. g,8 a \ov |
    <c, e g>4~ \tuplet 3/2 {8 e d} <a c>4~ \tuplet 3/2 {8 a' c} | % 26a
    <d, f a>4~ \tuplet 3/2 {8 f e} <f, b d>4~ \tuplet 3/2 {8 b' c} |
    <e, g b>4~ \tuplet 3/2 {8 g f} <bes, e>4~ \tuplet 3/2 {8 d c} | % 26b
    <c a' c>2~4. b'8 |
    \vo d8 c4 b8 d c4 e,8 |
    bes'8 a4.~2 | % 26c
    c2 d |
    c4 <g bes>8(<f aes> <e g>4.) cis'8 |
    d4~ \tuplet 3/2 {8 bes a} g4~ \tuplet 3/2 {8 a b} |
    c8 4.~4. a8 | % 26d
    bes4. g8 <d f>4. <c e>8 |
    \ov <c f a>4 <f a e'>4(<f a cis> <f a d>8) d' |
    \vo e4. c8 b4. a8 |
    <b d>4. <g b>8 <fis a>4. <e g>8 | % 27a
    c'8 d c d b4 c |
    d2. g,8 a |
    \ov <c, e g>4~ \tuplet 3/2 {8 e d} <a c>4~ \tuplet 3/2 {8 a' b} | % 27b
    <d, f a>4~ \tuplet 3/2 {8 f e} <f, b d>4~ \tuplet 3/2 {8 b' c} |
    <e, g b>4~ \tuplet 3/2 {8 g f} <bes, e>4~ \tuplet 3/2 {8 d c} | % 27c
    <c a' c>2~4. b'8 |
    \vo d8 c4 b8 d c4 e,8 |
    bes'8 a4.~4. 8 | % 27d
    e'2 2 |
    \alternative {
      { c4 bes(g) 8 a | }
      { \ov <e g c>2 <d' g c> | }
    }
  }
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s8 | r4 <c' e g> e <d gis> | <cis g'>1 | r4 <f a c> <f b>2 | <e g>4 <c f> <b e>
  r4
  \repeat volta 2 {
    s1*4 |
    r4 <c e g> r <d gis> | % 25c++
    <cis g'>1 | s1 | r4 \tuplet 3/2 {<f c'>8 8 8} <f b>4 r | % 25d
    s1*4 | r4 <c e g> r <d gis> |
    <cis g'>1 | r4 <d f a> r <d f b> | <e g> c c4. r8 | r4 <d f> <bes e>2 | % 26c
    r4 <c f a>4~4. r8 | r4 <d f> bes2 | s1 | r4 <e g>4 <c fis>2 |
    r4 d4 b2 | <e g>2 <d fis>4 <e fis> | <f a c>2 <f b>4 r | % 27a
    s1*2 |
    s1*2 | r4 <c e g> r <d gis> |
    <cis g'>1 | r4 <f a c> <f b>2 |
    \alternative {
      { <e g>4 <c f> <b e> r | }
      { s1 | }
    }
  }
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\mp | s1*3 s2.
  s4
  \repeat volta 2 {
    s1*31 |
    \alternative { { s1 } { s1 } }
  }
}

pianoLHone = \relative {
  \global
  r8 | c,2 e | a4 dis8 e a4 e8 ees | d2 g4 g, | c <aes g'> <g f'> \section
  r4
  \repeat volta 2 {
    c,4 g' a a, | d f g g, |
    c4 g' c \tuplet 3/2 {c,8 d e} | f4 c'8 d c a f4 | c2 e |
    a4 dis8 e a4 e8 ees | d4 gis,8 a d4 d, | r4 \tuplet 3/2 {aes'8 8 8} g4 r |
    c,4 g' a a, | d f g g, | % 26a
    c4 g' c \tuplet 3/2 {c,8 d e} | f4 c'8 d c a f4 | c2 e |
    a4 dis8 e a4 e8 ees | d2 g, | c4 f, c' c,8 r | g'2 c4 g, |
    f'4. c'8 e d c4 | g2 c4 c, | f e''(cis d8) r | a,2 d4 d, |
    g2 e'4 e, | a2 d4 d, | g d'8 8 g4 r | % 27a
    c,,4 c' a a, | d f g g, |
    c4 g' c \tuplet 3/2 {c,8 d e} | f4 c'8 d c a f4 | c2 e |
    a4 dis8 e a4 e8 ees | d2 g4 g, |
    \alternative {
      { c4 <aes aes'> <f f'> r | }
      { c'4 g \arpeggioParenthesis <c, g' e'>2\arpeggio | }
    }
  }
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
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
%      <<
%        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
%      >>
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
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
