\version "2.25.9"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Over the Rainbow"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harold Arlen"
  arranger    = "Arr. Audrey Snyder"
%  opus        = "opus"

  poet        = "E. Y. Harburg"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key d \major
  \time 4/4
  \partial 8
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

TempoTrack = {
  \tempo "Freely" 4=72
  s8
  \set Score.tempoHideNote = ##t
  s1*3
  s4 \tempo 4=68 s2. \tempo 4=72 % 3b
  s1*14
  s2 \tempo 4=68 s
  s1 \tempo 4=72
  \repeat volta 2 {
    s1*7
    \tempo 4=68 s1 \tempo 4=72 % 6a
    s1*7
  }
  \alternative {{s1}{s1}}
  s1*3
  s2. \tempo 4=66 s4 % 7b
  s1*3
  \tempo 4=62 s1
  s1
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "3a" } s8 s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*2
  \repeat volta 2 {
    s1
    \mark \markup { \circle "5b" } s1*3
    \mark \markup { \circle "5c" } s1*3
    \mark \markup { \circle "6a" } s1*3
    \mark \markup { \circle "6b" } s1*3
    \mark \markup { \circle "6c" } s1*2
  }
  \alternative {{s1}{s1}}
  \mark \markup { \circle "7a" } s1*3
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*4
}

ChordTrack = \chordmode {
  s8
  s1
  s1
  d1:6
  e2:m7 a:7 % 3b
  d2 b:m
  fis4:m fis4:m7+ fis:m7 d:9
  g2 a:7 % 3c
  fis4:m7 d fis:m aes:7
  g2 g:m6/c
  d2 b:7.9- % 4a
  e2:7 e4:m/a
  a:7
  d2 e4:m g:m/a
  d2 b:m % 4b
  fis4:m fis:m7+ fis:m7 d:9
  g2 a:7
  fis2:m b4:m aes:7 % 4c
  g2 g:m6/c
  d2 b:7.9-
  e2:7 e4:m/a a:7 % 5a
  d1
  \repeat volta 2 {
    d1
    e2.:m7/d e4:m7/a % 5b
    d2. d4/a
    a4 g/a fis:m/a a:7
    d1 % 5c
    b1 %%% FIX
    e2:m6 b %%% FIX
    e2:m7 a:9.5 % 6a
    d2 b:m
    fis2:m fis4:m7 d:9
    g2 a:7 % 6b
    fis2:m7 b4:m aes:7
    g2 g:m6/c
    d2 b:7.9- % 6c
    e2:7 e4:m/a a:7
  }
  \alternative {
    {
      d1
    }
    {
      d1
    }
  }
  r1 % 7a
  s1
  b2.:m/d b4:m/a
  a1 % 7b
  d1
  e1:m7/d %%% -\markup "(let ring)"
  e2:m7 fis:m % 7c
  g2 a:7
  d1
  s
}

partIjoint = \relative {
  \global
  r8
  R1*4
  d'2\omit\mp^\markup \bold \italic {\dynamic mp a tempo} d' % 3b+
  cis4 a8 b cis4 d
  d,2 b' % 3c
  a2. r4
  b,2 g'
  fis4 d8 e fis4 g % 4a
  e4 cis8 d e4 fis
  d2 r
  d2^\mf d' % 4b
  cis4 a8 b cis4 d
  d,2 b'
  a2. r4 % 4c
  b,2 g'
  fis4 d8 e fis4 g \break
}

emptysingle = {
  \global
  s8
  s1*18
}

