\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "From the Time You Say Goodbye"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Leslie Sturdy"
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

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 3/4
}

TempoTrack = {
  \global
  \tempo 4=100
  s2.*4
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {s2.*28}
  \alternative {{s2.*4}
                {
                  s2.
                  s2.
                  s2 \tempo 4=50
                }
              }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "85a" } s2.*4
  \repeat volta 2 {
    \mark \markup { \circle "85b" } s2.*4
    \mark \markup { \circle "85c" } s2.*4
    \mark \markup { \circle "86a" } s2.*4
    \mark \markup { \circle "86b" } s2.*4
    \mark \markup { \circle "86c" } s2.*4
    \mark \markup { \circle "86d" } s2.*4
    \mark \markup { \circle "87a" } s2.*4
  }
  \alternative {
    {
      \mark \markup { \circle "87b" } s2.*4
    }
    {
      \mark \markup { \circle "87c" } s2.
    }
  }
  s2.*2
}

ChordTrack = \chordmode {
  c2.:6
  g:13
  c4:6/e b:7 ees:dim7
  d4:m7
  g2:7
  \repeat volta 2 {
    c2.:6 % 85b
    e:7/b
    a:m
    g2:m7 c4:7
    f2.:6 % 85c
    a2:aug7 a4:7
    d2.:m7
    g:9
    c4:9/e c2/e % 86a %%% FIX
    b2:m7.5- e4:7
    a2.:m
    a:m/g
    d/fis % 86b
    d:7
    d:m7
    g:7
    c2.:6 % 86c
    e:7/b
    a:m
    g2:m7 g4:7
    f2.:6 % 86c
    a2:aug7 a4:7
    d2.:m7
    g:9
    c:6 % 87a
    e:7
    a:7
    d2:m aes4:aug
  }
  \alternative {
    {
      c2./g % 87b
      g:13.9-
      c:6
      d4:m7 g2:7.9-.13-
    }
    {
      c2./g % 87c
    }
  }
  g2.:13
  c:6
}

melody = \relative {
  \global
  R2.*3
  r2 fis8 g \bar "||"
  \repeat volta 2 {
    e'2~8 g % 85b
    e2~8 d
    c2.
    r4 r b8 c
    f2 a4 % 85c
    f2 e8 f
    d2.~
    d4 r fis,8 g
    g'2~8 e % 86a
    f2 e4
    c2.
    r4 r b8 c
    d4. a8~4 % 86b
    b2 c8 d~
    d2.
    r4 r fis,8 g
    e'2~8 g % 86c
    e2~8 d
    c2.
    r4 r b8 c
    f2 a4 % 86d
    f2 e4
    d2.~
    d4 r fis,8 g
    g'2 g4 % 87a
    gis2 gis4
    a2 g4
    f2 e8 d
  }
  \alternative {
    {
      e2 g4 % 87b
      e2~8 d
      c2.
      r4 r fis,8 g
    }
    {
      e'2 g4 % 87c
    }
  }
  e2 <d g>4
  <c c'>2.\fermata
  \bar "|."
}

wordsOne = \lyricmode {
  From the time __ you say __ good -- bye.
  from the time you say cheer -- i -- o, __
  will you take __ my hand -- shake true
  for your jour -- ney __ as you go? __
  Keep a prayer __ with -- in __ your heart
  that the time will sure -- ly fly __
  to the day when we shall meet a -- gain,
  from the time you say good -- bye.
  From the
  time you say good -- bye.
}

wordsSingle = \lyricmode {
  From the time __ you say __ good -- bye.
  from the time you say cheer -- i -- o, __
  will you take __ my hand -- shake true
  for your jour -- ney __ as you go? __
  Keep a prayer __ with -- in __ your heart
  that the time will sure -- ly fly __
  to the day when we shall meet a -- gain,
  from the time you say good -- bye.
  From the time __ you say __ good -- bye.
  from the time you say cheer -- i -- o, __
  will you take __ my hand -- shake true
  for your jour -- ney __ as you go? __
  Keep a prayer __ with -- in __ your heart
  that the time will sure -- ly fly __
  to the day when we shall meet a -- gain,
  from the time you say good -- bye.
}

