\version "2.25.18"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gnu"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \global
  \repeat volta 2 {
    \once\set Score.tempoHideNote = ##f \tempo Moderato 4=120
    s1*3 s2. \tempo "poco rit." 4=115 s4
    \tempo "a tempo" 4=120 s1*14 |
    \tempo "rit." 4=110 | s1*2 |
    \tempo "a tempo" 4.=120 s1.*14 |
    \alternative {
      \volta 1 { s1.*2 }
      \volta 2 { s1. }
    }
  }
  s1.*6 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box "176a" } s1*4
    \textMark \markup { \box "176b" } s1*3
    \textMark \markup { \box "177a" } s1*3
    \textMark \markup { \box "177b" } s1*3
    \textMark \markup { \box "177c" } s1*3
    \textMark \markup { \box "177d" } s1*3
    \textMark \markup { \box "178a" } s1 s1.*2
    \textMark \markup { \box "178b" } s1.*3
    \textMark \markup { \box "178c" } s1.*3
    \textMark \markup { \box "178d" } s1.*3
    \textMark \markup { \box "179a" } s1.*3
    \alternative {
      \volta 1 {
        \textMark \markup { \box "179b" } s1.*2
      }
      \volta 2 { s1. }
    }
  }
  \textMark \markup { \box "179c" } s1.*3
  \textMark \markup { \box "179d" } s1.*3
}

spokenAligner = {
  \repeat volta 2 {
    R1*3 | r2. c4 | c1 | c | c |
    c2. 4 | 1 | 1 | 1 | 2. 4 | 2. 4 | 2. 4 | 1 | 2. 4 | 1 | 2. 4 | 2. r4 |
    R1 | R1.*14 |
    \alternative {
      \volta 1 { R1.*2 }
      \volta 2 { R1. }
    }
  }
  R1.*6 |
}

melodyA = \relative {
  \time 4/4
  R1*18 | r2 r4 <<{\vo \tuplet 3/2 {aes'8 8 f}} \new Voice {\vt \tiny \tuplet 3/2 {aes, aes f}}>> |
  <<{\vt \tiny g2.} \new Voice {\vo \normalsize g'\fermata}>> \normalsize \tuplet 3/2 {g,8 a b} \key c \major \time 12/8 \section | % 178a
  \tag #'dash {c4. r <<{\vt \tiny r8 c c \normalsize \vo c d e} \new Voice {\ov r4. \vt \tiny d8 s4}>> \normalsize |}
  \tag #'v1   {c4. r                                                            r4.           c8 d e               |}
  \tag #'v2   {c4. r              r8 c c                 c d e                                                     |}
  \tag #'dash {\ov g4. r r <<{\vo e4 g8} \new Voice {\vt \tiny r8 r \normalsize g}>> |}
  \tag #'v1   {    g4. r r        e4 g8                                              |}
  \tag #'v2   {    g4. r r                                     r8 r             g    |}
  \tag #'dash {a4 8 \slurDashed 8(8) \slurSolid 8 4 e8 dis4 e8 | } % 178b
  \tag #'v1   {a4 8             8 8             8 4 e8 dis4 e8 | }
  \tag #'v2   {a4 8             4               8 4 e8 dis4 e8 | }
  f4. r r a,8 b cis | d4. r r d8 e f |
  a4. r r r8 r ais | b4 8 8 8 8 4 a8 g4 f8 | e4. r r g,8 a b | % 178c
  c4. r r b8 c e | g4. r r g4 a8 | % 178d
  \tag #'dash {\slurDashed bes8  8(8) \slurSolid 8 8 8~4 g8 \slurDashed <<{\vo e8(8) c} \new Voice {\vt \tiny e8 c4}>> \slurSolid \normalsize |}
  \tag #'v1   {            bes'8 4               8 8 8~4 g8                    e4    c8                                                       |}
  \tag #'v2   {            bes'4   8             8 8 8~4 g8                                                   e8 c4                           |}
  \tag #'dash {\ov a'4. r r \slurDashed d,8(4) \slurSolid | } % 179a
  \tag #'v1   {\ov a'4.  r r            d,4.              | }
  \tag #'v2   {\ov a'4.  r r            d,8 4             | }
  \tag #'dash {\slurDashed d8 (8)(8) \slurSolid cis4 d8 a'4. 4 aes8 |}
  \tag #'v1   {            d,4    8             cis4 d8 a'4. 4 aes8 |}
  \tag #'v2   {            d,8 4                cis4 d8 a'4. 4 aes8 |}
  g4 fis8 g4 gis8 a4. g4 gis8 |
}

melodyB = \relative {
  a'4 gis8 a4 ais8 b4. 8 a g | c4. r r2. % 179b
}

melodyC = \relative {
  a'4 gis8 a4 ais8 b4. 8 a g |
}

melodyD = \relative {
  c''4. r r r8 r g | a4 gis8 a4 ais8 b4. 8 a g | c4. r r r8 r g | % 179c
  a4 gis8 a4 ais8 b4. r | r2. r4. g8 a g | c4. r r2. |
}

melody = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \melodyA
    \alternative {
      \volta 1 { \melodyB }
      \volta 2 { \melodyC }
    }
  }
  \melodyD
  \bar "|."
}

melodySingle = {
  \global
  \keepWithTag #'v1 \melodyA
  \melodyB
  \keepWithTag #'v2 \melodyA
  \melodyC
  \melodyD
  \bar "|."
}

spokenOne = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \tiny
  \set stanza = "1."
  "A " "year ago last Thursday I was " "strolling in the zoo When I "
  "met a man who thought he knew the " "lot; "
  "He was " "laying down the law about the " "habits of baboons And the "
  "number of quills a Porcupine has " "got."
  "I " "asked him" "‘What's that creature there?’ He "
  "answered: ‘H'it's a H'elk.’ "
  "I " "might have gone on thinking that was " "true, "
  "If the " "animal in question hadn't " "put that chap to shame "
  "And remarked: " "“I h'aint a H'elk, "
}

