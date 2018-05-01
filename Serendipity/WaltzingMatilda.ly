\version "2.19.80"

tempotrack = {
  \key f \major
  \time 2/4
  \repeat volta 3 {
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2.
    \time 4/4 s1 % 5
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2. % 10
    \time 4/4 s1
    s1
    s1
    s1
    \time 3/2 s1. % 15
    \time 3/4 s2.
    s2.
  } \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 4/4 s1
    }
  }
  \bar "|."
}

SopranoMusic = \relative c'' {
  \key f \major
  \time 2/4
  \tempo 4=88
  a16^\mp a a a g8-- g-- % 1
  f8 a16 f d-- e-- f8--
  c8f16 a c8 c16 c
  c16 c c8 c^\markup{\italic ten} f,16 g
  a8 a16 a g8 g % 5
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 16 g f8 r
  c'8^\mf \< c16 c c8 a % start chorus
  f'8^\f \! 16 f e8 d % 10
  c8 16 16 d8 c16 c
  c8 \> bes16 a \! g8^\fermata ^\mf f16^\mp g
  a8 16 a g8 g
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 g16 g f4 % end chorus
  f4 c'8. 16
  d16 e f c d8 d
  c8 r e8.^\f f16 % page 5
  g8^^ c,8 r^\markup{\italic ten} d16^\mp e
  f8. c16 d8. bes16
  c16 bes a c bes^. c^. d8^-
  c8^\mf r f^^ r
  r8 c^-^\mp f,4
  c'8^\mf \< c16 c c8 a % start chorus
  f'8^\f \! 16 f e8 d % 10
  c8 16 16 d8 c16 c
  c8 \> bes16 a \! g8^\fermata ^\mf f16^\mp g
  a8 16 a g8 g
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 g16 g f4 % end chorus
  r2 % page 6
  r2
  f'8^\f c r4
  c8^^ c^^ c4^^^\fermata
  r2
  r2
  r4 c,8^\f f16 a
  c8 bes16 a g8 16 g
  f4. r8
  c'8^\mf\< 16 c c8 a\!
  f'8^\f f16 f e8 d % page 8
  c8 16 c d8 c16 c
  c8\> bes16 a g4^\mf\!
  r2
  r2
  c8^\f(f) c4(
  c8) c f,4
  r2
  r2
  r2
  r2
  r2^\fermata
  r2
  r2
  r2
  r2
  c4^\pp f8(a)
  c2^\pp ~
  c2~
  c2~
  c2^\markup{Rit}~
  c2 \> ~
  c2 \!
  \bar "|."
}

SopranoLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And he sang as he watched and wait- ed till his bil- ly boiled;
  "'You'll" come a- waltz- ing Ma- til- da, with "me!'"
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and wait- ed till his bil- ly boiled:
  'You'll come a- waltz- ing, Ma- til- da, with me!' % end chorus
  \set stanza = "2." Down came a jol- ly jol- ly jum- buck
  Up jumped the swag- man
  And he sang and stowed that jum- buck in his tuck- er- bag,
  'You'll come with me!'
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and wait- ed till his bil- ly boiled:
  'You'll come a- waltz- ing, Ma- til- da, with me!' % end chorus
  \set stanza = "3." Troop- ers! One, two, three,
  'You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come a- waltz- ing a- til- da with me;
  You'll come with me!'
  Ah
}