partIsingle = \relative {
  e'4 cis8 d e4^\markup \italic rit. fis % 5a
  d2. r8 a'^\mp
  \repeat volta 2 {
    fis8^\markup \italic "a tempo" a fis a fis a fis a
    g8 a g a g a g a % 5b
    b2 b
    r2 r4 r8 a
    fis8 a fis a fis a fis a % 5c
    gis^\cresc b gis b gis b gis b
    cis2 cis
    e2^\f^\>^\markup \italic rit. b % 6a
    d,2^\mf^\markup \italic "a tempo"
    d'
    cis4 a8 b cis4 d
    d,2 b' % 6b
    a2. r4
    b,2 g'
    fis4 d8 e fis4 g % 6c
    e4 cis8 d e4 fis
  }
  \alternative {
    {
      d2. r8 a'
    }
    {
      d,2. r4
    }
  }
  R1 % 7a
  R1
  R1
  r2 r4 r8 a'^\mp^\markup \italic rit. % 7b
  fis8^\markup \upright "A little slower" a fis a fis a fis a
  g8 a g4 a2
  g2 a % 7c
  b2^\markup \italic rit. cis
  d1~
  d2. r4
}

wordsJoint = \lyricmode {
  Some -- where o -- ver the rain -- bow way up high.
  There's a land that I heard of once in a lull -- a -- by,
  Some -- where o -- ver the rain -- bow skies are blue,
  And the dreams that you dare to
}

wordsI = \lyricmode {
  dream real -- ly do come true.
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind me.
  Where trou -- bles melt like lem -- on drops,
  a -- way a -- bove the chim -- ney tops,
  that's where you'll find me.
  Some -- where o -- ver the rain -- bow blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  Some I?
  If hap -- py lit -- tle blue -- birds fly be -- yond the rain -- bow,
  why, oh why, can't I? __
}

wordsIsingle = \lyricmode {
  Some -- where o -- ver the rain -- bow way up high.
  There's a land that I heard of once in a lull -- a -- by,
  Some -- where o -- ver the rain -- bow skies are blue,
  And the dreams that you dare to
  dream real -- ly do come true.
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind me.
  Where trou -- bles melt like lem -- on drops,
  a -- way a -- bove the chim -- ney tops,
  that's where you'll find me.
  Some -- where o -- ver the rain -- bow blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind me.
  Where trou -- bles melt like lem -- on drops,
  a -- way a -- bove the chim -- ney tops,
  that's where you'll find me.
  Some -- where o -- ver the rain -- bow blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  If hap -- py lit -- tle blue -- birds fly be -- yond the rain -- bow,
  why, oh why, can't I? __
}

wordsImidi = \lyricmode {
  "Some" "where " o "ver " "the " rain "bow " "way " "up " "high. "
  "\nThere's " "a " "land " "that " "I " "heard " "of " "once " "in " "a " lull a "by, "
  "\nSome" "where " o "ver " "the " rain "bow " "skies " "are " "blue, "
  "\nAnd " "the " "dreams " "that " "you " "dare " "to "
  "\ndream " real "ly " "do " "come " "true. "
  "\nSome" "day " "I'll " "wish " up "on " "a " "star " "and "
  "\nwake " "up " "where " "the " "clouds " "are " "far " be "hind " "me. "
  "\nWhere " trou "bles " "melt " "like " lem "on " "drops, "
  "\na" "way " a "bove " "the " chim "ney " "tops, "
  "\nthat's " "where " "you'll " "find " "me. "
  "\nSome" "where " o "ver " "the " rain "bow " blue "birds " "fly, "
  "\nBirds " "fly " o "ver " "the " rain "bow, "
  "\nwhy " "then, " "oh " "why " "can't " "I? "
  "\nSome" "day " "I'll " "wish " up "on " "a " "star " "and "
  "\nwake " "up " "where " "the " "clouds " "are " "far " be "hind " "me. "
  "\nWhere " trou "bles " "melt " "like " lem "on " "drops, "
  "\na" "way " a "bove " "the " chim "ney " "tops, "
  "\nthat's " "where " "you'll " "find " "me. "
  "\nSome" "where " o "ver " "the " rain "bow " blue "birds " "fly, "
  "\nBirds " "fly " o "ver " "the " rain "bow, "
  "\nwhy " "then, " "oh " "why " "can't " "I? "
  "\nIf " hap "py " lit "tle " blue "birds " "fly " be "yond " "the " rain "bow, "
  "\nwhy, " "oh " "why, " "can't " "I? " 
}