spokenTwo = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \tiny 
  \set stanza = "2."
  "I had " "taken furnished lodgings down at " "Rustington-on-Sea, (Whence I "
  "travelled on to Ashton-under- " "Lyme) "
  "And the " "second night I stayed there I was " "wakened from a dream which I'll "
  "tell you all about some other " "time. " "A-" "mong the " "hunting trophies on the "
  "wall above my bed, " "Stuffed and " "mounted, was a face I thought I " "knew "
  "A " "Bison? An Okapi? could it " "be…  a Hartebeeste? " "Then I "
  "seemed to hear a voice: "
  
}

wordsCommon = \lyricmode {
  I’m a G -- nu, how do you do?
  You real -- ly ought to k -- now w -- ho’s w -- ho.
  I’m a G -- nu,
  Spelt G. N. U.,
}

wordsOne = \lyricmode {
  I’m a G -- nu. I’m a G -- nu, _ _ I’m a G -- nu,
  The g -- ni -- cest \nom work of \yesm g -- na -- ture in the zoo!
  \wordsCommon
  I’m g -- not a Ca -- mel or a Kan -- ga -- roo,
  So \nom let _ me \yesm in -- tro -- duce,
  I’m g -- nei -- ther Man or Moose
  Oh, g -- no, g -- no, g -- no, I’m a G -- nu!”
}

