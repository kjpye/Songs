\version "2.25.18"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesu, Joy of Man’s Desiring"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
  arranger    = "Arr. Edward S. Brack"
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
  \key g \major
  \time 9/8
}

TempoTrack = {
  \tempo Moderato 4.=60
  s4.*3*8
  \set Score.tempoHideNote = ##t
  \tempo 4=60
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s4.*3*4
  \textMark \markup { \box "2b" } s4.*3*4
  \repeat volta 2 {
    \textMark \markup { \box "2c" } s2.*5
    \textMark \markup { \box "3a" } s2.*4
    \textMark \markup { \box "3b" } s2.*3
    \textMark \markup { \box "3c" } s2.*3
    \textMark \markup { \box "4a" } s2.*5
    \textMark \markup { \box "4b" } s2.*4
    \textMark \markup { \box "5a" } s2.*4
    \textMark \markup { \box "5b" } s2.*3
    \textMark \markup { \box "5c" } s2.*4
    \textMark \markup { \box "6a" } s2.*4
    \textMark \markup { \box "6b" } s2.*4
    \textMark \markup { \box "7a" } s2.*3
    \textMark \markup { \box "7b" } s2.*3
    \textMark \markup { \box "8a" } s2.*3
    \textMark \markup { \box "8b" } s2.*4
    \textMark \markup { \box "8c" } s2.*4
    \textMark \markup { \box "8d" } s2.*2
    \alternative { { s2. } { s2. } }
  }
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s4.*3*8 |
  \repeat volta 2 {
    s2.\p | s2.*61 |
    \alternative { { s2. } { s2. } }
  }
}

soprano = \relative {
  \global
  R4.*3*8 \section | \time 3/4 
  \repeat volta 2 {
    b'2 c4 | d2 4 | c2 b4 | a a r | R2. |
    b2 c4 | d2 b4 | a8(b16 c) b4(a) | g2 r4 | % 3a
    R2.*6 |
    b2 c4 | d2 4 | c2 b4 | a a r | R2. | % 4a
    b2 c4 | d2 b4 | a8(b16 c b4) a | g2 r4 |
    R2.*4 | % 5a
    R2.*3 |
    a2 b4 | c2 4 | b4.(c16 d) b4 | a a r |
    R2. | R | c2 d4 | e2 4 | % 6a
    d4.(e16 f) d4 | c c r | R2. | R |
    b2 c4 | d2 4 | c4 b2 | % 7a
    a2 r4 | R2. | b2 c4 |
    d2 b4 | a8(b16 c) a2 | g r4 | % 8a
    R2.*4 |
    R2.*4 |
    R2.*2 |
    \alternative { { R2. } { R2. } }
  }
  \bar "|."
}

wordsSopOne = \lyricmode {
  Je -- su, joy of man’s de -- sir -- ing,
  Ho -- ly wis -- dom, love __ most __ bright,
  Drawn by Thee, our souls a -- spir -- ing,
  Soar to un -- cre -- a -- ted light.
  Word of God our flesh __ that fash -- ioned,
  With the fire of life __ im -- pas -- sioned,
  Striv -- ing still to truth un -- known,
  Soar -- ing dy -- ing round -- Thy throne.
}

wordsSopTwo = \lyricmode {
  Through the way where hope is guid -- ing,
  Hark, what peace -- ful mu -- sic __ rings,
  Where the flock in Thee con -- fid -- ing,
  Drink of joy from death -- less springs.
  Theirs is beau -- ty’s fair -- est pleas -- ure,
  Theirs is wis -- dom’s ho -- liest treas -- ure,
  Thou dost ev -- er lead Thine own,
  In the love of joys __ un -- known.
}

wordsMidi = \lyricmode {
  "Je" "su, " "joy " "of " "man’s " de sir "ing, "
  "\nHo" "ly " wis "dom, " "love "  "most "  "bright, "
  "\nDrawn " "by " "Thee, " "our " "souls " a spir "ing, "
  "\nSoar " "to " un cre a "ted " "light. "
  "\nWord " "of " "God " "our " "flesh "  "that " fash "ioned, "
  "\nWith " "the " "fire " "of " "life "  im pas "sioned, "
  "\nStriv" "ing " "still " "to " "truth " un "known, "
  "\nSoar" "ing " dy "ing " round "Thy " "throne.\n"

  "\nThrough " "the " "way " "where " "hope " "is " guid "ing, "
  "\nHark, " "what " peace "ful " mu "sic "  "rings, "
  "\nWhere " "the " "flock " "in " "Thee " con fid "ing, "
  "\nDrink " "of " "joy " "from " death "less " "springs. "
  "\nTheirs " "is " beau "ty’s " fair "est " pleas "ure, "
  "\nTheirs " "is " wis "dom’s " ho "liest " treas "ure, "
  "\nThou " "dost " ev "er " "lead " "Thine " "own, "
  "\nIn " "the " "love " "of " "joys "  un "known. "
}