partIIjoint = \relative {
  \global
  r8
  R1*4
  d'2\mp b' % 3b+
  a4 a8 b a4 e
  d2 b' % 3c
  a2. r4
  b,2 g'
  fis4 d8 e fis4 g % 4a
  e4 cis8 d e4 fis
  d2 r
  d2\mf b' % 4b
  a4 a8 b a4 e
  d2 b'
  a2. r4 % 4c
  b,2 g'
  fis4 d8 e fis4 g \break
}

partIIsingle = \relative {
  e'4 cis8 d e4 fis % 5a
  d2. r8 a'^\mp
  \repeat volta 2 {
    fis8 a fis a fis e d cis
    b8 cis b cis b cis b cis % 5b
    d4(e) fis2
    R1
    r2 r4 r8 a^\mp % 5c
    gis4\cresc a b4. b8
    <b cis>2 <gis cis>
    b2^\f^\> b % 6a
    <b d>4\mp(cis b a8 g
    fis2 e4 d)
    d2 e % 6b
    fis2. r4
    b,4^\mf(cis) d(e)
    fis4 d8 d c4 c % 6c
    b4 b8 b b4 cis
  }
  \alternative {
    {
      d2. r8 a'
    }
    {
      d,2. r4
    }
  }
  R1 % 7a
  R1
  R1
  r2 r4 r8 a'^\mp % 7b
  fis8 a fis a fis e d cis
  b8 cis b4 cis2
  b2 cis % 7c
  d2 e
  fis1~
  fis2. r4
  \bar "|."
}

wordsII = \lyricmode {
  dream real -- ly do come true.
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind __ me.

  A -- way a -- bove,
  that's where you'll find me.
  Oo __
  blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  Some I?
  If hap -- py lit -- tle blue -- birds fly be -- yond the rain -- bow,
  why, oh why, can't I? __
}

wordsIIsingle = \lyricmode {
  Some -- where o -- ver the rain -- bow way up high.
  There's a land that I heard of once in a lull -- a -- by,
  Some -- where o -- ver the rain -- bow skies are blue,
  And the dreams that you dare to
  dream real -- ly do come true.
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind __ me.

  A -- way a -- bove,
  that's where you'll find me.
  Oo __
  blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind __ me.

  A -- way a -- bove,
  that's where you'll find me.
  Oo __
  blue -- birds fly,
  Birds fly o -- ver the rain -- bow,
  why then, oh why can't I?
  If hap -- py lit -- tle blue -- birds fly be -- yond the rain -- bow,
  why, oh why, can't I? __
}

wordsIImidi = \lyricmode {
  "Some" "where " o "ver " "the " rain "bow " "way " "up " "high. "
  "\nThere's " "a " "land " "that " "I " "heard " "of " "once " "in " "a " lull a "by, "
  "\nSome" "where " o "ver " "the " rain "bow " "skies " "are " "blue, "
  "\nAnd " "the " "dreams " "that " "you " "dare " "to "
  "\ndream " real "ly " "do " "come " "true. "
  "\nSome" "day " "I'll " "wish " up "on " "a " "star " "and "
  "\nwake " "up " "where " "the " "clouds " "are " "far " be "hind "  "me. "

  "\nA" "way " a "bove, "
  "\nthat's " "where " "you'll " "find " "me. "
  "\nOo " 
  "\nblue" "birds " "fly, "
  "\nBirds " "fly " o "ver " "the " rain "bow, "
  "\nwhy " "then, " "oh " "why " "can't " "I? "
  "\nSome" "day " "I'll " "wish " up "on " "a " "star " "and "
  "\nwake " "up " "where " "the " "clouds " "are " "far " be "hind "  "me. "

  "\nA" "way " a "bove, "
  "\nthat's " "where " "you'll " "find " "me. "
  "\nOo " 
  "\nblue" "birds " "fly, "
  "\nBirds " "fly " o "ver " "the " rain "bow, "
  "\nwhy " "then, " "oh " "why " "can't " "I? "
  "\nIf " hap "py " lit "tle " blue "birds " "fly " be "yond " "the " rain "bow, "
  "\nwhy, " "oh " "why, " "can't " "I? " 
}

