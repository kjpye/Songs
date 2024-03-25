\version "2.25.14"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet Caroline"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Neil Diamond"
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
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderately, very steady" 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "1c" } s1*3
  \textMark \markup { \box "1d" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "2d" } s1*2
  \repeat segno 2 {
    s1*2
    \textMark \markup { \box "3a" } s1*4
    \textMark \markup { \box "3b" } s1*4
    \textMark \markup { \box "3c" } s1*3
    \textMark \markup { \box "3d" } s1*3
    \textMark \markup { \box "4a" } s1*3
    \textMark \markup { \box "4b" } s1*3
    \alternative {
      \volta 1 {
        s1
        \textMark \markup { \box "4c" } s1*3
        \textMark \markup { \box "4d" } s1*4
        \textMark \markup { \box "5a" } s1*4
        \textMark \markup { \box "5b" } s1*4
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  \textMark \markup { \box "5c" } s1*2
  \textMark \markup { \box "5d" } s1*3
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "6d" } s1*4
}

ChordTrack = \chordmode {
  R1 | s1*6 | c1 | s | f | s | c |
  s1 | g | s | c | s | f | s | c | s | g:7 s |
  \repeat segno 2 {
    c1 | s |
    e1 | s | b | s | f | s | g:7 | s2 f4/a g/b | % 3a %%% fix first chord
    c1 | f | s | s | g:7 | s2 f4/a g/b |
    e1 | a | s | s | g2 f | e:m d:m |
    \alternative {
      \volta 1 {
        s2 c |
        s1 | f | s | c | s | g | s | % 4b/c
        g1 | s | g | s | c | s | g:7 | s |
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  R1*5 |
  s1 | s | e | a | s | s | g | s2 f4/a g/b | % 6a/b
  c1 | f | s | s | g:7 | s2 f4/a g/b | c1 |
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  
}

melody = \relative {
  \global
  R1*3 |
  R1*3 |
  R1 \section | r2 e'8. f16 g8. 16~ | 4 r r2 |
  r2 \tuplet 3/2 {d4 e f} | 4 8 e~4 d | r2 \tuplet 3/2 {c4 d e} |
  e4 e d c | <g d'>2. r4 | R1 | % 2a
  r2 e'8. f16 g8. 16~ | 4 r r2 | r \tuplet 3/2 {d4 e f} |
  f4 f e8 d4. | r2 c8. d16 e8. 16~ | 4 4 d c |
  d1 | R |
  \repeat segno 2 {
    g1 | R |
    r4 a8 8 2 | R1 | r4 b8 8 2 | R1 | % 3a
    r4 c8 8 2 | r c4 d | 1~ | 4. r8 r2 |
    <c e>2 g4 a8. 16~ | 2 r | r a8 <c f>4 8~ |
    q8 <c e>4. d4 c | g1 | R |
    <c e>2 g4 a8. 16~ | 2 r | r a8 <c f>4 8~ | % 4a
    q8 <c e>4 d8~8 c4. | d2 c | g f |
    \alternative {
      \volta 1 {
        r2 e8. f16 g8. 16~ |
        g4 r r2 | r \tuplet 3/2 {d4 e f} | 4 8 e~8 d4. | % 4c
        r2 r8 c d e | 4. 8 d4 c | <g d'>2. r4 | R1 |
        r2 e'8. f16 g8. 16~ | 4 r r2 | r \tuplet 3/2 {d4 e f} | f f e d | % 5a
        r2 c8. d16 e8. 16~ | 4. 8 d4 c | d1~ | 4 r r2 \section |
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  \break R1 | R |
  R1*3 |
  R1 | R | <c' e>2 g4 a8. 16~ | 2 r | % 6a
  r2 a8 <c f>4 8~ | 8 <c e>4. d4 c | g1 | R |
  <c e>2 g4 a8. 16~ | 2 r | r a8 <c f>4 8~ |
  q4 <c e> d c | <g d'>1~ | 4 \caesura <a f'>4\fermata q\fermata <c e>16(d c8\fermata) | c1\fermata |
  \bar "|."
}

wordsOne = \lyricmode {
  Where it be -- gan, __
  I can't be -- gin to know -- in',
  but then I know it's grow -- in' strong.
  Was in the spring, __
  and spring be -- came the sum -- mer.
  Who'd have be -- lieved __ you'd come a -- long?
  Hands, touch -- in' hands,
  reach -- in' out,
  touch -- in' me touch -- in' you. __
  Sweet Car -- o -- line, __
  good times nev -- er seemed so good.
  I've been in -- clined __
  to be -- lieve __
  the nev -- er would.
  But now I look at the night, __
  and it don't seem so lone -- ly.
  We fill it up with on -- ly two.
  And when I hurt, __
  hurt -- in' runs off my shoul -- ders,
  How can I hurt __ when hold -- in' you? __
}

wordsTwo = \lyricmode {
  \repeat unfold 38 \skip 1
  Warm, touch -- in' warm,
  \repeat unfold 31 \skip 1
  Oh, no, no.
  \repeat unfold 38 \skip 1
  Sweet Car -- o -- line, __
  good times nev -- er seemed so good.
  I've been in -- clined __
  to be -- lieve __
  the nev -- er would. __
  Sweet Car -- o -- line,
}

wordsSingle = \lyricmode {
  Where it be -- gan, __
  I can't be -- gin to know -- in',
  but then I know it's grow -- in' strong.
  Was in the spring, __
  and spring be -- came the sum -- mer.
  Who'd have be -- lieved __ you'd come a -- long?
  Hands, touch -- in' hands,
  reach -- in' out,
  touch -- in' me touch -- in' you. __
  Sweet Car -- o -- line, __
  good times nev -- er seemed so good.
  I've been in -- clined __
  to be -- lieve __
  the nev -- er would.
  But now I look at the night, __
  and it don't seem so lone -- ly.
  We fill it up with on -- ly two.
  And when I hurt, __
  hurt -- in' runs off my shoul -- ders,
  How can I hurt __ when hold -- in' you? __

  Warm, touch -- in' warm,
  reach -- in' out,
  touch -- in' me touch -- in' you. __
  Sweet Car -- o -- line, __
  good times nev -- er seemed so good.
  I've been in -- clined __
  to be -- lieve __
  the nev -- er would.
  Oh, no, no,
  Sweet Car -- o -- line, __
  good times nev -- er seemed so good.
  I've been in -- clined __
  to be -- lieve __
  the nev -- er would. __
  Sweet Car -- o -- line.
}

wordsMidi = \lyricmode {
  "Where " "it " be "gan, " 
  "\nI " "can't " be "gin " "to " know "in', "
  "\nbut " "then " "I " "know " "it's " grow "in' " "strong. "
  "\nWas " "in " "the " "spring, " 
  "\nand " "spring " be "came " "the " sum "mer. "
  "\nWho'd " "have " be "lieved "  "you'd " "come " a "long? "
  "\nHands, " touch "in' " "hands, "
  "\nreach" "in' " "out, "
  "\ntouch" "in' " "me " touch "in' " "you. " 
  "\nSweet " Car o "line, " 
  "\ngood " "times " nev "er " "seemed " "so " "good. "
  "\nI've " "been " in "clined " 
  "\nto " be "lieve " 
  "\nthe " nev "er " "would. "
  "\nBut " "now " "I " "look " "at " "the " "night, " 
  "\nand " "it " "don't " "seem " "so " lone "ly. "
  "\nWe " "fill " "it " "up " "with " on "ly " "two. "
  "\nAnd " "when " "I " "hurt, " 
  "\nhurt" "in' " "runs " "off " "my " shoul "ders, "
  "\nHow " "can " "I " "hurt "  "when " hold "in' " "you?\n" 

  "\nWarm, " touch "in' " "warm, "
  "\nreach" "in' " "out, "
  "\ntouch" "in' " "me " touch "in' " "you. " 
  "\nSweet " Car o "line, " 
  "\ngood " "times " nev "er " "seemed " "so " "good. "
  "\nI've " "been " in "clined " 
  "\nto " be "lieve " 
  "\nthe " nev "er " "would. "
  "\nOh, " "no, " "no, "
  "\nSweet " Car o "line, " 
  "\ngood " "times " nev "er " "seemed " "so " "good. "
  "\nI've " "been " in "clined " 
  "\nto " be "lieve " 
  "\nthe " nev "er " "would. " 
  "\nSweet " Car o "line. "
}

pianoRHone = \relative {
  \global \clef bass
  d8. e16 f2 d8. e16 | f8. e16 d4 f8. e16 d4 \clef treble | <d' f>8. <e g>16 <f a>2 <d f>8. <e g>16 |
  <f a>8. <e g>16 <d f>4 <f a>8. <e g>16 <d f>4 | % 1b
  <f a>8. <g b>16 <a c>2 <f a>8. <g b>16 | \vo
  <a c>2 <g b> |
  \ov <e g e'>2 <d f d'> \section | % 1c
  <g c e>4 4 e8. f16 g8. 16~ | 2. r4 |
  <a c f>4 q \tuplet 3/2 {d, e f} | 4 8 e~4 d | % 1d
  <g c e> q \tuplet 3/2 {c, d e} |
  e4 e d c <g g'>1~ | 1 | % 2a
  <g' c e>4 q <c, e>8. <d f>16 <e g>8. 16~ | 1 | <a c f>4 4 \tuplet 3/2 {d, e f} |
  f4 f e8 d4. | <g c e>4 4 c,8. d16 e8. 16~ | 4 4 d c |
  \vo r4 <g' e'> <f d'> <e c'> \ov | <d b'> <c a'> <b g'> <a f'> |
  \repeat segno 2 {
    <g c e g>1\arpeggio ~ | 1 |
    \vo r4 a'8 8 2~ | 1 | r4 b8 8 2~ | 1 | % 3a
    r4 c8 8 2~ | 2 \ov <c, f a c>4 <d f a d> | <d g b d>1~ | 4 <d g b> <d a' c> <d g b d> |
    <e g c e>2 <c e g>4 <c e a>8. <c f a>16~ | 2 <f f'>4 <e e'> | <a, a'>2 a'8 <a c f>4 8~ |
    q8 <a c e>4. <f a d>4 <f a c> | <d g>1~ | 4 <d g b> <d a' c> <d g b d> |
    <e g c e>2 <c e g>4 <c e a>8. <c f a>16~ | 2 <f f'>4 <e e'> | <a, a'>2 a'8 <a c f>4 8~ | % 4a
    q8 <a c e>4 <f a d>8~8 <f a c>4. | <d g b d>2\arpeggio <c f a c>\arpeggio | % 3b
    <b e g>2\arpeggio <a d e>\arpeggio |
    \alternative {
      \volta 1 {
        \vo r2 e'8. f16 g8. 16~ |
        \ov g4 g c g | \vo r2 \tuplet 3/2 {d4 e f} | \ov 4 8 e~8 d4. | % 4c
        \vo r2 r8 c d e | \ov e4. 8 d4 c | g4 2 4~ | 4 2 <b f' g>4 |
        \vo r2 <c e>8. <d f>16 <e g>8. 16~ | \ov 4 g c g | % 5a
        \vo r2 \tuplet 3/2 {d4 e f} | \ov f f e d |
        \vo r2 c8. d16 e8. 16~ | \ov 4. 8 d4 c | % 5b
        \vo r4 <g' e'> <f d'> <e c'> | <d b'> <c a'> <b g'> <a e'> \section |
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  \clef bass d,8. e16 f2 d8. e16 | f8. e16 d4 f8. e16 d4 \clef treble | % 5c
  <d' f>8. <e g>16 <f a>2 <d f>8. <e g>16 | % 5d
  <f a>8. <e g>16 <d f>4 <f a>8. <e g>16 <d f>4 |
  <f a>8. <g b>16 <a c>2 <f a>8. <g b>16 |
  \vo <a c>2 <g b> | \ov <e g e'> <d f d'> | % 6a
  <e g c e> <c e g>4 <c e a>8. <c f a>16 ~ | 2 <f f'>4 <e e'> |
  <a, a'>2 a'8 <a c f>4 8~ | 8 <a c e>4. <f a d>4 <f a c> | % 6b
  \vo <d g>1~ | 4 \ov <d g b> <d a' c> <d g b d> |
  <g c e>2 <c, e g>4 <c e a>8. 16~ | 2 <f f'>4 <e e'> | % 6c
  <a, a'>2 a'8 <a c f>4 8~ |
  q4 <a c e> <f a d> <f a c> | <f g b d>1~ | % 6d
  q4 \caesura  <g b f'>4\fermata \vo f'\fermata e16 d c8\fermata |
  \ov <e, g c>1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*3 |
  s1*2 | r4 c' b \ss \lh g~ \hs |
  <g, g'>4 \rh s2. \section | s1*2 |
  s1*3 |
  s1*3 | % 2a
  s1*3 |
  s1*3 |
  d''1 | s1 |
  \repeat segno 2 {
    s1*2 |
    <a c e>1\arpeggio ~ | 1 | <b d g>1\arpeggio ~ | 1 | % 3a
    <c f a>1\arpeggio ~ | 2 s | s1*2 |
    s1*3 |
    s1 | b2 c | s1 |
    s1*3 | % 4a
    s1*3
    \alternative {
      \volta 1 {
        <g c e g>1 |
        s1 | <c f a> | s | % 4c
        <c e g>1 | s1*3 |
        <c e g>1 | s | <f a> | s | % 5a
        <c e g>1 | s | d | s |
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  s1*5 | % 5c/d
  r4 c b \ss \lh g~ \hs | <g, g'> \rh s2. | s1*2 | % 6a
  s1*2 | b'2 c | s1 |
  s1*3 |
  s1*2 | s2 <a' c>4\fermata <g b>\fermata | s1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*11 |
  s1*11 |
  \repeat segno 2 {
    s1*2 |
    s1*14 | % 3
    s1*6 |
    \alternative {
      \volta 1 { s1*16 }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  s1*5 | s1*15
}

pianoLH = \relative {
  \global
  \repeat unfold 5 {g,4 4 4 4 |}
  g4 4 4 \vt g | \ov s4 <g d'> g g \section | <c g'>4 4 4 4 | 4 4 4 4 | % 1c
  \repeat unfold 8 <f c'>4 | <c g'>4 4 4 4 |
  q4 q q q | g4 g g g | g g g g | % 2a
  <c g'>4 q q q | q q q q | <f c'> q q q |
  q4 q q q | <c g'> q q q | q q q q |
  <g g'>4 q q q | q q q q |
  \repeat segno 2 {
    c,4 c' c, c' | c, c' c, c' |
    c,4 c' c, c' | c, c' c, c' | g g' g, g' | g, g' g, g' | % 3a
    f,4 f' f, f' | f, f' f, f' | g, g' g, g' | g, g a b |
    c4 g8. b16 c4 g | f c8. e16 f4 c | f c8. e16 f4 c |
    f4 c8. e16 f4 c | g' d g d | g g a b |
    c4 g8. b16 c4 g | f c8. e16 f4 c | f c8. e16 f4 c | % 4a
    f4 c f g | g2 f' | e d |
    \alternative {
      \volta 1 {
        <c g'>4 q q q |
        q4 q q q | <f c'> q q q | q q q q | % 4c
        <c g'>4 q q q | q q q q | g g g g | g g g g |
        <c g'>4 q q q | q q q q | <f c'> q q q | q q q q | % 5a
        <c g'>4 q q q | q q q q | <g g'> q q q | q <f f'> <e e'> <d d'> \section |
      }
      \volta 2 \volta #'() {
        \section \sectionLabel Coda
      }
    }
  }
  \repeat unfold 5 {g4 g g g |}
  g4 g g \vt g | \ov s4 g g g | c4 g8. b16 c4 g | f c8. e16 f4 c | % 6a
  f4 c8. e16 f4 c | f c8. e16 f4 c | g' d g d | g g a b |
  c4 g8. b16 c4 g | f c8. e16 f4 c | f c8. e16 f4 c |
  f4 c8. e16 f4 c | g' d g d | % 6d
  g \caesura g\fermata a\fermata b\fermata | <c g' c>1\fermata
  \bar "|."
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
                                % melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \paper {
    output-suffix = singlepage-all
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
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \paper {
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % melody staff
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
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