alto = \relative {
  \global
  R4.*3*8 \section \time 3/4 |
  \repeat volta 2 {
    g'2 4 | a(g) fis | g(d) d | d d r | R2. |
    g2 4 | g(d) e | e fis8(e fis4) | d2 r4 | % 3a
    R2.*6 |
    g2 4 | a(g) fis | g(d) d | d d r | R2. % 4a
    g2 4 | g(d) e | e(fis8 e) fis4 | d2 r4 |
    R2.*4 | % 5a
    R2.*3 |
    fis2 gis4 | a2 4 | 2 gis4 | e e r |
    R2. | R | a2 g4 | g(c) g | % 6a
    f4(a) g | g g r | R2. | R |
    g2 4 | 2 4 | 8(fis) g2 | % 7a
    fis2 r4 | R2. | g2 4 |
    g4(d) e | e(fis8 e) fis4 | d2 r4 | % 8a
    R2.*10 |
    \alternative { { R2. } { R2. } }
  }
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Je -- su, joy of man’s de -- sir -- ing,
  Ho -- ly wis -- dom, love __ most __ bright,
  Drawn by Thee, our souls a -- spir -- ing,
  Soar to un -- cre -- a -- ted light.
  Word of God our flesh __ that fash -- ioned,
  With the fire of life __ im -- pas -- sioned,
  Striv -- ing still to truth un -- known,
  Soar -- ing dy -- ing round -- Thy throne.
}

wordsAltoTwo = \lyricmode {
  Through the way where hope is guid -- ing,
  Hark, what peace -- ful mu -- sic __ rings,
  Where the flock in Thee con -- fid -- ing,
  Drink of joy from death -- less springs.
  Theirs is beau -- ty’s fair -- est pleas -- ure,
  Theirs is wis -- dom’s ho -- liest treas -- ure,
  Thou dost ev -- er lead Thine own,
  In the love of joys __ un -- known.
}

tenor = \relative {
  \global
  R4.*3*8 \section \time 3/4 |
  \repeat volta 2 {
    d'2 e4 | a,2 b4 | b(a) g | fis a r | R2. |
    d2 e4 | d(b) b | c8(a) d(b c4) | b2 r4 | % 3a
    R2.*6 |
    d2 e4 | a,2 b4 | b(a) g | fis a r | R2. | % 4a
    d2 e4 | d(b) b | c8(a d b) c4 | b2 r4 |
    R2.*4 | % 5a
    R2.*3 |
    d2 4 | e2 f4 | f(d) e | c c r |
    R2. | R | e2 d4 | c2 4 | % 6a
    a2 b4 | e e r | R2. | R |
    d2 e4 | d(c) b | c(d) e | % 7a
    a,2 r4 | R2. | d2 e4 |
    d4(b) b | c8(a d b) c4 | b2 r4 | % 8a
    R2.*10 |
    \alternative { { s2. } { s2. } }
  }
  \bar "|."
}

wordsTenorOne = \lyricmode {
  Je -- su, joy of man’s de -- sir -- ing,
  Ho -- ly wis -- dom, love __ most __ bright,
  Drawn by Thee, our souls a -- spir -- ing,
  Soar to un -- cre -- a -- ted light.
  Word of God our flesh __ that fash -- ioned,
  With the fire of life __ im -- pas -- sioned,
  Striv -- ing still to truth un -- known,
  Soar -- ing dy -- ing round -- Thy throne.
}

wordsTenorTwo = \lyricmode {
  Through the way where hope is guid -- ing,
  Hark, what peace -- ful mu -- sic __ rings,
  Where the flock in Thee con -- fid -- ing,
  Drink of joy from death -- less springs.
  Theirs is beau -- ty’s fair -- est pleas -- ure,
  Theirs is wis -- dom’s ho -- liest treas -- ure,
  Thou dost ev -- er lead Thine own,
  In the love of joys __ un -- known.
}