pianoRH = \relative {
  \global
  a''8\omit\mp
  fis8 a fis a fis a fis a
  g8 a g a g a g a
  <d, fis b>2 q
  <g, b e>4\arpeggio b <cis, a'>2 % 3b
  <a d>2 <fis' b d>
  <fis a cis>4 <f a>8 b <e, a cis>4 <e a d>
  d4 <g b> <cis, b'> e % 3c
  s1
  <g, b>4 b8 cis s2
  <a d fis>2 s % 4a
  <gis b e>2 <g b e>4 <a cis fis>
  <a d>2 <g b>8 cis <bes d> e
  d4 fis,8 a <fis' d'>2 % 4b
  <fis a cis>4 <f a>8 b <e, a cis>4 <e a d>
  <b d>4. r8 s2
  <cis fis a>4 cis8\omit\< e d cis c4 % 4c
  <g b>4\omit\mf cis8 d <bes d e> fis' g4
  <a, d fis>2 s
  <gis b e>2 <g b e>4 <a cis fis> % 5a
  s1\omit\mp
  \repeat volta 2 {
    <d' e fis a>4\arpeggio q\arpeggio q\arpeggio q\arpeggio
    <d e g b>4\arpeggio q\arpeggio q\arpeggio q\arpeggio % 5b
    <d e fis a>4\arpeggio q\arpeggio q\arpeggio q\arpeggio
    a'8 cis, <b g'>4 <a fis'> s
    <d, e fis a>4\arpeggio q\arpeggio q\arpeggio q\arpeggio % 5c
    <d f gis b>4\omit\cresc\arpeggio q\arpeggio q\arpeggio q\arpeggio
    <e g b cis>2 <f gis c>
    <g b e>2\omit\f\omit\> <cis, f b> % 6a
    d4\omit\mf fis,8 a <fis' d'>2
    <fis a cis>2 <e a cis>4 <e a d>
    <b d>4. r8 s2 % 6b
    <cis fis a>4 cis8 e d cis c4
    <g b>4 cis8 d <bes d e> fis' g4
    <a, d fis>2 s % 6c
    <gis b e>2 <g b e>4 <a cis fis>
  }
    \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  fis''8 a fis a fis a fis a % 7a
  g8 a g a g a g a
  <d, fis b>2 q
  b,4 cis8 d e fis g a % 7b
  <d, e fis a>4\arpeggio q\arpeggio q\arpeggio q\arpeggio
  <d e g b>2.\arpeggio <a' a'>4
  g8 b, d g a cis, fis a % 7c
  b8 d, g b cis e, g cis
  s1
  <fis a d>2.\arpeggio r4
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s8\omit\mp
  s1*7
  <a a'>2. c4 % 3c+
  s2 d4 e
  s2 fis4 g % 4a
  s1*4
  s2 b2\omit\< % 4b++
  s1\omit\mf % 4c
  s1
  s2 fis4 g
  s1 % 5a
  r8\omit\mp a' fis a fis a fis a
  \repeat volta 2 {
    s1*3
    s2. e4 % 5b++
    s1*6
    s2 b\omit\mf % 6b
    s1
    s1
    s2 fis4\omit\p g
    s1
  }
  \alternative {
    {
      r2 fis8 a d a
    }
    {
      r2 fis8 a d a
    }
  }
  s1*8
  r8 a' fis a fis a fis a % 7c++
  s1
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s8\omit\mp
  s1*7
  e'4 d cis s % 3c+
  s2 bes
  d2 <c dis>2 % 4a
  s1*4
  s2 cis4\omit\mf e % 4b++
  s1 % 4c
  s1
  s2 <c dis>
  s1 % 5a
  <a d>1\omit\mp
  \repeat volta 2 {
    s1*3
    s2. g'8\omit\mf a % 5b++
    s1*6
    s2 cis4\omit\mp e % 6b
    s1
    s1
    s2 <c dis> % 6c
    s1
  }
  \alternative {
    {
      <a d>1\omit\mp
    }
    {
      <a d>1
    }
  }
  s1*8
  <fis a d>1\omit\p
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \global
  s8\mp
  s1*3
  s4 s2.-\markup \italic rit.
  s1-\markup \italic "a tempo"
  s1*6
  s2 s\< % 4a++
  s1\mf % 4b
  s1*5
  s2 s-\markup \italic rit. % 5a
  s1\mp
  \repeat volta 2 {
    s1-\markup \italic "a tempo"
    s1*4
    s1\cresc % 5c+
    s1
    s1\omit\f-\markup \italic {\dynamic f rit.}\> % 6a
    s1\omit\mf-\markup \italic {\dynamic mf a tempo}
    s1*6
  }
  \alternative {{s1\>}{s1\>}}
  s1\mp % 7a
  s1
  s1
  s2. s4-\markup \italic rit. % 7b
  s1
  s1
  s1 % 7c
  s1-\markup \italic rit.
  s1\p
  s1
}

