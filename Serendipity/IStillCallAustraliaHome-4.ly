\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Still Call Australia Home"
  subtitle    = "SATB"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "PeterAllen"
  arranger    = "Arr. Sandra Milliken"
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
  \time 3/4
}

TempoTrack = {
  \tempo \markup {\bold "Moderato pop ballad style" \rhythm {{4}} = 94 "with a light swing"} 4=120
  \set Score.tempoHideNote = ##t
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s2.*5
  \textMark \markup { \box "2b" } s2.*3
  \textMark \markup { \box "2c" } s2.*4
  \textMark \markup { \box "2d" } s2.*3
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*4
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "4a" } s2.*4
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "5a" } s2.*4
  \textMark \markup { \box "5b" } s2.*4
  \textMark \markup { \box "6a" } s2.*4
  \textMark \markup { \box "6b" } s2.*4
  \textMark \markup { \box "7a" } s2.*4
  \textMark \markup { \box "7b" } s2.*4
  \textMark \markup { \box "8a" } s2.*4
  \textMark \markup { \box "8b" } s2.*4
  \textMark \markup { \box "9a" } s2.*3
  \textMark \markup { \box "9b" } s2.*3
  \textMark \markup { \box "9c" } s2.*3
  \textMark \markup { \box "9d" } s2.*4
  \textMark \markup { \box "10a" } s2.*1
%  \repeat volta 2 {
    s2.*3
    \textMark \markup { \box "10b" } s2.*4
    \textMark \markup { \box "11a" } s2.*3
%    \alternative {
%      {
%        s2.*2
%        \textMark \markup { \box "11b" } s2.*2
%      }
      { s2.*2 }
%    }
%  }
  s2.
}

dynamicsSolo = {
  s2.*5 |
  s2.\mf | s | s |
  s2.*4 |
  s2.*3 |
  s2.*4 | % 3a
  s2.*4 |
  s2.\mf | s | s | s |
% nothing more needed
}

solo = \relative {
  \global
  R2.*5
  a'8^\markup "Unison or optional Solo 1" 8~4. 8 | g8 a~4. g8 | 8 f~4 4 |
  f2 r8 8 | bes8 8~4. 8 | a8 8~4. 8 | 4 g f |
  g2 f8 g | a a~4 4 | g2 a4 |
  g4 f f | d'2. | r8 c c c~c a | bes4 g2 | % 3a
  f2 r4 | R2. | R | R |
  a8^\markup "Solo or small group" 8~4. 8 | g a~4. g8 | 4 f8 8~4 | 2 r8 f |
  bes8 8~4. 8 | a a~4. 8 | 4. g8 f g~ | 2 f8 g | % 4a
  a2 4 | g4 a2 | g4 f4. 8 | d'2. |
  r8 c c c~c a | bes4 g2 | f2^\markup "(End solo/small group)" r4 | R2. | % 5a
  R2.*42
%  \repeat volta 2 {
  R2.*10
%  \alternative {
%      {s2.*4}
      {s2.*2}
%    }
%  }
  R2.
}
  
wordsSolo = \lyricmode {
  I’ve been __ to cit -- ies __ that nev -- er __ close down,
  From New York __ to Ri -- o __ and old Lon -- don town,
  But no mat -- ter __ how far or how wide I roam,
  I still call __ Aust -- ra -- lia home.

  I’m al -- ways trav -- lin’, __ I love be -- ing free,
  And so I __ keep leav -- ing __ the sun and the sea. __
  But my heart lies wait -- ing o -- ver the foam,
  I still call __ Aust -- ra -- lia home.
  
}

wordsSoloMidi = \lyricmode {
  "I’ve " "been "  "to " cit "ies "  "that " nev "er "  "close " "down, "
  "\nFrom " "New " "York "  "to " Ri "o "  "and " "old " Lon "don " "town, "
  "\nBut " "no " mat "ter "  "how " "far " "or " "how " "wide " "I " "roam, "
  "\nI " "still " "call "  Aust ra "lia " "home. "

  "\nI’m " al "ways " trav "lin’, "  "I " "love " be "ing " "free, "
  "\nAnd " "so " "I "  "keep " leav "ing "  "the " "sun " "and " "the " "sea. " 
  "\nBut " "my " "heart " "lies " wait "ing " o "ver " "the " "foam, "
  "\nI " "still " "call "  Aust ra "lia " "home. "
}

