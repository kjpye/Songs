\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only Believe"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Paul Rader & Elvis Presley"
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
  \time 4/4
  \partial 4.
}

TempoTrack = {
  \global
  \tempo "Moderately, with a feeling of 12/8" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "35a" s4. s1*3 s2.
  \textMark \markup\box "35b" s4  s1*3
  \textMark \markup\box "35c"     s1*3
  \textMark \markup\box "35d"     s1*3
  \textMark \markup\box "36a"     s1*3
  \textMark \markup\box "36b"     s1*3
  \textMark \markup\box "36c"     s1*3
  \textMark \markup\box "36d"     s1*3
  \textMark \markup\box "36e"     s1*3
  \textMark \markup\box "37a"     s1*3
  \textMark \markup\box "37b"     s1*3
  \textMark \markup\box "37c"     s1*3
  \textMark \markup\box "37d"     s1*4
  \textMark \markup\box "37e"     s1*4
}

ChordTrack = \chordmode {
  s4. s1*3 | s2. s4 | c1 | s | f | s1 | s2 e4:m d:m | c1 | d:7 | g:7 | c |
  s1 | f | s | s2 e4:m d:m | c1 | d2:7 g:7 | c:7 s8 g4.:9 | c1 | s | f | s | s2 e4:m d:m | c1 | d:8 | g:7 |
  c1 | s | f | s | s2 e4:m d:m | c1 | d2:7 g:7 | c1 | c | s | f | s | s2 e4:m d:m | c1 | d2:7 g:7 | c4 d:m dis:dim c | s1 |
}