pianoLH = \relative {
  \global
  \oneVoice
  \clef treble
  r8\omit\mp
  d'4 a'8 d a d a4
  d,4 b'8 d b d a,4 \clef bass
  d,4 a' e' fis
  <d e>2 s % 3b
  <d, fis>4 cis b b'
  <fis cis'>2. <d c'>4
  <g, d'>2 <a g'> % 3c
  <fis fis'>2. <es ges'>4
  <g d'>2 <c, c'>
  d4 d'8 cis <b a'>2 % 4a
  <e, d'>2 s
  <d' fis>2 e,4\omit\< <a g'>
  d,8\omit\mf a' d4 b8 fis' cis' b % 4b
  fis,8 cis' a' gis fis e <d c'>4
  g,8 d' a' b <a, g'>2
  fis8 cis' fis4 <b, fis'> <aes aes'> % 4c
  g8 d' g4 c,,8 g' e'4
  d4 cis <b a'>2
  <a d'>2 s % 5a
  s1\omit\mp
  \repeat volta 2 {
    <d' a'>4 q2 q4
    <d b'>4 q2 a'4 % 5b
    <d, a'>4 q2 a4 \clef bass
    a,8 e' a b cis2
    <d, a'>4 q2 d,4 % 5c
    f8\omit\cresc d' f gis b2
    e,4 e, b'8 f' gis b
    <e, d'>4\omit\f\omit\> b' <a, g'>2 % 6a
    d,8\omit\mf a' d4 b8 fis' cis' b
    fis,8 cis' a' g fis e <d c'>4
    g,8 d' a' b <a, a'>2 % 6b
    fis8 cis' fis4 <b, fis'> <aes ges'>
    g8 d' g4 c,,8 g' e'4
    d4 cis <b a'>2 % 6c
    <e, d'>2 s
  }
  \alternative {
    {
      s1\omit\> \clef treble
    }
    {
      \clef bass s1\omit\> \clef treble
    }
  }
  d''4\omit\mp a'8 d a d a4 % 7a
  d,4 b'8 d b d b4
  d,4 a' b a, \clef bass
  a,8 e' b'4 a b8 cis % 7b
  <d, a'>2. q4
  <d b'>2. a'4
  e, 8 b' e4 fis,8 cis' fis4 % 7c
  g,8 d' g4
  a,8 e' a4
  s1\omit\p
  <d a' d>2.\arpeggio r4
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s8\omit\mp
  s1
  s1
  s1
  s2 g4 a % 3b
  s1*6
  s2 r4 g % 4a+
  s1*7
  s2 r4 g\omit\mf % 5a
  r4\omit\mp \clef treble a'8 d a d a d
  \repeat volta 2 {
    s1*3 \clef bass
    s1*11
    s2 r4 g,,\omit\mf
  }
  \alternative {
    {
      r8\omit\> fis a d r2 \clef treble
    }
    {
      \clef bass r8\omit\mf\omit\> fis, a d r2 \clef treble
    }
  }
  s1\omit\mp
  s1*2 \clef bass
  s1*5
  r4\omit\p \clef treble a'8 d a d a d % 7c++
  s1
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s8\omit\mp
  s1
  s1
  s1
  s2 a, % 3b
  s1*6
  s2 a % 4a+
  s1*7
  s2 a\omit\mf % 5a
  <d fis>1\omit\mp
  \repeat volta 2 {
    s1*14
    s2 a,
  }
  \alternative {
    {
      <d' fis>1\omit\>
    }
    {
      <d fis>1\omit\mf\omit\>
    }
  }
  s1\omit\mp
  s1*7
  <d d'>1\omit\p
  s1
  \bar "|."
}

