\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "IV. The Golden Years - The Music of Traditional Broadway"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key g \major
  \time 4/4
  \tempo 4=90
}

soprano = \relative c'' {
  \global
  R1*2 ^\markup{\bold Willkommen}
  b8 fis4 g8 b fis g4
  dis8 e4.~e2
  b'8 fis r4 b8 fis g4
  dis4 e2.
  c'8 gis r a f fis r a
  b8 fis g fis~fis2
  a8 dis,4 e8 b'4 a
  g8 fis a fis e4 r
  b'8 fis4 g8 b fis g4
  dis4 e r8 e8 dis16 e8.
  c'8 e, dis16 e8. b'2
  r4 b b b g1
  r1 \bar "||" \key aes \major
  r1
  r1
% Applause
  r8^\markup{\bold Applause} c aes f ees f16 aes~aes bes c8~
  c2 r \bar "||" \key c \major
  r8 <g e'> <e c'> <f a> <e g> a16 c~c d e8
  r8 d <a c g'>4^^ d8 <a c g'>4^^ d8
  \tempo 4=157 <a c g'>1 ~ ^\markup{Fast 2-beat}
  q1
  r1
% Everything's Coming Up Roses
  b2^> ^\markup{\bold {Everything's Coming Up Roses}} c^>
  a2 r8 b4 c8
  a2 r8 b4 c8
  a8 a a c~c a4 e8
  a2 r8 g4 fis8
  g2 r8 e4 c8
  e2 r8 c4 e8
  \times 2/3 {a4 g a} \times 2/3 {g a g}
  a8 g r4 r2
  r1
  c,4. d8~d2
  d4. e8~e2
  r8 f4 e8 f e f g~
  g2. r4
  e4. <dis fis>8~q2
  q4. <e g>8~q2
  \times 2/3 {e4 d e} \times 2/3 {fis g a}
  <fis ais>4. <f b>8 ~ q2
  r2 \voiceOne b4 g
  d'4.(c8) c2~
  c2 \oneVoice r4 c,4 \bar "||" \key f \major
% They Call the Wind Maria
  f4^\markup{\bold{They Call the Wind Maria}} a a4. gis8
  a4 f f r8 c
  f4 a a4. gis8
  a4 f r r8 c8
  f4 a a r8 gis8
  a4 c c a8 c
  <f, d'>4 <f c'> <f a> <e g>
  <f a>4 q2.~
  q2 r4 c'
  <f, d'>4. <f a>8~q2~
  q2 r4 <f d'>
  <e c'>4. <e a>8~q2~
  q2 r4 <e c'>
  <f d'>2 <e c'>
  <f a>2
  <e g>
  <f a>4 q2.~
  q2 r4 c'
  <f, d'>4. <f a>8~q2~
  q2 r4 <f d'>
  <a e'>2 q~
  q2. r4
  <a f'>2 <e c'>
  <f a>2 <e g>
  f1~
  f2 r4 f^\markup{Sopranos} \key bes \major
  \repeat volta 2 {
    bes8 bes4.
    \override NoteHead.style = #'cross
               bes8^\markup{Altos} bes4.
    \revert NoteHead.style
    r1
    bes,8 d f4 c8 ees g4
    d8 f a4 ees8 g bes a
  }
  \alternative {
    {
      c8 bes4.~bes2~
      bes2 r4 f
    }
    {
      a8 bes g a bes4 r
    }
  }
  a8 bes g a bes4 r
  a8 bes g a bes g a bes
  a8 bes g a bes4 a
  c1~
  c1
  bes1~
  bes2 r \bar "||" \key ees \major

% Luck Be a Lady Tonight
  bes4^\markup{\bold{Luck Be a Lady}} aes8 g aes bes des bes~
  bes4 r r2
  bes4 aes8 g aes bes des bes~
  bes4 r4 r2
  bes4 aes8 g aes bes aes g
  aes8 bes aes g aes bes4.
  ees4 bes8 aes bes ees, ees ees~
  ees1
  r1 \bar "||" \key e \major
  r1
  b'4 a8 gis a b d b~
  b4 r4 r2
  b4 a8 gis a b d b~
  b4 r4 r2
  r1
  r1
  <e, gis>4 q8 q <f a> q r4 \bar "||" \key f \major
  r1
  r1
  c8^\markup{\bold{Put on a Happy Face}} d4 f8 a4 c8 d~
  d8 d r4 r2
  d8 c4 bes8 g4 e8 d~
  d2. r4
  c8 d4 f8 a4 c8 d~
  d8 d r4 r2
  d8 c4 bes8 g4 e8 ees~
  ees2 r4 f
  d'1
  <a d>4. <a c>8~q4 <a f'>
  <f c'>4. <g bes>8 ~ q4 <e c'>4
  a2 d4 r
  <a e'>4 <b d>2 a4
  c2 a
  \tempo 4=130 f1^\markup{Easy Swing}
  r1
  r1
  r1
  r1^\markup{\bold{Standing on the Corner}}
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r2 r4 d \bar "||" \key bes \major

% Hello, Dolly
  f1
  d8 bes4. d4 f8 g~
  g1
  d8 bes4. d4 f
  a4 r8 bes a4 bes
  a4 bes c bes8 f~
  f1
  r4 e f <d fis>
  <ees g>1
  e8 c4. <c e>4 <e g>
  <ees aes>1
  ees8 c4. ees4 g
  d'8 g,4. d'4 c
  d8 c4. a4 f
  r4 g2 a4
  f4.(g8~g2) \bar "||" \key c \major

% Mame
  r4^\markup{\bold Mame} e e e
  e e8 e~e dis e4
  f1
  g4.(d8~d2)
  r4 f f f
  f4 f8 f~f e f4
  g1
  b4.(e,8~e2)
  r4 c' c c
  c4 c8 c~c b c4
  b8 g a ais b g a ais
  b1
  r8 a4. a4 a
  a4 a8 a~a gis a4
  r8 b4. b4 b
  b4 b8 b~b ais b4
  r8 <fis b d>4. <fis ais d>4 <fis a d>
  <f a d>4 q8 q~q <f a c> <f a d>4
  d'8(c4.~c2)
  r1 \bar "||" \key f \major
  r1
  r1
  r1
  r1
  r1
  \time 3/4

% Time to Remember
  a4. a8 a4
  a4 g4. f8
  bes,4. bes8 bes4
  bes4 c d
  c2 a4
  f'2 c4
  d2 bes4
  g'8 d4.~d4
  a'4. a8 a4
  4 g f
  bes,4. bes8 bes4
  bes4 c d \time 4/4 \tempo 4=70
  a'8^\markup{Dreamily} f4.~f2
  a8 f a f a f a f \voiceOne
  a4 f2.
  r4 a4 c2~
  \times 2/3 {c4 a bes} \times 2/3 {c bes a}
  c1~
  c1
  r1

  \bar "|."
}

dynamicsWomen = {
}

alto = \relative c'' {
  \global
  s1*43
  s2 b4 g
  f2 <d f>(
  <e g>2) s2
  s1*135
  s2.*12
  s1
  s1
  r8 c b c b4. c8
  f4. c8 a2
  r1
  r1
  g'4 a2.~
  a2 g8 a g f
  \bar "|."
}

dynamicsAlto = {
}

baritone = \relative c' {
  \global
  \clef "bass"
  R1*2
  b8 fis4 g8 b fis g4
  dis8 e4.~e2
  b'8 fis r4 b8 fis g4
  dis4 e2.
  c'8 gis r a f fis r a
  b8 fis g fis~fis2
  a8 dis,4 e8 b'4 a
  g8 fis a fis e4 r
  b'8 fis4 g8 b fis g4
  a4 fis r8 e dis16 e8.
  c'8 e, dis16 e8. b'2
  r4 b b b g1
  r1 \bar "||" \key aes \major
  r1
  r1
% Applause
  r8 c aes f ees f16 aes~aes bes c8~
  c2 r \bar "||" \key c \major
  r8 c8 c d c a16 c~c b c8
  r8 d d4^^ d8 d4^^ d8
  g,1~
  g1
  r1
% Everthing's Coming Up Roses
  b2^> c^>
  a2 r8 b4 c8
  a2 r8 b4 c8
  a8 a a c~c a4 e8
  a2 r8 g4 fis8
  b2 r8 g4 g8
  c2 r8 c4 c8
  \times 2/3 {a4 g a} \times 2/3 {b c b}
  a8 g r4 r2
  r1
  a4. b8~b2
  b4. c8~c2
  r8 f,4 e8 f e f g~
  g2. r4
  g4. a8~a2
  b4. b8~b2
  \times 2/3 {g4 fis g} \times 2/3 {a b c}
  cis4. d8~d2
  r2 b4 g
  bes2 bes(
  c2) r4 c,4 \bar "||" \key f \major
  f4 a a4. gis8
  a4 f f r8 c
  f4 a a4. gis8
  a4 f r r8 c
  d4 a' a r8 gis
  a4 c c a8 c
  bes4 a d c
  c4 c2.~
  c2 r4 c
  a4. d8~d2~
  d2 r4 a
  a4. c8~c2~
  c2 r4 a
  bes2 a
  d2 c
  c4 c2.~
  c2 r4 c
  a4. d8~d2~
  d2 r4 a
  c2 c~
  c2. r4
  c2 a
  d2 c
  f,1~
  f2 r \key bes \major
  \repeat volta 2 {
    r1
    \override NoteHead.style = #'cross
    d8^\markup{Tenors} d4. d8^\markup{Basses} d4.
    \revert NoteHead.style
    bes8 d f4 c8 ees g4
    d8 f a4 ees8 g bes a
  }
  \alternative {
    {
      c8 bes4.~bes2~
      bes2 r2
    }
    {
      a8 bes g a bes4 r
    }
  }
  a8 bes g a bes4 r
  a8 bes g a bes g a bes
  a8 bes g a bes4 a
  c1~
  c1
  bes1~
  bes2 r \bar "||" \key ees \major

% Luck Be a Lady Tonight
  bes4 aes8 g aes bes des bes~
  bes4 r r2g4 aes8 bes d bes aes bes~
  bes4 r4 r2
  bes4 aes8 g aes bes aes g
  aes8 bes aes g aes bes4.
  g4 bes8 aes bes ees, ees ees~
  ees1
  r2 r4 b' \bar "||" \key e \major
  b4 a8 gis a b d b~
  b4 r r2
  b4 a8 gis a b d b~
  b4 r r2
  b4 a8 gis a b a gis
  a8 b a gis a b4.
  e4 b8 a b e,4.
  r1 \bar "||" \key f \major
  f'4 c8 bes c f,4.
  \override NoteHead.style = #'cross
  d4^\markup{(Shout)} r r2
  \revert NoteHead.style
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
% Standing on the Corner
  a'8 gis a bes c4 c
  c8 bes a c bes4 f
  c1
  r1
  a'8 gis a bes c4 c
  c8 bes a c bes4 f
  g1
  r2 r4 \times 2/3 {e8 f g}
  a4 a8 gis a fis gis e
  fis4 fis r \voiceOne r
  r4 \times 2/3 {f8 g a} bes4 r
  \override NoteHead.style = #'cross
  r4 bes bes \oneVoice \revert NoteHead.style gis
  a8 gis a bes c4 c
  c8 bes a c bes4 bes8 a
  g8 bes a4 a8 g f a
  d2. e,4
  f1
  r2 r4 d \bar "||" \key bes \major

% Hello Dolly
  f1
  bes8 bes4. bes4 f8 g~
  g1
  bes8 bes4. bes4 f
  a4 r8 bes a4 bes
  a4 bes c bes8 f~
  f1
  r4 g a b
  c2(b)
  bes8 c4. a4 c
  c1
  aes8 aes4. ees4 g
  d'8 c4. d4 c
  d8 c4. a4 f
  r4 g2 a4
  f4.(g8~g2) \bar "||" \key c \major

% Mame
  r4 e e e
  e e8 e~e dis e4
  f1
  g4.(d8~d2)
  r4 e e e
  e4 e8 e~e dis e4
  f1
  g4.(d8~d2)
  r4 a' a a
  a4 a8 a~a gis a4
  g8 b a g g b a g
  b1
  r8 a4. a4 a
  a4 a8 a~a gis a4
  r8 b4. b4 b
  b4 b8 b~b ais b4
  r8 c4. c4 c
  c4 c8 b~b b b4
  c1
  r2 r4 c \bar "||" \key f \major
  a8 gis a bes c4 c
  c8 bes a c bes4 bes8 a
  g8 bes a4 a8 g f a
  d1
  e,1
  \time 3/4
  f2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2. \time 4/4
  r1
  r1
  r1
  r1
  r2 r4 c
  c4. c8 \times 2/3 {c4 d e}
  \times 2/3 {d c bes} c2~
  c1
  \bar "|."
}

dynamicsMen = {
}

bass= \relative c' {
  \global
  \clef bass
  c4
  \bar "|."
}