melody = \relative {
  \global
  r4. | R1*3 | r2. \section
  \tuplet 3/2 {g4 a8} \section | g'2. \tuplet 3/2 {fis4 g8} | e1 | c'2. \tuplet 3/2 {b4 c8} |
  a4(c2.) | 2 b4 a | \tuplet 3/2 {g8 f e~} 2 \tuplet 3/2 {c4 d8} |
  e4 d2 \tuplet 3/2 {c4(d8)} | d2 \tuplet 3/2 {r4 g,8} \tuplet 3/2 {4 a8} | g'2. \tuplet 3/2 {fis4 g8} |
  e2 e'4~(\tuplet 3/2 {8 d c)} | 2. \tuplet 3/2 {b4 c8} | a4(c2.) | % 36a
  c2 b4 a | \tuplet 3/2 {g8 f e~} 2 \tuplet 3/2 {c4 d8} | e4 c r \tuplet 3/2 {d4(c8)} |
  c2 r4 \tuplet 3/2 {c'4 a8} \section | g2. \tuplet 3/2 {r4 f8} | \tuplet 3/2 {e8 g4~} 2 e'4 |
  \tuplet 3/2 {e8(d c~} 2) \tuplet 3/2 {4 a8} | 4(c2.) | 2 b4 a |
  \tuplet 3/2 {g8(f) e~} 2 \tuplet 3/2 {c4 8} | \tuplet 3/2 {e8(d4~} 2) c4 | d2 r4 \tuplet 3/2 {a'4 8} |
  \tuplet 3/2 {a8 g g~} 2~ \tuplet 3/2 {4 f8} | \tuplet 3/2 {e g4~} g \tuplet 3/2 {e'8(g4~} \tuplet 3/2 {4) d8} | \tuplet 3/2 {d8(c4~} 4~ \tuplet 3/2 {4) 8} \tuplet 3/2 {4 a8} | % 37a
  a4(c2.) | c2 b4 a | \tuplet 3/2 {g8 f e~} 2 \tuplet 3/2 {c4 d8} |
  e4 c r \tuplet 3/2 {d4(c8)} | 2 r \section | g'2.~ \tuplet 3/2 {4 e8} |
  g2 e'4~( \tuplet 3/2 {8 d c)} | c2.~ \tuplet 3/2 {4 a8} | c2 r | c2 b4 a |
  \tuplet 3/2 {g8 f e~} 2 \tuplet 3/2 {c'4 d8} | e4 c r \tuplet 3/2 {d4(c8)} | c4(d dis e~ | e1\fermata) |
  \bar "|."
}

words = \lyricmode {
  Lord -- y, On -- ly Be -- lieve,
  On -- ly be -- lieve,
  All things are pos -- si -- ble __
  if you’ll On -- ly Be -- lieve.
  My Lord -- y, On -- ly Be -- lieve,
  yes, __ On -- ly Be -- lieve. __
  All things are pos -- si -- ble __
  if you’ll On -- ly Be -- lieve.
  I met God one morn -- ing, __
  my soul feel -- in’ bad. __
  Heart heav -- y lad -- en, __
  I felt tired __ down in.
  Well, He lift -- ed all __ my bur -- dens, __
  yea, __ right now __ I’m feel -- in’ glad, __
  All things are pos -- si -- ble __
  if you’ll On -- ly Be -- lieve.
  I __ be -- lieve, yea, __ I __ be -- lieve.
  All things are pos -- si -- ble __
  if you’ll On -- ly Be -- lieve. __
}

midiWords = \lyricmode {
  "Lord" "y, " On "ly " Be "lieve, "
  "\nOn" "ly " be "lieve, "
  "\nAll " "things " "are " pos si "ble " 
  "\nif " "you’ll " On "ly " Be "lieve. "
  "\nMy " Lord "y, " On "ly " Be "lieve, "
  "\nyes, "  On "ly " Be "lieve. " 
  "\nAll " "things " "are " pos si "ble " 
  "\nif " "you’ll " On "ly " Be "lieve. "
  "\nI " "met " "God " "one " morn "ing, " 
  "\nmy " "soul " feel "in’ " "bad. " 
  "\nHeart " heav "y " lad "en, " 
  "\nI " "felt " "tired "  "down " "in. "
  "\nWell, " "He " lift "ed " "all "  "my " bur "dens, " 
  "\nyea, "  "right " "now "  "I’m " feel "in’ " "glad, " 
  "\nAll " "things " "are " pos si "ble " 
  "\nif " "you’ll " On "ly " Be "lieve. "
  "\nI "  be "lieve, " "yea, "  "I "  be "lieve. "
  "\nAll " "things " "are " pos si "ble " 
  "\nif " "you’ll " On "ly " Be "lieve. " 
}

pianoRHone = \relative {
  \global
  g'8 \tuplet 3/2 {g a c} |
  \vo c2 b4 a |
  \ov \tuplet 3/2 {<c, e g>4 f8} <g, c' e>4~ \tuplet 3/2 {q4 g'8} \tuplet 3/2 {<c, e g> a' c} |
  \vo d2~ \tuplet 3/2 {4 e8} \tuplet 3/2 {d b a} |
  \tuplet 3/2 {<e g c>4 <g, c e>8} \tuplet 3/2 {<a d f>4 8} <g c e>4 \section
  \tuplet 3/2 {g4 a8} \section | % 35b
  \vo g'2. \tuplet 3/2 {<dis fis>4 g8} |
  e1 |
  c'2. \tuplet 3/2 {<gis b>4 <a c>8} |
  \ov <c, f a>4(<f a c>2.) | % 35c
  \vo c'2 b4 a |
  \ov \tuplet 3/2 {<c, e g>8 f <g, c e>~} 2 \tuplet 3/2 {<e g c>4 <g c d>8} |
  <fis c' e>4 <fis c' d>2 \tuplet 3/2 {<fis a c>4(d'8)} | % 35d
  <f, b d>2 \tuplet 3/2 {r4 g8} \tuplet 3/2 {4 a8} |
  \vo g'2. \tuplet 3/2 {<dis fis>4 <e g>8} |
  e2 e'4~(\tuplet 3/2 {8 d c)} | % 36a
  2. \tuplet 3/2 {<g b>4 <a c>8} |
  \ov <c, f a>4(<f a c>2.) |
  \vo c'2 b4 a | % 36b
  \ov \tuplet 3/2 {<c, e g>8 f <g, c e>~} 2 \tuplet 3/2 {<e g c>4 <g c d>8} |
  <fis c' e>4 <fis a c> r \tuplet 3/2 {<f b d>4(<f a c>8)} |
  <e g c>2 r4 \tuplet 3/2 {<f' a c>4 <c f a>8} \section | % 36c
  \vo g'2. \tuplet 3/2 {r4 f8} |
  \ov \tuplet 3/2 {<g, c e>8 <c e g>4~} 2 <g' c e>4 |
  \tuplet 3/2 {<a c e>8(d <f, a c>~} 2) \tuplet 3/2 {4 <c f a>8} | % 36d
  q4(<f a c>2.) |
  \vo c'2 b4 a |
  \ov \tuplet 3/2 {<c, e g>8(f) <g, c e>~} 2 \tuplet 3/2 {<e g c>4 c'8} | % 36e
  \vo \tuplet 3/2 {e8(d4~} 2) \ov <fis, a c>4 |
  <f b d>2 r4 \tuplet 3/2 {<b f' a>4 a'8} |
  \tuplet 3/2 {<c, e a>8 g' <c, e g>~} 2~ \tuplet 3/2 {4 f8} | % 37a
  \tuplet 3/2 {<g, c e>8 <c e g>4~} q \tuplet 3/2 {<g' c e>8(<c e g>4~} \tuplet 3/2 {4) d8} |
  \tuplet 3/2 {<f, a d>8(<f a c>4~} 4~ \tuplet 3/2 {4) 8} \tuplet 3/2 {4 <c f a>8} |
  <c f a>4(<f a c>2.) | % 37b
  \vo c'2 b4 a |
  \ov \tuplet 3/2 {<c, e g>8 f <g, c e>~} 2 \tuplet 3/2 {<e g c>4 d'8} |
  <fis, c' e>4 <fis a c> r \tuplet 3/2 {<f b d>4(<f a c>8)} | % 37c
  <e g c>2 r \section |
  \vo g'2.~ \tuplet 3/2 {4 e8} |
  \ov <c e g>2 <g' c e>4~( \tuplet 3/2 {8 d' c)} | % 37d
  \vo c2.~ \tuplet 3/2 {4 a8} |
  \ov <f a c>2 r |
  \vo c'2 b4 a |
  \ov \tuplet 3/2 {<c, e g>8 f <g, c e>~} 2 \tuplet 3/2 {<e' g c>4 d'8} | % 37e
  <fis, c' e>4 <fis a c> r \tuplet 3/2 {<f b d>4(<f a c>8)} |
  <e g c>4(<f a d> <fis a c dis> <e g c e>~ | q1\fermata) |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s4. | r4 <c f a> <e g> <d f> | s1 | <fis a c>2 \tuplet 3/2 {<f g b>4 r8} r4 | s2. \section \break
  s4 \section
  \tuplet 3/2 {r4 <g c e>8} \tuplet 3/2 {4 <a d f>8} <g c e>4 r | % 35b
  \tuplet 3/2 {r4 <e g c>8} \tuplet 3/2 {4 <a c e>8} <e g c>2 |
  \tuplet 3/2 {r4 <c' f a>8} \tuplet 3/2 {4 <d g bes>8} <c f a>4 r4 |
  s1 | % 35c
  r4 <c f a> <e g> <d f> |
  s1 |
  s1 | s | \tuplet 3/2 {r4 <g, c e>8} \tuplet 3/2 {4 <a d f>8} <g c e>4 r | % 35d
  r4 <e g c> <g' c>~ \tuplet 3/2 {4 <e g>8} | % 36a
  \tuplet 3/2 {r4 <c f a>8} \tuplet 3/2 {4 <d g bes>8} <c f a>4 r |
  s1 |
  r4 <c f a> <e g> <d f> | % 36b
  s1 |
  s1 |
  s1 \section | % 36c
  \tuplet 3/2 {r4 <g, c e>8} \tuplet 3/2 {4 <a d f>8} <g c e>4 r |
  s1 |
  s1 | % 36d
  s1 |
  r4 <c f a> <e g> <d f> |
  s1 | % 36e
  <fis, c'>2. s4 |
  s1 |
  s1*3 | % 37a
  s1 | % 37b
  r4 <c' f a> <e g> <d f> |
  s1 |
  s1 | % 37c
  s1 \section |
  \tuplet 3/2 {r4 <g, c e>8} \tuplet 3/2 {4 <a d f>8} <g c e>4~\tuplet 3/2 {4 r8} |
  s1 | % 37d
  \tuplet 3/2 {r4 <c f a>8} \tuplet 3/2 {4 <d g bes>8} <c f a>4~ \tuplet 3/2 {4 <c f>8} |
  s1 |
  r4 <c f a>4 <e g> <d f> |
  s1*4 | % 37e
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf | s1*3 | s2. s4\mp | s1*3 |
}

pianoLH = \relative {
  \global
  r8 r4 | f,4~ \tuplet 3/2 {4 8} e4 d | c4~ \tuplet 3/2 {4 8} \tuplet 3/2 {c g gis} \tuplet 3/2 {a b c} | b4~ \tuplet 3/2 {8 e fis} g2 | c,4~ \tuplet 3/2 {4 8} 4 \section
  r4 \section | c4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 g b} | c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {8 d e} | 4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {4 c8} |
  f4~\tuplet 3/2 {4 8} \tuplet 3/2 {4 c8} \tuplet 3/2 {c d e} | f4~\tuplet 3/2 {4 8} e4 d | c~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {4 8} |
  d4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 e fis} | \tuplet 3/2 {g8 8 8} \tuplet 3/2 {8 8 8} 2 | c,4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 g b} |
  c4~\tuplet 3/2 {4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {c d e} | d4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 c c} | f4~\tuplet 3/2 {4 8} \tuplet 3/2 {4 c8} \tuplet 3/2 {c d e} | % 36a
  f4~\tuplet 3/2 {4 8} e4 d | c~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {4 8} | d4~\tuplet 3/2 {d8 e fis} g2 |
  c,4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g8 a c} \section | c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g8 a c} | 4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {8 d e} |
  f4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 c d} | f4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {a8 c a} | f4~\tuplet 3/2 {4 8} e4 d |
  c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g c8} | d4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {4 8} | g4 g \tuplet 3/2 {e'8 d b} \tuplet 3/2 {g f d} |
  c4~\tuplet 3/2 {4 8} 4 g | c4~\tuplet 3/2 {8 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {c d e} | f4~\tuplet 3/2 {4 8} 4~\tuplet 3/2 {8 c d} | % 37a
  f4 \tuplet 3/2 {4 c8} \tuplet 3/2 {f8. c16 f8} \tuplet 3/2 {c d e} | f2 e4 d | c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g8 a c} |
  d4~\tuplet 3/2 {8 e fis} g4~\tuplet 3/2 {4 8} | c,2 \tuplet 3/2 {e'8 d c} \tuplet 3/2 {a g e} \section | c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g8 a b} |
  \tuplet 3/2 {c e g} \tuplet 3/2 {c bes g} \tuplet 3/2 {c,4 e8} \tuplet 3/2 {g b c} | f,4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {8 c d} | f4 \tuplet 3/2 {4 8} \tuplet 3/2 {c8 f16 c f8} \tuplet 3/2 {a c a} | f4~\tuplet 3/2 {4 8} e4 d |
  c4~\tuplet 3/2 {4 8} 4 \tuplet 3/2 {g4 c8} | d2 g, | c4 d dis c~ | 1\fermata |
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
            \new Dynamics \dynamicsPiano
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