bass = \relative {
  \global
  R4.*3*8 \section | \time 3/4
  \repeat volta 2 {
    g4(fis) e | fis(e) d | e(fis) g | d d r | R2. |
    g4(fis) e | b2 e4 | c d2 | g, r4 | % 3a
    R2.*6 |
    g'4(fis) e | fis(e) d | e(fis) g | d d r | R2. | % 4a
    g4(fis) e | b2 e4 | c(d) d | g,2 r4 |
    R2.*4 | % 5a
    R2.*3 |
    d'4(c) b | a(a'8 g) f(e) | d4(b) e | a, a r |
    R2. | R | a2 b4 | c(a) e' | % 6a
    f4(d) g, | c c r | R2. | R |
    g'2 e4 | b(e) e | a,(b) c | % 7a
    d2 r4 | R2. | g4(fis) e |
    b'4(b,) e | c d2 | g,2 r4 | % 8a
    R2.*10 |
    \alternative { { R2. } { R2. } }
  }
  \bar "|."
}

wordsBassOne = \lyricmode {
  Je -- su, joy of man’s de -- sir -- ing,
  Ho -- ly wis -- dom, love __ most __ bright,
  Drawn by Thee, our souls a -- spir -- ing,
  Soar to un -- cre -- a -- ted light.
  Word of God our flesh __ that fash -- ioned,
  With the fire of life __ im -- pas -- sioned,
  Striv -- ing still to truth un -- known,
  Soar -- ing dy -- ing round -- Thy throne.
}

wordsBassTwo = \lyricmode {
  Through the way where hope is guid -- ing,
  Hark, what peace -- ful mu -- sic __ rings,
  Where the flock in Thee con -- fid -- ing,
  Drink of joy from death -- less springs.
  Theirs is beau -- ty’s fair -- est pleas -- ure,
  Theirs is wis -- dom’s ho -- liest treas -- ure,
  Thou dost ev -- er lead Thine own,
  In the love of joys __ un -- known.
}

fn = \markup \column {"* When orchestra accompaniment is used, and the second stanza is sung, the orchestra returns"
              "from here to measure 8."}