dynamicsBass = {
}

wordsSopAbove = \lyricmode {
}

wordsSopBelow = \lyricmode {
  Will- kom- men, bien- ve- nue, wel- come!
  Frem- de, é- tran- ger, stran- ger.
  Glück- lich zu se- hen,
  Je suis en- chan- té, __
  hap- py to see you.
  Blei- be, res- te, stay.
  Will- kom- men, bein- ve- nue, wel- come,
  Im Cab- a- ret, au Cab- a- ret
  to Cab- a- ret.

% Applause
  What is it that we're liv- ing for? __
  What is it that we're liv- ing for?
  Ap- plause, ap- plause, ap- plause! __

% Everthing's Coming Up Roses
  Things look swell, things look great,
  gon- na have the whole world on a plate.
  Start- ing here, start- ing now,
  hon- ey ev- 'ry- thing's com- ing up ros- es.
  Now's our __ in- ning __
  stand the world on it's ear! __
  Set it spin- ning, __
  that- 'll be just the be- gin- ning, __
  the be- gin- ning. __

% They Call the Wind Maria
  A- way out here they got a name for wind, and rain, and fi- re.
  The rain is Tess, the fire is Joe
  and the call the wind Ma- ri- a, __
  Ma- ri- a, __ Ma- ri- a. __
  They call the wind Ma- ri- a. __
  Ma- ri- a, __ Ma- ri- a. __
  Blow my love to me. __

% I'm Flying
  I'm fly- ing, fly- ing, % fly- ing, fly-ing.
  Look at me 'way up high,
  sud- den- ly here am I, I'm fly- ing!
  I'm
  now the way is clear,
  nev- er- land is near,
  fol- low all the ar- rows, I'm a- bout to dis- ap- pear,
  I'm fly- ing. __

% Luck Be a Lady
  Luck be a la- dy to- night. __
  Luck be a la- dy to- night. __
  Luck if you've ev- er been a la- dy to be- gin with,
  luck be a la- dy to- night. __

  Let's keep the par- ty po- lite, __

  nev- er get out of my sight, __

  luck be a la- dy,

% Put on a Happy Face
  Gray skies are gon- na clear __ up
  put on a hap- py face. __
  Brush off the clouds and cheer __ up,
  put on a hap- py face. __
  And spread __ sun- shine __ all o- ver __ the place.
  Just put on a hap- py face.

% Hello Dolly
  Hel- lo Dol- ly well, hel- lo __ Dol- ly,
  it's so nice to have you back where you be- long. __
  You're look- ing swell __ Dol- ly,
  we can tell, Dol- ly,
  you're still glow- ing you're still crow- in',
  you're still goi- ing strong. __

% Mame
  You coax the blues right out __ of the horn, Mame. __
  You charm the husk right off __ of the corn, Mame. __
  You make the old mag- no- lia tree blos- som at the men- tion of your name.
  You've made us feel a- live __ a- gain,
  you've giv- en us the drive __ a- gain,
  to make the South re- vive __ a- gain Mame. __

% Try to Remember
  Try to re- mem- ber the kind of Sep- tem- ber
  when life was slow and oh so mel- low, __
  Try to re- mem- ber and if you re- mem- ber, then fol- low. __
  Fol- low, fol- low, fol- low, fol-low
  _ _ _ _ _ _ _ _ _ _
}

