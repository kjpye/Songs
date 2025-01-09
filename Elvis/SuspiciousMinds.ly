\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Suspicious Minds"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mark James"
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
  \key g\major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo Moderately 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup\box "50a" s1*4
    \textMark \markup\box "50b" s1*4
    \textMark \markup\box "50c" s1*4
    \textMark \markup\box "50d" s1*5
    \textMark \markup\box "51a" s1*4
    \textMark \markup\box "51b" s1*2
    \alternative {
      { s1 }
      { s1 }
    }
  }
  \textMark \markup\box "51c" s2.*4
  \textMark \markup\box "51d" s2.*4
  \textMark \markup\box "51e" s2.*3 s1
}

ChordTrack = \chordmode {
  \repeat volta 2 {
    g1 s c s | d1 c f s2. c4 | g1 s c s | d1 c d2 c b:m d:7 c1 |
    g1 b:m c2 d e1:m | b:m c
    \alternative {
      { d2 d:7 }
      {b2:7sus4 b:7 }
    }
  }
  e2.:m b:m c d | e:m b:m c d | g c g d4:7 d2:11
}

melodyA = \relative {
  \tag #'dash {r8 \tiny b' b \normalsize b b c a b~ |}
  \tag #'v1   {r4          r8            b b c a b~ |}
  \tag #'v2   {r8       b  b             b b c a b~ |}
  2 r |
  \tag #'dash {r8 \tiny c c \normalsize c c d4 c8~ |}
  \tag #'v1   {r4         r8            c c d4 c8~ |}
  \tag #'v2   {r8       c c             c c d4 c8~ |}
  2 r |
  r4 r8 d d d4 8~ | 8 c4 8~8 d4. | % 50b
  \tag #'dash {\slurDashed c8(b4) \slurSolid g8~4 r |}
  \tag #'v1   {            c8(b4)            g8~4 r |}
  \tag #'v2   {            c8 b4             g8~4 r |}
  R1 |
  \tag #'dash {r4 \tiny b8 b \normalsize b8 c(a) b~ |} % 50c
  \tag #'v1   {r2                        b8 c a  b~ |}
  \tag #'v2   {r4       b8 b             b8 c(a) b~ |}
  4 r r2 |
  \tag #'dash {r4 c8 c c \slurDashed d(b) \slurSolid c~ |}
  \tag #'v1   {r4 c8 c c             d b             c~ |}
  \tag #'v2   {r4 c8 c c             d(b)            c~ |}
  4 r r2 |
  r4 d8 d d d4 8~ | 8 c4 8~8 b4. | % 50d
  \tag #'dash {\slurDashed b8(a4.~) \slurSolid 2~ |}
  \tag #'v1   {            b8(a4.~)            2~ |}
  \tag #'v2   {            b8 a4.~             2~ |}
  2 r | r4 e' fis8 g4 8~ |
  g4 d8 8~8 b4. | r4 b8 b d a4 g8~ | 2 r | r4 e' fis8 g4 fis8~ | % 51a
  fis8 d4 b8~4 r | r g8 g g a4. |
}

melodyB = \relative {
  b'4.(c16 b a2) |
}

melodyC = \relative {
  b'4.(c16 b a2) |
}

melodyD = \relative {
  \section \time 6/8
  r4 r8 e'' fis g | fis4 e8 d4. | r4 e8~8 d e | b4 a16 g a4. | % 51c
  r4 r8 b d d16 b | e8 fis4 d8(b4) | r e,8 g g r16 g | b8(a) g b d4 |
  r8 a g g4. | b4.(a8 b16 a g8) | r4 r8 b4. \time 4/4 | a8(b16 a \after 2 ^\markup{\halign #RIGHT \italic "D.C. to Lyric 1 and fade"} g2.) |
}

melody = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \melodyA
    \alternative { \melodyB \melodyC }
  }
  \melodyD
  \bar "||"
}