wordsTwo = \lyricmode {
  I’m a G -- nu.
  I’m a G -- nu, a g -- noth -- er G -- nu,
  _ I wish I could g -- nash my teeth at you!
  \repeat unfold 27 \skip 1
  Call me \nom Bi _ -- son or O -- ka -- _ pi and I’ll _ sue! \yesm
  \nom G -- nor am I _ \yesm in the least
  Like that dread -- ful Har -- te -- beast
  _ _
  \repeat unfold 9 \skip 1
  "-no," g -- no, g -- no, I’m a G -- nu!
  g -- no, g -- no, g -- no, I’m a G -- nu
  g -- no, g -- no, g -- no, I’m a G -- nu!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  I’m a G -- nu. I’m a G -- nu, I’m a G -- nu,
  The g -- ni -- cest work of g -- na -- ture in the zoo!
  \wordsCommon
  I’m g -- not a Ca -- mel or a Kan -- ga -- roo,
  So let me in -- tro -- duce,
  I’m g -- nei -- ther Man or Moose
  Oh, g -- no, g -- no, g -- no, I’m a G -- nu!”

  \set stanza = "2."
  I’m a G -- nu.
  I’m a G -- nu, a g -- noth -- er G -- nu,
  I wish I could g -- nash my teeth at you!
  I’m a G -- nu, how do you do?
  You real -- ly ought to k -- now w -- ho’s w -- ho.
  I’m a G -- nu,
  Spelt G. N. U.,
  Call me Bi -- son or O -- ka -- pi and I’ll sue!
  G -- nor am I in the least
  Like that dread -- ful Har -- te -- beast
  Oh, g -- no, g -- no, g -- no, I’m a G -- nu!
  g -- no, g -- no, g -- no, I’m a G -- nu
  g -- no, g -- no, g -- no, I’m a G -- nu!
}

midiWords = \lyricmode {
  \set stanza = "1."
  "\n[Sung] I’m " "a " G- "nu. " "I’m " "a " G- "nu, " "I’m " "a " G- "nu, "
  "\nThe " g- ni "cest " "work " "of " g- na "ture " "in " "the " "zoo! "
  "\nI’m " "a " G- "nu, " "how " "do " "you " "do? "
  "\nYou " real "ly " "ought " "to " k- "now " w- "ho’s " w- "ho. "
  "\nI’m " "a " G- "nu, "
  "\nSpelt " "G. " "N. " "U., "
  "\nI’m " g- "not " "a " Ca "mel " "or " "a " Kan ga "roo, "
  "\nSo " "let " "me " in tro "duce, "
  "\nI’m " g- nei "ther " "Man " "or " "Moose "
  "\nOh, " g- "no, " g- "no, " g- "no, " "I’m " "a " G- "nu!”\n"

  \set stanza = "2."
  "\n[Sung] I’m " "a " G- "nu. "
  "\nI’m " "a " G- "nu, " "a " g- noth "er " G- "nu, "
  "\nI " "wish " "I " "could " g- "nash " "my " "teeth " "at " "you! "
  "\nI’m " "a " G- "nu, " "how " "do " "you " "do? "
  "\nYou " real "ly " "ought " "to " k- "now " w- "ho’s " w- "ho. "
  "\nI’m " "a " G- "nu, "
  "\nSpelt " "G. " "N. " "U., "
  "\nCall " "me " Bi "son " "or " O ka "pi " "and " "I’ll " "sue! "
  "\nG-" "nor " "am " "I " "in " "the " "least "
  "\nLike " "that " dread "ful " Har te "beast "
  "\nOh, " g- "no, " g- "no, " g- "no, " "I’m " "a " G- "nu! "
  "\ng-" "no, " g- "no, " g- "no, " "I’m " "a " G- "nu "
  "\ng-" "no, " g- "no, " g- "no, " "I’m " "a " G- "nu! "
}