pedal = {
  \global
  s8
  \set Staff.pedalSustainStyle = #'bracket
  s1\sustainOn
  s1\sustainOff\sustainOn
  s1\sustainOff\sustainOn
  s2\sustainOff\sustainOn s2\sustainOff\sustainOn % 3b
  s2\sustainOff\sustainOn s2\sustainOff
  s1-\markup \italic "Ped. sim. ad lib. throughout"
  s1*14
  \repeat volta 2 {
    s1*15
  }
  \alternative {{s1}{s1}}
  s1*8
  s1\sustainOn
  s1
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "partI" { \emptysingle \partIsingle }
            \new Lyrics \lyricsto "partI" \wordsI
          >>
                                % Single part II staff
          \new Staff <<
            \new Voice = "partII" { \emptysingle \partIIsingle }
            \new Lyrics \lyricsto "partII" \wordsII
          >>
                                % Joint staff
          \new Staff \with { printPartCombineTexts = ##f } <<
            \new Voice \RehearsalTrack
            \new Voice = "partI"  { \partCombine \partIjoint \partIIjoint }
            \new NullVoice = aligner { \partIjoint }
            \new Lyrics \lyricsto "aligner" \wordsJoint
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {pedalSustainStyle = #'bracket } <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Dynamics \pedal
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "partI" { \partIjoint \partIsingle }
            \new Lyrics \lyricsto "partI" \wordsIsingle
          >>
                                % Single part II staff
          \new Staff <<
            \new Voice = "partII" { \partIIjoint \partIIsingle }
            \new Lyrics \lyricsto "partII" \wordsIIsingle
          >>
                                % Joint staff
%          \new Staff \with { printPartCombineTexts = ##f } <<
%            \new Voice \RehearsalTrack
%            \new Voice = "partI"  { \partCombine \partIjoint \partIIjoint }
%            \new NullVoice = aligner { \partIjoint }
%            \new Lyrics \lyricsto "aligner" \wordsJoint
%          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {pedalSustainStyle = #'bracket } <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Dynamics \pedal
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
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
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "partI" { \partIjoint \partIsingle }
            \new Lyrics \lyricsto "partI" \wordsIsingle
          >>
                                % Single part II staff
          \new Staff <<
            \new Voice = "partII" { \partIIjoint \partIIsingle }
            \new Lyrics \lyricsto "partII" \wordsIIsingle
          >>
                                % Joint staff
%          \new Staff \with { printPartCombineTexts = ##f } <<
%            \new Voice \RehearsalTrack
%            \new Voice = "partI"  { \partCombine \partIjoint \partIIjoint }
%            \new NullVoice = aligner { \partIjoint }
%            \new Lyrics \lyricsto "aligner" \wordsJoint
%          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {pedalSustainStyle = #'bracket } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Dynamics \pedal
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi1"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice = "partI" { \partIjoint \partIsingle }
            \new Lyrics \lyricsto "partI" \wordsImidi
          >>
                                % Single part II staff
          \new Staff <<
            \new Voice = "partII" { \partIIjoint \partIIsingle }
%            \new Lyrics \lyricsto "partII" \wordsIImidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {pedalSustainStyle = #'bracket } <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Dynamics \pedal
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi2"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice = "partI" { \partIjoint \partIsingle }
            \new Lyrics \lyricsto "partI" \wordsImidi
          >>
                                % Single part II staff
          \new Staff <<
            \new Voice = "partII" { \partIIjoint \partIIsingle }
%            \new Lyrics \lyricsto "partII" \wordsIImidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {pedalSustainStyle = #'bracket } <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Dynamics \pedal
          >>
        >>
      >>
    >>
    \midi {}
  }
}