melodySingle = {
  \global
  \keepWithTag #'v1 \melodyA \melodyB
  \keepWithTag #'v2 \melodyA \melodyC
  \melodyD
  \bar "||"
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  "" "" We’re caught in a trap; __
  "" "" I can’t walk out __
  be -- cause I love __ you too __ much ba -- by. __

  "" "" Why \nom can’t you \yesm see __
  what you’re \nom do -- ing \yesm to me, __
  When you don’t be -- lieve a word __ I say? __
  We can’t go on __ to -- geth -- er
  with Sus -- pi -- cious Minds; __

  And we can’t build __ our dreams __
  on Sus -- pi -- cious Minds. __
  Minds. __

  Oh, let our love sur -- vive
  or __ dry the tears from your eyes,
  Let’s don’t let a good thing die, __
  when hon -- ey, you know __ I've nev -- er lied to you;
  Mmm, __ yeah, yeah! __
}

wordsTwo = \lyricmode {
  So, if an old friend I know __
  drops by to say hel -- lo, __
  would I still see __ sus -- pi -- cion \nom in your \yesm eyes? __
  Here we go a -- gain, __
  ask -- ing where I‘ve been, __
  You can’t see these tears __ are real __ I’m \nom cry -- ing. __ \yesm
}

wordsSingle = \lyricmode {
  We’re caught in a trap; __
  I can’t walk out __
  be -- cause I love __ you too __ much ba -- by. __

  Why can’t you see __
  what you’re do -- ing to me, __
  When you don’t be -- lieve a word __ I say? __
  We can’t go on __ to -- geth -- er
  with Sus -- pi -- cious Minds; __

  And we can’t build __ our dreams __
  on Sus -- pi -- cious Minds. __

  So, if an old friend I know __
  drops by to say hel -- lo, __
  would I still see __ sus -- pi -- cion in your eyes? __
  Here we go a -- gain, __
  ask -- ing where I‘ve been, __
  You can’t see these tears __ are real __ I’m cry -- ing. __

  We can’t go on __ to -- geth -- er
  with Sus -- pi -- cious Minds; __

  And we can’t build __ our dreams __
  on Sus -- pi -- cious Minds. __

  Oh, let our love sur -- vive
  or __ dry the tears from your eyes,
  Let’s don’t let a good thing die, __
  when hon -- ey, you know __ I've nev -- er lied to you;
  Mmm, __ yeah, yeah! __
}

midiWords = \lyricmode {
  "We’re " "caught " "in " "a " "trap; " 
  "\nI " "can’t " "walk " "out " 
  "\nbe" "cause " "I " "love "  "you " "too "  "much " ba "by. " 

  "\nWhy " "can’t " "you " "see " 
  "\nwhat " "you’re " do "ing " "to " "me, " 
  "\nWhen " "you " "don’t " be "lieve " "a " "word "  "I " "say? " 
  "\nWe " "can’t " "go " "on "  to geth "er "
  "\nwith " Sus pi "cious " "Minds; " 

  "\nAnd " "we " "can’t " "build "  "our " "dreams " 
  "\non " Sus pi "cious " "Minds. " 

  "\nSo, " "if " "an " "old " "friend " "I " "know " 
  "\ndrops " "by " "to " "say " hel "lo, " 
  "\nwould " "I " "still " "see "  sus pi "cion " "in " "your " "eyes? " 
  "\nHere " "we " "go " a "gain, " 
  "\nask" "ing " "where " "I‘ve " "been, " 
  "\nYou " "can’t " "see " "these " "tears "  "are " "real "  "I’m " cry "ing. " 

  "\nWe " "can’t " "go " "on "  to geth "er "
  "\nwith " Sus pi "cious " "Minds; " 

  "\nAnd " "we " "can’t " "build "  "our " "dreams " 
  "\non " Sus pi "cious " "Minds. " 

  "\nOh, " "let " "our " "love " sur "vive "
  "\nor "  "dry " "the " "tears " "from " "your " "eyes, "
  "\nLet’s " "don’t " "let " "a " "good " "thing " "die, " 
  "\nwhen " hon "ey, " "you " "know "  "I've " nev "er " "lied " "to " "you; "
  "\nMmm, "  "yeah, " "yeah! " 
}