dynamicsVoice = {
  s2.*15 |
  s2.*4 | % 3a
  s2.*4 |
  s2.\p | s | s | s |
  s2.*4 | % 4a
  s2. | s | s\< | s2\! s8 s\omit\p-\markup{\halign #RIGHT \italic sub \dynamic p} |
  s2. | s | s | s\< | % 5a
  s2.\mf | s | s | s |
  s2.*4 | % 6a
  s2. | s4\> s2\! | s4\> s2\! | s2. |
  s2.*4 | % 7a
  s2.\f | s | s | s |
  s2.*4 | % 8a
  s2. | s | s\< | s2\! s8 s\f |
  s2.*13 | % 9
  s2 s4\f | % 10a
%  \repeat volta 2 {
    s2. | s | s\< |
    s2\! s8 s\f | s2. | s | s |
    s2.*3 |
%    \alternative {
%      {s2.*4}
      {s2. | s\ff }
%    }
%  }
  s2.
}

soprano = \relative {
  \global
  R2.*23 \break |
  a'2.( | g~ | 4 f2~ | 2.) | % 3c
  bes2.( | a~ | 4 g f8 g~ | 2) r4 | % 4a
  a2.~( | a | <<{\vo d2 c4 | b2) r8 f | c'4 4. a8 | bes4 g2} \new Voice {\vt a2. | g2 r8 f | a4 4. f8 | 4 g2}>> \ov |
  f2 a4( | gis a b) | % 5a++
  c4. 8 b a | b4 c2 | 8 8~4 b8 a | c2 r8 b |
  c4 <a c>4. 8 | a4 g f | e2. | r2 r8 e | % 6a
  c'4. 8 b a | b4 c r8 e, | b'4 c4. r8 | r a a4 b |
  c2 8 8 | bes2 a4 | g2.~ | 4 r r \section | % 7a
  a4 4. f8 | g4 a4. g8 | 8 f~4 4 | 2 r8 8 |
  bes4 4. 8 | a4 r a | a g f | g2 r8 f | % 8a
  a8. g16 a2 | g4 a2 | g4 f f | <b d>2 r8 f |
  <a c>4 4. <f a>8 | <f bes>4 g2 | f2. | % 9a
  R2.*10 |
  r2 f8 g | % 10a
%  \repeat volta 2 {
    a8 8~4 4 | g2 a4 | g f f |
    <b d>2 r8 8 | <a c>4 4. a8 | <g bes>4 g r | <a c>4 4. a8 |
    <g bes>4 g r | <a c>4 4. a8 | bes2 c4 |
%    \alternative {
%      {<c f>2. | R | R | r2 f,8 g}
      {<c f>2. | <bes d>4-> <c e>-> q-> |}
%    }
%  }
  <c f>2.\fermata |
  \bar "|."
}

words = \lyricmode {
  Oo __ Oo __
  Ah __
  I still call Aust -- ra -- lia home.
  Ah __
  All the sons and daugh -- ters spin -- ning __ round the world,
  A -- way from their fam’ -- ly and friends.
  But as the world gets old -- er and cold -- er
  it’s good to know where your jour -- ney ends. __
  Some -- day we’ll all be to -- geth -- er __ once more,
  When all of the ships come back to the shore.
  I re -- a -- lise some -- thing I’ve al -- ways known,
  I still call Aust -- ra -- lia home.
  But no
%  \repeat volta 2 {
    mat -- ter __ how far or how wide I roam,
    I still call Aust -- ra -- lia,
    still call Aust -- ra -- lia,
    still call Aust -- ra -- lia
%    \alternative {
%      { home. But no }
      { home, Aust -- ra -- lia }
%    }
%  }
  home!
}

wordsMidi = \lyricmode {
  "Oo "  "Oo " 
  "\nAh " 
  "\nI " "still " "call " Aust ra "lia " "home. "
  "\nAh " 
  "\nAll " "the " "sons " "and " daugh "ters " spin "ning "  "round " "the " "world, "
  "\nA" "way " "from " "their " fam’ "ly " "and " "friends. "
  "\nBut " "as " "the " "world " "gets " old "er " "and " cold "er "
  "\nit’s " "good " "to " "know " "where " "your " jour "ney " "ends. " 
  "\nSome" "day " "we’ll " "all " "be " to geth "er "  "once " "more, "
  "\nWhen " "all " "of " "the " "ships " "come " "back " "to " "the " "shore. "
  "\nI " re a "lise " some "thing " "I’ve " al "ways " "known, "
  "\nI " "still " "call " Aust ra "lia " "home. "
  "\nBut " "no "
%  \repeat volta 2 {
    "\nmat" "ter "  "how " "far " "or " "how " "wide " "I " "roam, "
    "\nI " "still " "call " Aust ra "lia, "
    "\nstill " "call " Aust ra "lia, "
    "\nstill " "call " Aust ra "lia "
%    \alternative {
%      { "\nhome. " "But " "no " }
      { "\nhome, " Aust ra "lia " }
%    }
%  }
  "\nhome! "
}

alto = \relative {
  \global
  R2.*23 |
  f'2.( | e | d | ees4 c2) | % 3c
  f2.~ ( f~ | 4 e d~ | d e) r | % 4a
  f2.( | g~ | 4 f e | d2) r8 f |
  f4 4. 8 | d4 e2 | c f4( | e2 gis4) | % 5a
  a4. 8 b a | b4 a2 | 8 8~4 b8 a | a2 r8 b |
  a4 f4. 8 | 4 e d | c2. | r2 r8 e | % 6a
  a4. 8 b a | b4 a r8 e | b'4 a4. r8 | r a a4 b |
  a2 8 8  f2 4 | 2. ( e4) r r \section | % 7a
  a4 4. f8 | g4 a4. g8 | 8 f~4 4 | 2 r8 f |
  f4 4. 8 | 4 r f4 | f e d | d(e) r8 f | % 8a
  f8. 16 2 | e4 cis2 | e4 d d | a'(g) r8 f |
  f4 4. 8 | d4 e2 | c2. | % 9a
  R2.*10 |
  r2 d8 e | % 10a
%  \repeat volta 2 {
    f8 8~4 4 | e2 cis4 | e d d |
    a'4(g) r8 g | f4 4. 8 | 4 e r | f4 4. 8 |
    f4 e r | f4 4. 8 | f4(g) <g bes> | % 11a
%    \alternative {
%      {<f a>2. | R | R | r2 d8 e |}
      {<f a>2. | f4-> <g bes>-> q-> |}
%    }
%  }
  <f a>2.\fermata |
  \bar "|."
}

tenor = \relative {
  \global
  R2.*23
  c'2.( | cis | a | bes2 a4) | % 3b
  d2.( | c | b | bes4 c) r | % 4a
  c2.( | cis d2 e4 | f2) r8 d |
  c4 4. 8 | bes4 2 | a c4( | b e d) | % 5a
  e4. 8 8 8 | 4 2 | 8 8~4 8 8 | 2 r8 8 |
  d4 4. 8 | d(c) b4 a | g2. | r2 r8 e' | % 6a
  e4. 8 8 8 | 4 4 r8 8 | 4 4. r8 | r e8 4 4 |
  d4 f4. d8 | 2 4 | 2.( | c4) r r \section | % 7a
  a4 4. f8 | g4 a4. g8 | g f~4 4 | 2 r8 8 |
  d'4 4. 8 | c4 r c | c b b | bes(c) r8 c | % 8a
  c8. 16 2 | cis4 a2 | a4 d d | f2 r8 d |
  c4 4. 8 | bes4 2 | a2. | % 9a
  R2.*10 |
  r2 bes8 8 | % 10a
%  \repeat volta 2 {
    a8 c~4 4 | cis2 a4 | a d d |
    f2 r8 d | c4 4. 8 | d4 c r | 4 4. 8 |
    d4 c r | 4 4. 8 | d4(e) <e g> |
%    \alternative {
%      {f2. | R | R | r2 c8 c}
      {f2. | c4-> c-> e-> |}
%    }
%  }
  f2.\fermata |
  \bar "|."
}

bass = \relative {
  \global
  R2.*23 |
  f2.( | a | d, | f) | % 3c
  bes2.( | a  g  c,2) r4 | % 4a
  f2.( | e | d | g2) r8 d |
  c4 4. 8 | 4 2 | f2 4( | e2.) | % 5a
  a4. 8 8 8 | gis4 2 | g8 8~4 8 8 | fis2 r8 fis |
  f4 d4. 8 | g4 g, g | c2.  r2 r8 e | % 6a
  a4. 8 8 8 | gis4 4 r8 gis | g4 4. r8 | r8 fis8 4 4 |
  f4 d4. f8 | g2 g,4 | c2.~ | 4 r r \section | % 7a
  a'4 4. f8 | g4 a4. g8 | 8 f~4 4 | 2 r8 8 |
  bes4 4. 8 | a4 r f | g g g | c,2 r8 c | % 8a
  f8. 16 2 | e4 2 | d4 4 4 | g2 r8 d |
  c4 4. 8 | 4 2 | f2. | % 9a
  R2.*10 |
  r2 c8 8 | % 10a
%  \repeat volta 2 {
    f8 8~4 4 | e2 4 | d4 4 4 |
    g2 r8 d | c4 4. 8 | 4 4 r | 4 4. 8 |
    c4 4 r | <c c'>4 4. 8 | 2 4 |
%    \alternative {
%      {<f c'>2. | R | R | r2 c8 8 |}
      {<f c'>2. | c'4-> c-> c-> |}
%    }
%  }
  q2.\fermata |
  \bar "|."
}

pianoRHone = \relative {
  \global
  <bes e>4 <bes f'> <c g'> | a'4 4 8. f16 | g4 a g | g f f | f2. \section |
  \vo a8 8~4. 8 | g8 a~4. g8 | 8 f~4 4 |
  f2 r8 8 | bes8 8~4. 8 | a8 8~4. 8 | 4 g f |
  g2 f8 g | a a~4 4 | g2 a4 |
  g4 f f | d'2. | r8 c c c~c a | bes4 g2 | % 3a
  f2 \ov \tuplet 3/2 {f8 a c} | <d f>8. f,16 <c' e>8. f,16 <bes d>8. f16 | \vo c'2 \ov \tuplet 3/2 {c,8 e a} | \ov <g c>8. e16 <g bes>8. d16 <e g>8. bes16 |
  a'8 8~4. 8 | g a~4. g8 | 4 f8 8~4 | 2 r8 f |
  \vo bes8 8~4. 8 | a a~4. 8 | 4. g8 f g~ | 2 f8 g | % 4a
  a2 4 | g4 a2 | g4 f4. 8 | d'2 r8 f, |
  c'4 4. a8 | bes4 g2 | f \tuplet 3/2 {<a, f'>8 <bes g'> <a f'>} | r4 <b d e a> <d e gis b> | % 5a
  c'4. 8 b a | b4 c2 | 8 8~4 b8 a | c2 r8 b |
  c4 4. 8 | <f, a>4 <e g> <d f> | e2. | <a, b d e>4 <b d e a> <d e gis b> | % 6a
  c'4. 8 b a | b4 c r8 e, | b'4 c4. r8 | r a a4 b |
  c2 8 8 | bes2 a4 | <bes, d g>4-- <d f g bes>-- <f g bes d>-- | c'2.-- \section | % 7a
  a4 4. f8 | g4 a4. g8 | 8 f~4 4 | 2 r8 8 |
  bes4 4. 8 | a4 r a | a g f | g2 r8 f | % 8a
  a8. g16 a2 | g4 a g | f2 4  | <b d>2 r8 f |
  c'4 4. a8 | bes4 g2 | <a, f'>2 \tuplet 3/2 {f'8 a c} | % 9a
  <d f>8. f,16 <c' e>8. f,16 <bes d>8. f16 | <e g c>2 \tuplet 3/2 {c8 e g} | <e c'>8. c16 <d bes'>8. bes16 <c e g>4 |
  a'8 8~4. 8  g8 a~4. g8  8 f~<a, d f>4 f' |
  f2 r8 f  bes8 8~4. 8 | a8 8~4. 8 | a4 g f |
  g2 f8 g | % 10a
%  \repeat volta 2 {
    a8 8~4 4 | g2 a4 | g f f |
    <b d>2 r8 g8 | c4 4. a8 | bes4 g r | c4 4. a8 |
    bes4 g2 | c4 4. a8 | bes2 c4 |
%    \alternative {
%      {
%        <a c f a>4 4. 8 | <a cis e g>4 <a cis e a>4. <a cis e g>8 |
%        <a d g>4 <a d f> q | <f bes d f> <d f bes d> <bes d f>8 <bes d g> |
%      }
      {
        <a' c f a>4-> <f a c f>-> <c f a c>-> |
        <d f bes d>-> <e g c e>-> <e g bes c e>-> |
      }
%    }
%  }
  <f a c f>2.\fermata |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s2. | <c' f>4 q c | <cis e> q q | <a d>4 4 4 | <bes d>4 4 4 |
  <c f>4 4 4 | <a cis>4 4 4 | <a d>4 4 4 |
  <g bes ees>4 <g bes c> <a c ees> | <d f> q q | <c f> q q | <b d> q q |
  <bes d>4 <c e> <bes d> | <c f> q q | <cis e> <a cis e> <cis e> |
  <a d>4 4 4 | <f' a> < d f g> <d f> | <c f a>2 <c f>4 | <d f> <bes e> q | % 3a
  <a c>2 s4 | s2. | <e' a>4 4 s | s2. |
  <c f>4 4 4 | <a cis>4 4 4 | <a d>4 4 4 | <g bes ees>4 <g bes c> <a c ees> |
  <d f>4 4 4 | <c f> q q | <b d> <b e> <b d> | <bes d f> <bes c e> <bes d> | % 4a
  <c f>4 4 4 | <cis e> q q | <a d> q q | <f' g> <d f> q |
  <c f a>2 <c f>4 | <d f> <bes e> q | <a c> q s | <gis e'>2. | % 5a
  <e' a>4 q <c e> | <e gis> q q | <e a> q <e g> | <e a> q q |
  <d f a>4 4 4 | d8 c bes4 a | <g c>2 \tuplet 3/2 {c8 d c} | s2. | % 6a
  <e a>2 <c e>4 | e2 4 | 2 <e g>4 | <c e fis>2 <e fis>4 |
  <d f a>2 <d f>4 | s2. | s | <c e g>4-- <bes d f>-- <bes c e g>-- \section | % 7a
  <c f>4 4 4 | <cis e>4 4 4 | <a d>4 4 4 | <g bes e> <g bes c> <a c e> |
  <d f>4 4 4 | <c f> q q | q <b e> <b d> | <bes d> <c e>2 | % 8a
  <c f>4 4 4 | <cis e>2. | <a d> | <d f a>4 <d f g> <d f> |
  <c f a>2 <c f>4 | <d f> <bes e> q | s2. | % 9a
  <f' bes>2 f4 | s2. | s |
  <c f>4 4 4 | <a cis> q q | <a d> s q |
  <g bes ees>4 <g bes c> <a c ees> | <d f> q q | <c f> q q | <b d> q q |
  <bes d>4 <c e> <bes d> | % 10a
%  \repeat volta 2 {
    <c f>4 4 4 | <cis e> q q | <a d> q q |
    <d f a>4 <d f g> <d f> | <f a>4 4. f8 | <d f>4 <c e>2 | <f a>4 4. f8 |
    <d f>4 <c e>2 | <f a>4 4. f8 | <d f>4 <e g> <e g bes> |
%    \alternative {
%      {s2.*4}
      {s2.*2}
%    }
%  }
  s2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*4 |
  s2.\mf | s | s |
  s2.*4 |
  s2.*3 |
  s2.*4 | % 3a
  s2 s4\< | s2.\! | s2. | s2.\> |
  s2.\mp | s | s | s |
  s2.*4 | % 4a
  s2. | s | s\< | s2\! s8 s\omit\p-\markup{\halign #RIGHT \italic sub. \dynamic p}
  s2. | s | s | s\< | % 5a
  s2.\mf | s | s | s |
  s2.*8 | % 6
  s2. | s | s\< | s | % 7a
  s2.\f | s | s | s |
  s2.*4 | % 8a
  s2. | s | s\< | s\! |
  s2.*3 | % 9a
  s2.*3 |
  s2.\mf | s | s |
  s2.*4 |
  s2 s4\mf | % 10a
%  \repeat volta 2 {
    s2. | s | s\< |
    s2\! s8 s\f | s2. | s | s |
    s2. | s | s |
%    \alternative {
%      {s2.\f | s | s | s | }
      {s2. | s\ff |}
%    }
%  }
  s2.
}

pianoLH = \relative {
  \global
  c,4 d e | f2~8. gis16 | a4~8. a,16 8. a'16 | d,2~8. 16 | g2 c,8. c'16 \section |
  f,2 8 g | a2 a,8 a' | d,2. |
  f2 4 | bes2~8 8 | a2~8 8 | g2~8 8 |
  c2 c,8 c' | f,2~8 8 | e2~8 8 |
  d2 d'8 c | b2 b,4 | c c' c | c, c' c8 c, | % 3a
  f4 f'2 | bes,2 bes'4 | a2 a,4 | c2 c,4 |
  f2 \tuplet 3/2 {f8 g gis} | a2~8 8 | d2 d,8 8 | f2 4 |
  bes2~8 8 | a2~8 8 | g2~8 8 | c,4 c' c,8 c' | % 4a
  f,2~8 8 | e2~8 8 | d2 c'4 | b2 b,4 |
  c4 c' c | c, c' c8 c, | f8. c'16 f4 f, | <e e'>2. | % 5a
  a2~8 8 | gis2~8 8 | g2~8 8 | fis2~8 8 |
  <d d'>2. | <g g'>2 g4 | <c, c'>4 c8 c' c,4 | e e'8 e, e'4 | % 6a
  a,4 a'4. a,8 | gis2~8 8 | g2~8 8 | fis2. |
  d4 d' d,8 8 | g2~8 8 | c2. | c,4-- d-- e-- \section | % 7a
  <f f'>2~8 f | <a, a'>2~8 a' | <d, d'>2. | <f f'>2 4 |
  <bes bes'>2~8 bes8 | <a a'>2~8 a | <g g'>2~8 g | <c, c'>2 c8 c' | % 8a
  f,2~8 8 | e2~8 8 | d4 d' c | b2. |
  c,4 c' c | c, c' c8 c, | f8. c'16 f2 | % 9a
  bes,2. | a4 e a, | c d e |
  f2 \tuplet 3/2 {f8 g gis} | a2 a,8 a' | d,2. |
  f2 4 | bes2~8 8 | a2~8 8 | g2~8 8 |
  c,4 c' c | % 10a
%  \repeat volta 2 {
    <f, f'>2~8 f | <e e'>2~8 e | d4 d' c |
    b2. | <c,, c'>4-> c'' c | c, c' c | <c,, c'> c'' c |
    c,4 c' c | <c,, c'> c'' c | c, c c | % 11a
%    \alternative {
%      {
%        <f f'>2 f8 f' | <e, e'>2 e8 e' |
%        <d, d'>2 d8 d' | c,4 c' c, |
%      }
      {
        <f f'>4. f8 q8 f | <c, c'>4-> <c' c'>-> <c, c'>-> |
      }
%    }
%  }
  \repeat tremolo 12 {f32 f'\fermata}
%  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
%   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \words}

          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words

          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \words}

          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVoice}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVoice}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVoice}
            \new Voice \alto
            \addlyrics {\tiny \words}

          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVoice}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
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
    output-suffix = midi-solo
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = #"choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice = alto \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice = bass \bass
          >>
        >>
        \new PianoStaff = piano <<
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = #"choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice = solo \solo
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVoice
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVoice
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVoice
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVoice
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
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