AltoMusic = \relative c' {
  \key f \major
  \time 2/4
  c8^\mp f d-- e-- % 1
  f8 e16 e d-- c-- bes8--
  c8 f16 f g8 f16 f
  e16 e f8 g^\markup{\italic ten} d16 e
  f8 c d e
  f16 f e e d c bes8
  c8 r c' f,
  d8 e f r
  a8^\mf \< f16 f g8 a \! % start chorus
  bes8^\f \! a16 a c8 bes 
  c8 f,16 f f8 f16 f
  a8 \> g16 f \! e8^\fermata ^\mf d16^\mp e
  f8 e16 e d8 e
  f16 f e e d c bes8
  c8 r c' r
  r8 e, f4 % end chorus
  a8 16 a g8 g16 g
  f16(g) a f d e f8
  c8f16 a c8 16 c
  c8 16 c c8^\markup{\italic ten} f,16^\mf g
  a8 16 a g8 g
  f16 g a f d e f8
  c8\< f16 a\! c8^\f bes16 a
  g8 16 g f4
  a8^\mf \< f16 f g8 a \! % start chorus
  bes8^\f \! a16 a c8 bes 
  c8 f,16 f f8 f16 f
  a8 \> g16 f \! e8^\fermata ^\mf d16^\mp e
  f8 e16 e d8 e
  f16 f e e d c bes8
  c8 r c' r
  r8 e, f4 % end chorus
  r2 % page 6
  r2
  a8^\f f r4
  g8^^ g^^ g4^^^\fermata
  r2
  r2 % page 7
  r4 c,8^\f d16 f
  e8 d16 c d8 e16 e
  f4. r8
  a8^\mf\< f16 f g8 a\!
  bes8^\f a16 a c8 bes % page 8
  c8 f,16 f f8 f16 f
  a8\> g16 f e4^\mf\!
  r2
  r2
  c'8^\f(a) a(g16) f
  e8 e16 e f4
  r2
  r2
  r2
  r2
  r4^\fermata d8^\p e
  f8^\markup{\italic Melodramatically}(g) a a
  g4 a8 g
  f8(g)a f
  d8\> e f4
  c2^\pp\! ~
  c2~
  c2~
  c2~
  c2^\markup{Rit.}~
  c2\>~
  c2\!
  \bar "|."
}

AltoLyrics = \lyricmode {
  Once a swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And he sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come you'll come with "me!'"
  Waltz- inf Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and waite- ed till his bil- ly boiled:
  'You'll come. with me! % end chorus
  \set stanza = "2." Down came a jum- buck to drink at the bil- la- bong,
  Up jumped the swag- man and grabbed him with glee,
  And he sang as he stowed that jum- buck in his tuck- er- bag,
  'You'll come a- waltz- ing, Ma- til- da with me!'
  Waltz- inf Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and waite- ed till his bil- ly boiled:
  'You'll come. with me! % end chorus
  \set stanza = "3." Troop- ers! One, two, three:
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come a- waltz- ing Ma- til- da, with me;
  You'll come Ma- til- da, with me!'
  \set stanza = "6."And his
  ghost may be heard as you pass by that bil- la- bong:
  Ah
}

TenorMusic = \relative c {
  \key f \major
  \time 2/4
  f16^\mp g a c d8-- c-- % 1
  a8 f16 a c16 a a8
  c,8 f16 a c8 a16 a
  bes16 bes c8 d^\markup{\italic ten} c
  c8 f d c
  a16 g f a f e d8
  c8 f16 a c8 d16 d
  bes8 c16 c a8 r
  f8^\mf \< a16 a bes8 c % start chorus
  d8  c16 c d8 e
  f8^\f \! (c) bes c
  d8\> g, c^\fermata ^\mf \! r
  r8 c^\mp bes c
  d8 c bes16 a g8
  c,8 r c' r
  r8 c a4 % end chorus
  c4 g8. g16
  a16 g f a f8 g
  f8(c b') a % page 5
  d8(f e^\f) r
  d8^\mp(c bes g
  a8\< c\! f^\mf\> bes,\!)
  a8^\mp r a r
  r8 g^- a4
  f8^\mf \< a16 a bes8 c % start chorus
  d8  c16 c d8 e
  f8^\f \! (c) bes c
  d8\> g, c^\fermata ^\mf \! r
  r8 c^\mp bes c
  d8 c bes16 a g8
  c,8 r c' r
  r8 c a4 % end chorus
  a8^^^\f a16 a g8 g % page 6
  f16 g a f d^- e^- f8^-
  c'8 a16 c f8 c
  d8^^ f^^ e4^^^\fermata
  a,16^\ff^\markup{\italic Roughly} a a a g8 g
  f16 g a f bes^- c^- d8^-
  c8 f,16 a c8^^\> bes16 a\!
  g8^\f(a) bes c^-
  a4. r8
  f8^\mf\< a16 a bes8 c\!
  d8\< c16 c d8 e % page 8
  f8^\f\!(c) bes c
  d8\> g, c4^\mf\!
  a16^\ff^\markup{\italic Roughly} a a a g8 g
  f16 g a f bes^- c^- d8^-
  c8^\f f,16 a c8^^ bes16 a % page 9
  g8 16 g a4
  r2
  r2
  r2
  r2
  r2^\fermata
  r2
  r2
  r2
  r2
  r2
  c,4^\pp f8 a
  c2~
  c2~
  c2^\markup{Rit.}~
  c2\>~
  c2\!
  \bar "|."
}

TenorLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come a- waltz- ing Ma- til- da, with "me!'"
  Waltz- ing Ma- til- da, Waltz- ing a- til- da, % start chorus
  You'll come, you'll come with me;
  and wait- ed till his bil- ly boiled;
  'You'll come, with me!' % end chorus
  \set stanza = "2." Down came a jol- ly jol- ly jum- buck
  Up with glee sang
  'You'll come with me!'
  Waltz- ing Ma- til- da, Waltz- ing a- til- da, % start chorus
  You'll come, you'll come with me;
  and wait- ed till his bil- ly boiled;
  'You'll come, with me!' % end chorus
  \set stanza = "3." Up rode the squat- ter, mount- ed on his thor- ough- bred,
  Up rode the troop- ers, One, two, three:
  'Where's that jol- ly jum- buck
  you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come, you'll come with me;
  'Where's that jol- ly jum- buck you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  Ah
}