pianoRHone = \relative {
  \global
  \repeat volta 2 {
    r4 r8 b' <d, g b> <e g c> a <d, g b>~ |
    q2 d8 e <b g'> d |
    <c e>4. c'8 <e, g c> d'4 q8~ |
    q2 g,8 a <e c'> g |
    <d fis a>4. d'8 <fis, a d> d'4 <e, g d'>8~ | % 50b
    q8 c'4 <e, g c>8~8 <e g a d>4. |
    <d g c>8 b'4 <b, d g>8~4 r |
    r4 <b d> d8 e <c g'> e |
    <b d g>2 <d g b>8 <e g c> a <d, g b>~ | % 50c
    q4 r d8 e <b g'> d |
    <c e>4 c'8 8 <e, g c> d' b <e, g c>~ |
    q4 r4 g8 a <e c'> g |
    <d fis a>4 d'8 8 <fis, a d> d'4 <e, g d'>8~ | % 50d
    q8 c'4 <e, g c>8~8 <e g b>4. |
    \vo b'8 a4.~2~ |
    a2 r |
    \ov r4 <g c e> <a d fis>8 <c e g>4 <b d g>8~ |
    q4 <g b d>8 8~8 <d g b>4. | % 51a
    \vo r4 b'8 8 d a4 g8~ |
    g2 \ov <a, d fis a> |
    r4 <g' b e> <b d fis>8 <b e g>4 <b d fis>8~ |
    q8 <fis b d>4 <d fis b>8~4 r | % 51b
    \vo r4 g8 8 8 a4. |
    \alternative {
      { b4.(c16 b a2) | }
      { b4.(c16 b a2) | }
    }
  }
  \section \time 6/8 \ov <g, b e>4. <g' b e>8 g' <b, e g> | % 51c
  <b d fis>4 e8 <fis, b d>4. |
  <c e g>4 <g' c e>8~8 d' q |
  \vo b4 a16 g a4. |
  r4 r8 b d d16 b | % 51d
  \ov <fis b e>8 <b d fis>4 <fis b d>8(<d fis b>4) |
  \vo r4 e8 g g r16 g |
  b8(a) g b d4 |
  r8 a g g4. | % 51e
  b4.(a8 b16 a g8) |
  \ov <b, d g>4. <d g b> |
  \time 4/4 \vo a'8(b16 a g2.) |
}

pianoRHtwo = \relative {
  \global \vt
  \repeat volta 2 {
    s1*14 | <d' fis>2 <c e g>4 4 | <b d fis> q <a c d fis>2 | s1
    s1 | r4 <d fis>4 <fis b>8 <d fis>4 <c e>8~ | q2 s | s1 | % 51a
    s1 | r4 <c e>4 2 |
    \alternative {
      { <d fis>2 <c d fis> | }
      { <e fis a>2 <b dis fis> | }
    }
  }
  \section \time 6/8 s2.*3 | <d fis>4. q |
  <b e g>4. <e g> | s2. | <c e g>4 r8 <c e>4. | <d fis>4. 8 <fis a>4 |
  <b, d>2. | <e g>4. <c e>4 8 | s2. \time 4/4 | <c fis>4 <c e>2. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf | s1*13 | s1\omit\cresc-\markup\italic "cresc. poco a poco" | s | s\f |
    s1*6
    \alternative {
      { s1 }
      { s1 }
    }
  }
  s2.\mp | s2.*9 | s2.\omit\cresc-\markup\italic "cresc. poco a poco" | \after 2. \omit\f s1 |
}

pianoLH = \relative {
  \global
  \repeat volta 2 {
    g,4. 8 4. 8 | 4. 8 4. 8 | c,4. 8 4. 8 | 4. 8 4. 8 |
    d4. 8 2 | c2 4. 8 | g'2 4. d8 | g4. 8 4 e'8 c |
    g8 4 d8 g4 4 | 8 4 d8 g4 4 | c,8 4 8 4 4 | 8 4 8 4 4 |
    d4. 8 2 | c c | d4 4 c c | b b d d' | c8 g c g c b a g~ |
    g8 d g g~g d g a | b8 g b fis b fis b c~ | c g c g d' a d dis | e b e b e b e b~ | % 51a
    b8 4 8~8 fis b b | c g c g c g c g |
    \alternative {
      { d8 8 8 8 8 8 8 8 | }
      { b8 8 8 8 8 8 4 | }
    }
  }
  \section \time 6/8 e8 b e8 4 8 | b'4.~8 f b | c4. c, | d4.~8 d dis |
  e8 b d8 4. | b'4 8 8 fis b | c g c8 4. | d,4.~8 d fis |
  g4.~8 a b | c4 g8 c, e fis | g g g g g g \time 4/4 | d4 4 4 4 |
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
            \new Voice \melodySingle
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
            \new Voice \melodySingle
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
