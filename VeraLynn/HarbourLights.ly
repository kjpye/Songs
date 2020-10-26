\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Harbour Lights"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Hugh Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Jimmy Kennedy"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 2/2
  \tempo 2=46
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 2=46
  s1*2
  \tempo 2=43 s1-\markup \bold rall.
  s1
  \tempo 2=46
  s1-\markup \bold {a tempo}
  s1*6
  \tempo 2=43 % 31a+
  s1-\markup \bold rall.
  s4 \tempo 2=46 s2.^\markup \bold {a tempo}
  s1*16
  \repeat volta 2 { s1*14 }
  \alternative {{s1 s1} {s2. \tempo 2=43 s4-\markup \bold rall.  s1}}
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "30a" } s1*4
  \mark \markup { \box "30b" } s1*3
  \mark \markup { \box "30c" } s1*3
  \mark \markup { \box "31a" } s1*3
  \mark \markup { \box "31b" } s1*3
  \mark \markup { \box "31c" } s1*3
  \mark \markup { \box "31d" } s1*3
  \mark \markup { \box "32a" } s1*3
  \mark \markup { \box "32b" } s1*3
  \mark \markup { \box "32c" } s1
  \repeat volta 2 {
    \set Score.currentBarNumber = #30
    s1*2
    \mark \markup { \box "32d" } s1*3
    \mark \markup { \box "33a" } s1*3
    \mark \markup { \box "33b" } s1*3
    \mark \markup { \box "33c" } s1*3
  }
  \alternative {
    {
      \mark \markup { \box "33d" } s1*2
    }
    {
      \set Score.currentBarNymber = #46
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  bes2/d c:m/ees
  f2 ees/g
  c1:7
  f1
  bes2 c4:m f:7 % 30b
  bes2:maj7 ees
  bes2 c4:m f:7
  bes4:maj7 bes aes2:7 % 30c
  bes4:maj7 bes c:m f:7
  bes2 c4:m f:7
  g2:m c:7 % 31a
  f2:7sus4 fis:7
  f4:7 bes2.
  f1:7 % 31b
  s1
  bes2:dim bes
  s1 % 31c
  f2:6 c:m
  f2:7 ees4:6 f:7
  bes1 % 31d
  d1
  f1:7
  s1 % 32a
  bes2:dim bes
  s1
  f2:6 c:m % 32b
  f2:7 ees4:6 f:7
  bes1
  s2 f4:7 bes:7 % 32c
  \repeat volta 2 {
    ees1
    ees1:m6
    bes1 % 32d
    s1
    c1:7
    s2 c:7.5- % 33a
    f2:7 c:m7/f
    f4:7 bes2.
    f1:7 % 33b
    s1
    bes2:dim bes
    s1 % 33c
    f2:6 c:m
    f2:7 ees4:6 f:7
  }
  \alternative {
    {
      bes2 bes2:dim % 33d
      f4:7 bes2.
    }
    {
      bes2 ees:m6
      bes1
    }
  }
}

melody = \relative {
  \global
  R1*3
  r2 r4 r8 d'
  f8. d16 c8. bes16 c4. d8 % 30b
  f8 f4 d8 g g4 d8
  f8. d16 c8. bes16 c4. c8
  d8 d4 bes8 c c4 c8 % 30c
  d8. d16 bes8. bes16 c4. c8
  d8 d f f c2
  r8 bes c bes d d4 d8 % 31a
  g4 g fis fis
  f8 r bes,4 d f \bar "||"
  a4. a8 g2 % 31b
  r8 g fis g a8. g16 a8. g16
  e2 f
  r4 f, bes d % 31c
  f4. f8 ees2
  r8 ees d ees g4 f
  d1 % 31d
  r4 bes d f
  a4. a8 g2
  r8 g fis g a8. g16 a8. g16 % 32a
  e2 f
  r4 f, bes d
  f4. f8 ees2 % 32b
  r8 ees d ees g4 a,
  bes1~
  bes4 bes c d % 32c
  \repeat volta 2 {
    f4.^\markup \italic {2nd time tacet} ees8 f,4 bes
    f'4 ees bes c
    d1~ % 32d
    d4 g, a bes
    d4. c8 c4 bes
    g'4 d c4. bes8 % 33a
    c1~
    c8 r bes4^\markup \italic {(vocals both times)} d f \bar "||"
    a4. a8 g2 % 33b
    r8 g fis f a8. g16 a8. g16
    e2 f
    r4 f, bes d % 33c
    f4. f8 ees2
    r8 ees d ees g4 a,
  }
  \alternative {
    {
      bes1~
      bes8 r r2.
    }
    {
      bes1~
      bes4 r r2
    }
  }
  \bar "|."
}

melodySingle = \relative {
  \global
  R1*3
  r2 r4 r8 d'
  f8. d16 c8. bes16 c4. d8 % 30b
  f8 f4 d8 g g4 d8
  f8. d16 c8. bes16 c4. c8
  d8 d4 bes8 c c4 c8 % 30c
  d8. d16 bes8. bes16 c4. c8
  d8 d f f c2
  r8 bes c bes d d4 d8 % 31a
  g4 g fis fis
  f8 r bes,4 d f \bar "||"
  a4. a8 g2 % 31b
  r8 g fis g a8. g16 a8. g16
  e2 f
  r4 f, bes d % 31c
  f4. f8 ees2
  r8 ees d ees g4 f
  d1 % 31d
  r4 bes d f
  a4. a8 g2
  r8 g fis g a8. g16 a8. g16 % 32a
  e2 f
  r4 f, bes d
  f4. f8 ees2 % 32b
  r8 ees d ees g4 a,
  bes1~
  bes4 bes c d % 32c
  f4.^\markup \italic {2nd time tacet} ees8 f,4 bes
  f'4 ees bes c
  d1~ % 32d
  d4 g, a bes
  d4. c8 c4 bes
  g'4 d c4. bes8 % 33a
  c1~
  c8 r bes4^\markup \italic {(vocals both times)} d f \bar "||"
  a4. a8 g2 % 33b
  r8 g fis f a8. g16 a8. g16
  e2 f
  r4 f, bes d % 33c
  f4. f8 ees2
  r8 ees d ees g4 a,
  bes1~
  bes8 r r2.

  R1*7
  r4 bes4 d f \bar "||"
  a4. a8 g2 % 33b
  r8 g fis f a8. g16 a8. g16
  e2 f
  r4 f, bes d % 33c
  f4. f8 ees2
  r8 ees d ees g4 a,
  bes1~
  bes4 r r2
  \bar "|."
}

wordsOne = \lyricmode {
  One eve -- ning long a -- go,
  a big ship was leav -- ing,
  one eve -- ning long a -- go,
  two lov -- ers were griev -- ing,
  a crim -- son sun went down,
  the lights be -- gan to glow,
  a -- crosss the har -- bour
  one eve -- ning long a -- go.
  I saw the har -- bour lights,
  they on -- ly told me we were part -- ing,
  the same old har -- bour lights,
  that once brought you to me.
  I watched the har -- bour lights,
  how could I help if tears were start -- ing?
  Good -- bye to ten -- der nights,
  be -- side the sil -- v'ry sea. __
  Ι longed to hold you near
  and kiss you just once more __
  but you were on the ship
  and I was on the shore. __

  Now I know lone -- ly nights,
  for all the while my heart is whis -- p'ring,
  some oth -- er har -- bour lights
  will steal your love from me. __
  me. __
}

wordsSingle = \lyricmode {
  One eve -- ning long a -- go,
  a big ship was leav -- ing,
  one eve -- ning long a -- go,
  two lov -- ers were griev -- ing,
  a crim -- son sun went down,
  the lights be -- gan to glow,
  a -- crosss the har -- bour
  one eve -- ning long a -- go.
  I saw the har -- bour lights,
  they on -- ly told me we were part -- ing,
  the same old har -- bour lights,
  that once brought you to me.
  I watched the har -- bour lights,
  how could I help if tears were start -- ing?
  Good -- bye to ten -- der nights,
  be -- side the sil -- v'ry sea. __
  Ι longed to hold you near
  and kiss you just once more __
  but you were on the ship
  and I was on the shore. __

  Now I know lone -- ly nights,
  for all the while my heart is whis -- p'ring,
  some oth -- er har -- bour lights
  will steal your love from me. __

  Now I know lone -- ly nights,
  for all the while my heart is whis -- p'ring,
  some oth -- er har -- bour lights
  will steal your love from me. __
}

midiWords = \lyricmode {
  "\nOne " eve "ning " "long " a "go, "
  "\na " "big " "ship " "was " leav "ing, "
  "\none " eve "ning " "long " a "go, "
  "\ntwo " lov "ers " "were " griev "ing, "
  "\na " crim "son " "sun " "went " "down, "
  "\nthe " "lights " be "gan " "to " "glow, "
  "\na" "crosss " "the " har "bour "
  "\none " eve "ning " "long " a "go. "
  "\nI " "saw " "the " har "bour " "lights, "
  "\nthey " on "ly " "told " "me " "we " "were " part "ing, "
  "\nthe " "same " "old " har "bour " "lights, "
  "\nthat " "once " "brought " "you " "to " "me. "
  "\nI " "watched " "the " har "bour " "lights, "
  "\nhow " "could " "I " "help " "if " "tears " "were " start "ing? "
  "\nGood" "bye " "to " ten "der " "nights, "
  "\nbe" "side " "the " sil "v'ry " "sea. " 
  "\nΙ " "longed " "to " "hold " "you " "near "
  "\nand " "kiss " "you " "just " "once " "more " 
  "\nbut " "you " "were " "on " "the " "ship "
  "\nand " "I " "was " "on " "the " "shore. " 

  "\nNow " "I " "know " lone "ly " "nights, "
  "\nfor " "all " "the " "while " "my " "heart " "is " whis "p'ring, "
  "\nsome " oth "er " har "bour " "lights "
  "\nwill " "steal " "your " "love " "from " "me. " 

  "\nNow " "I " "know " lone "ly " "nights, "
  "\nfor " "all " "the " "while " "my " "heart " "is " whis "p'ring, "
  "\nsome " oth "er " har "bour " "lights "
  "\nwill " "steal " "your " "love " "from " "me. " 
}

pianoRH = \relative {
  \global
  s1
  s1
  s2 <e bes' c>4 <bes e g>
  s2. s8 d'
  s1*6 % 30b
  r8 <g, bes> <a c> <g bes> s2 % 31a
  s1
  <a c f>8 r <f a bes>4 <f bes d> <bes d f> \bar "||"
  s2 <ees g>4 <d' f>8 <cis e> % 31b
  <c ees>8 <ees, g> <d fis> <ees g> <f a>8. <ees g>16 <f a>8. <ees g>16
  <g, cis e>2 <bes d f>4. <cis' e>8
  <d f>4 f,, <d f bes> <f bes d> % 31c
  <a d f>4. q8 <g c ees>4 <a' f'>8 <gis e'>
  <g ees'>8 <a, ees'> <gis d'> <a ees'> <bes c g'>4 <a c f>
  <f bes d>4. <cis'' e>8 <d f>4. <a cis>8 % 31d
  <bes d>4 <d,, f bes> <f bes d> <bes d f>
  s2 <ees g>4 <d' f>8 <cis e>
  <c f>8 <ees, g> <d fis> <ees g> <f a>8. <ees g>16 <f a>8. <ees g>16 % 32a
  <g, cis f>2 <bes d f>4. <cis' e>8
  <d f>4 f,, <d f bes> <f bes d>
  <a d f>4. q8 <g c ees>4 <a' f'>8 <gis e'> % 32b
  <g ees'>8 <a, ees'> <gis d'> <a ees'> <bes c g'>4 <ees a>
  <d f bes>4. <a' cis>8 <bes d>4. <cis, a'>8
  <d bes'>4 bes <a c> <aes d> % 32c
  \repeat volta 2 {
    s2 g4 <g bes>
    s1
    s1 % 32d
    s4 <d f g>4 <d f a> <d f bes>
    s1
    s1 % 33a
    <ees a c>4 r s2
    <ees a c>8 r <d f bes>4 <f bes d> <bes d f> \bar "||"
    s2 <ees g>4 <d' f>8 <cis e> % 33b
    <c ees>8 <ees, g> <d fis> <ees g> <f a>8. <ees g>16 <f a>8. <ees g>16
    <g, cis e>2 <bes d f>4. <cis' e>8
    <d f>4 f,, <d f bes> <f bes d> % 33c
    <a d f>4. q8 <g c ees>4 <a' f'>8 <gis e'>
    <a ees'>8 <a, ees'> <gis d'>  <a ees'> <bes c g'>4 <ees, a>
  }
  \alternative {
    {
      s1 % 33d
      <a ees' f>8 r <d, f bes>4 <f bes d> <bes d f>
    }
    {
      s1
      <f' bes d f>2. r4
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  f'8 d c bes c d ees g
  a8 f e d ees f g bes
  a8 g c4 s2
  f,2~4 \teeny <f' f'>8\arpeggio \normalsize s
  f,8. d16 c8. bes16 c4. d8 % 30b
  f8 f4 d8 g g4 d8
  f8. d16 c8. bes16 c4. c8
  d8 d4 bes8 c c4 c8 % 30c
  d8. d16 bes8. bes16 c4. c8
  d8 <c d> <bes f'> <a f'> g4 a
  s2 d8 d4 d8 % 31a
  g4 g fis fis
  s1 \bar "||"
  <f a>4. q8 s2 % 31b
  s1
  s1
  s1 % 31c
  s1
  s1
  s1 % 31d
  s1
  <f a>4. q8 s2
  s1*3 % 32a
  s1*3 % 32b
  s1 % 32c
  \repeat volta 2 {
    f4. ees8 s2
    f4 ees bes c
    <bes d>1~ % 32d
    q4 s2.
    <bes d>4. <a c>8 q4 <g bes>
    <d' g>4 <bes d> <bes c>4. bes8 % 33a
    s2 bes'8 g ees d
    s1
    <f a>4. q8 s2 % 33b
    s1
    s1
    s1*3 % 33c
  }
  \alternative {
    {
      bes,4 a'8 c g bes fis4
      s1
    }
    {
      bes,2 <ges' bes>8 <ees ges> <f aes> <ges bes>
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  r4 f4 g2
  r4 a4 bes2
  <bes d e>4 r s2
  <g d'>4 <gis cis> <a c> r8 s
  r4 f g a % 30b
  <f a>2 <g bes>
  r4 f4 g a
  d,2 <c ges'> % 30c
  <d a'>4 g g a
  f2 <ees c'>
  s2 bes' % 31a
  <bes c>2 <ais cis>
  s1
  a2 s % 31b
  s1
  s1
  s1*3 % 31c
  s1 % 31d
  s1
  a2 s
  s1*3 % 32a
  s1*3 % 32b
  s1 % 32c
  \repeat volta 2 {
    <g bes>2 s
    <ges bes>2 q
    f4. a8 g4. ges8 % 32d
    f4 s2.
    e1
    bes'4 e, e2 % 33a
    s2 <c' ees>4 <g bes>
    s1
    a2 s % 33b
    s1
    s1
    s1*3 % 33c
  }
  \alternative {
    {
      <d, f>4 <bes' f'> <bes e>2 % 33d
      s1
    }
    {
      <d, f>4 q c'2
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*3
}

pianoLH = \relative {
  \global
  \oneVoice
  s1*3
  s2. r4
  bes,,4 d ees f % 30b
  bes,4 f' ees bes'
  bes,4 d ees f
  <bes, f'>2 ees4 aes, % 30c
  s2 ees'4 f
  bes,4 d ees f
  \acciaccatura fis8 g8 g' fis f e4 c, % 31a
  s1
  s8 r r4 r2 \bar "||"
  s2 r4 <f ees'> % 31b
  f'2 c4 f,
  bes,4 f' d' f,
  bes,4 r r2 % 31c
  s1
  s1
  bes4 f' d' f, % 31d
  bes,4 r r2
  s2 r4 <f' ees'>
  f'2 c4 f, % 32a
  bes,4 f' d' f,
  bes,4 r r2
  s1 % 32b
  s1
  bes4 f' d' f,
  bes4 r r2 % 32c
  \repeat volta 2 {
    s1
    s1
    bes,4 f' d' f, % 32d
    bes,4 bes' a g
    s1
    s1 % 33a
    s1
    s8 r r4 r2 \bar "||"
    s2 r4 <c, ees'> % 33b
    f'2 c4 f,
    bes,4 f' d' f,
    bes,4 r r2 % 33c
    s1
    s1
  }
  \alternative {
    {
      <bes bes'>4 d' des2
      c8 r r4 r2
    }
    {
      <bes, bes'>2 <ees bes'>
      s2. r4
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  r4 bes, c2
  r4 d ees2
  c1
  ees2. s4
  s1*3 % 30b
  s1 % 30c
  r4 f, s2
  s1
  s1 % 31a
  ees'2 e
  e8 s s2.
  r4 e s2 % 31b
  s1
  s1
  s1 % 31c
  r4 d ees2
  r8 s s2.
  s1 % 31d
  s1
  r4 d s2
  s1 % 32a
  s1
  s1
  r4 d ees2 % 32b
  r8 c b c ees4 f,
  s1
  s1 % 32c
  \repeat volta 2 {
    r4 bes ees d
    c2 d4 c
    s1 % 32d
    s1
    r4 g a bes
    e4 g, ges2 % 33a
    f,4 r g'' c,
    s1
    r4 ees s2 % 33b
    s1
    s1
    s1 % 33c
    r4 d ees2
    r8 c b c ees4 f,
  }
  \alternative {
    {
      s1 % 33d
      s1
    }
    {
      s1
      r4 a'8 c g4 s
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  d,2 ees
  f2 g
  c,1
  f2. s4
  s1*3 % 30b
  s1 % 30c
  bes,2 s
  s1
  s1 % 31a
  f'1~
  f8 s s2. \bar "||"
  c2 s % 31b
  s1
  s1
  s1 % 31c
  f2. c4
  f1
  s1 % 31d
  s1
  c2 s
  s1*3 % 32a
  f2. c4 % 32b
  f2. f4
  s1
  s1 % 32c
  \repeat volta 2 {
    ees1~
    ees1
    s1 % 32d
    s1
    c1~
    c2. c4 % 33a
    s4 f2.~
    f8 s s2. \bar "||"
    c2 s % 33b
    s1
    s1
    s1 % 33c
    f2. c4
    f2. f4
  }
  \alternative {
    {
      s1 % 33d
      s1
    }
    {
      s1
      bes2. s4
    }
  }
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
          \new Staff
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  #(define output-suffix "single")
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
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice = "melody" \melodySingle
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