BassMusic = \relative c {
  \key f \major
  \time 2/4
  f8^\mp d bes-- c-- % 1
  d8 c16 c bes-- a-- g8--
  c8 d16 d e8 f16 f
  g16 g a8 bes^\markup{\italic ten} c
  f,8 a, bes c
  d16 d c c bes a g8
  c8 e c' r
  r8 c, f r
  f2^\mf \< % start chorus
  bes2^\f \!
  a4 bes8 a
  g8 \> g c,^\fermata^\mf \! r
  r2
  r2
  c8 r c' r
  r8 c, f4 % end chorus
  f4 e8. e16
  d8(c) bes4
  a8(a' g) f % page 5
  bes8(d c^\f) r
  r2
  r2
  c8^\mp r c, r
  r8 e^- f4
  f2^\mf \< % start chorus
  bes2^\f \!
  a4 bes8 a
  g8 \> g c,^\fermata^\mf \! r
  r2
  r2
  c8 r c' r
  r8 c, f4 % end chorus
  f8^\f 16 f e8 c
  d16 e f bes g^- a^- bes8^-
  c,8 f16 a c8 a
  bes8^^ d^^ c4^^^\fermata
  a16^\ff^\markup{\italic Roughly} a a a g8 g
  f16 g a f d^- e^- f8^-
  c8 f16 a c8^^\> bes16 a
  g8^\f(a) bes c^-
  f,4. r8
  f2^\mf\<
  bes2^\f\! % page 8
  a4 bes8 a
  g8\> g c,4^\mf\!
  a'16^\ff^\markup{\italic Roughly} a a a g8 g
  f16 g a f d^- e^- f8^-
  c8^\f f16 a c8^^ bes16 a
  g8 16 g f4\<
  a8^\ff\! 16 a g8 16 g
  f16 g a f d e f8
  c8 f16 a c8^^ 16 c
  c8^^ c c4(
  c4^\fermata) r
  r2
  r2
  r2
  r2
  r2
  r2
  r4 f,,8--^\pp a--
  c4^^ bes8 a
  g4^\markup{Rit.} g
  f2\> ~
  f2\!
  \bar "|."
}

BassLyrics = \lyricmode {
  Once a swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And he sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come with "me!'"
  come, come You'll come, you'll come with me; % start chorus
  'You'll come, with me!' % end chorus
  \set stanza = "2." Down came a jum- buck
  Up with glee
  'You'll come with me!'
  come, come You'll come, you'll come with me; % start chorus
  'You'll come, with me!' % end chorus
  \set stanza = "3." Up rode the squat- ter, mount- ed on hos thor- ough- bred,
  Up rode the troop- ers, One, two, three:
  'Where's that jol- ly jum- buck
  you've got in your tuck- er- bag?
  You'll come a- waltz- ing, ma- til- da, with me!'
  \set stanza = "4." Come,
  come, You'll come, you'll come with me;
  'Where's that jol- ly jum- buck you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "5." Up jumped the swag- man and sprang in- to the bil- la- bong,
  'You'll ne- ver take me a- live.' said he.
  'Ne- ver take me a- live! He! He!'
}


\header {
  title = "Waltzing Matilda"
  composer = "Marie Cowan"
  arranger = "arr. Thomas Wood"
  poet = "A. B. (Banjo) Paterson"
}
\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}