pianoRHone = \relative {
  \global
  \repeat volta 2 {
    <ees' g bes>4..(<aes' c>16 <g d>4..) <c, ees>16( |
    <bes d>4.. <aes' c>16 <g bes>4..) <bes, d>16( |
    <aes c>4.. <c aes'>16 <b g'>4..) g16 |
    \tuplet 3/2 {<ees aes>8 g f} <ees aes>8. c'16 <d, bes'>4 bes''-- |
    <ees,, g bes>4..(<aes' c>16 <g d>4.. <c, ees>16 | % 176b
    <bes d>4.. <aes' c>16 <g bes>4.. <bes, d>16) |
    <aes c>8. <g b>16 <aes c>8. <g b>16 <aes c>4 <aes bes d aes'> |
    <g bes ees g>2 <g' bes ees>4 r | % 177a
    \acciaccatura {f,16 fis} g4.. <f' aes>16 <ees g>4.. <d f>16|
    <g, ees'>8. f'16 <f, d'>8. ees'16 \vo c4..bes16 \ov |
    <c, f a>4-. <ees' g>-. <a, d f>-. <a c ees>-. | % 177b
    \vo f'2. \ov \ottava #1 bes'4 \ottava #0 |
    \vo ees,,4.. <aes c>16 <g bes>4.. <c, ees>16 |
    <bes des>4.. <aes' c>16 <g bes>4.. <bes, d>16 | % 177c
    \ov <aes c>8. <g b>16 <aes c>8. <g b>16 <b c>4 <g c g'> |
    <d aes c f>2 <f' aes c f> |
    <ees, f>2 <ees aes> | <ees g>4-. <d f g>-. <ees g ees'>2 | % 177d
    <bes d g bes> <aes c f aes> |
    <g bes d g>2.\fermata r4 \section \key c \major \time 12/8 | % 178a
    r8 r c e g b c4. r | e,8 g b c e fis \vo g4. r8 r g \ov |
    <e g a>4 r8 r4. r <a,, e' g>4 r8 | % 178b
    f''8 a, f g e a, <d f>4 r8 r4. | r8 r d f gis a d2. |
    f,8 a cis d f gis a4.~4 ais8 | <f g b>4 r8 r4. r <b,, d g>4 r8 | % 178c
    r8 c' e g e c f d a b a f |
    r8 c e g c dis e2. | e,8 g b d e fis \vo g4.~4 a8 \ov | % 178d
    <bes, d f bes>4. <d, f> <c e g> <c' e g> |
    a'8 c, a g e a, <b d>4. r | \vo d4. a'4 d,8 ees4. a4 ees8 \ov | % 179a
    <c e g>4 r8 <g d' g>4 gis'8 <cis, a'>4 r8 r4 <eis' gis>8 |
    \alternative {
      \volta 1 { <fis a>4 <eis gis>8 <fis a>4 <fis ais>8 <f b>4. r | % 178b
                 r8 r g <f g> a g <e c'>4. r |
               }
      \volta 2 { <fis a>4 <eis gis>8 <fis a>4 <fis ais>8 <f b>4 r8 r4. | }
    }
  }
  r8 c e fis g dis' e c g e c g | \vo r4. <c d> r <g b d> \ov | % 178c
  r8 c e fis g dis' e c g e c g |
  \vo r4. <c d> <f, g b d> \ov f'8 fis g | % 179c
  d'8 b g f d b g f d b g f | e4 r8 <f'' g> a g <e c'>4 r8 r4. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \vt
  \repeat volta 2 {
    s1*9 | s2 g'4 des |
    s1 | <aes' c ees>4 4 <f aes bes> s | r <ees aes> r <ees g bes> | % 177b+
    r4 <des f aes> r <ees g bes> | s1*2 | % 177c
    s1*3 |
    s1 | s1. | s2. r4. <c' e>4 r8 | % 178a
    s1.*3 |
    s1.*3 |
    s1. | s2. s4. <c e>4 a8 | s1. |
    s1. | a,4.~4 r8 a4.~4 r8 | s1. | % 179a
    \alternative {
      \volta 1 { s1. | s | }
      \volta 2 { s1. | }
    }
  }
  s1. | fis'2. f | s1. |
  fis2. s | s1. | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f | s1*3 | s1\mp | s1*2 |
    s1*12 | % 177
    s1 s1.*14 |
    \alternative {
      \volta 1 { s1.*2 }
      \volta 2 { s1.   }
    }
  }
  s2.\< s\> | s1.\! | s2.\< s\> | s1.\! | s1. | s |
}

