\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Don’t Leave Me Now"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Aaron Schroeder & Ben Weisman"
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
  \partial 16*13
}

TempoTrack = {
  \global
  \tempo "Moderately Slow" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "81a" s16*13 s1*2
  \repeat volta 2 {
    s1
    \textMark \markup\box "81b" s1*4
    \textMark \markup\box "81c" s1*4
    \textMark \markup\box "82a" s1*4
    \textMark \markup\box "82b" s1*3
    \textMark \markup\box "82c" s1*3
    \textMark \markup\box "82d" s1*3
    \textMark \markup\box "83a" s1*2
    \textMark \markup\box "83b" s1*4
    \textMark \markup\box "83c" s1*2
    \alternative {
      {s1 \textMark \markup\box "83d" s1}
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s16*13 | s1*2
  \repeat volta 2 {
    c1 | s2 c:7 f1 s g:7 | s2. g4:7+5 c2 cis:dim g4:7 r2. c1 |
    s2 c:7 f1 s g:7 | s c2 f:7 c4 r2. | f1 s c2 f:7 | c2 r d1:7 s |
    g8:7 r2.. s1 | c s2 c:7 | f1 s | g:7 s8. r16 s2.
    \alternative { {c2 aes:7 | g4:7 r2.} {c2 f:7 c1 |} }
  }
}

melody = \relative {
  \global
  R16*13 | R1 | r4 \section e'8.(g,16) f'8.(g,16) fis'8 g~
  \repeat volta 2 {
    g1~ |
    g4 e' e d | d(c) a2~ | 4 d d c | \tuplet 3/2 {b d, e} f2~ |
    f8. ais16 b8. d16 b8.(g16) a4 | 8(g4.)~2 | r4 e8.(g,16) f'8.(g,16) fis'8 g~1~ |
    g4 e' e d | d(c) a2~ | 4 d d c | \tuplet 3/2 {b d, e} f2~ | % 82a
    f8. a16 8. g16 ees8.(c16) d4 | 8(c4.)~2~ | 4 c' c c |
    d2 c2~ | 8. ees16 8. d16 \tuplet 3/2 {c4 c, a'} | 8(g4.) \tuplet 3/2 {a4(ees) a} |
    g2 r8 c8 8. 16 | \tuplet 3/2 {ees8(d) c~} 2.~ | 8. d16 8. e16 \tuplet 3/2 {d4 a c} |
    b8 r b8. 16 \tuplet 3/2 {4 bes a} | g8 r e8.(g,16) f'8.(g,16) fis'8 g~ | % 83a
    g1~ | 4 e' e d | d(c) a2~ | 4 d d c |
    \tuplet 3/2 {b4 d, e} f2~ | 8. ees'16 8. c16 ees8.(c16) d4 |
    \alternative {
      {d8(c4.)~2 | r4 e,8.(g,16) f'8.(g,16) fis'8 g\laissezVibrer |}
      {d'8(c4.)~2~ | 2. r4 |}
    }
  }
  \bar "|."
}

words = \lyricmode {
  Don’t __ leave __ me now, __
  \repeat volta 2 {
    now that I need __ you. __
    How blue and lone -- ly I’d be __
    if you should say we’re through. __
    Don’t break my heart, __
    This heart that loves __ you. __
    There’d just be noth -- in’ for me __
    If you should leave __ me now. __
    What good is dream -- ing __
    if I must dream all a -- lone __
    by __ my -- self?
    With -- out you, dar -- lin’ __
    My dreams would just gath -- er dust
    like a book on a shelf.
    Come __ fill __ these arms,
    That long to hold __ you. __
    Don’t close your eyes to my plea. __
    Oh, don’t you leave __ me
    \alternative {
      { now! __ Don’t __ leave __ me now, __ }
      { now! __ }
    }
  }
}

midiWords = \lyricmode {
  "Don’t "  "leave "  "me " "now, " 
  \repeat volta 2 {
    "\nnow " "that " "I " "need "  "you. " 
    "\nHow " "blue " "and " lone "ly " "I’d " "be " 
    "\nif " "you " "should " "say " "we’re " "through. " 
    "\nDon’t " "break " "my " "heart, " 
    "\nThis " "heart " "that " "loves "  "you. " 
    "\nThere’d " "just " "be " noth "in’ " "for " "me " 
    "\nIf " "you " "should " "leave "  "me " "now. " 
    "\nWhat " "good " "is " dream "ing " 
    "\nif " "I " "must " "dream " "all " a "lone " 
    "\nby "  my "self? "
    "\nWith" "out " "you, " dar "lin’ " 
    "\nMy " "dreams " "would " "just " gath "er " "dust "
    "\nlike " "a " "book " "on " "a " "shelf. "
    "\nCome "  "fill "  "these " "arms, "
    "\nThat " "long " "to " "hold "  "you. " 
    "\nDon’t " "close " "your " "eyes " "to " "my " "plea. " 
    "\nOh, " "don’t " "you " "leave "  "me "
    \alternative {
      { "now!\n "  "\nDon’t "  "leave "  "me " "now, "  }
      { "now! "  }
    }
  }
}

pianoRHone = \relative {
  \global
  e''16(8. c16 e8. c16 d4 | <e, g d'>8 <e g c>4.) <c ges' bes>8.(16 4 |
  <b f' g>8) r \section \vo
  <c e>8. g16 <d' f>8. g,16 <dis' fis>8 <e g>~ |
  \repeat volta 2 {
    g1~ |
    g4 e' e d | \ov <f, a d> <f a c> <c f a>2~ | 4 <f a d> q <f a c> | % 81b
    \tuplet 3/2 {<d f b> <f, b d> <g bes e>} <g b f'>2~ |
    q8. <cis ais'>16 <d b'>8. <f d'>16 <d f b>8. <b f' g>16 <b dis a'>4 | % 81c
    \vo a'8 g4.~2~ | 4 <c, e>8. g16 <d' f>8. g,16 <dis' fis>8 <e g>~ | g1~ |
    g4 e' e d | \ov <f, a d> <f a c> <c f a>2~ | 4 <f a d> q <f a c> | % 82a
    \tuplet 3/2 {<d f b>4 <f, b d> <g bes e>} <g b f'>2~ |
    q8. <b f' a>16 8. <b f' g>16 <c ees>8. <a c>16 <f b d>4 | % 82b
    <e g d'>8 <e g c>4. <g a ees'>4\(8. 16 | <e g c>4\) c'' c c |
    <f, a d>2 <f a c>~ | % 82c
    8. <g a ees'>16 8. <f a d>16 \tuplet 3/2 {<ees a c>4 <a, c> <c e a>} |
    q8 <c e g>4. \tuplet 3/2 {<c ees a>4 <a c ees> <c ees a>} |
    <c e g>2 r8 c'8 8. 16 \vo | % 82d
    \tuplet 3/2 {ees8(d) c~} 2.~ \ov |
    <fis, a c>8. <fis c' d>16 8. <fis c' e>16 \tuplet 3/2 {<fis c' d>4 <c fis a> <e fis c'>} |
    <d f b>8 r <d b'>8. 16 \tuplet 3/2 {q4 <des bes'> <c a'>} | % 83a
    <b g'>8 r <c e>8. g16 <d' f>8. g,16 <dis' fis>8 <e g>~ |
    \vo g1~ | 4 e' e d \ov | <f, a d> <f a c> <c f a>2~ | 4 <f a d> q <f a c> | % 83b
    \tuplet 3/2 {<d f b>4 <f, b d> <g bes e>} <g b f'>2~ | % 83c
    8. \ov ees''16 8. c16 ees8. c16 d4 |
    \alternative {
      {
        <e, g d'>8 <e g c>4. <c ges' bes>8.\(16 4 |
        <b f' g>8\) r <c e>8. g16 <d' f>8. g,16 <dis' fis>8 <e g>\laissezVibrer |
        }
      {
        <e g d'>8 <e g c>4. <c ees a>8. <e a c>16 <c e a>4 |
        <c e g c>2 <c' e g c>4-> r |
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s16*13 | s1 | s4 r <<{\vo s4. \once\hideNotes e'8_~} \new Voice {r2}>> |
  \repeat volta 2 {
    \vt e4 <g, c e> r q | r <e' g c> <e g bes>2 | s1*3 |
    s1 | <c e>4. 8 \tuplet 3/2 {<bes e>4 4 4} | % 81c
    <b f'>4 r <<{\vo s4. \once\hideNotes e8_~} \new Voice {r2}>> \vt |
    e4 <g, c e> r q |
    r4 <e' g c> <e g bes>2 | s1*3 | % 82a
    s1*3 |
    s1*3 |
    s1 | <fis a>1~ | \vo \once\hideNotes q |
    s1 | s2.. \once\hideNotes e8_~ | % 83a
    \vt e4 <g, c e> r q | r <e' g c> <e g bes>2 | s1*2 |
    s1*2 |    
    \alternative {
      {s1*2}
      {s1*2}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s16\mf s2. | s1*2 |
  \repeat volta 2 {
    s1*9 |
    s1*6 | s4 s2\< s4\! | s1\mf | s1*5 | % 82
    s4 s2.\> | s8 s\! s2.\mp | s1*6 |
    \alternative { {s1 | s4 s2.\mp |} {s1 | s2\< s\ff |} }
  }
}

pianoLH = \relative {
  \global
  r16 r4 r2 | c,4 g' aes8. 16 4 | g8 r \section r4 r2 |
  \repeat volta 2 {
    c,4. g'8 a4 g |
    c,4. g'8 c4 c, | f4. c'8 d4 c | f4. d8 c4 f, | g2~8. d'16 cis8. d16 | % 81b
    g,2 g'4 g, | <c, c'>4. 8 \tuplet 3/2 {<cis cis'>4 4 4} | <d d'>4 r r2 | c4. g'8 a4 g |
    c,4. g'8 c4 c, | f4. c'8 d4 c | f4. d8 c4 f, | g2~8. d'16 cis8. d16 | % 82a
    g,2. 4 | c, g' f2 | <c c'>4 r r2 |
    f4 a8. c16 d4 c8. a16 | f4 c' f f, | c'4 a8. g16 f2 |
    c'4(a8. g16 c,8) r r4 | d4 fis8. a16 d4 a8. fis16 | d4 a' d d, |
    g8 r r4 r2 | R1 | % 83a
    c,4. g'8 a4 g | c,4. g'8 c4 c, | f4. c'8 d4 c | f4. d8 c4 f, |
    g2~8. d'16 cis8. d16 | g,8. r16 r4 r2 |
    \alternative {
      {c,4 g' aes8. 16 4 | g8 r r4 r2 |}
      {a,4 a'8. g16 f2 | c'4 a8. g16 <c, c'>4 r |}
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