pianoRHone = \relative {
  \global
  r8 g'(a b d c) c(e d) |
  d(g fis g d b g a b |
  c8 d e d c b a b g |
  fis8 g a d, fis a c b a |
  b8) g( a b d c) c(e d) | % 2b
  d8(g fis g d b g a b |
  e,8 d' <fis, c'> <g b> a g d g fis |
  g8 b d g d b g b d \section |
%  \set Staff.timeSignatureFraction = 9/8
  \override Staff.TimeSignature #'stencil = ##f
  \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
  \scaleDurations 2/3 \repeat volta 2 {
    <e g>4) r8 r4 r8 r4 r8 | % 2c
    R4.*3 | R4.*3 |
    r8 d,(e fis a g a c b |
    c8 a <c, fis> d fis a c b a |
    b8) g(a b d c) c(e d) | % 3a
    d8(g fis g d b g a b |
    e,8 d' c b a g d g fis |
    g8) b(a b d c) c(e d) |
    d8(g fis g d b g a b | % 3b
    c8 d e d c b a b g |
    fis8 g a d, fis a c b a |
    b8) g(a b d c) c(e d) | % 3c
    d8(g fis g d b g a b |
    e,8 d' c b a g d g fis |
    g4) r8 r4 r8 r4 r8 | % 4a
    R4.*3 | R | r8 d(e fis a g a c b |
    c8 a <c, fis> d fis a c b a |
    b8) g(a b d c) c(e d) | % 4b
    d8(g fis g d b g a b |
    e,8 d' c b a g d g fis |
    g8) b(a b d c) c(e d) |
    d8(g fis g d b g a b | % 5a
    c8 d e d c b a b g |
    fis8 g a d, fis a c b a |
    b8) g(a b d c) c(e d) |
    d8(g fis g d b g a b | % 5b
    e,8 d' c b a g d g fis |
    g8 b d g d b g b cis |
    d8) d,(e fis a gis) gis(b a) | % 5c
    a8(c b c a e c d e |
    f8 d' c d b gis e fis gis |
    a8) c(b c e d) d(f e) |
    e8(a g a e c a b c | % 6a
    f8 e d c b a e a gis |
    a8 c e a4) r8 r4 r8 |
    r8 c,(d e g f) g(bes a) |
    a8(c b c a g e f g) | % 6b
    e8(g f g e c g a bes) |
    a8(c b c a f d e f |
    e8) c(d e g fis g b a |
    b8) g(a b d c) c(e d) | % 7a
    d8(g fis g d b g a b |
    c8 d e d c b a b g |
    fis8) d(e fis a g a c b | % 7b
    c8 a <c, fis> d fis a c b a |
    b8) g(a b d c) c(e d) |
    d8(g fis g d b g a b | % 8a
    e, d' c b a g d g fis |
    g8) b(d g d b g) b( d |
    f8 d b g) b( d e c a | % 8b
    fis8) a(c d b g e) g(b |
    c8 a fis d) fis( a c b a |
    b8) g(a b d c) c(e d) |
    d8(g fis g d b g a b | % 8c
    c8 d e d c b a b g |
    fis8 g a d, fis a c b a |
    b8) g(a b d c) c(e d) |
    d8 g fis g d b g a b | % 8d
    \override Score.Footnote.annotation-line = ##f
    e,8 d' c b a g d g \footnote \markup\bold "*" #'(0 . 4) \fn fis |
    \alternative {
      { g8 b d g d b g b d | }
      { <b, d g>2.~4. | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  r8 b d g4 fis8 g4 a8 |
  b4 a8 b4 g8 e4 d8 |
  e4 fis8 g4 d8 e4 \parenthesize b8 |
  c4. d4 g8 fis4. |
  g8 d fis g4 fis8 g4 a8 | % 2b
  b4 a8 b4 g8 e4.~ |
  e2. d4.~ |
  d4 g8~(2. \section |
  \scaleDurations 2/3 \repeat volta 2 {
    g4) r8 r4 r8 r4 r8 | % 2c
    R4.*3 | R4.*3 |
    r4 a,8 d4 e8 fis4 g8 |
    s4. d4 r8 fis4. |
    g4 d8 g4 fis8 g4 a8 | % 3a
    g4 a8 g4 fis8 e4 g8 |
    e4. d c |
    b4 d8 g4 fis8 g4 a8 |
    g4.~4 d8 g4. | % 3b
    e4 fis8 g4 d8 e4 b8 |
    c4. d4 g8 fis4. |
    g8 d fis g4 fis8 g4 a8 | % 3c
    b4 a8 b4 g8 e4.~ |
    e2. d4.~ |
    d4 r8 r4 r8 r4 r8 | % 4a
    R4.*3 | R |
    r4 a8 d4 e8 fis4 g8 |
    s4. d4 r8 fis4. |
    g4 d8 g4 fis8 g4 a8 | % 4b
    b4 a8 g4 fis8 e4.~ |
    e4. d c |
    b4 d8 g4 fis8 g4 a8 |
    b4 a8 b4 g8 e4.~ | % 5a
    e4 fis8 g4 d8 e4 b8 |
    c4 d8 4. fis |
    g4 d8 g4 fis8 g4 a8 |
    b4 a8 b4 g8 e4 g8 | % 5b
    e2. 4.~ |
    e2.~4 e8 |
    d4 a8 d4 e8 d4 e8 | % 5c
    c4 d8 e4 c8 a4 c8 |
    d4 e8 f4 d8 e4 d8 |
    c4 e8 a4 gis8 a4 b8 |
    c4 b8 c4 a8 f4 a8 | % 6a
    d8 c b a4 f8 e4 d8 |
    c8 e a c4 r8 r4 r8 |
    r8 e, g c4 d8 e4 c8 |
    f4 g8 a f d b4 d8 | % 6b
    c4 g8 c4 fis,8 e4 d8 |
    c4 d8 c4 a8 b4. |
    c4 g8 c4 a8 d4 c8 |
    b4 d8 g4 fis8 g4 a8 | % 7a
    b4 a8 b4 g8 e4 d8 |
    e4 fis8 g4 d8 e4 \parenthesize b8 |
    d4 cis8 d4 e8 fis4 g8 | % 7b
    s4. d4 r8 fis4. |
    g4 d8 g4 fis8 g4 a8 |
    b4 a8 g4 fis8 e4.~ | % 8a
    e4 g8 d4 b8 c4. |
    b8 d g b g d b4 g'8 |
    b4 g8 4 fis8 e4.~ | % 8b
    e4. d2. |
    c2. fis4. |
    g8 b, d g4 fis8 g4 a8 |
    b4 a8 b4 g8 e4 d8 | % 8c
    e4 fis8 g4 d8 e4 \parenthesize b8 |
    c4 e8 d4. fis |
    g8 d fis g4 fis8 g4 a8 |
    b4 a8 b4 g8 e4 g8 | % 8d
    e4 fis8 g4 e8 d4.~ |
    \alternative {
      { d4 g8 b4 d,8 g4 \apart r8 | }
      { s4.*3 }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.*3\p | s4.*3*7
%  \repeat volta 2 {
%    s4.*3*62
%    \alternative { { s4.*3 } { s4.*3 } }
%  }
}

pianoLHone = \relative {
  \global \apart
  r4 r8 d'4. e |
  <<{d4. e} \new Voice {\vth g,2.}>> \vo b4. |
  a4. d c4 b8 |
  a2. d4 c8 |
  b4 r8 4. c | d2. b4. | c g a4 c8 | b4 r8 <b d>2.~ \section |
  \override Staff.TimeSignature #'stencil = ##f
  \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
  \scaleDurations 2/3 \repeat volta 2 {
    q4 r8 r4 r8 r4 r8 |
    R4.*3 | R4.*3 |
    r4 fis8 a4. d4 e8 |
    \rh <fis a>8 \lh d a fis r fis d'4 c8 |
    b4. d e | % 3a
    d2. b4. |
    c8. a fis e fis4 a8 |
    g4 r8 d'4. e |
    <<{\vo d2.} \new Voice {\vth b4 a8 b4 g8}>> \vo b8 c d | % 3b
    c4. b4 g8 e4. |
    a2. d4 c8 |
    b4 r8 b4. c | % 3c
    d2. b4. |
    c4. g a4 c8 |
    b4 r8 r4 r8 r4 r8 | % 4a
    s4.*3 | s | r4 fis8 a4. d4 e8 |
    \rh <fis a>8 \lh d a fis r fis d'4 c8 |
    b2. c4. | d2. b4. | c g <d a'>4.~ | <d g>4 r8 d'4. e | % 4b
    d2. b4. | c d e, | a4 fis8 a4 fis8 d'4 c8 | b4 r8 e2. |
    d2. b4. | c8 b a g4 b8 a4 c8 | b4 g8 b4 g8~4 b8 | % 5b
    fis2. gis4. | e4. a2.~ | 2. gis4 e8~ | 4. c' d |
    e4. c2. | a b4. | a2. r4 r8 | e'2.~4. | % 6a
    d2.~4. | c2. g4. | a2. g4.~ | g4 r8 r4 d8~4.~ |
    d4 r8 d'4. e | <<{\vo d e} \new Voice {\vth g,2.}>> b4. | c b c4 b8 | % 7a
    a8 r a8 4. d4 e8 | \rh <f a> \lh d a fis r fis d'4 c8 | b2. c4. |
    d2. b4 g8 | a4 g8 fis4 g8 <d a'>4.~ | <d g>2.~4.~ | % 8a
    q2. c'4.~ | 4. b2. | a d4 c8 | b4 r8 d4. e |
    d4. e b | c d c4 b8 | a2. d4 c8 | b4 r8 b4. c | % 8c
    d2. b4. | c8 b a g4. a4 c8 |
    \alternative {
      { b4 r8 <b d>2.\laissezVibrer | }
      { <d, g>2.\repeatTie ~ 4. | }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  g,4. g' e | b e e, | a b c | d fis d |
  fis4 r8 e4. c | b e d | c cis d~ | <g, d'>4 r8 r4 g'8(d4 b8 \section |
  \scaleDurations 2/3 \repeat volta 2 {
    g4.)(fis e | fis e d | e fis g | d4) r8 r4 d'8 d r d~( | <d, d'>4) r8 r4 d'8 8 r d( |
    g4.)(fis e | b' b, e | c d d, | g4) r8 g'4. e | % 3a
    b4. e e, | a b c | d fis d~ |
    <g, d'>4 r8 e'4. c | b e d | c cis d |
    g4.(fis e | fis e d | e fis g | d4) r8 r4 d8 8 r d~( | <d, d'>4 r8  r4 d'8 8 r d( | % 4a
    g4.)(fis e | b' b, e | c d d, | g4) r8 g'4. e |
    b4. e e, | a b c | d fis d~ | <g, d'>4 r8 e'4. c | % 5a
    b4. e d | c cis d~ | <g, d'>4.~4 g'8(fis4 e8 |
    d4. c b | a) a'8.(g f e | d4. b e | a,) f'( d |
    c4.) f(e | d dis e~ | <a, e'>) a' b | c a e | % 6a
    f4. d g | c, e c | f b g | c,4 r8 r4 c8(b4 d8 |
    g,4) r8 g'4.(e | b e e, | a b c | % 7a
    d4) r8 r4 d8 d r d!( | <d, d'>4) r8 r4 d'8 d r d( | g4.)(fis e |
    b'4. b, e | c d d, | g2.)~4.~ | % 8a
    g4.~2.~ | 4.~2.~ | 2.~4.~ | 4 r8 g'4. e |
    b4. e e, | a b c | d fis d | g4 r8 e4. c |
    b4. e d | c cis d~ |
    \alternative {
      { <g, d'>4 r8 r4 g'8(d4 b8) | }
      { g2.~4. | }
    }
  }
  \bar "|."
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    output-suffix = singlepage-sop
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    output-suffix = singlepage-alto
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    output-suffix = singlepage-tenor
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    output-suffix = singlepage-bass
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
%            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
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