pianoLHone = \relative {
  \global
  \repeat volta 2 {
    ees,4(<bes'' ees g>) bes,(q) |
    f4(<aes' bes d f>) bes,(q) |
    f4(<aes' c>) g,(<g' b d>) |
    <aes c>4 <f c'> <bes, f' aes> \clef treble bes''-- \clef bass |
    ees,,,4(<bes'' ees g>) bes,(q) | % 176b
    f4(<aes' bes d f>) bes,(q) |
    <f, c'>4 <aes' c f> bes, <bes' d f> |
    ees,4 <bes' g'> \clef treble <bes'' ees> r \clef bass | % 177a
    \grace s8 <d,,, d'>4 <g' b f'> <g, g'> <g' b f> |
    <c, g'>4 <d b'> <ees c'> <e bes'> |
    f,4 <a' c f> f, q | % 177b
    <bes, bes'>4 <f'' c'> <bes d> \clef treble bes' \clef bass |
    <bes,, aes'>4 des' <ees,, ees'> des'' |
    <bes, f' aes>4 bes' <ees,, bes'> <g' des'> | % 177c
    aes,4 <aes' ees'> <g, e'> <bes' c e> |
    <f, c'>4 <c' aes'> \clef treble <f' aes c>2 \clef bass |
    <aes, c>2 <f ces'> | <g c>4-.-- <g b>-.-- <c, g'>2 | <g d'> <aes f'> | % 177d
    <d f>2 <g,, g'>4\fermata r4 \section \key c \major \time 12/8 | % 178a
    <c c'>4 r8 <g'' c>4 r8 <g,, g'>4 r8 <g'' c e>4 r8 |
    <c,, c'>4 r8 <g'' c e>4 r8 <g,, g'>4 r8 <g'' c e>4 r8 |
    <c,, c'>4 r8 r4. r <cis cis'>4 r8 | % 178b
    <d d'>4 r8 <cis cis'>4 r8 <d d'>4 r8 r4. |
    q4 r8 <f' a d>4 r8 <a, f'>4 r8 <f' a d>4 r8 |
    <d, d'>4 r8 <f' a d>4 r8 <a, f'>4. <f' a d> | % 178c
    <g, g'>4 r8 r4. r <f f'>4 r8 | r4. <e e'>4 r8 <d d'>4 r8 g4 r8 |
    <c, c'>4 r8 <g'' c e>4 r8 <g, c e>4. <g' c e> | % 178d
    <c,, c'>4 r8 <g'' c e>4 r8 <g, c e>4. <g' c e> |
    <g, d' f>4. bes' <c, bes'> \clef treble bes'' \clef bass |
    <f,, c'>4 r8 <e cis'>4 r8 <d d'>4. r | % 179a
    <f d'>4.~4 r8 fis4.~4 r8 | g4 r8 bes4 r8 a4 r8 r4. |
    \alternative {
      \volta 1 { <d, d'>4 r8 <fis' c' d>4 r8 <g, g'>4. r | r q4 r8 <c, c'>4. r | } % 179b
      \volta 2 { <d d'>4 r8 <fis' c' d>4 r8 <g, g'>4 r8 r4. | }
    }
  }
  <c, c'>4 r8 <g'' c e>4 r8 <g,, g'>4. <g'' c e> | % 179c
  <d, d'>4. <fis' c'> g, <g' b> |
  <c,, c'>4 r8 <g'' c e>4 r8 <g,, g'>4. <g'' c e> |
  <d, d'>4. <fis' c'> <g, g'> r | % 179d
  R1. |
  r4. <g, g'> <c, c'>4 r8 r4. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \vt
  s1
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
          \new Staff \with {
%            \consists "Volta_engraver"
          }
          <<
          \new Dynamics \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \new NullVoice \spokenAligner
            \addlyrics \spokenOne
            \addlyrics \spokenTwo
          >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
            \new NullVoice \spokenAligner
            \addlyrics {\spokenOne \spokenTwo}
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
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
            \new NullVoice \spokenAligner
            \addlyrics {\spokenOne \spokenTwo}
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
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \melodySingle
            \addlyrics { \midiWords }
            \new NullVoice \spokenAligner
            \addlyrics {\spokenOne \spokenTwo}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
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
