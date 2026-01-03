\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fame and Fortune"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ben Weisman"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Fred Wise"
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
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "98a" s1*4
  \repeat volta 2 {
    \textMark \markup\box "98b" s1*5
    \textMark \markup\box "98c" s1*5
    \textMark \markup\box "98d" s1*4
    \textMark \markup\box "99a" s1*5
    \textMark \markup\box "99b" s1*5
    \textMark \markup\box "99c" s1*5
    \textMark \markup\box "99d" s1*2
    \alternative { {s1} {s1*2} }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 2 {
    c1 e:m f2 g:7 c1 d2:m7 f:m | c2 a4:m a:m7 d1:7 g:7 c e:m | f2 g:7 c1 d2:m7 f:m c a4:m a:m7 |
    d2:7 g:7 c r f1 s c | s a:m d:7 d:m7 g2:7 g:7-9 | c1 e:m f c d2:m7 f:m | c a4:m a:m7 d2:m7 g:7
    \alternative {
      {c2 g:7-9}
      {c2 f:7 c1}
    }
  }
}

melody = \relative {
  \global
  R1*4 \section \break |
  \repeat volta 2 {
    c''2. d4 | b g2. | r8 a a a b4. a8 | \tuplet 3/2 {c(a g)~} 2. | r4 d8 e \tuplet 3/2 {f4 e d} |
    e4. g8 c2 | r4 c \tuplet 3/2 {c a e'} | d2 \tuplet 3/2 {e4 e d} | c2. d4 | b g2. |
    r8 a a a b4. a8 | \tuplet 3/2 {c(a g)~} 2. | r4 d8 e \tuplet 3/2 {f4 e d} | e4. g8 c2 |
    r4 c8 a \tuplet 3/2 {b4 c d} | c2 \tuplet 3/2 {c,4 f a} | c8(a4.)~2~ | 4 8 b \tuplet 3/2 {c4 b a} 8(g4.)~2~ | % 99a
    g4 c, e g | c4 2.~ | 4 4 8 a4 e'8 | d1~ | 4 e e d |
    c2. d4 | b g2. | r8 a a a b4. a8 | \tuplet 3/2 {c(a g)~} 2. | r4 d8 e \tuplet 3/2 {f4 e d} |
    e4. g8 c2~ | 4 8 a b c d4 |
    \alternative {
      {c2 r |}
      {c1~ | 1\fermata |}
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  \repeat volta 2 {
    Fame and for -- tune, how emp -- ty they can be. __
    But when I hold you in my arms that’s heav -- en to me.
    Who cares for fame and for -- tune?
    They’re on -- ly pass -- ing things. __
    But the touch of your lips on mine makes me feel like a king.
    Your kind of love __ is a trea -- sure I hold. __ % 99a
    It’s so much great -- er __ than sil -- ver or gold. __
    I know that I’d have no -- thing if you should go a -- way __
    But to know that you love me brings __ fame and for -- tune my
    \alternative {
      { way. }
      { way. __ }
    }
  }}


midiWords = \lyricmode {
  \repeat volta 2 {
    "Fame " "and " for "tune, " "how " emp "ty " "they " "can " "be. " 
    "\nBut " "when " "I " "hold " "you " "in " "my " "arms " "that’s " heav "en " "to " "me. "
    "\nWho " "cares " "for " "fame " "and " for "tune? "
    "\nThey’re " on "ly " pass "ing " "things. " 
    "\nBut " "the " "touch " "of " "your " "lips " "on " "mine " "makes " "me " "feel " "like " "a " "king. "
    "\nYour " "kind " "of " "love "  "is " "a " trea "sure " "I " "hold. "  % 99a
    "\nIt’s " "so " "much " great "er "  "than " sil "ver " "or " "gold. " 
    "\nI " "know " "that " "I’d " "have " no "thing " "if " "you " "should " "go " a "way " 
    "\nBut " "to " "know " "that " "you " "love " "me " "brings "  "fame " "and " for "tune " "my "
    \alternative {
      { "way.\n" }
      { "way. "  }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  r4 d'8 e \tuplet 3/2 {f4 e d} | e4. g8 c2~ | 4 8 c b c d4 | c e e d \section |
  \repeat volta 2 {
    c2. d4 | b g2. | r8 a a a b4. a8 | \tuplet 3/2 {c8 a g~}2. | r4 d8 e \tuplet 3/2 {f4 e d} |
    e4. g8 c2~ | 4 4 \tuplet 3/2 {c a e'} | d2 \tuplet 3/2 {e4 e d} | c2. d4 | b g2. |
    r8 a a a b4. a8 | \tuplet 3/2 {c8 a g~}2. | r4 d8 e \tuplet 3/2 {f4 e d} | e4. g8 c2~ |
    c4 8 a \tuplet 3/2 {b4 c d} | c2 \tuplet 3/2 {c,4 f a} | c8 a4.~2~ | 4 8 b \tuplet 3/2 {c4 b a} | 8 g4. <c g'>4(<g e'> | % 99a
    <c g'>4) c, e g | c4 2.~ | 4 4 8 a4 e'8 | d1~ | 4 e e d |
    c2. d4 | b g2. | r8 a a a b4. a8 | \tuplet 3/2 {c8 a g~}2. | r4 d8 e \tuplet 3/2 {f4 e d} |
    e4. g8 c2~ | 4 8 a b c d4 |
    \alternative {
      {c4 e(e d) |}
      {c2 a4 a | r2 <c e g c>\fermata |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r4 <f a> <f c'>2 | r4 <g c> <c e a> <c e g> | <c f>2 <d f>4 <f b> | <e g> <g c> <f aes>2 |
  \repeat volta 2 {
    r4 <c e g>2 <e g>4 | r4 <b e>2 <g b e>4 | r <c f> r <d f> | r <c e>2. | r4 <f, a> <f c'>2 |
    r4 <g c> <c e a> <c e g> | <c fis>2 \tuplet 3/2 {<e f>4 <c f> <f c'>} | % 98c
    <d f b>2 <f b> | r4 <c e g>2 <e g>4 | r <b e>2 <g b e>4 |
    r4 <c f> r <b f'> | r <c e>2. | r4 <f, a> <f c'>2 | r4 <g c> <c e a> <c e g> |
    <c fis>2 \tuplet 3/2 {<d f>4 q <f b>} | <e g>2 s | r4 <c f>2.~ | 4 4 2 | r4 <c e> e c | % 99a
    e4 <e, g> <g c> <c e> | r4 <c e a> <c e gis> <c e g> | % 99b
    <c fis>2 <e fis>8 <c fis>4 <fis c'>8 | r4 <d f c'>2 4 | <d f b>2 <f aes> |
    r4 <c e g>2 <e g>4 | r <b e>2 <g b e>4 | r <c f> r <b f'> | % 99c
    r <c e>2. | r4 <f, a> <f c'>2 |
    r4 <g c> <c e a> <c e g> | <c f>2 <d f>4 <f b> |
    \alternative {
      {<e g>4 <g c> <f aes>2 |}
      {<e g>2 <c ees>( | <c e g c>1\fermata) |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp |
}

pianoLHone = \relative {
  \global \set Staff.connectArpeggios = ##t
  <b,, b'>2 aes' | g a | <d, d'> g | <c, c'> <g' b'>\arpeggio \section |
  \repeat volta 2 {
    c,4. g'8 e4 c | e4. b'8 g4 e | f2 g | c, a'4 g | <d d'>2 aes' |
    g2 a | <d, d'> d4 d' | g, g' g,2 | c,4. g'8 e4 c | e4. b'8 g4 e |
    f2 g | c, a'4 g | <d d'>2 aes' | g2 a |
    <d, d'>2 g | c4(c,) r2 | % 99a
    <<{\vo r4 r8 c'(e4 d8 c)} \new Voice {\vt f,2.}>> |
    \ov f4 c' f,2 | <c c'>1~ |
    q4 c c' b | a2. 4 | <d, d'>2 d4 d' | % 99b
    <<{\vo r4 a'2 4 | g2} \new Voice {\vt g,1~ | 2}>> \ov <g a'>\arpeggio |
    c,4. g'8 e4 c | e4. b'8 g4 e | f2 g | c, a'4 g | <d d'>2 aes' | % 99c
    g2 a | <d, d'> g |
    \alternative {
      {<c, c'>2 <g' b'>\arpeggio |}
      {c,4 g' f2 | <<{\vo c'2 <g e'>\arpeggio\fermata} \new Voice {\vt r4 g(c,2\arpeggio\fermata)}>>}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
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
                 \consists Span_arpeggio_engraver
                 \arpeggioParenthesis
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
                 \consists Span_arpeggio_engraver
                 \arpeggioParenthesis
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
    output-suffix = singlepahe
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
                 \consists Span_arpeggio_engraver
                 \arpeggioParenthesis
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
