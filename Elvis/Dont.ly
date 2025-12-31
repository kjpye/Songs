\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Don’t"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerry Leiber & Mike Stoller"
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
  \partial 2
}

TempoTrack = {
  \global
  \tempo Slowly 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "92a" s2 s1*4
  \repeat volta 2 {
    \repeat volta 2 {
      \textMark \markup\box "92b" s1*3
      \textMark \markup\box "92c" s1*4
      \textMark \markup\box "92d" s1*3
      \alternative {
        { \textMark \markup\box "93a" s1*2}
        { s1*2 }
      }
    }
    \textMark \markup\box "93b" s1*4
    \textMark \markup\box "93c" s1*3
    \textMark \markup\box "93d" s1*3
    \textMark \markup\box "94a" s1*4
    \textMark \markup\box "94b" s1*3
    \textMark \markup\box "94c" s1*3
    \alternative {
      { \textMark \markup\box "94d" s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s2 s1*4 |
  \repeat volta 2 {
    \repeat volta 2 {
      f1 c:7 f2 f:7 | bes2. c4:7 f1 a2:m d:m g1:m7 | c2:7 r f f:7 bes g4:m7 c:7 |
      \alternative {
        {f2 d:m g:m7 c:7}
        {f1 f:7}
      }
    }
    bes1 a4 a:7 bes c:7 f2 bes f1 | g:7 s c2:7 bes:dim | c1:7 f c:7 |
    f2 f:7 bes2. c4:7 f1 a2:m d:m | g1:m7 c2:7 r f f:7 | bes g4:m7 c:7 f2 d:m g:m7 c4:7sus4 c:7 | 
    \alternative {
      {f2 bes:7 f c:7}
      {f2 bes:7 f1}
    }
  }
}

melody = \relative {
  \global
  r2 | R1*4 \section |
  \repeat volta 2 {
    \repeat volta 2 {
      f'4 r r2 | g4 r r2 | a2 g4 f |
      bes2. c4 | f2 c4 a | c2 \tuplet 3/2 {a4(g) f} | g1~ |
      g2 d'8. c16 a8. g16 | f2 a8. c16 a8. f16 | g4 bes, d8. f16 g8. a16 |
      \alternative {
        {c1~ | 4 r r2 |}
        {c1~ | 4 r r2 \section |}
      }
    }
    d,4 e f g | a g f g | a2 d, | c8 f4.~2 | % 93b
    g4 a b c | d c b2 | c4 c d d |
    e16(d) c4.~2 | f,4 r r2 | g4 r r2 |
    a2 g4 f | bes2. c4 | f2 c4 a | c2 \tuplet 3/2 {a4(g) f} | % 94a
    g1~ | 2 d'8. c16 a8. g16 | f2 a8. c16 a8. f16 |
    g4 bes, d8. f16 g8. a16 | c1~ | 2 d,8. f16 g8. a16 |
    \alternative {
      {f1 | R |}
      {f1~ | f |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Don’t, don’t, that’s what you say
  Each time that I hold you __ this way. __
  When I feel like this and I want to kiss you,
  ba -- by, don’t say don’t. __
  don’t. __
  If you think that this is just a game I’m play -- ing, __
  If you think that I don’t mean ev -- ’ry word I’m say -- ing, __
  Don’t, don’t don’t feel that way.
  I’m your love and yours I __ will stay. __
  This you can be -- lieve;
  I will nev -- er leave you,
  Heav -- en knows I won’t __
  Ba -- by, don’t say don’t,
  don’t. __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Don’t, don’t leave my em -- brace,
  For here in my arms is __ your place, __
  When the night grows cold and I want to hold you,
  ba -- by, don’t say 
}

wordsSingle = \lyricmode {
  \repeat unfold 2 {
    \set stanza = "1."
    \repeat unfold 2 {
      Don’t, don’t, that’s what you say
      Each time that I hold you __ this way. __
      When I feel like this and I want to kiss you,
      ba -- by, don’t say don’t. __
    }
    If you think that this is just a game I’m play -- ing, __
    If you think that I don’t mean ev -- ’ry word I’m say -- ing, __
    Don’t, don’t don’t feel that way.
    I’m your love and yours I __ will stay. __
    This you can be -- lieve;
    I will nev -- er leave you,
    Heav -- en knows I won’t __
    Ba -- by, don’t say don’t. __
    
    \set stanza = "2."
    \repeat unfold 2 {
      Don’t, don’t leave my em -- brace,
      For here in my arms is __ your place, __
      When the night grows cold and I want to hold you,
      ba -- by, don’t say don’t.
    }
    If you think that this is just a game I’m play -- ing, __
    If you think that I don’t mean ev -- ’ry word I’m say -- ing, __
    Don’t, don’t don’t feel that way.
    I’m your love and yours I __ will stay. __
    This you can be -- lieve;
    I will nev -- er leave you,
    Heav -- en knows I won’t __
    Ba -- by, don’t say don’t.
  }
}

midiWords = \lyricmode {
  \repeat unfold 2 {
    \set stanza = "1."
    \repeat unfold 2 {
      "Don’t, " "don’t, " "that’s " "what " "you " "say "
      "\nEach " "time " "that " "I " "hold " "you "  "this " "way. " 
      "\nWhen " "I " "feel " "like " "this " "and " "I " "want " "to " "kiss " "you, "
      "\nba" "by, " "don’t " "say " "don’t. " 
    }
    "\nIf " "you " "think " "that " "this " "is " "just " "a " "game " "I’m " play "ing, " 
    "\nIf " "you " "think " "that " "I " "don’t " "mean " ev "’ry " "word " "I’m " say "ing, " 
    "\nDon’t, " "don’t " "don’t " "feel " "that " "way. "
    "\nI’m " "your " "love " "and " "yours " "I "  "will " "stay. " 
    "\nThis " "you " "can " be "lieve; "
    "\nI " "will " nev "er " "leave " "you, "
    "\nHeav" "en " "knows " "I " "won’t " 
    "\nBa" "by, " "don’t " "say " "don’t.\n" 
    
    \set stanza = "2."
    \repeat unfold 2 {
      "\nDon’t, " "don’t " "leave " "my " em "brace, "
      "\nFor " "here " "in " "my " "arms " "is "  "your " "place, " 
      "\nWhen " "the " "night " "grows " "cold " "and " "I " "want " "to " "hold " "you, "
      "\nba" "by, " "don’t " "say " "don’t. "
    }
    "\nIf " "you " "think " "that " "this " "is " "just " "a " "game " "I’m " play "ing, " 
    "\nIf " "you " "think " "that " "I " "don’t " "mean " ev "’ry " "word " "I’m " say "ing, " 
    "\nDon’t, " "don’t " "don’t " "feel " "that " "way. "
    "\nI’m " "your " "love " "and " "yours " "I "  "will " "stay. " 
    "\nThis " "you " "can " be "lieve; "
    "\nI " "will " nev "er " "leave " "you, "
    "\nHeav" "en " "knows " "I " "won’t " 
    "\nBa" "by, " "don’t " "say " "don’t. "
  }
}

pianoRHone = \relative {
  \global \vo
  d''8. c16 a8. g16 | f2 a8. c16 a8. f16 | g4 bes, d e \ov |
  <a, c f>2 <aes d>4 4 | <a c f>2 <e' bes' c> \section | \break
  \repeat volta 2 {
    \repeat volta 2 {
      \vo f2 a | g bes | a g4 f |
      \ov <bes, d f bes>2. <e bes' c>4 | \vo f'2 c4 a | % 92c
      c2 \tuplet 3/2 {<f, a>4 <e g> <d f>} | g1~ |
      g2 d'8. c16 a8. g16 | f2 a8. c16 a8. f16 | g4 bes, d8. <d f>16 g8. a16 | % 92d
      \alternative {
        {c2 <f, a>( | a4 g8 f g2) |}
        {c1 | a2(f) | \section}
      }
    }
    d4 e f g | a g f g | a2 d, | c8 f4.~2 | % 93b
    g4 a b c | <b d> <a c> <g b>2 | \ov <e bes' c>4 q <f aes b d> q |
    <g bes e>16 <f d'> <e bes c>4.~2 | \vo f2 a | g bes |
    a2 g4 f | \ov <bes, d f bes>2. <e bes' c>4 | \vo f'2 c4 a | % 94a
    c2 \tuplet 3/2 {<f, a>4 <e g> <d f>} |
    g1~ | 2 d'8. c16 a8. g16 | f2 a8. c16 a8. f16 | % 94b
    g4 bes, d8. <d f>16 g8. a16 | c2 <f, a>( | a4 g8 f) d8. <d f>16 g8. a16 |
    \alternative {
      {\ov <a, c f>2 <aes d>4\(q | <a c f>2\) <e' bes' c> |}
      {\ov <a, c f>2 <aes d>4\( q | <a c f>2\) <f' a f'>2 |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r2 | r4 <a c> <c ees>2 | <\parenthesize bes d>2 bes | s1*2 \section |
  \repeat volta 2 {
    \repeat volta 2 {
      r4 \tuplet 3/2 {<a c>8 8 8} r4 \tuplet 3/2 {<a c f>8 8 8} | % 92b
      r4 \tuplet 3/2 {<bes e>8 8 8} r4 \tuplet 3/2 {<bes e g>8 8 8} |
      r4 \tuplet 3/2 {<a c f>8 8 8} <c ees>2 |
      s1 | r4 <f a c> <c f> q | r <c e a> a2 | r4 <bes d> <bes f'> <bes d> | % 93c
      <bes e>2 r | r4 <a c> <c ees>2 | <\parenthesize bes d>2 bes4 <bes e> |
      \alternative {
        {r4 <c f a> e d8 c | <bes d>2 4~<bes e> |}
        {r4 <c f a>2. | <c f>2 <a ees'> | \section}
      }
    }
    <f bes>2 <bes d>4 d | cis2 d4 <bes e> | r <a c f> r <f bes> | r <a c>2. | % 93b
    <b f'>2 <d f> | f f | s1 |
    s1 | r4 \tuplet 3/2 {<a, c>8 8 8} r4 \tuplet 3/2 {<a c f>8 8 8} | % 93d
    r4 \tuplet 3/2 {<bes e>8 8 8} r4 \tuplet 3/2 {<bes e g>8 8 8} |
    r4 \tuplet 3/2 {<a c f>8 8 8} <c ees>2 | s1 | r4 <f a c> <c f> q | r4 <c e a> a2 | % 94a
    r4 <bes d> <bes f'> <bes d> | <bes e>2 r | r4 <a c> <c ees>2 |
    <\parenthesize bes d>2 bes4 <bes e> | r <c f a> e d8 c | <bes d>2 bes4 <bes e> |
    \alternative { {s1*2} {s1*2} }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mp | s1*4 |
  \repeat volta 2 {
    \repeat volta 2 {
      \alternative {
        {}
        {}
      }
    }
    \alternative {
      {}
      {}
    }
  }
}

pianoLH = \relative {
  \global
  r2 | f,2 8. a16 f8. a16 | bes2 c4 c, | f c' bes2 | f4 d' c8.(bes16 a8. g16 \section |
  \repeat volta 2 {
    \repeat volta 2 {
      f4) r <c c'> r | g' r q r | f2 g4 a |
      bes4 g' f c | f,2 a4 f | a2 <d, d'> | g d'4 g, |
      c4 c, r2 | f2 8. a16 f8. a16 | bes2 g4 <c, c'> |
      \alternative {
        {f2 d | g <c, c'> |}
        {f2 c'4 d | ees d c f, | \section}
      }
    }
    bes2. 4 | a2 bes4 c | f,2 bes | f f'4 e | % 93b
    d2. 4 | g2 g,4 d'8 des | c4 c, c' c, |
    c'4 bes a g | f r <c c'> r | g' r q r |
    f2 g4 a | bes g' f c | f,2 a4 f | a2 <d, d'> | % 94a
    g2 d'4 g, | c4 c, r2 | f2 8. a16 f8. a16 |
    bes2 g4 <c, c'> | f2 d | g c4 c, |
    \alternative {
      {f4 c' bes2 | f4 d' c8.(bes16 a8. g16) |}
      {f4 c' bes2 | f4 c' \arpeggioParenthesis <f, c' a'>2\arpeggio |}
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