wordsAltoBelow = \lyricmode {
  _ _ _ _
  I know a place where dreams come true

  peo- ple, peo- ple who need
}

verseTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Head- ing far out of sight,
  sec- ond star to the right
}
  
wordsBaritoneAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  fly- ing, fly- ing.

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  So let's keep the par- ty po- lite, __
  nev- er get out of my sight, __
  stick with me ba- by I'm the fel- low you came in with,
  luck be a la- dy,
  luck be a la- dy, Ha!

  Stand- in' on the cor- ner watch- ing all the girls go by.
  Stand- in' on the cor- ner giv-   ing all the girls the eye.
  Broth- er you don't know a nic- er oc- cu- pa- tion,
  mat- ter of fact.
  - - Than stand- in' on the cor- ner watch- ing all the girls,
  watch- ing all the girls, watch- ing all the girls go by.

}

wordsBaritoneBelow = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  Just stand- in' on the cor- ner watch- ing all the girls,
  watch- ing all the girls, watch- ing all the girls go by.

  Hel- lo young lov- ers where- ev- er you are. __
}

wordsBassBelow = \lyricmode {
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \new Lyrics = sopranoabove
        \new Dynamics \dynamicsWomen
        \new Voice = "soprano" { \oneVoice \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsSopBelow
        \new Lyrics \lyricsto "soprano" \verseTwo
        \new Lyrics \lyricsto "alto"    \wordsAltoBelow
      >>
      \context Lyrics = sopranoabove { \lyricsto soprano \wordsSopAbove }
% Joint tenor/bass staff
      \new Lyrics = baritoneabove
      \new Dynamics \dynamicsMen
      \new Staff <<
        \new Voice = "baritone" \baritone
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "baritone" \wordsBaritoneBelow
        \new Lyrics \lyricsto "bass"     \wordsBassBelow
      >>
      \context Lyrics = baritoneabove { \lyricsto baritone \wordsBaritoneAbove }
    >>
  >>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       removeAllEmptyStaves = ##t
    }
  }
}