midiWords = \lyricmode {
  "\nFrom " "the " "time "  "you " "say "  good "bye. "
  "\nfrom " "the " "time " "you " "say " cheer i "o, " 
  "\nwill " "you " "take "  "my " hand "shake " "true "
  "\nfor " "your " jour "ney "  "as " "you " "go? " 
  "\nKeep " "a " "prayer "  with "in "  "your " "heart "
  "\nthat " "the " "time " "will " sure "ly " "fly " 
  "\nto " "the " "day " "when " "we " "shall " "meet " a "gain, "
  "\nfrom " "the " "time " "you " "say " good "bye. "
  "\nFrom " "the " "time "  "you " "say "  good "bye. "
  "\nfrom " "the " "time " "you " "say " cheer i "o, " 
  "\nwill " "you " "take "  "my " hand "shake " "true "
  "\nfor " "your " jour "ney "  "as " "you " "go? " 
  "\nKeep " "a " "prayer "  with "in "  "your " "heart "
  "\nthat " "the " "time " "will " sure "ly " "fly " 
  "\nto " "the " "day " "when " "we " "shall " "meet " a "gain, "
  "\nfrom " "the " "time " "you " "say " good "bye. "
}

pianoRH = \relative {
  \global
  <g' a c e>2 <a c e g>4
  <f a b e>2 <f g b d>4 <e g a c>4 <dis fis a b> <c ees fis a>
  <b c f a>4 <a d f g> fis'8 g
  \repeat volta 2 {
    s2.*28
  }
  \alternative {
    {
      s2.*2
      c4 <a c e g> q % 87b++
      s2.
    }
    {
      s2.*2
      <e' g a c>2.\fermata % 87c++
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s2.*4
  \repeat volta 2 {
    e''2~8 g % 85b
    e2~8 d
    c2.
    d2 b8 c
    f2 a4 % 85c
    f2 e8 f
    d2.~
    d2 fis,8 g
    g'2~8 e % 86a
    f2 e4
    c2.
    c2 b8 c
    d4. a8~4 % 86b
    b2 c8 d~
    d2.
    d2 fis,8 g
    e'2~8 g % 86c
    e2~8 d
    c2.
    d2 b8 c
    f2 a4 % 86d
    f2 e4
    d2.~
    d2 fis,8 g
    g'2 g4 % 87a
    gis2 gis4
    a2 g4
    f2 e8 d
  }
  \alternative {
    {
      e2 g4 % 87b
      e2~8 d
      s2.
      c'8 d ees4 fis,,8 g
    }
    {
      e'2 g4 % 87c
    }
  }
  e2 g4
  s2.
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*4
  \repeat volta 2 {
    r4 <g' a c> q % 85b
    r4 <gis b d> <gis b>
    r4 <e a> q
    <f bes>4 q r
    r4 <a c d> <c d f> % 85c
    <g cis>4 q q
    r4 <f a c> q
    <f a b>2 r4
    r4 <g d'> <g c> % 86a
    r4 <f a b> <gis b d>
    r4 <e a> q
    r4 q q
    r4 <fis a> <d fis> % 86b
    r4 <c fis> <fis a>
    r4 <f a c> q
    <f b>4 q r
    r4 <g a c> q % 86c
    r4 <gis b d> <gis b>
    r4 <e a> q
    <f bes> q r
    r4 <a c d> <c d f> % 86d
    <g cis> q q
    r4 <f a c> q
    <f a b>2 r4
    r4 <a c e>2 % 87a
    r4 <b d e>2
    r4 <a cis e>2
    r4 <a d> <aes c>
  }
  \alternative {
    {
      r4 <g c>2 % 87b
      r4 <f b> q
      s2.
      <d' f a>4 <f b> r
    }
    {
      r4 <g, c>2 % 87c
    }
  }
  r4 <g b> <b e>
  s2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  s2.
  s2.\>
  s2 s4\mp
  \repeat volta 2 {
    s2.*24
    s2.\< % 87a
    s2.\mf
    s2.
    s2 s4\>
  }
  \alternative {
    {
      s2.\mp % 87b
      s2.
      s2.
      s2.
    }
    {
      s2. % 87c
      s2.\<
      s2.\f
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  c,4 <g'' a c e> q
  g,4 <g' b> q
  e,4 r ees
  d4 g2
  \repeat volta 2 {
    c,4 r r % 85b
    b4 r b
    a4 r r
    g'4 r c,
    f4 r r % 85c
    a4 r a
    d,4 r r
    g4 r r
    e4 r r % 86a
    b4 r e
    f4 r r
    g4 r r
    fis4 r r % 86b
    d4 r r
    d4 r r
    g4 r r
    c,4 r r % 86c
    b4 r r
    a4 r r
    g'4 r c,
    f4 r r % 86d
    a4 r a
    d,4 r r
    g4 r g
    c,4 <g'' a c e>2 % 87a
    e,4 <gis' b d e>2
    a,4 <g' cis e>2
    d,4 r aes'
  }
  \alternative {
    {
      g4 <g' c e>2 % 87b
      g,4 <fis' g b e>2
      c,4 r r
      R2.
    }
    {
      g'4 <g' a c>2 % 87c
    }
  }
  g,4 <f' b e>2
  c,4 <g'' a c e>2\fermata
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
